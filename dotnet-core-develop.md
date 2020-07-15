# VS Code での .NET Core 開発

## ソフトウェア導入

前提：chocolatey 導入済み(そうでない場合は全手順自分でやってください)

PowerShell を管理者権限で起動

```powershell
# PowerShell
# アプリインストール
# .NET Core SDK
choco install dotnetcore-sdk -y
# .NET Frameworkの場合はこれも
choco install netfx-4.7-devpack -y
# SVN(入れる場合)
choco install tortoisesvn -y
# VS Code (エディタ)
choco install vscode -y

# PowerShell を再起動

```

## SVN チェックアウト

```powershell
# PowerShell
# チェックアウトするフォルダがなければ作る
New-Item c:\SVN\ProjectName -ItemType Directory -ErrorAction Ignore
# チェックアウト
svn co 目的のフォルダ チェックアウトフォルダ
# 例
# svn co file:///C:/SVNHost/ProjectName c:\SVN\ProjectName
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
# SVN を直接使えるようになる
code code --install-extension 'johnstoncode.svn-scm'
# SQL Server クライント
code code --install-extension 'ms-mssql.mssql'
# SQL 整形
code code --install-extension 'adpyke.vscode-sql-formatter'

```

使い方は [vscode.md](vscode.md)
