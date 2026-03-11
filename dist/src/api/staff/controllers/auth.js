"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const bcryptjs_1 = __importDefault(require("bcryptjs"));
exports.default = {
    async login(ctx) {
        const authHeader = ctx.request.headers.authorization;
        if (!authHeader) {
            return ctx.unauthorized("No token provided");
        }
        const token = authHeader.split(" ")[1];
        if (token !== process.env.CUSTOM_API_TOKEN) {
            return ctx.unauthorized("Invalid API token");
        }
        const { phone, password } = ctx.request.body;
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
        const validPassword = await bcryptjs_1.default.compare(password, staff.password);
        if (!validPassword) {
            return ctx.badRequest("Invalid password");
        }
        ctx.send({
            message: "Login successful",
            staff,
        });
    }
};
