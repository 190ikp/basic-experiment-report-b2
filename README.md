# 理工学部基礎実験 (B2) レポート用テンプレート

## これはなに

慶應の理工学部2年生がMarkdown + Pandocで実験レポートを楽に生産するためのテンプレート

## 使い方

[先人](https://gist.github.com/Kumassy/cbecb2a34f68cfd0a6be24426f9c7aa4)に感謝:pray:

ディレクトリとかは自分の環境によって適宜読み替えてください．

1. `texlive`, `pandoc`, `pandoc-citeproc`, `pandoc-crossref`をインストール \
   (Pandocのインストールは[`Stack`](https://docs.haskellstack.org/en/stable/README/)を使うと楽，`texlive`はググってどうぞ)
2. template.mdをもとにいい感じのレポートをMarkdownで書く
3. `pandoc your_report.md -o your_report.pdf -F pandoc-crossref --filter pandoc-citeproc --pdf-engine=lualatex -N --template=/dist/to/your/template.tex`でビルド \
   `template.tex`のパスはフルパスを書いておいたほうが安全です．
4. PDFでレポートが出力されるので確認する
5. 実験レポートが生まれたよ！かわいいね

## 参考文献の書き方について

詳細は http://sky-y.github.io/site-pandoc-jp/users-guide/#citations に書いてあります．\
ここに書くと長くなるので読んで，どうぞ． 

参考文献を直接本文に書き込む場合は，`# 参考文献`の後ろに` {-}`を入れましょう (番号振られるのを避けるため)．

## オススメ

VSCodeを入れて[`vscode-pandoc`](https://marketplace.visualstudio.com/items?itemName=DougFinke.vscode-pandoc)を使うと，settings.jsonに`"pandoc.pdfOptString": "-F pandoc-crossref --filter pandoc-citeproc --pdf-engine=lualatex -N --template=/dist/to/your/template.tex"`と書いておけば`Shift+Ctrl+P -> Pandoc Render -> pdf`でビルドできていい感じに楽できます．\
[`.vscode/settings.json.example`](.vscode/settings.json.example)に例があります．\
Windowsに対応させるのが面倒なので作ってませんが，makefileを使うのもありだと思います．

また，デフォルトだと図表のラベルが英語で振られます．これを日本語にするには，pandoc-crossrefのconfigを書いてあげる必要があります．\
ホームディレクトリ直下に`.pandoc-crossref`ディレクトリを作って[`template/pandoc-crossref.yaml`](template/pandoc-crossref.yaml)を置いてあげると，特にオプションで指定しなくても反映されるようになります．
もしくは，Pandocでのビルド時に`--metadata`オプションで`crossrefYaml`キーを使って，このconfigファイルを指定してください．

## その他

質問とかはquestionラベルを付けてissueに投げてください．\
不具合とかあったら直してプルリクしてください．喜びます．\
カスタムcslファイルの追加も歓迎です．

## 参考

- 元記事: https://qiita.com/Kumassy/items/5b6ae6b99df08fb434d9
- 困ったら: http://sky-y.github.io/site-pandoc-jp/users-guide/