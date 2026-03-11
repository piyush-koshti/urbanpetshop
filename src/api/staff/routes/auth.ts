export default {
  routes: [
    {
      method: "POST",
      path: "/staff-login",
      handler: "auth.login",
      config: {
        auth: false,
      },
    },
  ],
};