# VS Code での .NET プロジェクト作成

## 前提

- 必須
  - VS Code での開発
  - .NET Core インストール済み(.NET Frameworkの場合でも)
  - VS Code 拡張 "ms-dotnettools.csharp" インストール済み
- 任意
  - .NET Frameworkの場合は目的のバージョンのインストール済み


## 作業

プロジェクト作成

### .NET Core

```powershell
$ProjectName = "SomethingCoolName"
dotnet new console -n "${ProjectName}" -o src
dotnet new xunit -o test -n "${ProjectName}.Test"
cd test
dotnet add reference ../src/"${ProjectName}.csproj"
cd ..

```

### .NET Framework
.NET Framework でも開発可能。その場合は`--target-framework-override`オプションを使用する。

下記 `net47` は .NET Framework 4.7 の場合。
バージョンの表記方法は [Target frameworks in SDK-style projects - .NET | Microsoft Docs](https://docs.microsoft.com/en-us/dotnet/standard/frameworks) で確認のこと

```powershell
$ProjectName = "SomethingCoolName"
dotnet new console --target-framework-override net47 -n "${ProjectName}" -o src
dotnet new xunit --target-framework-override net47 -o test -n "${ProjectName}.Test"
cd test
dotnet add reference ../src/"${ProjectName}.csproj"
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
