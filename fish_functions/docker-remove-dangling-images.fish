function docker-remove-dangling-images
docker rmi (docker images -f "dangling=true" -q) 
end
