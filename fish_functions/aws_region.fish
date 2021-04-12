function aws_region
cat ~/.aws/config | grep region | awk '{print $3}'
end
