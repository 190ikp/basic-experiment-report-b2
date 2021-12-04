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

## 図表番号について

デフォルトでは図表のラベルが英語で振られます．これを日本語にするにはpandoc-crossrefのconfigを書いてあげる必要があります．\
ホームディレクトリ直下に`.pandoc-crossref`ディレクトリを作って[`template/pandoc-crossref.yaml`](template/pandoc-crossref.yaml)を置いてあげると，特にオプションで指定しなくても反映されるようになります．
この場合，`pandoc-crossref.yaml`の設定はシステム全体に適用されます．\
もしくは，Pandocでのビルド時に`--metadata`オプションで`crossrefYaml`キーを使って，このconfigファイルを指定してください．
この場合はこのレポートのビルドにのみ設定が適用されます．

なお，後述のTasksや`vscode-pandoc`プラグインを利用してビルドする場合は，デフォルトで図表ラベルが日本語になるようにしてあります．
## 参考文献の書き方について

詳細は http://sky-y.github.io/site-pandoc-jp/users-guide/#citations に書いてあります．\
ここに書くと長くなるので読んで，どうぞ． \
ただ理工学基礎実験の場合，レポート内で参考文献のリンクを貼る必要までは無いので，参考文献のリストのところに雑に書いてあげる程度で十分です．

参考文献を直接本文に書き込む場合は，`# 参考文献`の後ろに` {-}`を入れましょう (番号振られるのを避けるため)．
テンプレートファイルでは入れてあります．

## ショートカットを使用してPDFをビルドする

VSCodeを入れて[`vscode-pandoc`](https://marketplace.visualstudio.com/items?itemName=DougFinke.vscode-pandoc)を使うと，settings.jsonに`"pandoc.pdfOptString": "--filter pandoc-crossref --metadata=crossrefYaml:/dist/to/your/pandoc-crossref.yaml --filter pandoc-citeproc --pdf-engine=lualatex -N --template=/dist/to/your/template.tex"`と書いておけば`Shift+Ctrl+P -> Pandoc Render -> pdf`でビルドできていい感じに楽できます．\
[`.vscode/settings.json.example`](.vscode/settings.json.example)に例があります．\
（`/dist/to/your/`の箇所は適切なファイルパスに変更する必要があります．絶対パスを指定すると安全です．）

別の方法として，VSCodeの[Tasks](https://code.visualstudio.com/docs/editor/tasks)を利用することでサードパーティへの依存を減らしました．\
こちらは`vscode-pandoc`のインストールやsettings.jsonの修正が必要なくPDFのビルドが可能です．\
`Ctrl+Shift+P`で`Tasks: Run Build Task > build a pdf`を選択するか，`Ctrl+Shift+B`で`build a pdf`を選択するとビルドできます．\
また，上記の操作をショートカットキーに設定することも可能です．
詳しくは[こちら](https://code.visualstudio.com/docs/editor/tasks#_binding-keyboard-shortcuts-to-tasks)をご覧ください．\
（ファイル保存時の自動ビルドは行いません．）

## その他

書き方のサンプルを追加しました．画像のレイアウトなどについてわからなければ[こちら](example/examples.md)を読んでください．

質問とかはquestionラベルを付けてissueに投げてください．\
不具合とかあったら直してプルリクしてください．喜びます．\
カスタムcslファイルの追加も歓迎です．

## 参考

- 元記事: https://qiita.com/Kumassy/items/5b6ae6b99df08fb434d9
- 困ったら: http://sky-y.github.io/site-pandoc-jp/users-guide/
