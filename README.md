# アプリケーション名
impression spot

# アプリケーション概要
・自分が感動したスポットとその撮影場所を共有することができる。<br>
・地域ごとの感動スポットが一目でわかるため、旅行の行き先選定に役立てることができる。<br>

# URL
https://original-app-36711.herokuapp.com/

# テスト用アカウント
・Basic認証ID：admin<br>
・Basic認証パスワード：1111<br>
・メールアドレス：aaaa@aaaa.com<br>
・パスワード：111aaa<br>

# 利用方法
## 感動スポットを投稿する
1. トップページ内のヘッダーからユーザー新規登録を行う<br>
2. トップページ右下の投稿ボタンから、感動したスポットの内容（写真、タイトル、感動ポイント、<br>
   撮影時期、周辺の駐車場、公共交通機関、撮影地の住所、補足情報）を投稿する<br>
3. Googleマップのリンクから、撮影地の住所を検索することができる<br>

## 写真から感動スポットを探す
1. トップページの投稿一覧から感動を探す

## Googleマップから感動スポットを探す
1. Googleマップに表示されたマーカーをクリックすると吹き出しが表示される<br>
2. 吹き出しから撮影地の住所、撮影時期を確認することができる<br>
3. 吹き出しから投稿詳細ページに遷移することができる<br>

## 他人の感動に共感する
1. 投稿した写真に「行きたい」を付ける<br>
2. 「行きたい」を付けた写真は、マイページに一覧で表示される

# アプリケーションを作成した背景
私自身が感じたことから生まれたサービスです。<br>
社会人になってから一人旅をする機会が増えて、日本各地の美しい風景を撮影するようになりました。<br>
ある日、SNSで美しい写真を見つけて、同じ写真を撮りに行きたいと思いました。<br>
しかし、その写真投稿ページには撮影した場所が載っておらず、いつ、どこで撮影されたのかがわからないという<br>
問題に直面しました。皆さんも同じような経験はないでしょうか？<br>
そんな問題を解決するために、写真をクリックすればその撮影地がわかるサービスを生み出しました。<br>
さあ、「感動の1枚」を、観に行こう。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1BH2x0dHObf5wwWf31e20yWtUOaOUpWAffHMTNZYUH_o/edit?usp=sharing

<!-- # 実装した機能についての画像やGIFおよびその説明 -->

# 実装予定の機能
現在、写真の検索機能を実装中です。<br>
今後はトップページにあるGoogleマップ上のマーカーをクリックした際、吹き出し内に写真を表示する機能を<br>
実装予定です。

# データベース設計（ER図）
![image](https://user-images.githubusercontent.com/110531484/194309839-ffe7fea2-d531-4863-b1f3-98d5d8594fdc.png)

# 画面遷移図
![image](https://user-images.githubusercontent.com/110531484/194309384-ec87405f-dbea-4386-b4f1-ed90d33e101a.png) 

# 開発環境
・フロントエンド<br>
・バックエンド<br>
・インフラ<br>
・テスト<br>
・テキストエディタ<br>
・タスク管理<br>

# ローカルでの動作方法
以下のコマンドを順に実行。<br>
% git clone https://original-app-36711.herokuapp.com/<br>
% cd xxxxxx<br>
% bundle install<br>
% yarn install<br>

# 工夫したポイント
### トップページ
・各投稿の撮影地をマーカーで表示できるようにしました。<br>
・各マーカーをクリックすれば、吹き出しが表示されるようにしました。<br>
・吹き出しからタイトル、撮影地の住所、撮影時期を確認できるようにしました。<br>
・吹き出しからでも投稿詳細ページに遷移できるようにしました。<br>

### 新規投稿ページ
・桜や紅葉など季節写真のために、撮影時期の項目を入れました。<br>
・撮影時期は、撮影月と撮影週に分けて、1つのプルダウンのボリュームを抑えることで、選択し易いようにしました。<br>
・車で行きたい人のために、駐車場の有無、駐車場代の項目を入れました。<br>
・公共交通機関で行きたい人のために、最寄り駅名、最寄り駅からの徒歩時間の項目を入れました。<br>
・Googleマップを開くボタンを設けることで、撮影地の住所をスムーズに検索できるようにしました。<br>

### 投稿詳細ページ
・写真と撮影地の地図（Googleマップ）を比較できるレイアウトにしました。<br>
・撮影地の住所から精度の高い緯度経度に変換するため、ジオコーディングにはGoogleのgeocorderを使用しました。<br>
・「行きたい」機能を実装し、投稿者に対して興味を伝えることができるようにしました。<br>
・「行きたい」機能に非同期通信を採用し、「行きたい」を付けた状態/解除状態を即時反映できるようにしました。<br>
・コメント機能に非同期通信を採用し、コメント内容を即時反映できるようにしました。<br>
・コメント一覧表示部分がページ下まで延びないように、スクロールで表示できるようにしました。<br>

### マイページ
・「行きたい」を付けた写真を一覧で表示し、「行きたい」リストを表示できるようにしました。<br>
・マイページからでも「行きたい」を解除できるようにしました。<br>