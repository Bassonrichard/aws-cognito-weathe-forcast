USER_POOL_ID=$(awslocal cognito-idp create-user-pool --region us-east-1 --pool-name test --query UserPool.Id --output text)
CLIENT_ID=$(awslocal cognito-idp create-user-pool-client --region us-east-1 --user-pool-id $USER_POOL_ID --client-name test-client --generate-secret --query UserPoolClient.ClientId --output text)

echo $(awslocal cognito-idp describe-user-pool-client --user-pool-id $USER_POOL_ID --client-id $CLIENT_ID --output json)