import { factories } from '@strapi/strapi';

export default factories.createCoreController('api::customer.customer', ({ strapi }) => ({

  async birthdayByDate(ctx) {
    try {
      const date = ctx.query.date as string;
      const page = parseInt(ctx.query.page as string) || 1;
      const pageSize = parseInt(ctx.query.pageSize as string) || 25;

      if (!date) {
        return ctx.badRequest('Date is required in DD-MM format');
      }
      if (!/^\d{2}-\d{2}$/.test(date)) {
        return ctx.badRequest('Invalid format. Use DD-MM');
      }

      const [day, month] = date.split('-');
      const customers = await strapi.entityService.findMany('api::customer.customer', {
        populate: {
          store: {
            fields: ['Name', 'Location'],
          },
          pets: true,
        },
      });

      const filtered = customers.filter((customer: any) => {
        if (!customer.pets) return false;

        return customer.pets.some((pet: any) => {
          if (!pet.birthDate) return false;

          const d = new Date(pet.birthDate);
          const petDay = String(d.getDate()).padStart(2, '0');
          const petMonth = String(d.getMonth() + 1).padStart(2, '0');

          return petDay === day && petMonth === month;
        });
      });

      // ✅ Pagination Logic
      const total = filtered.length;
      const pageCount = Math.ceil(total / pageSize);

      const start = (page - 1) * pageSize;
      const end = start + pageSize;

      const paginatedData = filtered.slice(start, end);

      // ✅ Final Response
      return {
        data: paginatedData,
        meta: {
          pagination: {
            page,
            pageSize,
            pageCount,
            total,
          },
        },
      };

    } catch (err) {
      return ctx.internalServerError('Something went wrong');
    }
  },

  async birthdayByMonth(ctx) {
    try {
      const month = ctx.query.month as string;
      const page = parseInt(ctx.query.page as string) || 1;
      const pageSize = parseInt(ctx.query.pageSize as string) || 25;
      const location = ctx.query.location as string;

      if (!month) {
        return ctx.badRequest('Month is required in MM format');
      }
      if (!/^\d{2}$/.test(month)) {
        return ctx.badRequest('Invalid format. Use MM');
      }

      const customers = await strapi.entityService.findMany('api::customer.customer', {
        populate: {
          store: {
            fields: ['Name', 'Location'],
          },
          pets: {
            populate: {
              breed: true,
              pet_type: true,
            },
          },
        },
      });

      const filtered = customers.filter((customer: any) => {
        if (!customer.pets) return false;

        return customer.pets.some((pet: any) => {
          if (!pet.birthDate) return false;

          const d = new Date(pet.birthDate);
          const petMonth = String(d.getMonth() + 1).padStart(2, '0');

          return petMonth === month;
        });
      });

      let filterByLocation: any;
      if (location) {
        filterByLocation = filtered.filter((customer: any) => {
          if (customer.store) {
            return customer.store.Location === location;
          }
          return false;
        });
      }

      // ✅ Pagination Logic
      let total = filtered.length;
      let pageCount = Math.ceil(total / pageSize);
      let paginatedData = filtered;

      const start = (page - 1) * pageSize;
      const end = start + pageSize;

      if (location) {
        total = filterByLocation.length;
        pageCount = Math.ceil(total / pageSize);
        paginatedData = filterByLocation.slice(start, end);
      } else {
        paginatedData = filtered.slice(start, end);
      }

      // ✅ Final Response
      return {
        data: paginatedData,
        meta: {
          pagination: {
            page,
            pageSize,
            pageCount,
            total,
          },
        },
      };

    } catch (err) {
      return ctx.internalServerError('Something went wrong');
    }
  },

  async petByAgeGroup(ctx) {
    try {
      const groups = (ctx.query.group as string)?.split(",") || [];
      const page = parseInt(ctx.query.page as string) || 1;
      const pageSize = parseInt(ctx.query.pageSize as string) || 25;
      const location = ctx.query.location as string;

      if (!groups.length) {
        return ctx.badRequest('At least one age group is required');
      }

      const customers = await strapi.entityService.findMany('api::customer.customer', {
        filters: location
          ? {
            store: {
              Location: {
                $eq: location,
              },
            },
          }
          : {},
        populate: {
          store: {
            fields: ['Name', 'Location'],
          },
          pets: {
            populate: {
              breed: true,
              pet_type: true,
            },
          },
        },
      });

      const now = new Date();

      const babyCutoff = new Date(now);
      babyCutoff.setMonth(now.getMonth() - 3);

      const puppyCutoff = new Date(now);
      puppyCutoff.setMonth(now.getMonth() - 15);

      const adultCutoff = new Date(now);
      adultCutoff.setFullYear(now.getFullYear() - 7);

      const parseLocalDate = (dateStr: string) => {
        const [y, m, d] = dateStr.split("-").map(Number);
        return new Date(y, m - 1, d);
      };

      const filtered = customers.filter((customer: any) => {
        if (!customer.pets) return false;

        return customer.pets.some((pet: any) => {
          if (!pet.birthDate) return false;

          const birth = parseLocalDate(pet.birthDate);

          // 🔥 match ANY selected group
          return groups.some((ageGroup) => {
            if (ageGroup === "baby") return birth >= babyCutoff;
            if (ageGroup === "puppy") return birth < babyCutoff && birth >= puppyCutoff;
            if (ageGroup === "adult") return birth < puppyCutoff && birth >= adultCutoff;
            if (ageGroup === "senior") return birth < adultCutoff;
            return false;
          });
        });
      });

      let finalData = filtered;
      const total = finalData.length;
      const pageCount = Math.ceil(total / pageSize);

      const start = (page - 1) * pageSize;
      const end = start + pageSize;

      const paginatedData = finalData.slice(start, end);

      return {
        data: paginatedData,
        meta: {
          pagination: {
            page,
            pageSize,
            pageCount,
            total,
          },
        },
      };

    } catch (err) {
      return ctx.internalServerError('Something went wrong');
    }
  },

  async petStats(ctx) {
    try {
      const location = ctx.query.location as string;

      const customers = await strapi.entityService.findMany('api::customer.customer', {
        filters: location
          ? {
            store: {
              Location: {
                $eq: location,
              },
            },
          }
          : {},
        populate: {
          store: {
            fields: ['Name', 'Location'],
          },
          pets: true,
        },
      });
      let filteredCustomers = customers;
      const customersWithPets = filteredCustomers.filter(
        (customer: any) => customer.pets && customer.pets.length > 0
      );
      const allPets = customersWithPets.flatMap((customer: any) => customer.pets);
      const now = new Date();

      const babyCutoff = new Date();
      babyCutoff.setMonth(now.getMonth() - 3);

      const puppyCutoff = new Date();
      puppyCutoff.setMonth(now.getMonth() - 15);

      const adultCutoff = new Date();
      adultCutoff.setFullYear(now.getFullYear() - 7);

      const parseLocalDate = (dateStr: string) => {
        const [y, m, d] = dateStr.split("-").map(Number);
        return new Date(y, m - 1, d);
      };

      let baby = 0;
      let puppy = 0;
      let adult = 0;
      let senior = 0;

      allPets.forEach((pet: any) => {
        if (!pet.birthDate) return;
        const birth = parseLocalDate(pet.birthDate);
        if (birth >= babyCutoff) {
          baby++;
        } else if (birth < babyCutoff && birth >= puppyCutoff) {
          puppy++;
        } else if (birth < puppyCutoff && birth >= adultCutoff) {
          adult++;
        } else if (birth < adultCutoff) {
          senior++;
        }
      });

      // ✅ Final response
      return {
        data: {
          totalPets: allPets.length,
          baby,
          puppy,
          adult,
          senior,
        },
      };

    } catch (err) {
      return ctx.internalServerError('Something went wrong');
    }
  },

  async updateAllCustomerStatus(ctx) {
    try {
      let page = 1;
      const pageSize = 500;
      let hasMore = true;

      // Load statuses once
      const allStatuses = await strapi
        .documents("api::customet-status.customet-status")
        .findMany();

      const statusMap: Record<string, string> = {};

      allStatuses.forEach((item: any) => {
        statusMap[item.value] = item.documentId;
      });

      while (hasMore) {
        const customerFollowUps = await strapi
          .documents("api::customet-follow-up.customet-follow-up")
          .findMany({
            populate: {
              customer: {
                fields: ["documentId"],
              },
              follow_ups: {
                fields: ["billDate", "billAmount"],
              },
            },

            limit: pageSize,
            offset: (page - 1) * pageSize,
          });

        console.log(
          "PAGE:",
          page,
          "COUNT:",
          customerFollowUps.length
        );

        // Stop loop
        if (customerFollowUps.length === 0) {
          hasMore = false;
          break;
        }

        // Process current batch
        for (const customerFollowUpData of customerFollowUps as any[]) {
          try {
            const customerId =
              customerFollowUpData.customer?.documentId;

            if (!customerId) continue;

            const followUps =
              customerFollowUpData.follow_ups || [];

            const oneMonthsAgo = new Date();

            oneMonthsAgo.setMonth(
              oneMonthsAgo.getMonth() - 1
            );

            const last1MonthFollowUps = followUps.filter(
              (followUp: any) => {
                if (!followUp.billDate) return false;

                const billDate = new Date(
                  followUp.billDate
                );

                return billDate >= oneMonthsAgo;
              }
            );

            const totalBillAmount =
              last1MonthFollowUps.reduce(
                (acc: number, followUp: any) => {
                  return (
                    acc +
                    Number(followUp.billAmount || 0)
                  );
                },
                0
              );

            let customerStatus = "bronz";

            if (
              totalBillAmount >= 1501 &&
              totalBillAmount <= 3000
            ) {
              customerStatus = "silver";
            } else if (
              totalBillAmount >= 3001 &&
              totalBillAmount <= 5000
            ) {
              customerStatus = "gold";
            } else if (
              totalBillAmount >= 5001 &&
              totalBillAmount <= 10000
            ) {
              customerStatus = "diamond";
            } else if (totalBillAmount > 10000) {
              customerStatus = "platinum";
            }

            const statusDocumentId =
              statusMap[customerStatus];

            if (!statusDocumentId) continue;

            await strapi
              .documents("api::customer.customer")
              .update({
                documentId: customerId,
                data: {
                  customet_status: statusDocumentId,
                },
                status: "published",
              });
          } catch (error) {
            console.log(
              "Customer Processing Error:",
              error
            );
          }
        }
        page++;
      }

      ctx.send({
        success: true,
        message:
          "Customer status updated successfully",
      });
    } catch (error) {
      console.log(error);

      ctx.throw(500, error);
    }
  },

  async updateAllShoppingCategory(ctx) {
    try {
      let page = 1;
      const pageSize = 500;
      let hasMore = true;

      // Get all shopping categories
      const allShoppingCategories = await strapi
        .documents("api::shopping-category.shopping-category")
        .findMany();

      // Create map
      const shoppingCategoryMap: Record<string, string> =
        {};

      allShoppingCategories.forEach((item: any) => {
        shoppingCategoryMap[item.value] =
          item.documentId;
      });

      while (hasMore) {
        const customerFollowUps = await strapi
          .documents(
            "api::customet-follow-up.customet-follow-up"
          )
          .findMany({
            populate: {
              follow_ups: {
                fields: ["billDate"],
              },
            },

            limit: pageSize,
            offset: (page - 1) * pageSize,
          });

        console.log(
          "SHOPPING CATEGORY PAGE:",
          page,
          "COUNT:",
          customerFollowUps.length
        );

        // Stop pagination
        if (customerFollowUps.length === 0) {
          hasMore = false;
          break;
        }

        for (const customerFollowUpData of customerFollowUps as any[]) {
          try {
            const followUps =
              customerFollowUpData.follow_ups || [];

            if (followUps.length === 0) continue;

            // Get latest billDate
            const latestFollowUp = followUps
              .filter((item: any) => item.billDate)
              .sort(
                (a: any, b: any) =>
                  new Date(b.billDate).getTime() -
                  new Date(a.billDate).getTime()
              )[0];

            if (!latestFollowUp?.billDate) continue;

            const latestBillDate = new Date(
              latestFollowUp.billDate
            );

            const currentDate = new Date();

            // Difference in days
            const diffTime =
              currentDate.getTime() -
              latestBillDate.getTime();

            const diffDays = Math.floor(
              diffTime / (1000 * 60 * 60 * 24)
            );

            let shoppingCategory = "green";

            if (diffDays >= 0 && diffDays <= 30) {
              shoppingCategory = "green";
            } else if (
              diffDays >= 31 &&
              diffDays <= 45
            ) {
              shoppingCategory = "yellow";
            } else if (
              diffDays >= 46 &&
              diffDays <= 60
            ) {
              shoppingCategory = "orange";
            } else if (
              diffDays >= 61 &&
              diffDays <= 75
            ) {
              shoppingCategory = "red";
            } else if (diffDays > 75) {
              shoppingCategory = "black";
            }

            const shoppingCategoryDocumentId =
              shoppingCategoryMap[
              shoppingCategory
              ];

            if (!shoppingCategoryDocumentId)
              continue;

            // Update customet-follow-up
            await strapi
              .documents(
                "api::customet-follow-up.customet-follow-up"
              )
              .update({
                documentId:
                  customerFollowUpData.documentId,
                data: {
                  shopping_category:
                    shoppingCategoryDocumentId,
                },
              });
          } catch (error) {
            console.log(
              "Shopping Category Update Error:",
              error
            );
          }
        }

        page++;
      }

      ctx.send({
        success: true,
        message:
          "Shopping category updated successfully",
      });
    } catch (error) {
      console.log(error);

      ctx.throw(500, error);
    }
  },
}));