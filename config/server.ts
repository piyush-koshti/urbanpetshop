import type { Core } from '@strapi/strapi';

const config = ({ env }: Core.Config.Shared.ConfigParams): Core.Config.Server => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 3035),

  // ✅ IMPORTANT FIX
  url: 'https://cmsurban.indianpetcompany.com',

  app: {
    keys: env.array('APP_KEYS'),
  },

  // ✅ VERY IMPORTANT (tells Strapi it's behind nginx)
  proxy: true,
});

export default config;
