# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
function emptytrash
    switch (uname)
    case Darwin
        sudo rm -rfv /Volumes/*/.Trashes; and sudo rm -rfv ~/.Trash; and sudo rm -rfv /private/var/log/asl/*.asl
    case '*'
        echo Mac OS X only command.
    end
end
