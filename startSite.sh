ln -s ../template.yml ./ && \
bash ./checkTemplate.sh && \
aws cloudformation create-stack --stack-name exampleSiteUdacity --template-body file://template.yml && \
bash ./describeStack.sh
