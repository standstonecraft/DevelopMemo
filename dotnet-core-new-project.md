# VS Code での .NET Core プロジェクト作成

## 前提

- 必須
  - VS Code での開発
  - .NET Core インストール済み
  - VS Code 拡張 "ms-dotnettools.csharp" インストール済み

## 作業

プロジェクト作成

```powershell
dotnet new console -n ProjectName -o src
dotnet new xunit -o test -n ProjectName.Test
cd test
dotnet add reference ../src/ProjectName.csproj
cd ..

```

## ライセンス管理

ライブラリのライセンスを一括出力する方法

```powershell
dotnet tool install --global dotnet-project-licenses
```

出力方法

```powershell
dotnet-project-licenses -i .
```

## SVN ignore 設定

エクスプローラーのプロジェクトフォルダー内のなにもないところで右クリック＞ `Tortoise SVN` ＞ `Properties` ＞ <kbd>New</kbd> > `Other`  

```
name：
svn:global-ignores  
value：
bin
obj

```

[visual studio 2010 - How to generate model from database using Dapper? - Stack Overflow](https://stackoverflow.com/questions/11056141/how-to-generate-model-from-database-using-dapper)