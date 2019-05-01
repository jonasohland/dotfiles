function current_tasks
    set tasks (task export status:pending | jq 'sort_by(.urgency)')
    set tasks_length (echo $tasks | jq '. | length')
    set most_important_task (echo $tasks | jq .[$tasks_length - 1])
    set most_important_task_desc (echo $most_important_task | jq -r '.description')
    set most_important_task_id (echo $most_important_task | jq '.id')
    echo -e "You have" (set_color brred)$tasks_length(set_color normal) "open tasks. Most important:" \
         (set_color brred)$most_important_task_desc(set_color normal) "id:" $most_important_task_id
 end
