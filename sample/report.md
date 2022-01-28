---
documentclass: ltjsarticle
header-includes:
  - \hypersetup{ colorlinks = false }
  - \usepackage[version=3]{mhchem}
  - \setlength\parindent{1\zw}
metadata:
  table1:
    date: 1615 年  5 月  5 日 （金）丑三つ時
    theme: 様々な食品におけるカフェイン

  table2:
    faculty: 考古学
    class: Z
    your_number: 615xxxxx
    your_name: 福沢 諭吉

  table3:
    collaborator1: 坂本 龍馬
    collaborator2: 大久保 利通
    collaborator3: 西郷 隆盛
    collaborator4: 木戸 孝允
    collaborator5: 小松 帯刀
    collaborator6: 大村 益次郎
    collaborator7: 前原 一誠
    collaborator8: 岩倉 具視

  table4:
    reporting_date: 1615 年  5 月  7 日  12 時 12 分
    # re_reporting_date: 1999 年  8 月  7 日  4 時 21 分

  table5:
    temperature: 12.4
    humidity: 44
    pressure: 1000
---

# 目的
ねむみや無気力をごまかすため，人々はカフェインを求めることがある．どの食品を食べればいいんだろう．

# 実験原理
## カフェイン
カフェインの分子式はこんな感じである： \ce{C8H10N4O2}

`pandoc` では \LaTeX の記法を文章中で使えるようである．化学式を書くために，この文章の最初で

```{.yaml}
header-includes:
  - \usepackage[version=3]{mhchem}
```
と書いている．化学式を書かないならこの部分は不要．

### カフェイン雑学 {#miscellaneous}
カフェインはフランス語では caféine とかく．


# 実験方法
- スーパーにいく
- いろいろ買う
- 飲む
- 体の変化を記述する

# 実験結果
| たべもの | カフェイン含有量 | ねむみ |
|:------:|-----:|---------|
|  食パン  |  0  |  つよい  |
|  おかゆ  |  0  |  つよい  |
|  紅茶  |  1  |  つよめ  |
|  コーヒー  |  10  |  よわめ  |
|  魔剤  |  10000  |  なし  |

  : たべものとねむみの関係 {#tbl:my_table}


相互参照を使うために，`{#tbl:my_table}` というラベルをつけている．[^1]

[^1]: これは `pandoc-crossref` の機能

これをグラフに書くと，[@fig:my_image] のようになる．

![たべものとねむみの関係](graph.png){#fig:my_image height=60mm}

<!-- 大抵の場合 height=60mm くらいにしておくと画像がいい感じのサイズになります -->

# 考察
[@tbl:my_table] はなるほどという感じだ．  
[@fig:my_image] は一理ある．

[カフェイン雑学](#miscellaneous)は役に立たない.


$$ \tanh x = \frac{ e^{x} - e^{-x} } { e^{x} + e^{-x} } $$ {#eq:my_equation}

[@eq:my_equation] はこのレポートとは無関係だ．

# 結論
やはり魔剤だ．

# 参考文献 {-}
- https://ja.wikipedia.org/wiki/%E3%82%AB%E3%83%95%E3%82%A7%E3%82%A4%E3%83%B3
- https://www.monsterenergy.com/
