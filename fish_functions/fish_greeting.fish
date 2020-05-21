function fish_greeting
	set_color green
    echo -e "\nWelcome back, Master Jonas\n"
    set_color normal
    if type -q task
        current_tasks
        current_tracking
    end
end
