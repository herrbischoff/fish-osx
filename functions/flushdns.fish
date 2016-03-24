# Flush DNS cache
function flushdns
    switch (uname)
    case Darwin
        dscacheutil -flushcache; and killall -HUP mDNSResponder
    case '*'
        echo Mac OS X only command.
    end
end
