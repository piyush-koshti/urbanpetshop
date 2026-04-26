
// need to add a route for /customers/birthday/month

export default {
  routes: [
    {
      method: 'GET',
      path: '/customers/birthday',
      handler: 'customer.birthdayByDate',
      config: {
        auth: false,
      },
    },
    {
      method: 'GET',
      path: '/customers/birthday/month',
      handler: 'customer.birthdayByMonth',
      config: {
        auth: false,
      },
    },
    {
      method: 'GET',
      path: '/customers/pet/age-group',
      handler: 'customer.petByAgeGroup',
      config: {
        auth: false,
      },
    },
  ],
};