pipeline{
    agent any

    Environment {
       ENV = "${env.BRANCH_NAME}"
       TF_WORKDIR = "Enviroment/${env.BRANCH_NAME}"
    }

    stages{
        stage('checkout'){
            steps{
                git branch: "${env.BRANCH_NAME}", url: 'https://github.com/Abis2001/infra-pipeline.git'
            }
        }

        stage('Terraform Init'){
            steps{
                dir("${TF_WORKDIR}"){
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan'){
            steps{
                dir("${TF_WORKDIR}"){
                    sh 'terraform plan -out=tfplan'
                    sh 'terraform show -no-color tfplan > plan.txt'
                    sh 'cat plan.txt'
                }
            }
        }
        stage('Approval'){ 
            steps{
                input message: 'Approve to deployment to production?', ok: 'Apply'
            }
        }
        stage('Terraform Apply'){
            steps{
                dir("${TF_WORKDIR}"){
                    sh 'terraform apply tfplan'
                }
            }
        }



    }
}
