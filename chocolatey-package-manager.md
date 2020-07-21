# Chocolatey(パッケージ管理)

## 概要

Windows アプリを GUI でなくコマンドラインでインストール・管理できるツール
全部 GUI で手動でやるならインストール不要

## 導入

### web に到達できるか確かめる

PowerShell から web にリクエストできないとき、下記のプロキシ設定を行う

```powershell
# リクエストできるか確かめる
(New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')

```

下記のように出力されれば OK

```
# =====================================================================
# Copyright 2017 - 2020 Chocolatey Software, Inc, and the
:
:
```

「サーバーに到達できません」と出たときはプロキシ設定が必要と思われる

### Chocolatey をインストールする

```powershell
# PowerShell(管理者権限)
# 必要な場合はプロキシ設定
[System.Net.WebRequest]::DefaultWebProxy = New-Object System.Net.WebProxy "xxx.xxx.xxx.xxx:yyyy", $True
# インストール
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# 1行目がすぐに出てこなければ通信エラー
# Getting latest version of the Chocolatey package for download.

# PowerShellの新しいプロセスを管理者権限で立ち上げる
Start-Process powershell;exit

```

## インストール結果確認

```powershell
# PowerShell
choco
# 下記のような出力があればOK
# Chocolatey v0.10.15
# Please run 'choco -?' or 'choco <command> -?' for help menu.
```

## プロキシが設定されている場合の Chocolatey の設定

```powershell
# PowerShell
choco config set proxy "xxx.xxx.xxx.xxx:yyyy"
# PowerShellの新しいプロセスを管理者権限で立ち上げる
Start-Process powershell;exit

```

## 動作確認

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
