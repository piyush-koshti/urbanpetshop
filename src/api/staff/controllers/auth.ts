import bcrypt from "bcryptjs";
import { Context } from "koa";

export default {

  async login(ctx: Context) {

    const authHeader = ctx.request.headers.authorization;

    if (!authHeader) {
      return ctx.unauthorized("No token provided");
    }

    const token = authHeader.split(" ")[1];

    if (token !== process.env.CUSTOM_API_TOKEN) {
      return ctx.unauthorized("Invalid API token");
    }

    const { phone, password } = ctx.request.body as {
      phone: string;
      password: string;
    };

    if (!phone || !password) {
      return ctx.badRequest("Phone and password required");
    }

    const staff = await strapi.db.query("api::staff.staff").findOne({
      where: { phone },
      populate: ["store"],
    });

    if (!staff) {
      return ctx.badRequest("Invalid phone");
    }

    const validPassword = await bcrypt.compare(password, staff.password);

    if (!validPassword) {
      return ctx.badRequest("Invalid password");
    }

    ctx.send({
      message: "Login successful",
      staff,
    });

  }

};