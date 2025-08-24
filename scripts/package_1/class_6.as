package package_1
{
   import Playtomic.*;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.net.URLRequest;
   import flash.system.Security;
   import mochi.as3.*;
   import package_2.class_3;
   import package_2.class_5;
   import package_4.class_4;
   import package_5.*;
   import package_6.*;
   import wingGame.data.UserData;
   import wingGame.managers.ChallengeManager;
   
   public class class_6
   {
       
      
      public var gameObj:class_4;
      
      public var api:class_11;
      
      private var var_93:String = "wingeria_leaderboard";
      
      public var var_158:String = "v 1.1";
      
      public var var_240:Boolean = false;
      
      public var var_170:Boolean = false;
      
      public var var_60:*;
      
      private var var_167:String = "http://agi.armorgames.com/assets/agi/AGI.swf";
      
      private var var_210:String = "b9365840087d7a22e59e3ab63810af79";
      
      private var var_211:String = "wingeria";
      
      private var var_104:Loader;
      
      private var var_27:*;
      
      private var var_106:Loader;
      
      public var var_147:Boolean = false;
      
      public function class_6(param1:class_4)
      {
         false;
         true;
         super();
         this.gameObj = param1;
      }
      
      public function method_161() : void
      {
         var _loc1_:class_6 = this;
         true;
         true;
         Security.allowDomain(_loc1_.var_167);
         true;
         true;
         if(class_3.method_2())
         {
            class_5.info("Connect to Armor API");
            _loc1_.var_104 = new Loader();
            _loc1_.var_104.contentLoaderInfo.addEventListener(Event.COMPLETE,_loc1_.method_153);
            _loc1_.var_104.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,_loc1_.method_137);
            _loc1_.var_104.load(new URLRequest(_loc1_.var_167));
         }
         else
         {
            class_5.info("Not on License Site, do not init AGI.");
         }
      }
      
      public function method_153(param1:Event) : void
      {
         var _loc2_:class_6 = this;
         true;
         true;
         class_5.info("Armor API Loaded");
         _loc2_.var_60 = param1.currentTarget.content;
         true;
         true;
         _loc2_.gameObj.addChild(_loc2_.var_60);
         _loc2_.var_60.init(_loc2_.var_210,_loc2_.var_211);
         _loc2_.gameObj.stage.frameRate = 30;
      }
      
      public function method_137(param1:IOErrorEvent) : void
      {
         this;
         class_5.info("Error loading Armor API. Skip.");
         false;
         false;
         class_5.info(param1.text);
      }
      
      public function method_166(param1:*, param2:MovieClip, param3:String = null, param4:String = null, param5:Array = null) : void
      {
         false;
         true;
         var _loc6_:class_6;
         if((_loc6_ = this).var_60)
         {
            true;
            true;
            _loc6_.var_60.showScoreboardSubmit(param1,param3,param4,param5,param2);
         }
      }
      
      public function method_165(param1:MovieClip, param2:String, param3:Array = null) : void
      {
         false;
         true;
         var _loc4_:class_6;
         if((_loc4_ = this).var_60)
         {
            _loc4_.var_60.showScoreboardList(param3,param2,param1);
         }
      }
      
      public function method_157(param1:Number, param2:Number, param3:*, param4:DisplayObject = null, param5:Number = 1, param6:* = null) : void
      {
         var _loc7_:class_6 = this;
         var _loc8_:Object;
         (_loc8_ = new Object()).x = param1;
         _loc8_.y = param2;
         _loc8_.onClose = param3;
         _loc8_.scale = param5;
         if(param4 != null)
         {
            _loc8_.iconGraphic = param4;
            true;
            true;
         }
         if(param6 != null)
         {
            false;
            false;
            _loc8_.onError = param6;
         }
         if(_loc7_.var_60)
         {
            _loc7_.var_60.initAGUI(_loc8_);
         }
      }
      
      public function method_65() : void
      {
         false;
         true;
         var _loc1_:class_6 = this;
         _loc1_.api = new class_11(_loc1_.gameObj,_loc1_.gameObj.var_34,640,480);
         false;
         false;
         if(!class_3.method_2())
         {
            true;
            true;
            true;
            true;
            _loc1_.api.method_113(class_1.method_18(),class_1.method_24(),class_1.method_19());
            true;
            true;
         }
         _loc1_.method_125();
         var _loc2_:class_12 = _loc1_.api.method_37("SplashScreen","wingGame.screens.SplashScreen",false,"",true,"bottom right",false,false,true);
         _loc2_.method_42("Play ►","clickStart",true,false,-1,true);
         true;
         true;
         _loc2_.method_102(true,"Game and Characters (c) 2012 Flipline Studios. All Rights Reserved.");
         if(class_3.method_2())
         {
            _loc2_.var_50 = false;
            _loc2_.var_109 = true;
         }
         else
         {
            _loc2_.method_49(true,"top left",class_3.method_1("31000100011201120108005400430043011501150115004200980104010101080104010101060097004200950107010500590113011201050091011101070113011000950097005700990093010500970091010401010106010301110034011301120105009101050097009601010113010500570112010101120104009701110095011000970097010600910104010700990107003401130112010500910095009301050108009301010099010600570108009301080093011101150101010600990097011001010093"),true,"large");
            _loc2_.method_53(true,"top right",class_3.method_1("310101000112011201080054004300430115011501150042010800930108009301040107011301010097004200950107010500590113011201050091011101070113011000950097005700990093010500970091010401010106010301110034011301120105009101050097009601010113010500570112010101120104009701110095011000970097010600910104010700990107003401130112010500910095009301050108009301010099010600570108009301080093011101150101010600990097011001010093"),true,"large");
            true;
            true;
            _loc2_.method_107();
            false;
            false;
            _loc2_.method_112(true,"http://www.facebook.com/pages/Flipline-Studios/121045844606187",true,"http://www.twitter.com/FliplineStudios");
            _loc2_.method_44("http://www.flipline.com/games/papaspizzeria/index.html?utm_source=promo_panel&utm_medium=papaspizzeria&utm_campaign=papaswingeria");
            false;
            false;
            _loc2_.method_44("http://www.flipline.com/games/papasburgeria/index.html?utm_source=promo_panel&utm_medium=papasburgeria&utm_campaign=papaswingeria");
            _loc2_.method_44("http://www.flipline.com/games/papastacomia/index.html?utm_source=promo_panel&utm_medium=papastacomia&utm_campaign=papaswingeria");
            _loc2_.method_44("http://www.flipline.com/games/papasfreezeria/index.html?utm_source=promo_panel&utm_medium=papasfreezeria&utm_campaign=papaswingeria");
            _loc2_.method_44("http://www.flipline.com/games/papaspancakeria/index.html?utm_source=promo_panel&utm_medium=papaspancakeria&utm_campaign=papaswingeria");
            _loc2_.method_103(true,class_3.method_1("2580100011201120108005400430043011501150115004200980104010101080104010101060097004200950107010500430108009301080093011101150101010600990097011001010093009101040101009500970106011100970110009700960101011000970095011200420100011201050104"));
         }
         var _loc3_:class_12 = _loc1_.api.method_37("SlotSelect","wingGame.screens.SlotSelectScreen",true,"CHOOSE A SLOT",true,"top right");
         false;
         false;
         _loc3_.method_45("BACK","clickBack",true);
         var _loc4_:class_12;
         (_loc4_ = _loc1_.api.method_37("CharacterEditor","wingGame.screens.CharacterEditorScreen",true,"CREATE YOUR CHARACTER",true,"top right",false,true)).method_45("BACK","clickBack",true);
         _loc4_.method_42("Continue ►","clickContinue",false,false);
         var _loc5_:class_12;
         (_loc5_ = _loc1_.api.method_37("EndOfDay","wingGame.screens.EndOfDayScreen",true,"TODAY\'S SERVICE",true,"top right")).method_45("QUIT","clickQuit",true);
         false;
         false;
         _loc5_.method_42("Continue ►","clickContinue",false,true);
         true;
         true;
         if(!class_3.method_2())
         {
            _loc5_.method_49(true,"bottom left",class_1.method_23());
            _loc5_.method_35("Submit Score","clickSubmitScore",true);
            false;
            false;
            _loc5_.method_53(true,"bottom right",class_1.method_13(),false,"small");
         }
         var _loc6_:class_12;
         (_loc6_ = _loc1_.api.method_37("StartDayPanel","wingGame.screens.StartDayPanel",false,"",true,"top right")).method_45("QUIT","clickQuit",true);
         _loc6_.method_35("View Parade","clickParade",true,130);
         _loc6_.method_35("Visit Shop","clickShop",true,130);
         _loc6_.method_35("Decorate Lobby","clickEditLobby",true,130);
         _loc6_.method_42("Continue ►","clickContinue",false,true,-1,true);
         if(!class_3.method_2())
         {
            _loc6_.method_49(true,"bottom left",class_1.method_23());
            _loc6_.method_53(true,"bottom right",class_1.method_13(),false,"small");
         }
         var _loc7_:class_12;
         (_loc7_ = _loc1_.api.method_37("ShopScreen","wingGame.screens.ShopScreen",false,"",false,"",false,false,false,true)).method_42("Leave Shop ►","clickBackToGame",false,false);
         var _loc8_:class_12;
         (_loc8_ = _loc1_.api.method_37("MainMenu","wingGame.screens.MainMenuScreen",true,"INFO",true,"top right")).method_42("Back to Game ►","clickBackToGame",false,false);
         true;
         true;
         _loc8_.method_35("INFO","clickInfo");
         _loc8_.method_35("CUSTOMERS","clickCustomers");
         _loc8_.method_35("BADGES","clickMedals");
         _loc8_.method_35("HELP","clickHelp");
         _loc8_.method_35("CREDITS","clickCredits");
         true;
         true;
         _loc8_.method_45("QUIT","clickQuit",true);
         true;
         true;
         if(!class_3.method_2())
         {
            _loc8_.method_49(true,"bottom left",class_1.method_23());
            _loc8_.method_53(true,"bottom right",class_1.method_13(),false,"small");
         }
         _loc1_.method_131();
         if(!class_3.method_2())
         {
            _loc1_.api.method_27("ViralFromCoolMath","SiteSources");
            true;
            true;
         }
         else
         {
            _loc1_.api.method_27("LicenseCoolMath","SiteSources");
         }
      }
      
      public function method_58(param1:*) : void
      {
         false;
         true;
         var _loc2_:class_6 = this;
         _loc2_.api.method_58(param1);
      }
      
      public function submitScore(param1:Number, param2:String = "Anonymous", param3:Function = null, param4:Object = null) : void
      {
         var _loc5_:class_6 = this;
         if(!class_3.method_2())
         {
            true;
            true;
            false;
            false;
            true;
            true;
            false;
            false;
            false;
            false;
            _loc5_.api.method_48(_loc5_.var_93,param3,true,true,true,param2,param1,param4);
            false;
            false;
         }
         else
         {
            _loc5_.api.method_48(_loc5_.var_93,param3,true,true,true,param2,param1,param4);
         }
      }
      
      public function method_124(param1:Function = null) : void
      {
         var _loc2_:class_6 = this;
         false;
         false;
         if(!class_3.method_2())
         {
            true;
            true;
            _loc2_.api.method_48(_loc2_.var_93,param1);
            true;
            true;
         }
         else
         {
            _loc2_.api.method_48(_loc2_.var_93,param1);
         }
      }
      
      public function method_40() : void
      {
         false;
         true;
         var _loc1_:class_6 = this;
         try
         {
            if(!class_3.method_2())
            {
               false;
               false;
               _loc1_.api.method_51();
               false;
               false;
            }
            else
            {
               _loc1_.api.method_51();
            }
         }
         catch(err:Error)
         {
         }
      }
      
      private function method_5() : LoaderInfo
      {
         var _loc1_:LoaderInfo = this.gameObj.root.loaderInfo;
         false;
         false;
         if(_loc1_.loader != null)
         {
            _loc1_ = _loc1_.loader.loaderInfo;
         }
         return _loc1_;
      }
      
      public function method_125() : void
      {
         this;
      }
      
      public function method_175(param1:Array) : void
      {
         true;
         true;
         true;
         true;
         class_5.method_25("Received Game Mochi Achievements (" + param1.length + ")");
      }
      
      public function method_168(param1:Array) : void
      {
         var _loc5_:String = null;
         var _loc2_:class_6 = this;
         var _loc3_:ChallengeManager = _loc2_.gameObj.challengeManager;
         true;
         true;
         class_5.method_25("Received Existing Mochi Achievements for User.");
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = String(param1[_loc4_].id);
            true;
            true;
            false;
            false;
            class_5.method_25("Already Earned Mochi Achievement (" + param1[_loc4_].name + ", " + param1[_loc4_].id + ")");
            if(_loc3_)
            {
               _loc3_.setChallengeMochiEarned(_loc5_);
            }
            _loc4_++;
         }
      }
      
      public function method_162(param1:Object) : void
      {
         false;
         true;
         var _loc2_:class_6 = this;
         var _loc3_:ChallengeManager = _loc2_.gameObj.challengeManager;
         class_5.method_25("Earned Mochi Achievement (" + param1.name + ", " + param1.id + ")");
         var _loc4_:String = String(param1.id);
         if(_loc3_)
         {
            false;
            false;
            _loc3_.setChallengeMochiEarned(_loc4_);
         }
      }
      
      public function method_174(param1:Object) : void
      {
         false;
         true;
         class_5.method_25("Mochi Login Error: " + param1.type);
      }
      
      public function method_167(param1:Object) : void
      {
         false;
         true;
         false;
         false;
         class_5.method_25("Logged in to Mochi.  Username = " + param1.name + ", ID = " + param1.uid);
      }
      
      public function method_90() : void
      {
         var _loc1_:class_6 = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:ChallengeManager = _loc1_.gameObj.challengeManager;
         false;
         false;
         false;
         false;
         if(class_3.method_16() && _loc1_.var_147 && _loc1_.var_27)
         {
            _loc1_.var_27.stats.submit("highScore",_loc2_.getTotalPoints());
            true;
            true;
            _loc1_.var_27.stats.submit("rank",_loc2_.getRank());
            _loc1_.var_27.stats.submit("daysPlayed",_loc2_.getDay());
            _loc1_.var_27.stats.submit("customersUnlocked",_loc2_.getStatCustomersUnlocked());
            _loc1_.var_27.stats.submit("bronzeCustomers",_loc2_.getStatCustomersBronze());
            _loc1_.var_27.stats.submit("silverCustomers",_loc2_.getStatCustomersSilver());
            _loc1_.var_27.stats.submit("goldCustomers",_loc2_.getStatCustomersGold());
            _loc1_.var_27.stats.submit("upgradesUnlocked",_loc2_.getStatUpgradesUnlocked());
            true;
            true;
            if(_loc2_.getRank() >= 4)
            {
               _loc1_.var_27.stats.submit("unlockBoneless",1);
            }
            if(_loc2_.getRank() >= 10)
            {
               _loc1_.var_27.stats.submit("unlockStrips",1);
               false;
               false;
            }
            if(_loc2_.getRank() >= 15)
            {
               _loc1_.var_27.stats.submit("unlockShrimp",1);
            }
            _loc1_.var_27.stats.submit("totalBadgesEarned",_loc2_.getTotalBadgesEarned());
            if(_loc2_.hasBadge(7))
            {
               _loc1_.var_27.stats.submit("playAllMiniGames",1);
            }
            if(_loc2_.hasBadge(10))
            {
               _loc1_.var_27.stats.submit("earn1PrizeEach",1);
            }
            if(_loc2_.hasBadge(11))
            {
               _loc1_.var_27.stats.submit("earn5PrizesEach",1);
            }
            if(_loc2_.hasBadge(12))
            {
               _loc1_.var_27.stats.submit("hit20Chilifeathers",1);
               false;
               false;
            }
            true;
            true;
            if(_loc2_.hasBadge(13))
            {
               _loc1_.var_27.stats.submit("burgerzilla",1);
            }
            if(_loc2_.hasBadge(14))
            {
               _loc1_.var_27.stats.submit("freezeputt",1);
               true;
               true;
            }
            false;
            false;
            if(_loc2_.hasBadge(41))
            {
               _loc1_.var_27.stats.submit("serveAllClosers",1);
            }
            if(_loc2_.hasBadge(45))
            {
               false;
               false;
               _loc1_.var_27.stats.submit("unlockMeats",1);
            }
            _loc1_.var_27.stats.submit("prizesWon",_loc3_.getBadgeTally(9));
            _loc1_.var_27.stats.submit("ordersWithWings",_loc3_.getBadgeTally(50));
         }
      }
      
      public function method_131() : void
      {
         false;
         true;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc1_:class_6 = this;
         true;
         true;
         if(class_3.method_16())
         {
            class_5.info("On Kongregate, connect to API.");
            _loc1_.var_147 = true;
            _loc2_ = LoaderInfo(_loc1_.method_5()).parameters;
            _loc3_ = String(String(_loc2_.kongregate_api_path) || "http://www.kongregate.com/flash/API_AS3_Local.swf");
            Security.allowDomain(_loc3_);
            _loc1_.var_106 = new Loader();
            _loc1_.var_106.contentLoaderInfo.addEventListener(Event.COMPLETE,_loc1_.method_150);
            _loc1_.var_106.load(new URLRequest(_loc3_));
            _loc1_.gameObj.addChild(_loc1_.var_106);
         }
      }
      
      public function method_150(param1:Event) : void
      {
         false;
         true;
         var _loc2_:class_6 = this;
         false;
         false;
         class_5.info("Kongregate API Connected.");
         true;
         true;
         _loc2_.var_27 = param1.target.content;
         _loc2_.var_27.services.connect();
      }
   }
}
