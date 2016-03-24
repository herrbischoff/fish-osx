# Recursively delete .DS_Store files
function dscleanup
    find . -type f -name "*.DS_Store" -ls -delete
end
