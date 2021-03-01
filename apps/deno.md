# Deno

[Deno](https://deno.land) is a Typescript (and Javascript) runtime.

## Code Completion

run `deno completions SHELL` to outputs the autocomplete script for given shell.

Example (fish):

```shellsession
deno completions fish > ~/.config/fish/completions/deno.fish
```

## Script Installer

The [Script installer](https://deno.land/manual/tools/script_installer#script-installer) installs a local script to easily distribute executable code.

## Subprocess

You can [communicate with subprocesses](https://deno.land/manual@master/examples/subprocess) using [Deno.run](https://doc.deno.land/builtin/stable#Deno.run) (_Note: requires the `--allow-run` flag, not run inside the Deno sandbox_).

### Subprocess Exit Status

```typescript
const cmd = Deno.run({cmd: ['ls']})
const status = await cmd.status()
console.log(status) // { success: true, code: 0 }

const cmd = Deno.run({cmd: ['ls', 'foo']})
const status = await cmd.status()
console.log(status) // { success: false, code: 2 }
```

## Useful Links

- [Deno Manual](https://deno.land/manual)
- [Third Party Modules](https://deno.land/x)
- [awesome-deno](https://github.com/denolib/awesome-deno) – a curated list of resources
- [Deno 101 for Web Developers](https://www.leveluptutorials.com/tutorials/deno-101-for-web-developers) – a beginner course by Scott Tolinski (paid) on Level Up Tutorials
- [Deno cheat sheet](https://droces.github.io/Deno-Cheat-Sheet/) – for an outdated Deno version but still has a lot of useful info
