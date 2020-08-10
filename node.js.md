# Node.js

Node.js を使う際、利用サービスによってはそのバージョンを指定される場合がある。
そうでなくとも一つの PC に複数のプロジェクトが存在する場合、切り替えが必要になる。

そこで自動切換えが可能なツール nodist を導入する。

## 既存 Node.js の削除

nodist は Node.js を置き換えて独自の動作を行っているため純正の Node.js が入っているのは好ましくない。nvm も削除する。

## nodist の導入

[Releases · nullivex/nodist](https://github.com/nullivex/nodist/releases)

## Node.js の導入

```bat
# 利用可能なバージョンのリスト
nodist dist
```

```bat
# 特定バージョンのインストール
nodist + バージョン
```

```bat
# 使用バージョンの切り替え(メジャーバージョンだけでも指定できる)
nodist バージョン
```

```bat
# npm が勝手に入るが最新じゃない場合があるらしい
npm update npm
```

```bat
# npx は勝手に入ってくれないらしい
npm i npx -g
```

## バージョンの自動切り替え

> The following is a list of all scopes ordered by precedence (the first scope is the one with the highest priority; only if it's not set, the second scope is examined).
>
> 1. Environment (`NODIST_NODE_VERSION`and `NODIST_NPM_VERSION` env vars)
> 2. (optional:) Package (`package.json` with an `engines` field in the _directory of interest_ or one of its parent directories)
> 3. Directory (`.node-version` or `.npm-version` in the _directory of interest_ or one of its parent directories)
> 4. Global (globally set node or npm version)

[nullivex/nodist: Natural node.js and npm version manager for windows.](https://github.com/nullivex/nodist#scope-precedence)
