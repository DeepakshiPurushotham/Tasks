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
            withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
    // some block
  
          sh "terraform ${action} --auto-approve" }  
            }
         }
       }
}