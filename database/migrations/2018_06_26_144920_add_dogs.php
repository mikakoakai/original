<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


use App\Item;
use App\Detail;

class AddDogs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
    $items = array(
         array("潮風を浴びて眠る犬","011kumakichi0327_TP_V.jpg","波の音と潮風に癒されながらゆったりとした時間を楽しんでいます。"),
         array("凛々しいチワワ","tdog17030710_TP_V.jpg","キュートなイメージの白黒チワワですが、今日は真剣な表情です。"),
         array("お散歩中のコーギ","MOROIMG_2985_TP_V1.jpg","夏の日差しが照りつける中、日陰を見つけてご機嫌なコーギーちゃん。"),
         array("惰性な秋田犬","AMEMAN17826009_TP_V.jpg","なんだかなー。今日はやる気が出ないな、、"),
        array("ウトウトするゴールデンレトリバー","SSK_minatabokkowosururetoribar_TP_V.jpg","今日はもう夕方。夕日が綺麗だな、、"),
        array("飼い主を待つ犬","GAK_kainushi_TP_V.jpg","いつ帰ってくるのかなー??今日は遅いな。先にご飯食べちゃおうかな"),
        array("ニコニコのボクサー","moro8452_IMG_2002_TP_V.jpg","今日は楽しい！いつも以上にニコニコしちゃうな♪"),
        array("くつろぐシェパード","moroSIMG_4278_TP_V.jpg","何も考えたくないなー。お腹は空いたし、今日は予定がない"),
        array("上目遣いのミニチュアダックス","dog-2561134__340.jpg","ソファの上でくつろいでいます(＾ω＾)"),
         array("ひょっこりダルメシアン","dalmatians-3210166__340.jpg","ひょっこり!見つかっちゃった、、（笑）"),
        array("犬と子猫","animals-2198994__340.jpg","初めまして。僕たち仲良くなれるかな？"),
         array("鼻デカ犬","fuca-2491995__340.jpg","どーーーん"),
          array("シェルティーは見た","dog-1007595__340.jpg","キリッ"),
           array("やんちゃなチワワ","chihuahua-820087__340.jpg","スリッパ返してほしかったら遊んで♪"),
            array("お花に囲まれたドーベルマン","doberman-dog-1438132__340.jpg","いい香りがするお花に囲まれて心もハッピー！"),
             array("ミックス犬","dog-3400275__340.jpg","誰か呼んだ?"),
            
           
        
    );
    
        foreach($items as $i){
            $item = new Item();
            $item->name = $i[0];
            $item->image_url = $i[1];
            $item->message = $i[2];
            $item->code = "dummy";
            $item->url = "dummy";
            $item->save();

            $item = new Detail();
            $item->name = $i[0];
            $item->image_url = $i[1];
            $item->message = $i[2];
            $item->save();

        }
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
