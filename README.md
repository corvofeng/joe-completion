# joe-completion(For oh-my-zsh)

[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badge/)

 A small zsh completion plugin for https://github.com/karan/joe



![ezgif com-optimize](https://user-images.githubusercontent.com/12025071/45219945-256aaf80-b2df-11e8-8806-bcd8af779e2d.gif)

## Usage

```bash
git clone https://github.com/corvofeng/joe-completion.git $ZSH/custom/plugins/joe-completion
```

You can think of it as a plugin for oh-my-zsh, or just a zshfile and source it

`plugins=(... joe-completion ...)`

OR

```bash

if [ -f <joe-completion>/joe-completion.plugin.zsh ]; then
    source <joe-completion>/joe-completion.plugin.zsh
fi
```

## Reference

> Learned some fragments from:

   1. **google-cloud-sdk/completion.zsh.inc**
   2. **/usr/share/zsh/site-functions/_archlinux-java**
   3. **/usr/share/zsh/functions/Completion/Linux/_sshfs**


## Thanks to the author of the [joe][joe], and [oh-my-zsh][oh-my-zsh]

[joe]: https://github.com/karan/joe
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh


## LICENSE

Copyright © 2018 corvo.

This project is licensed under version 3 of the GNU General Public License.

