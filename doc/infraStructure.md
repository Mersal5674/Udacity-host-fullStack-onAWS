# OVERALL STEPS


### SETTING THE BACKEND 
1. Set the `database` on AWS.
2. Add the `end-point` | `port` you got from the database to your `.env`.
- my used enpoint: `postgres.cxxd4kjd5ux0.us-east-1.rds.amazonaws.com`
- my used app-name: `udagram-api`
3. Set `bucket` (you are gonna find it in `S3`).
- my used bucket `nemo-bucket`
4. In `IAM` add `user-groups`, `user` to use 'em later, (gonna need to add permissions for both!).


### SETTING THE FRONTEND
1. Use `S3` to upload your zip files from the frontend. 

### SETTING THE CIRCLECI
1. Upload your project to `github`.
2. Sign in to `CIRCLECI` using `github`.
3. Setup the acquired project.