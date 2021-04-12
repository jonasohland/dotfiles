function killpocaengine
kill -INT (ps -ef -o comm,pid | grep pocaengine | awk '{print $2}')
end
