pipeline {
    agent any

//tools {
  //terraform 'Terraform_v1.2.7'
  //}

stages{
    stage ('git checkout') {
      steps{
        git url: 'https://github.com/DeepakshiPurushotham/Tasks.git' , branch: 'master'
        }
      }
     
    stage ('Terraform_init') {
      steps {
        sh "terraform init"
           }
         }
        
     stage ('Terraform_Apply/Destroy') {
        steps {
          withCredentials([string(credentialsId: 'access-key', variable: 'access-key'), string(credentialsId: 'secret-key', variable: 'secret-key')]) {
    // some block
      sh "terraform ${action} -var="access_key=${access-key}" -var="secret_key=${secret-key}" --auto-approve"
}
            }
         }
       }
}