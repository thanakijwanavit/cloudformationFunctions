ln -s ../stackInfo.txt ./ &&
ln -s ../template.yml ./ && \
bash ./checkTemplate.sh && \
aws cloudformation create-stack --stack-name exampleStackName --template-body file://template.yml && \
bash ./describeStack.sh
