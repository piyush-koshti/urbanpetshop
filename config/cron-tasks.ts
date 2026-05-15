// config/cron-tasks.ts

export default {
    testCron: {
        task: async () => {
            console.log(
                "CRON WORKING SUCCESSFULLY"
            );
        },

        options: {
            rule: "* * * * *",
        },
    },
};