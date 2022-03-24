# OVERALL REQUIRMENTS:


## RUNNING THE PROJECT ON AWS: 
1. AWS account
2. I AM account (Config both `user` and `Groups`).
3. RDS (The `database` where all data gonna be stored).
4. AWS Elastic Beanstalk (And to set `enviroments valubles` in it!).
- #### for the deployment process:
1. `node` package. 
2. install `AWS-CLI` to deploy the frontend data post building it.
3. install `eb-cli` to deploy the backend into your AWS `enviroment`.


## RUNNING THE PROJECT LOCALLY:
1. `node` package. 
2. build your `database`.
- used in this project: `postgres` app for macos to create `database:udagram`. `port:5432` |  `username:mohammedmersal` | `password:postgres` | `schema:public`.
- you can create it manually using psql postgres (After downloading it!)
- CREATE DATABASE udagram;


## PIPELINE THE PROJECT:
1. add `.circleci` file to your project with `config.yml` in it
2. Push your project to `github`.
3. sign up in the circleci using your github account.
4. Use the `repository` with that contain the project.