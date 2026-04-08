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
  ],
};