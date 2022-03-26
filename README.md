# HOSTING FULL-STACK APP ON AWS -> 
This is project about deployin a full-stack project on AWS for Udacity nano-degree.

## DEVELOPMENT PROCESS -> 

### USED ORBS
1. you are gonna make sure that you installed both of -> 
- AWS-CLI (use this document: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

2. build a database on aws
![Getting Started](./Images/RDS.png)
```
- info to connect to my base data: 
    - `POSTGRES_USERNAME=postgres`
    - `POSTGRES_PASSWORD=postgres `
    - `POSTGRES_DB=postgres`
    - `POSTGRES_HOST=postgres.cxxd4kjd5ux0.us-east-1.rds.amazonaws.com`
    - `DB_PORT=5432`
    - `PORT=8080`
    - make sure that you allowed public acess to it!
    - for more confirmation you can connect to it using `postbird` or something like.
```
3. Check if you have IAM account or not if not, make sure to create `user-groups` and a `user` connected to it, save its `AWS_ACCESS_KEY_ID` | `AWS_SECRET_ACCESS_KEY` as it is gonna be used later with `S3`.

4. Create a AWS `bucket` you are gonna need later to deploy the front-end and the backend as well.

![Getting Started](./Images/S3bucket.png)
```
- info to connect to my bucket: 
    - `JWT_SECRET=nemoone`
    - `AWS_ACCESS_KEY_ID=AKIA3RSDEFRPJANQNA5P`
    - `AWS_SECRET_ACCESS_KEY=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`
    - `AWS_REGION=us-east-1`
    - `AWS_BUCKET=nemo-bucket`
```

5. make sure you have installed both `node-modules` / `Build`  for both backend | frontend.
    - For `install` -> Script: < Front-End | backend >: "cd < Aquired-file > && npm install".
    - For `build` -> - Script: < Front-End | backend >: "cd < Aquired-file > && npm run build".

6. Now deploy the front-end to the bucket using -> `aws s3 cp --recursive --acl public-read ./www s3://nemo-bucket/`.

7. For deploying the backend we are gonna use AWS Elastic Beanstalk Command Line Interface (eb-cli), (you can do that using this document https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html)

8. Deploy it using:
    - eb init udagram-api --platform node.js --region us-east-1 (initiate eb env)
    - eb create --sample udagram-api-dev
    - eb use udagram-api-dev
    - eb setenv POSTGRES_USERNAME="postgres" POSTGRES_PASSWORD="postgres"               POSTGRES_DB="postgres" POSTGRES_HOST="postgres.cxxd4kjd5ux0.us-east-1.rds.amazonaws.com" DB_PORT="5432" PORT="8080" JWT_SECRET="nemoone" AWS_ACCESS_KEY_ID="AKIA3RSDEFRPJANQNA5P" AWS_SECRET_ACCESS_KEY="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" AWS_REGION="us-east-1" AWS_BUCKET="nemo-bucket" (or you can do it manually in the configuration in Elastic Beanstalk).
    - eb deploy

![Getting Started](./Images/Application.png)

9. At last you want to creat a pipline using `circleci`
```
- Add script to root package.json to access both backend & frontend: 
    - "backend:install": "cd udagram-api && npm install",
    - "frontend:install": "cd udagram-frontend && npm install",
    - "backend:build": "cd udagram-api && npm run build",
    - "frontend:build": "cd udagram-frontend && npm run build",
    - "backend:test": "cd udagram-api && npm run test",
    - "frontend:test": "cd udagram-frontend && npm run test",
    - "backend:deploy": "cd udagram-api && npm run deploy",
    - "frontend:deploy": "cd udagram-frontend && npm run deploy"
```
- Connect to it with github account.
- Set the acquired repo.
- Set env in `circleci`.
![Getting Started](./Images/CircleciSecret.png)
- add .`circleci` folder in your rep with the `config.yml` file in it.
- add your config in it -> orbs | container | jobs 
- end result if you did every thing right: 
![Getting Started](./Images/Circleci.png)

## DOCUMENTING DEPLOYMENT PROCESS ->

#### Infrastructure Diagram ->
![Getting Started](./Images/InfraStructure.png)

#### Development Pipeline Diagram ->
![Getting Started](./Images/DevPipline.png)

# Udagram

This application is provided to you as an alternative starter project if you do not wish to host your own code done in the previous courses of this nanodegree. The udagram application is a fairly simple application that includes all the major components of a Full-Stack web application.

## Getting Started

1. Clone this repo locally into the location of your choice.
1. Move the content of the udagram folder at the root of the repository as this will become the main content of the project.
1. Open a terminal and navigate to the root of the repo
1. follow the instructions in the installation step

The project can run but is missing some information to connect to the database and storage service. These will be setup during the course of the project

### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm , Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

```

### Installation

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres. <Place holder for link to classroom article>
1. In AWS, provision a s3 bucket for hosting the uploaded files. <Place holder for tlink to classroom article>
1. Export the ENV variables needed or use a package like [dotnev](https://www.npmjs.com/package/dotenv)/.
1. From the root of the repo, navigate udagram-api folder `cd starter/udagram-api` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run dev`.
1. Without closing the terminal in step 1, navigate to the udagram-frontend `cd starter/udagram-frontend` to intall the node_modules `npm install`. After installation is done start the api in dev mode with `npm run start`.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
