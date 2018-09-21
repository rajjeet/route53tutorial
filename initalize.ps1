# =========================
# US WEST 1
# =========================
# create us-west-1 stack
aws cloudformation create-stack `
  --stack-name r53-lab `
  --region us-west-1 `
  --template-body file://template.yml `
  --parameters ParameterKey=KeyPairName,ParameterValue=KeyPairTest ParameterKey=ImageAmi,ParameterValue=ami-059e7901352ebaef8

# delete us-west-1 stack
aws cloudformation delete-stack `
  --stack-name r53-lab `
  --region us-west-1

# =========================
# US EAST 1
# =========================
# create us-east-1 stack
aws cloudformation create-stack `
  --stack-name r53-lab `
  --region us-west-1 `
  --template-body file://template.yml `
  --parameters ParameterKey=KeyPairName,ParameterValue=KeyPairTest ParameterKey=ImageAmi,ParameterValue=ami-04169656fea786776

# delete us-east-1 stack
aws cloudformation delete-stack `
  --stack-name r53-lab `
  --region us-east-1