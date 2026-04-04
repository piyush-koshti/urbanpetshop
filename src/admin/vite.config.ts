export default (config) => ({
  ...config,
  server: {
    ...config.server,
    allowedHosts: ['cmsurban.indianpetcompany.com'],
  },
});
