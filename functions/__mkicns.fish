# An easy way to create .icns files
# Inspired by http://stackoverflow.com/a/20703594
function __mkicns
    set filename (echo $argv[1] | sed 's/\.[^.]*$//')
    mkdir $filename.iconset > /dev/null
    sips -z 16 16 $argv[1] --out $filename.iconset/icon_16x16.png > /dev/null
    sips -z 32 32 $argv[1] --out $filename.iconset/icon_16x16@2x.png > /dev/null
    sips -z 32 32 $argv[1] --out $filename.iconset/icon_32x32.png > /dev/null
    sips -z 64 64 $argv[1] --out $filename.iconset/icon_32x32@2x.png > /dev/null
    sips -z 128 128 $argv[1] --out $filename.iconset/icon_128x128.png > /dev/null
    sips -z 256 256 $argv[1] --out $filename.iconset/icon_128x128@2x.png > /dev/null
    sips -z 256 256 $argv[1] --out $filename.iconset/icon_256x256.png > /dev/null
    sips -z 512 512 $argv[1] --out $filename.iconset/icon_256x256@2x.png > /dev/null
    sips -z 512 512 $argv[1] --out $filename.iconset/icon_512x512.png > /dev/null
    cp $argv[1] $filename.iconset/icon_512x512@2x.png > /dev/null
    iconutil -c icns $filename.iconset > /dev/null
    rm -r $filename.iconset > /dev/null
end
