# VS Code での .NET Core プロジェクト作成

## 前提

- 必須
  - VS Codeでの開発
  - .NET Core インストール済み
  - VS Code拡張 "ms-dotnettools.csharp" インストール済み

## 作業

プロジェクト作成

```powershell
dotnet new console
```

## SVN ignore設定

gitignore書式でOK。下記が使える  

[gitignore/VisualStudio.gitignore at master · github/gitignore](https://github.com/github/gitignore/blob/master/VisualStudio.gitignore)

```powershell
svn propset svn:ignore -RF .\svn-ignore.txt .
```

ファイルを参照し続けるわけではないためどこにあってもOK。GUIでも設定可能