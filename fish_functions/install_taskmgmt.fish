function install_taskmgmt
    set last_dir (pwd)
    cd ~
    git clone https://github.com/jonasohland/tasks
    mv ~/tasks ~/.task
    mkdir ~/.taskwarrior
    brew install task
    curl -L --progress-bar https://taskwarrior.org/download/timew-1.1.1.tar.gz -o timew_install.tar.gz
    untar timew_install.tar.gz
    cd timew-1.1.1
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=release ..
    make
    sudo make install
    cd ~
    rm -rf timew-1.1.1
    ~/.task/install.sh
end
