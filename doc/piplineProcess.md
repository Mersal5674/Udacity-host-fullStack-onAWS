# PIPELINE PROCESS

### CONEECT TO CIRCLECI
1. Circle CI/CD connected to github repo: `https://github.com/Mersal5674/host-fullStack-onAWS`
2. Make sure to add `AWS_ACCESS_KEY_ID` | `AWS_SECRET_ACCESS_KEY`.

### PIPLINE PROCESS
1. Make sure to add your script (look it in next couple lines) to the root package.json.
2. Add the required ORBS (all commands you shall use later).
- In this project shall install -> Node | AWS-CLI | Elastic Beanstalk.
3. Write the `workflow`.
4. Install both frontbend | backend
- Script: < Front-End | backend >: "cd < Aquired-file > && npm install".
5. Build both frontbend | backend
- Script: < Front-End | backend >: "cd < Aquired-file > && npm run build".
6. Deploy both frontbend | backend
- Script: < Front-End | backend >: "cd < Aquired-file > && npm run deploy".
7. now with every `push` to your `github`, `circleci` gonna check the code till you `unfollw`.