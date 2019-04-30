function get_cats
	while true 
curl -sLO (curl -sL https://api.thecatapi.com/v1/images/search | jq -r .[0].url)
end
end
