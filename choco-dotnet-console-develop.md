# VS Code での .NET コンソールアプリ開発

## ソフトウェア導入

前提：chocolatey 導入済み(そうでない場合は`choco-dotnet-console-develop.config`で必要なソフトを確認して全手順自分でやってください)

```powershell
# PowerShell(管理者権限で起動)
# 不要なソフトはコメントアウトするか消してから実行
cinst choco-dotnet-console-develop.config --log-file=installResult.txt -y

```

## VS Code

### 拡張導入

VS Code の GUI でも導入可能だが数が多いので一括で導入する

```powershell
# PowerShell
# 日本語化
code code --install-extension 'ms-ceintl.vscode-language-pack-ja'
# カッコを色分けして見やすくする
code code --install-extension 'coenraads.bracket-pair-colorizer'
# .NET Core 開発ツール・デバッグ支援
code code --install-extension 'ms-dotnettools.csharp'
# C# 整形
code code --install-extension 'leopotam.csharpfixformat'
# C# コメントドキュメンテーション
code code --install-extension 'k--kato.docomment'
# SQL Server クライント
code code --install-extension 'ms-mssql.mssql'
# SQL 整形
code code --install-extension 'adpyke.vscode-sql-formatter'

```

使い方は [vscode.md](vscode.md)
