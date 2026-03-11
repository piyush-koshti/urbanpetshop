const { createStrapi } = require('@strapi/strapi');

async function start() {
  const app = await createStrapi();
  await app.start();
}

start();