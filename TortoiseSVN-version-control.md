# TortoiseSVN(バージョン管理)

## インストール(Chocolatey)

```powershell
# PowerShell(Admin)
choco install tortoisesvn -y
```

## リポジトリ管理者の設定

### セキュリティ設定

認証済みユーザーのみ読み書き可能とパスワード認証有効化の設定  
`リポジトリフォルダ\conf\svnserve.conf`

```ini
# anon-access = read
anon-access = none
auth-access = write
：
：
### Uncomment the line below to use the default password file.
password-db = passwd
```

ID とパスワードの管理  
`リポジトリフォルダ\conf\passwd`

```ini
[users]
# harry = harryssecret
# sally = sallyssecret
user1 = user1pass
```

### SVN ignore 設定

エクスプローラーのプロジェクトフォルダー内のなにもないところで右クリック＞ `Tortoise SVN` ＞ `Properties` ＞ <kbd>New</kbd> > `Other`

```
name：
svn:global-ignores
value：
bin
obj

```

## チェックアウト

```powershell
# PowerShell
# チェックアウトするフォルダがなければ作る
New-Item c:\SVN\ProjectName -ItemType Directory -ErrorAction Ignore
# チェックアウト
svn co 目的のフォルダ チェックアウトフォルダ
# 例
# svn co file:///C:/SVNHost/ProjectName c:\SVN\ProjectName
```
