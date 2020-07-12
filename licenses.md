# 使用ソフトウェアのライセンス情報

急に有償化していることがあるため、導入時に毎回一次情報を確認すること。  
開発時の使用が無償か、成果物に含む(販売・配布)ことが無償かを分けて考える。

ネットで公開されているソフトウェアを使用する場合

- プロジェクトの規模
- ビジネス用途であるか
- 運用環境での使用か
- ビジネス用途で成果物に組み込まれるか

等の条件によって使用条件が異なる場合があるので、導入時に必ず確認する。  
ブログ記事などで無料と紹介されていてもあてにしてはならない。

OSS の製品についてもライセンス形態が多数存在し確認する意識は必要だが、
SIer として閉じた組織にバイナリとソースコードを納品する場合は
問題になることはほとんどない。
(ライセンスで謳われる義務がライセンス表記とソース公開のため)  
世間一般に対してクライアントアプリが販売されるような場合に注意が必要。

また神経質になって、 GPL のよくある質問ページを見に行くのは精神汚染されるためお勧めしない

> GPL の及ぶプログラムのコピーを誰かが持っていると知っている場合、わたしはかれにコピーを下さいと要求できますか?

> いいえ。GPL は、かれにかれがそれを選んだ場合、その時に、プログラムのコピーを作成し、再配布する許可を与えます。それをかれが選ぶとき、かれは、プログラムを再配布しない権利も持つのです。

## Chocolatey

- 成果物に含む: NO
- ライセンス形態: Apache 2.0(商用利用可能、配布時は要ライセンス表記)
- 確認日: 2020/07/11
- 参照ページ: [Chocolatey Software | Pricing](https://chocolatey.org/pricing)

## .NET Core

- 成果物に含む: YES
- ライセンス形態: MIT および Apache 2 ライセンス
- 確認日: 2020/07/11
- 参照ページ: [.NET is free | Open-source. No licensing costs.](https://dotnet.microsoft.com/platform/free)
  > There are no licensing costs, including for commercial use.

## TortoiseSVN

- 成果物に含む: NO
- ライセンス形態: GPL
- 確認日: 2020/07/11
- 参照ページ: [About · TortoiseSVN](https://tortoisesvn.net/about.html)
  > It is developed under the GPL. Which means it is completely free for anyone to use, including in a commercial environment, without any restriction.

## Visual Studio Code

- 成果物に含む: NO
- ライセンス形態: MIT ライセンス
- 確認日: 2020/07/11
- 参照ページ: [Visual Studio Code Frequently Asked Questions](https://code.visualstudio.com/docs/supporting/faq#_is-vs-code-free)
  > VS Code is free for private or commercial use.
