function mkicns
    if spin --help > /dev/null
        if not spin "__mkicns $argv[1]"
            return 1
        end
    else
        __mkicns $argv[1]
    end
end
