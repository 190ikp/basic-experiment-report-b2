# 電気情報工学実験 (B3) レポート用テンプレート
## これはなに

慶應の理工学部電気情報工学科3年生がMarkdown + Pandocで実験レポートを楽に生産するためのテンプレート

## 使い方

[先人1](https://gist.github.com/Kumassy/cbecb2a34f68cfd0a6be24426f9c7aa4)
[先人2](https://github.com/190ikp/basic-experiment-report-b2)
に感謝:pray:

1. VSCodeとDockerをインストール
2. VSCodeに[Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)を入れる
3. コマンドパレットから`Remote-Containers: Reopen in Container`を選択してコンテナに入る(初回はビルドするので遅い)
4. template.mdをもとにいい感じのレポートをMarkdownで書く
5. `Shift+Ctrl+P -> Pandoc Render -> pdf`でPDFを生成！(`Ctrl+K -> P`でも可)
6. 実験レポートが生まれる

## 参考文献の書き方について

詳細は http://sky-y.github.io/site-pandoc-jp/users-guide/#citations に書いてあります．\
ここに書くと長くなるので読んで，どうぞ． 

参考文献を直接本文に書き込む場合は，`# 参考文献`の後ろに` {-}`を入れましょう (番号振られるのを避けるため)．

## その他

質問とかはquestionラベルを付けてissueに投げてください．\
不具合とかあったら直してプルリクしてください．喜びます．\
カスタムcslファイルの追加も歓迎です．

## 参考

- 元記事: https://qiita.com/Kumassy/items/5b6ae6b99df08fb434d9
- 困ったら: http://sky-y.github.io/site-pandoc-jp/users-guide/