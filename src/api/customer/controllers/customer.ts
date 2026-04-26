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
          pets: true,
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

  async petByAgeGroup(ctx) {
    try {
      const ageGroup = ctx.query.group as string;
      const page = parseInt(ctx.query.page as string) || 1;
      const pageSize = parseInt(ctx.query.pageSize as string) || 25;

      if (!ageGroup) {
        return ctx.badRequest('Age group is required');
      }

      const customers = await strapi.entityService.findMany('api::customer.customer', {
        populate: {
          store: {
            fields: ['Name', 'Location'],
          },
          pets: true,
        },
      });

      const now = new Date();

      const babyCutoff = new Date(now);
      babyCutoff.setMonth(now.getMonth() - 3);

      const puppyCutoff = new Date(now);
      puppyCutoff.setMonth(now.getMonth() - 15);

      const adultCutoff = new Date(now);
      adultCutoff.setFullYear(now.getFullYear() - 7);

      // helper to parse local date (IMPORTANT)
      const parseLocalDate = (dateStr: string) => {
        const [y, m, d] = dateStr.split("-").map(Number);
        return new Date(y, m - 1, d);
      };

      const filtered = customers.filter((customer: any) => {
        if (!customer.pets) return false;

        return customer.pets.some((pet: any) => {
          if (!pet.birthDate) return false;

          const birth = parseLocalDate(pet.birthDate);

          if (ageGroup === "baby") {
            return birth >= babyCutoff;
          }

          if (ageGroup === "puppy") {
            return birth < babyCutoff && birth >= puppyCutoff;
          }

          if (ageGroup === "adult") {
            return birth < puppyCutoff && birth >= adultCutoff;
          }

          if (ageGroup === "senior") {
            return birth < adultCutoff;
          }
          return false;
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
  }
}));