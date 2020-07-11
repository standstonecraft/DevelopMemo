# VS Code での .NET Core プロジェクト作成

## 前提

- 必須
  - VS Code での開発
  - .NET Core インストール済み
  - VS Code 拡張 "ms-dotnettools.csharp" インストール済み

## 作業

プロジェクト作成

```powershell
dotnet new console
```

## ライセンス管理

ライブラリは成果物に含まれるため、商流によっては使用ライブラリのライセンスを確認しておく必要がある  
例えばA社の依頼でGPLを含む製品を作り納品した場合、ユーザーとソースコードを公開すべき対象が一致しているので問題ない  
一方クライアントアプリを世間一般に販売する場合などにはソースを公開する必要がある

ライブラリのライセンスを一括出力する方法

```powershell
dotnet tool install --global dotnet-project-licenses
```

出力方法

```powershell
dotnet-project-licenses -i .
```

## SVN ignore 設定

エクスプローラーのプロジェクトフォルダー内のなにもないところで右クリック＞`Tortoise SVN`＞`Properties`＞ <kbd>New</kbd> > `Other`  
name：svn:global-ignores  
value：

```
bin
obj

```
