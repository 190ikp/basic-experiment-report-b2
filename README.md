# 理工学部基礎実験 (B2) レポート用テンプレート

## これはなに

慶應の理工学部2年生がMarkdown + Pandocで実験レポートを楽に生産するためのテンプレート

## 使い方

先人に感謝:pray:

ディレクトリとかは自分の環境によって適宜読み替えてください．

1. texlive, pandoc, pandoc-citeproc, pandoc-crossrefをインストール \
   (Pandocのインストールは[`Stack`](https://docs.haskellstack.org/en/stable/README/)を使うと楽，texliveはググってどうぞ)
2. template.mdをもとにいい感じのレポートをMarkdownで書く
3. `pandoc your_report.md -o your_report.pdf -F pandoc-crossref -F pandoc-crossref --filter pandoc-citeproc --pdf-engine=lualatex -N --template=/dist/to/your/template.tex`でビルド \
   `template.tex`のパスはフルパスを書いておいたほうが安全です．
4. PDFでレポートが出力されるので確認する
5. 実験レポートが生まれたよ！かわいいね

## 参考文献の書き方について

詳細は http://sky-y.github.io/site-pandoc-jp/users-guide/#citations に書いてあります．\
ここに書くと長くなるので読んで，どうぞ． 

参考文献を直接本文に書き込む場合は，`# 参考文献`の後ろに` {-}`を入れましょう (番号振られるのを避けるため)．

## オススメ

VSCodeを入れて`vscode-pandoc`を使うと，settings.jsonに`"pandoc.pdfOptString": "-F pandoc-crossref --filter pandoc-citeproc --pdf-engine=lualatex -N --template=/dist/to/your/template.tex"`と書いておけば`Shift+Ctrl+P -> Pandoc Render -> pdf`でビルドできていい感じに楽できます．\
Windowsに対応させるのが面倒なので作ってませんが，makefileを使うのもありだと思います．

## その他

質問とかはquestionラベルを付けてissueに投げてください．\
不具合とかあったら直してプルリクしてください．喜びます．\
カスタムcslファイルの追加も歓迎です．

## 参考

- 元記事: https://qiita.com/Kumassy/items/5b6ae6b99df08fb434d9
- 困ったら: http://sky-y.github.io/site-pandoc-jp/users-guide/