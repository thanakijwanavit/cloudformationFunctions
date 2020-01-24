rm ./stackInfo.txt ./template.yml && \
ln -s ../stackInfo.txt ./ && \
ln -s ../template.yml ./ && \
echo symlinks created && \
source ./stackInfo.txt && \
bash ./checkTemplate.sh && \
echo template checked && \
aws cloudformation create-stack --stack-name $StackName --template-body file://template.yml && \
echo stack created as $StackName && \
bash ./describeStack.sh
