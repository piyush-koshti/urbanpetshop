export default {
    routes: [
        {
            method: "POST",
            path: "/customer/update-all-status",
            handler: "customer.updateAllCustomerStatus",
            config: {
                auth: false,
            },
        },

        {
            method: "POST",
            path: "/customer/update-all-shopping-category",
            handler: "customer.updateAllShoppingCategory",
            config: {
                auth: false,
            },
        },
    ],
};