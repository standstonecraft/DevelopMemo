# VS Code での .NET Core 開発

## ソフトウェア導入

前提：chocolatey 導入済み(そうでない場合は全手順自分でやってください)

PowerShell を管理者権限で起動

```powershell
# アプリインストール
# .NET Core SDK
choco install dotnetcore-sdk -y
# SVN
choco install tortoisesvn -y
# VS Code (エディタ)
choco install vscode -y

# PowerShell を再起動
Start-Process PowerShell -verb runas
# 古いPowerShellを閉じる
exit
```

## SVN チェックアウト

```powershell
# チェックアウトするフォルダがなければ作る
New-Item c:\SVN\ProjectName -ItemType Directory -ErrorAction Ignore
# チェックアウト
svn co 目的のフォルダ チェックアウトフォルダ
# 例
# svn co file:///C:/SVNHost/ProjectName c:\SVN\ProjectName
```

## VS Code

### 拡張導入

```powershell
# カッコを色分けして見やすくする 'coenraads.bracket-pair-colorizer'
# .NET Core 開発ツール・デバッグ支援 'ms-dotnettools.csharp'
# 日本語化 'ms-ceintl.vscode-language-pack-ja'
$pkgs = (
    'coenraads.bracket-pair-colorizer',
    'ms-dotnettools.csharp',
    'ms-ceintl.vscode-language-pack-ja',
    'johnstoncode.svn-scm'
);
$pkgs |
%{code code --install-extension $_}

```

使い方は [vscode.md](vscode.md)
