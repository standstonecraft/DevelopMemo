# VS Code で Git を使う

Windows の場合。

## SVN でいうチェックアウト的な行動

1. DO NOT create a project folder
1. install Git gui
1. launch vscode
1. <kbd>F1</kbd> `Git: Clone`
1. choose repository location (not repository folder)
1. click 'open' in notification balloon

どこかで GitHub のログインページが開いたと思う

## commit する前に

```powershell
# PowerShell
git config --local user.name [name]
git config --local user.email [email]
```

## push

configure user info before commit

