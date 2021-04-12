function aws_access_key_id
cat ~/.aws/credentials | grep aws_access_key_id | awk '{print $3}'
end
