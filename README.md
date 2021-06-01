# GITHUB-CI

Templates and examples for Github-CI

## Content

### Examples

* `examples/jenkins/.github/workflows/deploy-ENV.yaml`: Github Actions to build Jenkins jobs

---

### Using Github Actions to trigger the Jenkins jobs `deploy_devel` and `deploy_staging`
### Instructions

1. Copy and paste the `.github` folder inside `examples/jenkins` to your repository and create the `dev` and `production` branches if they do not exist.
2. In your github repo, access `Action secrets` (Secrets) in Settings, and create 5 new repository secrets: `JENKINS_USER`, `JENKINS_TOKEN`, `JENKINS_HOST`, `JENKINS_JOB_DEV` and `JENKINS_JOB_STG`
  * To generate a `JENKINS_TOKEN` follow these instructions: https://www.jenkins.io/blog/2018/07/02/new-api-token-system/
  * The value of `JENKINS_USER` must be the same as the user who generated the `JENKINS_TOKEN`
  * `JENKINS_HOST` is the host of the Jenkins instance where the jobs will be built
  * `JENKINS_JOB_ENV` is the Jenkins route to the job


  Cambiar job_for_vars a repo secrets

  paquetizar el step Trigger Jenkins Job en un action, en ese action verficiar que todas las variables estan presentes programacion defensiva


  Ver si se puede paqutizar la accion
