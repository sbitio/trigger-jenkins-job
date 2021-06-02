# Trigger jenkins job action

This action triggers a given Jenkins job when called

## Inputs

### 'JENKINS_USER'

**Required** The name of the jenkins user that will trigger the Jenkins job (The user must have the neccessary permissions)

### 'JENKINS_TOKEN'

**Required** Jenkins API token. Follow these instructions to generate a token for the jenkins user that will trigger the job: https://www.jenkins.io/blog/2018/07/02/new-api-token-system/

### 'JENKINS_HOST'

**Required** Jenkins base url.

### 'JENKINS_JOB'

**Required** Jenkins job location that will be built. Ex: `JENKINS_JOB = utils/testPipeline/helloWorld` makes reference to the `helloWorld` job inside the `utils/testPipeline/` directory.

## Example usage

Example usage of the action. This workflow triggers a Jenkins job  when a change is pushed to the repository.

```yaml
name: Trigger jenkins job

on: push

jobs:
  launch_jenkins_job:
    name: trigger jenkins job
    runs-on: ubuntu-latest
    steps:
      -
        name: Trigger Jenkins Job
        uses: sbitio/trigger-jenkins-job@master
        with:
          JENKINS_USER: ${{ secrets.JENKINS_USER }}
          JENKINS_TOKEN: ${{ secrets.JENKINS_TOKEN }}
          JENKINS_HOST: ${{ secrets.JENKINS_HOST }}
          JENKINS_JOB: ${{ secrets.JENKINS_JOB }}
```
