// config/cron-tasks.ts

export default {
    updateShoppingCategory: {
        task: async ({ strapi }) => {
            console.log(
                "Running Daily Shopping Category Cron..."
            );

            try {
                let page = 1;
                const pageSize = 500;
                let hasMore = true;

                // Get all shopping categories
                const allShoppingCategories =
                    await strapi
                        .documents(
                            "api::shopping-category.shopping-category"
                        )
                        .findMany();

                // Create category map
                const shoppingCategoryMap: Record<
                    string,
                    string
                > = {};

                allShoppingCategories.forEach(
                    (item: any) => {
                        shoppingCategoryMap[item.value] =
                            item.documentId;
                    }
                );

                // Pagination loop
                while (hasMore) {
                    const customerFollowUps =
                        await strapi
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
                                start: (page - 1) * pageSize,
                            });

                    console.log(
                        "CRON PAGE:",
                        page,
                        "COUNT:",
                        customerFollowUps.length
                    );

                    // Stop if no records
                    if (
                        customerFollowUps.length === 0
                    ) {
                        break;
                    }

                    // Process records
                    for (const customerFollowUpData of customerFollowUps as any[]) {
                        try {
                            const followUps =
                                customerFollowUpData.follow_ups ||
                                [];

                            if (followUps.length === 0)
                                continue;

                            // Find latest billDate
                            const latestFollowUp =
                                followUps
                                    .filter(
                                        (item: any) =>
                                            item.billDate
                                    )
                                    .sort(
                                        (a: any, b: any) =>
                                            new Date(
                                                b.billDate
                                            ).getTime() -
                                            new Date(
                                                a.billDate
                                            ).getTime()
                                    )[0];

                            if (
                                !latestFollowUp?.billDate
                            )
                                continue;

                            const latestBillDate =
                                new Date(
                                    latestFollowUp.billDate
                                );

                            const currentDate =
                                new Date();

                            // Difference in days
                            const diffTime =
                                currentDate.getTime() -
                                latestBillDate.getTime();

                            const diffDays =
                                Math.floor(
                                    diffTime /
                                    (1000 *
                                        60 *
                                        60 *
                                        24)
                                );

                            let shoppingCategory =
                                "green";

                            if (
                                diffDays >= 0 &&
                                diffDays <= 30
                            ) {
                                shoppingCategory =
                                    "green";
                            } else if (
                                diffDays >= 31 &&
                                diffDays <= 45
                            ) {
                                shoppingCategory =
                                    "yellow";
                            } else if (
                                diffDays >= 46 &&
                                diffDays <= 60
                            ) {
                                shoppingCategory =
                                    "orange";
                            } else if (
                                diffDays >= 61 &&
                                diffDays <= 75
                            ) {
                                shoppingCategory =
                                    "red";
                            } else if (
                                diffDays > 75
                            ) {
                                shoppingCategory =
                                    "black";
                            }

                            const shoppingCategoryDocumentId =
                                shoppingCategoryMap[
                                shoppingCategory
                                ];

                            if (
                                !shoppingCategoryDocumentId
                            ) {
                                continue;
                            }

                            // Update shopping category
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

                                    status: "published",
                                });
                        } catch (error) {
                            console.log(
                                "Cron Update Error:",
                                error
                            );
                        }
                    }

                    // Stop pagination
                    if (
                        customerFollowUps.length <
                        pageSize
                    ) {
                        hasMore = false;
                    }

                    page++;
                }

                console.log(
                    "Daily Shopping Category Cron Completed"
                );
            } catch (error) {
                console.log(
                    "Cron Error:",
                    error
                );
            }
        },

        options: {
            rule: "0 0 * * *",
        },
    },
};