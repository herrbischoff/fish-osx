# Clean up LaunchServices to remove duplicates in the "Open With" menu
function lscleanup
    switch (uname)
    case Darwin
        /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user; and killall Finder
    case '*'
        echo Mac OS X only command.
    end
end
