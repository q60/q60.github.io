+++
title = "disfetch - system information fetching tool"
description = "Yet another *nix distro fetching program, but less complex. Written in POSIX shell."
date = 2022-01-24

[taxonomies]
tags = ["code", "utils", "shell"]

[extra]
author = "kira"
+++


# hi
{{accent(text="disfetch",href="https://github.com/q60/disfetch")}} is a simple *POSIX Shell* utility that fetches your system information in a prettier way.

## why disfetch?
Unlike many other fetching tools, **disfetch** covers several principles:
1. being the most simple and minimalistic while providing beautiful *same style* logos
2. providing user with the only important and needed information, remaining simple in all aspects
3. each logo is handmade, ASCII-only, not more and not less than 8 rows
4. highly commented readable and maintainable bloatless code
5. being fast

#### some examples
<sub>**by me:**</sub>
{{img(src="example1.png")}}
<sub>**by [https://github.com/Corgiek](https://github.com/Corgiek):**</sub>
{{img(src="example2.png")}}

#### benchmarks
| fetch                                                                    | `time`                                                 |
|--------------------------------------------------------------------------|--------------------------------------------------------|
| `disfetch`                                                               | **0.15s** user **0.05s** system **108%** cpu **0.188** |
| `pfetch`                                                                 | **0.04s** user **0.02s** system **101%** cpu **0.057** |
| `neofetch`                                                               | **0.16s** user **0.10s** system **57%** cpu **0.443**  |
| `neofetch --disable resolution theme icons term cpu gpu memory wm_theme` | **0.14s** user **0.07s** system **102%** cpu **0.207** |

## supported operating systems
Here's the list of currently supported operating systems.

| distro                   | packages | logo              |
|--------------------------|----------|-------------------|
| Alpine Linux             | yes      | yes               |
| Android                  | yes      | yes               |
| Astra Linux              | yes      | yes               |
| ArchBang Linux           | yes      | yes               |
| ArchLabs Linux           | yes      | yes               |
| Arch Linux               | yes      | yes               |
| ArcoLinux                | yes      | yes               |
| Artix Linux              | yes      | yes               |
| Bedrock Linux            | yes      | yes               |
| CentOS                   | yes      | yes               |
| Debian                   | yes      | yes               |
| Elementary OS            | yes      | yes               |
| EndeavourOS              | yes      | yes               |
| Fedora                   | yes      | yes               |
| Garuda Linux             | yes      | yes               |
| Gentoo Linux             | yes      | yes               |
| Haiku OS                 | yes      | yes               |
| Kali Linux               | yes      | yes               |
| Kubuntu                  | yes      | yes               |
| Linux Mint               | yes      | yes               |
| lubuntu                  | yes      | <ins>**no**</ins> |
| Manjaro                  | yes      | yes               |
| MSYS2                    | yes      | yes               |
| MX Linux                 | yes      | yes               |
| NixOS                    | yes      | yes               |
| openSUSE                 | yes      | yes               |
| Parabola Linux-libre     | yes      | yes               |
| postmarketOS             | yes      | yes               |
| Qubes OS                 | yes      | yes               |
| Raspbian                 | yes      | yes               |
| Red Hat Enterprise Linux | yes      | yes               |
| Slackware Linux          | yes      | yes               |
| Ubuntu                   | yes      | yes               |
| Void Linux               | yes      | yes               |
| Zorin OS                 | yes      | yes               |

## installation
<a href="https://repology.org/project/disfetch/versions">
    <img src="https://repology.org/badge/vertical-allrepos/disfetch.svg" alt="Packaging status">
</a>

+ There's [a package in AUR](https://aur.archlinux.org/packages/disfetch/)
+ There's [a package in MPR](https://mpr.hunterwittenborn.com/packages/disfetch/)
+ There's [a package in Alpine](https://pkgs.alpinelinux.org/packages?name=disfetch)
+ There's also [a package in Nixpkgs](https://search.nixos.org/packages?from=0&size=50&sort=relevance&query=disfetch)
+ Grabbing the latest release [tarball](https://github.com/q60/disfetch/releases) then running `make install`
  should be enough.

Feel free to contribute, create and maintain packages for disfetch for
your favorite distros.

## usage
See `disfetch -h`.
