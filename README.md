# fish-osx
Helpful OS X functions for fish.

## Install with Fisherman

**IMPORTANT: This repository is in flux and history may be rewritten, variables and function names changed until a stable version is released. This WILL break things, so for now only install if you absolutely know what you are doing and can deal with the resulting insanity. DON'T rely on it for any kind of production workflow.**

```bash
fisher i herrbischoff/fish-osx
```

## Usage

### flushdns

> Flush DNS cache.

No settings.

### update

> Get OS X Software Updates, update installed Ruby gems, Homebrew, npm, pip and their installed packages.

Set the variable `$fish_osx` to include the updaters you want:

```fish
set -x fish_osx asu brew npm pip ruby
```

## License

See [LICENSE](LICENSE).
