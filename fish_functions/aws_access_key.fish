function aws_access_key
cat ~/.aws/credentials | grep aws_secret_access_key | awk '{print $3}'
end
