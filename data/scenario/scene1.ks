;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="room.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

#
さて、今日の講義も終わったからオタ活でもするか！[p]

好きなアニメのグッズがアニ○イトでも駿○屋でもなかなか見つからないという壁に直面し諦めかけていたが…[p]
昨日の夜寝る前に突然、神のお告げが私に舞い降りたのだ[p]
『逆に考えるんだ…ないなら作ればいいさ』…と[p]
その発想はなかった。自分で作っちゃえばそこにグッズは生み出されるのだ[p]
ありがとう、神様仏様世界の推し様[p]
さっそくアクスタを作るためにアクリル板の加工を…[p]
[font  size="30"   ]
#?
ちょっとまてぇぇぇぇぇぇぇぇぇ!!!!!!!!!!!!![p]
[resetfont  ]

#
誰ですか!!????[p]

;キャラクター登場
[chara_show  name="akane"  ]
#?
やあ[p]
私はあかね[p]

#
わぁ美少女[p]

#あかね
…ありがとう[p]
って、もしかして講習も受けずにレーザーカッターを使用してたの!??[p]

[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="講習ってなに…？"  target="*selectinterest1"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="そうだぜ！べははwwwwww"  target="*selectinterest2"  ]
[s  ]


*selectinterest1
[cm]
[chara_mod  name="akane" face="happy"  ]
#あかね
入学の時に言われたじゃん。話聞いてた？[p]
@jump target=*common1

*selectinterest2
[cm]
[chara_mod  name="akane" face="happy"  ]
#あかね
この学校を燃やしたいの?バカなの？[p]
@jump target=*common1

*common1
#
・・・・・[p]
塩対応もありだね[p]


[chara_mod name="akane" face="default"]
#あかね
きっっっっっっっっしょ[p]
まあそんな人にも機材の使い方を教えるのが私の仕事だからするけど[p]
[chara_mod  name="akane" face="happy"  ]
次そんなこと言ったら本気でその口を捥ぐからよろしくね[p]

#
はいわかりました。口捥ぐのは勘弁してください。[p]

[chara_mod name="akane" face="default"]
#あかね
素直でよろしい[p]
じゃあ早速レーザーカッター利用の講習を始めるね[p]

#
よろしくお願いします！[p]

#あかね
まずは当たり前だけどレーザーカッターの電源を入れるよ[p]

#
電源ってどこにあるの？[p]

#あかね
開閉できるふたの裏の方にスイッチがあるから、それを切り替えて[p]

#
…これかな…？[p]
カチッ[p]

#あかね
オッケー、これで電源が入ったね[p]
そういえば、材料を加工するためのデータって作ったの？[p]

#
…なんとなくで[p]

#あかね
ちょっとそのデータ見せて[p]

#
はい[p]

[chara_mod  name="akane" face="angry"  ]
#あかね
……[p]
…あーやっぱり[p]

#
なにが？[p]

[chara_mod  name="akane" face="default"  ]

#あかね
色の表現の仕方っていえばいいのかな…[p]
レーザーカッターは基本的にRGBで色を認識しているんだ[p]
だから作るデータもRGBの設定にしないと切断するところとかを正しく認識してくれないんだよ[p]

#
ほえ〜[p]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="RGBってなに？"  target="*selectinterest3"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="なるほどね"  target="*common2"  ]
[s  ]

*selectinterest3
[cm]
#あかね
レッド、グリーン、ブルーのことだね。色の三原色って知ってる？[p]

#
どこかで聞いたことあるかも…[p]

#あかね
まあ、データの詳しい作り方は説明が大変だから今回は省くね[p]

#
めんどくさいだけでは…？[p]

[chara_mod  name="akane" face="happy"  ]
#あかね
うるさいよ？[p]

#
はい[p]
@jump target=*common2


*common2
[chara_mod  name="akane" face="default"  ]
#あかね
よし。じゃあ話を戻して機材の説明を続けるね[p]
電源を入れたらレーザーと加工する材料の高さを調整するよ[p]

#
高さを調整？なんでする必要があるの？[p]

#あかね
一言で言うと…[p]
[chara_mod  name="akane" face="angry"  ]
[font size=40]ボヤ騒ぎが起こるから！！！！[p]
[resetfont]
[chara_mod  name="akane" face="happy"  ]
だね！[p]

#
oh……[p]
もし起こったら大問題だね…[p]

#あかね
[chara_mod  name="akane" face="default"  ]
そうだよ?[p]
だから、ここが火の海にならないようによく聞いててね[p]

#
わかった！[p]

#あかね
まずレーザーの動かし方だけど、フタの右の方にある矢印のボタンを押すと動くんだ[p]
今は黒色の上下しかないボタンの方で高さを調整してね[p]

#
調整って言っても、どのくらい材料とレーザーを近づければいいの？[p]

#あかね
機材の蓋を開けた中に小さい金具みたいなものがあったでしょ？[p]
それをレーザーが出てくるところの窪みに合わせてセットして[p]
そして上ボタンで材料を置いているところを上げていくんだけど…[p]
その金具が材料と触れて、ギリギリ倒れるところまで上げていくんだ[p]

#
………[p]
うーむ…[p]

#あかね
なにかあった？[p]

[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="いや…文字だけじゃまったくわからないなと…"  target="*selectinterest4"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="なんでもない"  target="*common3"  ]
[s  ]

