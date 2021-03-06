# fish-osx
Helpful OS X functions for fish.

## Install with Fisherman

**IMPORTANT: This repository is in flux and history may be rewritten, variables and function names changed until a stable version is released. This WILL break things, so for now only install if you absolutely know what you are doing and can deal with the resulting insanity. DON'T rely on it for any kind of production workflow.**

```bash
fisher i herrbischoff/fish-osx
```

## Usage

### dscleanup

> Recursively delete `.DS_Store` files from current folder.

```fish
dscleanup
```

No settings.

### emptytrash

> Empty the Trash on all mounted volumes and the main HDD. Also, clear Apple’s System Logs to improve shell startup speed.

```fish
emptytrash
```

No settings.

### flushdns

> Flush DNS cache.

```fish
flushdns
```

No settings.

### lscleanup

> Clean up LaunchServices to remove duplicates in the "Open With" menu.

```fish
lscleanup
```

No settings.

### mkicns

> An easy way to create .icns files.

```fish
mkicns <image.png>
```

No settings.

### update

> Get OS X Software Updates, update installed Ruby gems, Homebrew, npm, pip and their installed packages.

```fish
update
```

Set the variable `$fish_osx` to include the updaters you want:

```fish
set -x fish_osx asu brew npm pip ruby
```

## License

See [LICENSE](LICENSE).
