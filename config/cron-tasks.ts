export default {
    "10 18 * * *": async ({ strapi }) => {
        console.log(
            "Running Daily Shopping Category Cron..."
        );

        try {
            let page = 1;
            const pageSize = 500;
            let hasMore = true;

            // Get all shopping categories
            const allShoppingCategories = await strapi
                .documents(
                    "api::shopping-category.shopping-category"
                )
                .findMany();

            const shoppingCategoryMap: Record<
                string,
                string
            > = {};

            allShoppingCategories.forEach((item: any) => {
                shoppingCategoryMap[item.value] =
                    item.documentId;
            });

            while (hasMore) {
                const customerFollowUps = await strapi
                    .documents(
                        "api::customet-follow-up.customet-follow-up"
                    )
                    .findMany({
                        populate: {
                            follow_ups: {
                                fields: ["billDate"],
                            },
                        },

                        limit: pageSize,
                        offset: (page - 1) * pageSize,
                    });

                console.log(
                    "CRON PAGE:",
                    page,
                    "COUNT:",
                    customerFollowUps.length
                );

                if (customerFollowUps.length === 0) {
                    hasMore = false;
                    break;
                }

                for (const customerFollowUpData of customerFollowUps as any[]) {
                    try {
                        const followUps =
                            customerFollowUpData.follow_ups || [];

                        if (followUps.length === 0) continue;

                        // Latest bill date
                        const latestFollowUp = followUps
                            .filter((item: any) => item.billDate)
                            .sort(
                                (a: any, b: any) =>
                                    new Date(b.billDate).getTime() -
                                    new Date(a.billDate).getTime()
                            )[0];

                        if (!latestFollowUp?.billDate)
                            continue;

                        const latestBillDate = new Date(
                            latestFollowUp.billDate
                        );

                        const currentDate = new Date();

                        const diffTime =
                            currentDate.getTime() -
                            latestBillDate.getTime();

                        const diffDays = Math.floor(
                            diffTime / (1000 * 60 * 60 * 24)
                        );

                        let shoppingCategory = "green";

                        if (diffDays >= 0 && diffDays <= 30) {
                            shoppingCategory = "green";
                        } else if (
                            diffDays >= 31 &&
                            diffDays <= 45
                        ) {
                            shoppingCategory = "yellow";
                        } else if (
                            diffDays >= 46 &&
                            diffDays <= 60
                        ) {
                            shoppingCategory = "orange";
                        } else if (
                            diffDays >= 61 &&
                            diffDays <= 75
                        ) {
                            shoppingCategory = "red";
                        } else if (diffDays > 75) {
                            shoppingCategory = "black";
                        }

                        const shoppingCategoryDocumentId =
                            shoppingCategoryMap[
                            shoppingCategory
                            ];

                        if (!shoppingCategoryDocumentId)
                            continue;

                        await strapi
                            .documents(
                                "api::customet-follow-up.customet-follow-up"
                            )
                            .update({
                                documentId:
                                    customerFollowUpData.documentId,
                                data: {
                                    shopping_category:
                                        shoppingCategoryDocumentId,
                                },
                            });
                    } catch (error) {
                        console.log(
                            "Cron Update Error:",
                            error
                        );
                    }
                }

                page++;
            }

            console.log(
                "Daily Shopping Category Cron Completed"
            );
        } catch (error) {
            console.log("Cron Error:", error);
        }
    },
};