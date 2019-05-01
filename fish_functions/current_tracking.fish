function current_tracking
    set timew_output (timew export)
    set timew_output_length (echo $timew_output | jq '. | length')
    set timew_last_tracking (echo $timew_output | jq .[$timew_output_length - 1])
    set timew_last_tracking_end (echo $timew_last_tracking | jq '.end?')
    if test $timew_last_tracking_end = 'null'
        echo "Active Timetracking:" (set_color brblue)(echo $timew_last_tracking | jq '.tags' | jq -r 'join(" ")')(set_color normal) "since"\
        (set_color brblue)(echo $timew_last_tracking | jq -r '.start | strptime("%Y%m%dT%H%M%SZ") | .[3:6] | join(":")')(set_color normal)
    end
end
