import { factories } from '@strapi/strapi';

export default factories.createCoreController('api::customer.customer', ({ strapi }) => ({

  // ✅ NEW API: Today Birthdays
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
  }
}));