import { factories } from '@strapi/strapi';

export default factories.createCoreController('api::customer.customer', ({ strapi }) => ({

  // ✅ NEW API: Today Birthdays
  async todayBirthdays(ctx) {
    try {
      const today = new Date();
      const month = today.getMonth() + 1;
      const day = today.getDate();

      const { page = 1, pageSize = 10 } = ctx.query;

      const offset = (Number(page) - 1) * Number(pageSize);

      const knex = strapi.db.connection;

      const customers = await knex('customers')
        .leftJoin(
          'components_repeatable_pets',
          'customers.id',
          'components_repeatable_pets.entity_id'
        )
        .whereRaw(
          'EXTRACT(MONTH FROM components_repeatable_pets.birth_date) = ?',
          [month]
        )
        .andWhereRaw(
          'EXTRACT(DAY FROM components_repeatable_pets.birth_date) = ?',
          [day]
        )
        .select('customers.*')
        .distinct()
        .limit(Number(pageSize))
        .offset(offset);

      return {
        data: customers,
        meta: {
          pagination: {
            page: Number(page),
            pageSize: Number(pageSize),
          },
        },
      };

    } catch (error) {
      console.error(error);
      ctx.throw(500, 'Failed to fetch today birthdays');
    }
  },

}));