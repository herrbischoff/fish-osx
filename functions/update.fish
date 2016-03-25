# Get OS X Software Updates, update installed Ruby gems, Homebrew, npm, pip and their installed packages
function update
    switch (uname)
    case Darwin
        if contains asu $fish_osx
            echo "=====[ Apple Software Update ]===================================="; and \
            sudo softwareupdate -i -a
        end
        if contains brew $fish_osx
            echo "=====[ Homebrew ]================================================="; and \
            brew update; and \
            brew upgrade; and \
            brew cleanup -s; and \
            brew cask cleanup
        end
        if contains npm $fish_osx
            echo "=====[ npm ]======================================================"; and \
            npm install npm -g; and \
            npm update -g
        end
        if contains ruby $fish_osx
            echo "=====[ Gems ]====================================================="; and \
            sudo gem update --system; and \
            sudo gem update
        end
        if contains pip $fish_osx
            echo "=====[ pip ]======================================================"; and \
            python -m pip install --upgrade (python -m pip list --outdated | awk '/.*/ {print $1}'); and \
            python3 -m pip install --upgrade (python3 -m pip list --outdated | awk '/.*/ {print $1}')
        end
    case '*'
        echo Command not supported on (uname).
    end
end
