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
    ],
};