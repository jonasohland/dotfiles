function docker-backup-volume
    if test -n "$argv[2]"
        set backup_name $argv[2]
    else
        set backup_name backup
    end
    echo $backup_name
    docker run --rm -v $argv[1]:/$backup_name -v (pwd):/__backup alpine tar cvf __backup/$backup_name.tar $backup_name
    sudo chown $USER $backup_name.tar
end
