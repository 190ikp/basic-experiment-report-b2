# 書き方の用例集

随時追加していきます

## これはなに

こういうときどう書いたらいいの，という例を記載してあります．
参考にしてください．

載っていないケースについてはググってください．
大抵の場合は先人がいます．

## ケース

### $\LaTeX$の各種パッケージの使用について

使いたい$\LaTeX$パッケージがあれば，YAMLメタデータブロックの`header-includes`に書いてあげることで使えるようになります．\
インストールされていないパッケージは使えないのでtexliveなりでインストールしてから使いましょう．


### 画像のレイアウトについて

Pandocでは，$\LaTeX$のような柔軟な配置はできません．\
すべての画像はページの上から順にレイアウトされていきます．
同じページ内に入りきらなかった画像は，次のページの一番上からまた同じように配置されていきます．\
デフォルトの配置が気に入らない場合，[こちら](https://qiita.com/Kumassy/items/5b6ae6b99df08fb434d9#-画像のレイアウトについて)に書いてくれている方法である程度の調整ができます．

それでもうまく配置できない場合は`here`パッケージを使います．
[template.md](../template/template.md)では使えるようになっています．\
任意の場所に

```latex
---
documentclass: ltjsarticle
header-includes:
  - \usepackage{here}
---

\begin{figure}[H]
\hypertarget{fig:example}{%
\centering
\includegraphics[width=\textwidth,height=60mm]{example.jpg}
\caption{いい感じの図}\label{fig:example}
}
\end{figure}
```

という感じで書いてあげると配置できます．\
ただ，メンテナンス性が悪くなる (Markdownのプレビューで表示されずわかりにくくなる) ので，なるべくMarkdownで書いた方がいいです．

その他にも，

```latex
\begin{figure}[H]
\hypertarget{fig:example}{%
\begin{tabular}{cc}
\begin{minipage}[t]{0.45\hsize}
\centering
\includegraphics{example_1.jpg}
\end{minipage}
\begin{minipage}[t]{0.45\hsize}
\centering
\includegraphics{example_2.jpg}
\end{minipage}
\end{tabular}
\caption{いい感じの図たち}\label{fig:example}
}
\end{figure}
```

というように書いてあげることで，2つの画像を横に並べて配置しまとめて参照ラベルをつける，といったこともできます．