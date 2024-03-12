Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test
- dbt run --select +bottom5Cust_acctbal (this will run all rependednt model including the specified model)
- dbt run --model bottom5Cust_acctbal (this will error out if it has dependency on other model, and pass if it does not)

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
- Custom Schema https://docs.getdbt.com/docs/build/custom-schemas

### Learning:
- Careful when putting comments in the sql file, oddly dbt will try to execute those lines as code and interfer with the execution