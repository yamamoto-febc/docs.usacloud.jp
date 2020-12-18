# completionコマンド

---

Usacloudではシェル補完(Shell Completion)のためのスクリプトを出力する`usacloud completion`コマンドをサポートしています。

```bash
$ usacloud completion -h

Usage:
  usacloud completion [bash|zsh|fish|powershell]

Flags:
  -h, --help   help for completion
```

## completionコマンドの書式

以下の書式で実行します。

```bash
$ usacloud completion <bash | zsh | fish | powershell>
```

## bash

あらかじめbash-completionをパッケージマネージャーなどでインストールしておきます。

以下のコマンドで有効化します。

    source <(usacloud completion bash)

各セッションでシェル補完を自動的にロードするには以下のコマンドを実行します。

    #Linuxの場合
    usacloud completion bash > /etc/bash_completion.d/usacloud

    #MacOSの場合
    usacloud completion bash > /usr/local/etc/bash_completion.d/usacloud


## zsh

If shell completion is not already enabled in your environment you will need  to enable it.  You can execute the following once:

    echo "autoload -U compinit; compinit" >> ~/.zshrc

To load completions for each session, execute once:

    usacloud completion zsh > "${fpath[1]}/_usacloud"

You will need to start a new shell for this setup to take effect.

## Fish

    usacloud completion fish | source

To load completions for each session, execute once:

    usacloud completion fish > ~/.config/fish/completions/usacloud.fish