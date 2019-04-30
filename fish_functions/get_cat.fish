function get_cat
    set new_cat_url (curl -sL https://api.thecatapi.com/v1/images/search | jq -r .[0].url)
    curl -sLO $new_cat_url
    open (string split "/" $new_cat_url)[-1]
end
