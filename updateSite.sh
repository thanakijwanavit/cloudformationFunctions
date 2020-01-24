source ./stackInfo.txt
bash ./checkTemplate.sh && \
aws cloudformation update-stack --stack-name $StackName --template-body file://template.yml
bash ./describeStack.sh
