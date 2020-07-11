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

エクスプローラーのプロジェクトフォルダー内のなにもないところで右クリック＞`Tortoise SVN`＞`Properties`＞ <kbd>New</kbd> > `Other`  
name：svn:global-ignores  
value：
```
bin
obj

```