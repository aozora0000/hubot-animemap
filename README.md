# hubot-animemap 0.0.1
```
Hubot> 【月曜日】 [23:30] サンテレビ「さばげぶっ！」: 第9話
Hubot> 【月曜日】 [25:15] テレビ大阪「月刊少女野崎くん」: 第9話
Hubot> 【月曜日】 [26:35] 毎日放送「アオハライド」: 第9話
Hubot> 【月曜日】 [27:05] 毎日放送「アカメが斬る！」: 第9話
Hubot> 【火曜日】 [24:00] サンテレビ「ばらかもん」: 第8話
Hubot> 【火曜日】 [24:30] サンテレビ「モモキュンソード」: 第9話
Hubot> 【火曜日】 [25:35] テレビ大阪「ハナヤマタ」: 第9話
Hubot> 【火曜日】 [26:10] テレビ大阪「Re：␣ハマトラ(リプライハマトラ)」: 第9話
Hubot> 【水曜日】 [25:30] サンテレビ「LOVE STAGE!!」: 第9話
Hubot> 【水曜日】 [26:00] サンテレビ「Fate/kaleid liner プリズマ☆イリヤ 2wei(ツヴァイ)！」: 第9話
Hubot> 【水曜日】 [26:25] 朝日放送「Free! Eternal Summer」: 第10話
Hubot> 【水曜日】 [26:35] テレビ大阪「スペース☆ダンディ シーズン2」: 第9話
Hubot> 【水曜日】 [26:54] 朝日放送「アルドノア・ゼロ」: 第9話
Hubot> 【木曜日】 [24:30] サンテレビ「グラスリップ」: 第9話
Hubot> 【木曜日】 [25:30] サンテレビ「幕末Rock」: 第9話
Hubot> 【木曜日】 [25:49] 毎日放送「ペルソナ4 ザ・ゴールデン」: 第8話
Hubot> 【木曜日】 [26:19] 毎日放送「黒執事 Book of Circus」: 第8話
Hubot> 【木曜日】 [26:49] 毎日放送「白銀の意思 アルジェヴォルン」: 第9話
Hubot> 【金曜日】 [26:00] 京都放送「あいまいみー～妄想カタストロフ～」: 第8話
Hubot> 【金曜日】 [27:10] テレビ大阪「DRAMAtical Murder」: 第8話
Hubot> 【土曜日】 [26:28] 毎日放送「ソードアート・オンラインII」: 第9話
Hubot> 【土曜日】 [26:35] テレビ大阪「東京喰種トーキョーグール」: 第9話
Hubot> 【日曜日】 [24:30] サンテレビ「東京ESP」: 第8話
Hubot> 【日曜日】 [25:00] サンテレビ「普通の女子校生が【ろこどる】やってみた。」: 第9話
```

## インストール方法
```
1. $ npm install hubot-animemap --save
2. "hubot-animemap" を external-scripts.json に追加
3  $ export HUBOT_ANIMEMAP_PREF=[pref]  *下記pref一覧参照(デフォルト動作追加)
4. Hubotをリスタートさせる
```

## コマンド一覧

### ヘルプ表示
```
hubot animemap help *ヘルプURL(このページ)を表示
```
### 都道府県別放映アニメ一覧取得
```
hubot animemap from [pref] *下記pref一覧参照
hubot animemap from [pref] today *本日放映分のみ参照
```

### pref一覧
都道府県   | 入力値
:---------:|:----------:
北海道     | hokkaidou
青森県     | aomori
岩手県     | iwate
宮城県     | miyagi
秋田県     | akita
山形県     | yamagata  
福島県     | fukushima
茨城県     | ibaragi
栃木県     | tochigi
群馬県     | gunma
埼玉県     | saitama
千葉県     | chiba
東京都     | tokyo
神奈川県   | kanawaga  
新潟県     | niigata
富山県     | toyama
石川県     | ishikawa  
福井県     | fukui
山梨県     | yamanashi
長野県     | nagano
岐阜県     | gifu
静岡県     | shizuoka  
愛知県     | aichi
三重県     | mie
滋賀県     | shiga
京都府     | kyoto
大阪府     | osaka
兵庫県     | hyogo
奈良県     | nara
和歌山県   | wakayama  
鳥取県     | tottori
島根県     | shimane
岡山県     | okayama
広島県     | hiroshima
山口県     | yamaguchi
徳島県     | tokushima
香川県     | kagawa
愛媛県     | ehime
高知県     | kochi
福岡県     | fukuoka
佐賀県     | saga
長崎県     | nagasaki  
熊本県     | kumamoto  
大分県     | oita
宮崎県     | miyazaki  
鹿児島県   | kagoshima
沖縄県     | okinawa

## 利用にあたって
このスクリプトは[アニメマップ](http://animemap.net/pages/api/)様のAPIを利用しています。

過度な負荷を掛けたり悪用されるとサービスが停止する可能性もあります。
