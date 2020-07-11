# Chocolatey(パッケージ管理)

## 概要

Windows アプリを GUI でなくコマンドラインでインストール・管理できるツール
全部 GUI でやるならインストール不要

## 導入

1. PowerShell を管理者権限で起動  
   <kbd>Win</kbd> 押して'powershell' で見つかるはず。管理者として実行する
1. インストール

   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```

1. インストール後なにかするときは必ず PowerShell を再起動

この手順の原文：[Chocolatey Software | Installation](https://chocolatey.org/docs/installation#install-with-powershellexe)
