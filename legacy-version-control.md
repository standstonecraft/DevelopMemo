# 自力でバージョン管理

下記ソフトを導入する(Chocolatey が入っていないなら自力で入れる)

```powershell
# 管理者権限で実行
# ファイル比較・マージソフト
choco install winmerge
# ファイル圧縮・展開ソフト(Winmergeでzip比較に使う)
choco install 7zip
```

あとは タイムスタンプ-ユーザーID-コメント.zip などで管理してください知りません