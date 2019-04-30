function get_cats
    set counter 0
	while true
        echo "Downloaded $counter Cats."
        curl -sLO (curl -sL https://api.thecatapi.com/v1/images/search | jq -r .[0].url)
        set counter (math $counter + 1)
    end
end
