# タイトル
 
『マッスルレシピ』
 
# 概要
 料理の味や見た目で今日の献立を探すようなレシピ投稿アプリケーションではなく、
 
 レシピごとの「タンパク質/脂質/炭水化物の量」から今日の献立を、そして定番を見つけられるようなレシピ投稿アプリケーションです。
 

# デモ

・トップ画面
![トップ画面](https://user-images.githubusercontent.com/77495217/118112450-f9087900-b41f-11eb-901c-dbbeaa18e78f.png)

・レシピ詳細画面
![詳細画面](https://user-images.githubusercontent.com/77495217/118121344-4f7bb480-b42c-11eb-943e-078e44d135ab.png)

 
# 特徴

・レシピ投稿画面にてメイン食材を登録することでPFC(タンパク質/脂質/炭水化物)が自動で算出され表示されます

https://user-images.githubusercontent.com/77495217/118120945-ae8cf980-b42b-11eb-8f0f-66185381f94a.mov

 
# 使用技術
 
* ruby 2.6.5
* Rails 6.0.3.6
* mysql  Ver 14.14

 
# URL
 
# テスト用アカウント

# 機能一覧

- ユーザー登録機能、ログイン機能(devise)
- 投稿一覧機能
- 投稿機能
   - 画像登録(ActiveStorage)
   - PFC自動算出機能(JavaScript)
- 投稿詳細機能
   - 円グラフ表示機能(chartkick)
   - いいね機能(JavaScript)
 

 
# テーブル設計
![スクリーンショット 2021-05-13 21 47 32](https://user-images.githubusercontent.com/77495217/118127596-e2b8e800-b434-11eb-8ad3-96955c1e3081.png)



# 制作背景

私自身食習慣を見直し、「タンパク質が多く、糖質の低い」食事メニューを定番化させたことで一年間で７キロ体重を落とした経験があります。

今でも食事を定番化させること、成分の把握できているものを極力毎日食べることがダイエットの答えであると考えています。

「体重を落としたい。」「理想的なカラダを作りたい。」、そう考える方にとって普段の食生活を改善するヒントになればと思い作成しました。


# 工夫したポイント

・「PFC自動計算」や「いいね機能」の実装においてjQueryを使わずに素のJavaScriptを使うようにしました。(JavaScriptだけで実装可能と判断したため。またJavaScriptでどこまで出来るか勉強してみたかったため)

・UIにおいてもbootstrapなどのフレームワークを使わずに取り組んでみました。

# 実装予定

- AWSでのデプロイ
- AWs Route 53を使っての独自ドメイン取得
- Ajax通信を使っての並び替え機能


 
