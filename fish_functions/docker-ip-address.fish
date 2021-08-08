function docker-ip-address
docker inspect $argv | jq -r .[0].NetworkSettings.Networks.bridge.IPAddress
end
