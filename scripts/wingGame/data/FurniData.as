package wingGame.data
{
   public class FurniData
   {
      
      public static const TYPE_FURNI:String = "furni";
      
      public static const TYPE_POSTER:String = "poster";
      
      public static const TYPE_WALLPAPER:String = "wallpaper";
      
      public static const TYPE_FLOORING:String = "flooring";
      
      public static const SPECIAL_ARCADE:String = "arcade";
      
      public static const SPECIAL_COFFEE:String = "coffee";
      
      public static const SPECIAL_SODA:String = "soda";
      
      public static const SPECIAL_PUNCH:String = "punch";
      
      public static const SPECIAL_BUBBLEGUM:String = "bubblegum";
      
      public static const SPECIAL_NEWSPAPER:String = "newspaper";
      
      public static const SPECIAL_BOOK:String = "book";
      
      public static const SPECIAL_COMICS:String = "comics";
      
      public static const SPECIAL_MUSIC:String = "music";
      
      public static const SPECIAL_SCORE:String = "score";
      
      public static const SPECIAL_SCOREBUBBLEGUM:String = "scorebubblegum";
      
      {
         false;
         true;
         true;
         true;
         true;
         true;
      }
      
      public var tag:String;
      
      public var title:String;
      
      public var price:Number;
      
      public var effect:String;
      
      public var description:String;
      
      public var waitingOffset:Number = 0;
      
      public var type:String;
      
      public var width:Number;
      
      public var depth:Number;
      
      public var special:String;
      
      public var scoreType:String;
      
      public var toppingType:String;
      
      public var inStore:Boolean = true;
      
      public function FurniData(param1:String, param2:String, param3:Number, param4:String, param5:String, param6:String, param7:Number = 1, param8:Number = 1, param9:Number = 0, param10:String = "none", param11:String = "none", param12:String = "none", param13:Boolean = true)
      {
         super();
         this.tag = param1;
         this.title = param2;
         this.price = param3;
         this.effect = param4;
         false;
         false;
         this.description = param5;
         this.waitingOffset = param9;
         false;
         false;
         this.type = param6;
         this.width = param7;
         true;
         true;
         this.depth = param8;
         this.special = param10;
         this.scoreType = param11;
         this.toppingType = param12;
         this.inStore = param13;
      }
   }
}
