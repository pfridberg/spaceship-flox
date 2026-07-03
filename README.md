<h1 align="center">
  😍 + 🚀
  <br>Spaceship Flox<br>
</h1>

<h4 align="center">
  A <a href="https://flox.dev" target="_blank">Flox</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/pfridberg/spaceship-flox/releases">
    <img src="https://img.shields.io/github/v/release/pfridberg/spaceship-flox.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/pfridberg/spaceship-flox/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/pfridberg/spaceship-flox/ci.yaml?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

  <a href="https://twitter.com/SpaceshipPrompt">
    <img src="https://img.shields.io/badge/twitter-%40SpaceshipPrompt-00ACEE.svg?style=flat-square"
      alt="Spaceship Twitter" />
  </a>

  <a href="https://discord.gg/NTQWz8Dyt9">
    <img
      src="https://img.shields.io/discord/859409950999707668?label=discord&logoColor=white&style=flat-square"
      alt="Chat on Discord"
    />
  </a>
</p>

Current Flox environment, through `$FLOX_PROMPT_ENVIRONMENTS`.

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/pfridberg/spaceship-flox.git $ZSH_CUSTOM/plugins/spaceship-flox
```

Include `spaceship-flox` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-flox)
```

### [zplug]

```zsh
zplug "pfridberg/spaceship-flox"
```

### [antigen]

```zsh
antigen bundle "pfridberg/spaceship-flox"
```

### [antibody]

```zsh
antibody bundle "pfridberg/spaceship-flox"
```

### [zinit]

```zsh
zinit light "pfridberg/spaceship-flox"
```

### [zgen]

```zsh
zgen load "pfridberg/spaceship-flox"
```

### [sheldon]

```toml
[plugins.spaceship-flox]
github = "pfridberg/spaceship-flox"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-flox`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/pfridberg/spaceship-flox.git "$HOME/.zsh/spaceship-flox"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-flox/spaceship-flox.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Flox section in the prompt:

```zsh
spaceship add flox
```

## Options

This section is shown only when a Flox environment is active.

| Variable                  |              Default               | Meaning                              |
|:--------------------------|:----------------------------------:| ------------------------------------ |
| `SPACESHIP_FLOX_SHOW`     |               `true`               | Show current section                 |
| `SPACESHIP_FLOX_PREFIX`   |              `flox:`               | Prefix before section                |
| `SPACESHIP_FLOX_SUFFIX`   | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_FLOX_COLOR`    |              `yellow`              | Color of section                     |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/), since this project adheres to [semver](https://semver.org/) and is automatically released via [semantic-release](https://github.com/semantic-release/semantic-release).

## License

MIT © [Patrik Fridberg Bakken](https://github.com/pfridberg)

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
