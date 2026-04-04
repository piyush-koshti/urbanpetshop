export default {
  routes: [
    {
      method: 'GET',
      path: '/customers/today-birthdays',
      handler: 'customer.todayBirthdays',
      config: {
        auth: false, // optional
      },
    },
  ],
};