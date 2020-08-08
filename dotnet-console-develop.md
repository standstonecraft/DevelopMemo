# VS Code での .NET コンソールアプリ開発

## ソフトウェア導入

前提：chocolatey 導入済み(そうでない場合は`dotnet-console-develop-choco.config`で必要なソフトを確認して全手順自分でやってください)

```powershell
# PowerShell(管理者権限で起動)
# 不要なソフトはコメントアウトするか消してから実行
cinst dotnet-console-develop-choco.config --log-file=installResult.txt -y

```

## VS Code

### 拡張導入

VS Code の GUI でも導入可能だが数が多いので一括で導入する

#### プロキシ設定が必要な場合

- VS Code を起動
- <kbd>F1</kbd> '>Open Settings (JSON)`
- 最初の開きカッコの直後に追加
  ```
  "http.proxy": "xxx.xxx.xxx.xxx:yyyy",
  "http.proxyStrictSSL": false,
  ```

#### 導入

```powershell
# PowerShell
# 日本語化
code code --install-extension 'ms-ceintl.vscode-language-pack-ja'
# .NET Core 開発ツール・デバッグ支援
code code --install-extension 'ms-dotnettools.csharp'
# C# 整形
code code --install-extension 'leopotam.csharpfixformat'
# C# using オートコンプリート
code code --install-extension 'fudge.auto-using'
# C# コメントドキュメンテーション
code code --install-extension 'k--kato.docomment'
# SQL Server クライント
code code --install-extension 'ms-mssql.mssql'
# SQL 整形
code code --install-extension 'adpyke.vscode-sql-formatter'
# XML 整形
code --install-extension 'dotjoshjohnson.xml'
# JSON ソート
code --install-extension 'richie5um2.vscode-sort-json'
# カッコを色分けして見やすくする
code code --install-extension 'coenraads.bracket-pair-colorizer'
# ファイルをデフォルトアプリで開く
code --install-extension 'sandcastle.vscode-open'
# SVN (入れる場合)
code --install-extension 'johnstoncode.svn-scm'
# PowerShell 統合(任意)
code --install-extension 'ms-vscode.powershell'

```

使い方は [vscode.md](vscode.md)
