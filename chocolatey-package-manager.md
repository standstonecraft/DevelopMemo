# Chocolatey(パッケージ管理)

## 概要

Windows アプリを GUI でなくコマンドラインでインストール・管理できるツール
全部 GUI でやるならインストール不要

**Chocolatey でのインストール作業は常に管理者権限で行うこと**

## 導入

### プロキシが設定されている場合

PowerShell から web にリクエストするとき用のプロキシ設定を行う

```powershell
# PowerShell(管理者権限)
# PowerShell起動時に自動で実行されるスクリプトの中身確認
Get-Content $PROFILE

# ファイルがなかったり下記の内容がなかったらプロキシ設定を追記しておく
# これはユーザーごとの設定なので、実行したユーザーにしか効果がない
# xxx.xxx.xxx = プロキシサーバー
'[System.Net.WebRequest]::DefaultWebProxy = New-Object System.Net.WebProxy "xxx.xxx.xxx.xxx:8080", $True' >> $profile

# PowerShellの新しいプロセスを管理者権限で立ち上げる
Start-Process powershell
exit
```

### Chocolatey をインストールする

```powershell
# PowerShell(管理者権限)
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# 1行目がすぐに出てこなければ通信エラー
# Getting latest version of the Chocolatey package for download.

# PowerShellの新しいプロセスを管理者権限で立ち上げる
Start-Process powershell
exit
```

## インストール結果確認

```powershell
# PowerShell(管理者権限)
choco
# 下記のような出力があればOK
# Chocolatey v0.10.15
# Please run 'choco -?' or 'choco <command> -?' for help menu.
```

### プロキシが設定されている場合の Chocolatey の設定

```powershell
# PowerShell(管理者権限)
# 設定ファイルを開く
notepad $env:ChocolateyInstall\config\chocolatey.config
```

下記のように書き換えて閉じる

```xml
<add key="proxy" value="" description="Explicit proxy location. Available in 0.9.9.9+." />
```

↓

```xml
<add key="proxy" value="xxx.xxx.xxx.xxx:8080" description="Explicit proxy location. Available in 0.9.9.9+." />
```

```powershell
# PowerShell(管理者権限)
# PowerShellの新しいプロセスを管理者権限で立ち上げる
Start-Process powershell
exit
```

### 動作確認

```powershell
# PowerShell(管理者権限)
clist search dotnet
# Chocolatey v0.10.15
# 2 validations performed. 2 success(es), 0 warning(s), and 0 error(s).

# filesing.portable 1.0.0 [Approved]
# tbox 1.33.0.1 [Approved] - Possibly broken
# ilspy 6.0 [Approved]
# :
# :
```
