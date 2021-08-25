function docker-ip-address
docker inspect $argv[1] | jq -r .[0].NetworkSettings.Networks[\"$argv[2]\"].IPAddress
end