*selectinterest4
#あかね
[chara_mod  name="akane" face="doki"  ]
ちょ……メタ発言やめてっっっっっっっ！！！[p]
[chara_mod  name="akane" face="sad"  ]
わかってるよ…表現が抽象的すぎてわかりにくいことなんて…[p]
[chara_mod  name="akane" face="default"  ]
だから、ちゃんとわかる人に実物を見ながら教えてもらってね[p]

#
このゲームの意味…[p]

#あかね
[chara_mod  name="akane" face="angry"  ]
はいっっっ！！！！！メタい話はこれでおしまい！！！調整できた！！！？？[p]

#
できた〜[p]
@jump target=common3

*common3
#あかね
[chara_mod  name="akane" face="default"  ]
よし、じゃあ話を進めるよ[p]
高さの調整ができたら、加工を始めたい部分にレーザーを移動させておこう[p]
レーザーを移動させたい時は十字のボタンを押してね[p]
あとでちゃんと加工する部分を確認する作業が入るから、ここはだいたいで大丈夫だよ！[p]

#
できたよ！[p]
次は何をするの？[p]

#あかね
次は横のPCの方の準備をするよ。機材の方は一旦このままで置いておこう[p]

#
次はデータの方ってことかぁ[p]

#あかね
そうだね[p]
初めの方でデータの説明は省くって言ったけど、少し説明するね[p]

#
結局するんだね…[p]

#あかね
[chara_mod  name="akane" face="doki"  ]
本当にちょっとだけだから！[p]
[chara_mod  name="akane" face="default"  ]
基本的にレーザーカッターで使用するデータは「Adobe Illustrator」ってソフトで作成するんだ[p]
[chara_mod  name="akane" face="happy"  ]
（長いからイラレって呼ぶね！）[p]
[chara_mod  name="akane" face="default"  ]
このレーザーカッターでは主に「黒色 = 掘る」「赤色 = 切る」って設定されているんだ[p]
[chara_mod  name="akane" face="angry"  ]
だからそれ以外の色で描かれると何もされずにスルーされちゃう[p]
しかも一概に「黒色」「赤色」って言っても、黒は「#000000」で、赤は「#FF0000」で描かないとしっかり認識してくれないんだよね[p]

#
思ったよりめんどくさいんだね…[p]

#あかね
[chara_mod  name="akane" face="default"  ]
初めはね[p]
[chara_mod  name="akane" face="happy"  ]
でも設定とかやり方さえ覚えれば意外と簡単だから頑張ろう![p]
[chara_mod  name="akane" face="default"  ]
それじゃあデータの解説はここまでにして…イラレで作成したデータをレーザーカッターにつながっているPCに移して[p]

#
USBを使って移せばいいんだよね[p]

#あかね
[chara_mod  name="akane" face="happy"  ]
そうだね！[p]
自分のUSBがあればそれでもいいけど、持っていない場合は受付で借りることができるよ[p]
[chara_mod  name="akane" face="default"  ]
移せたらそのデータを開いて[p]
開たら左上の「ファイル」から「プリント」を選択してね[p]
[layopt layer="1" visible="true"]
[image layer="1" x="0" y="0" storage="illra.png" width="550" time="700"]
こんな画面が出てきたら、プリンターのところをレーザーカッターの名前に変更するよ。今回の場合は「Trotec」ってかいてあるものを選んでね[p]


#
その他はいじらなくていいの？[p]

#あかね
[chara_mod  name="akane" face="happy"  ]
うん!他はいじらずそのままで大丈夫だよ[p]
[chara_mod  name="akane" face="default"  ]
できたら「完了」のボタンを押してね[p]
[freeimage layer="1" time="700"]
そうすると新しいソフトが立ち上がるからそっちをクリックしてウィンドウを移動してね[p]

#
ほい[p]

#あかね
よしっ。あと少しだよ！[p]
右の方のボックスにイラレから読み込んだデータが表示されてると思うからそれをクリックして[p]
そうすると左のワークスペースに表示されるよ[p]
ちなみに目玉のボタンを押すとプレビューが表示されるからそっちの方が完成をイメージしやすいかな[p]
ワークスペースに表示されてる銃のポインターみたいなものはレーザーの位置を表しているよ[p]

#
一気にそれっぽくなったね![p]

#あかね
ここまでくると本当にもう少しだよ![p]
そうしたらポインターの位置にデータの左上を合わせて[p]
データをポインターに近づけると自動で引っ張られるから細かく移動させなくても大丈夫だよ[p]

#
一回で何個も加工したい時はどうするの？[p]

#あかね
その場合はデータをコピーして横とか下とかに並べてね[p]
データを並べ終えたらレーザーをデータの一番左下に移動させてみて[p]
その時に材料がしっかりあることを確認してね[p]

#
確認した!!!![p]

#あかね
[chara_mod  name="akane" face="happy"  ]
よし!!![p]
これで準備は完了だよ![p]
[chara_mod  name="akane" face="default"  ]
本当は材料の厚さによってレーザーの出力を変えたりしなくちゃいけなかったりするんだけど…[p]
細かい説明はちゃんとあとで聞いてね[p]

#
やっと自作のグッズが作れるのか…なんか感動[p]

#あかね
アクスタとかを作りたいならUVプリンターの使い方んも覚えた方がより楽しめると思うよ[p]

#
そうしたら、UVプリンターの使い方の覚えようかな[p]

#あかね
今日はもう時間がないからまた今度説明するよ[p]

#
ありがとう！[p]
またよろしくね！[p]

#あかね
[chara_mod  name="akane" face="happy"  ]
こちらこそ！[p]


[chara_hide name=akane]

@jump storage="first.ks"

[s]
