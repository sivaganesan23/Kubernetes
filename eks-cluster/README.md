### Pre-Re
1. Install awscli and configure with credentails 
2. Install kubectl 
   https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl
3. Install aws-iam-authenticator
```
$ wget https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-07-26/bin/linux/amd64/aws-iam-authenticator
$ sudo mv aws-iam-authenticator /bin
$ sudo chmod +x /bin/aws-iam-authenticator
```   
### Installation Procedure
1. Terraform 
  # terraform init
  # terraform apply -auto-approve
 
It generates an output something like this and just copy and save the content in .yml format
```
apiVersion: v1
kind: ConfigMap
metadata:
  name: aws-auth
  namespace: kube-system
data:
  mapRoles: |
    - rolearn: arn:aws:iam::973714476881:role/terraform-eks-demo-node
      username: system:node:{{EC2PrivateDNSName}}
      groups:
        - system:bootstrappers
        - system:nodes

```
2. Get kubectl configuration
 # aws eks update-kubeconfig --name ekscluster
3. Load configmap
 # kubectl create -f configmap.yml
