# elvish-osc7

## Why

When using Elvish in some terminals, the terminal may not be aware of Elvish's
working directory. As a result, if you open a new tab in the terminal, it won't
inherit the working directory of the existing Elvish session.

The terminal may support a special escape sequence called [OSC
7](https://wezfurlong.org/wezterm/shell-integration.html#osc-7-escape-sequence-to-set-the-working-directory).
When a program in the terminal prints this escape sequence, the terminal will
know what the working directory is. But this requires the program to proactively
inform the terminal whenever the working directory changes.

## How to use

Run this once to install this module:

```elvish
use epm
epm:install github.com/xiaq/elvish-osc7
```

Add this to `rc.elv`:

```elvish
use github.com/xiaq/elvish-osc7/osc7
osc7:init-hook
```
