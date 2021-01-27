# 電力系統管理システム

## サイト概要
工場における電力系統を管理するシステム。
「あそこの分電盤に空いているブレーカーあったっけ？」
「この設備の一次電源はどこから来てたんだっけ？」等
現場まで行って確認しなければならないことをブラウザ上で行える。

### サイトテーマ
紙ベースのアナログな電力系統管理から、デジタルでの管理様式へ変更できない会社がまだまだある。
電気系統のことは、ベテランの〇〇さんに聞けば分かるが当然の現場。
少数のベテランの頭の中だけで電気を管理する時代は、終わりにするべきだ。
そして、
工場のオペレーターの方々に安全に設備を使用していただきたい。
工場の電気係の人に手軽で正確に電力系統を管理していただきたい。

### テーマを選んだ理由
私が、前職で電気係として仕事をしていた際に、以下の問題に気づいた。
それらの問題の中には人命に関わるものもあり、絶対に解決しなければならない問題であるため、電力管理システムをテーマとした。

- 工場の電力系統の情報が共有されておらず、わざわざ現場まで確認しなければならないことがしばしばある。
- 現場に探しに行っても、電線が天井や地下を通っており、目で追えないことがある。
  そういう場合は、わざわざブレーカーを落として確認を行う。関係のない設備が止まる可能性もある。
- 情報を把握しきれずに、ブレーカーの選定を間違う。（容量過多の場合は火事になる恐れがある。容量不足の場合は通常運転でブレーカーが飛んでしまう。）
- ブレーカーの使用状況が分からず、電気設備の機能や容量を最大限活用できない。


### ターゲットユーザ
以下のように考えている工場の電気係
- 電力管理を紙ベースで行っている。
- 電力をデジタルで管理したいが、無料で行いたい。
- 触っていれば勝手に使い方が分かるシステムが欲しい。


### 主な利用シーン
・導入した電気設備の閲覧、編集、削除、登録。
・新しい電力システム導入時に、登録をすることで自動で設計をチェック。

## 設計書


## チャレンジ要素一覧
https://docs.google.com/spreadsheets/d/10iibC-93_Ni_FpTKjbGPE4k4H4j6YZEw8va71Keea6Q/edit#gid=0

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- 外部サービスの画像素材・音声素材を使用した場合は、必ずサービス名とURLを明記してください。
- 使用しない場合は、使用素材の項目をREADMEから削除してください。
