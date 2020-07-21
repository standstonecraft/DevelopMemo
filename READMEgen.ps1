# README.md を生成します
$body = @'
# README

インストール時いつも詰むしプロジェクトの中でメモしても一緒に消しちゃうからここに書く

日本語で書くけど打つのがめんどくさいときはエセ英語で書いても可

'@

$body | Out-File -FilePath README.md -Encoding utf8

Get-ChildItem -Filter *.md |
Where-Object { $_.Name -ne "README.md" } |
ForEach-Object {
    $title = Get-Content $_ -Encoding UTF8 | Select-Object -First 1
    $title = $title.SubString(2)
    "- [$title]($($_.Name))"
} |
Out-File -FilePath README.md -Encoding utf8 -Append

