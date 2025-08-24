package package_4
{
   import flash.display.*;
   import flash.events.Event;
   import mochi.as3.*;
   import package_1.class_6;
   import package_2.class_3;
   import package_2.class_5;
   import wingGame.data.ClothingData;
   import wingGame.data.CustomerData;
   import wingGame.data.GameData;
   import wingGame.data.UserData;
   import wingGame.data.WorkerData;
   import wingGame.events.GameControls;
   import wingGame.managers.ChallengeManager;
   import wingGame.managers.CustomerManager;
   import wingGame.managers.SoundManager;
   import wingGame.managers.TicketManager;
   import wingGame.screens.*;
   
   public dynamic class class_4 extends MovieClip
   {
       
      
      public var var_15:MovieClip;
      
      public var var_34:MovieClip;
      
      public var userData:UserData;
      
      public var customerData:CustomerData;
      
      public var var_38:GameData;
      
      public var var_20:ClothingData;
      
      public var workerData:WorkerData;
      
      public var var_21:OrderScreen;
      
      public var var_16:GrillScreen;
      
      public var var_11:BuildScreen;
      
      public var var_30:SauceScreen;
      
      public var var_59:TakeOrderScreen;
      
      public var var_53:GiveOrderScreen;
      
      public var include:StartDayScreen;
      
      public var var_87:NewCustomerScreen;
      
      public var var_85:NewToppingScreen;
      
      public var var_76:PayDayScreen;
      
      public var var_79:ParadeScreen;
      
      public var var_239:CharacterEditorScreen;
      
      public var var_83:MiniGameScreen;
      
      public var var_51:LobbyEditorScreen;
      
      public var var_88:IntroScreen;
      
      public var var_13:CustomerManager;
      
      public var var_18:TicketManager;
      
      public var challengeManager:ChallengeManager;
      
      public var loadingScreen:class_2;
      
      public var var_94:SponsorLogoScreen;
      
      public var var_107:LicenseLogoScreen;
      
      public var var_108:FliplineLogoScreen;
      
      public var var_169:class_7;
      
      public var var_186:Array;
      
      public var hud:GameHUD;
      
      public var var_28:GameControls;
      
      public var soundManager:SoundManager;
      
      public var var_10:class_6;
      
      public var var_56:Boolean = false;
      
      public var var_103:Boolean = false;
      
      public var var_236:Number = 5400;
      
      public var var_237:Number = 3600;
      
      public var var_242:Number = 600;
      
      public var var_78:Number = 10800;
      
      public var var_233:Number = 640;
      
      public var var_235:Number = 480;
      
      public var var_14:Boolean = false;
      
      public var var_12:Number = 1;
      
      public var var_227:Number = 28;
      
      public var var_232:Boolean = false;
      
      public var var_163:Boolean = false;
      
      private var var_117:Boolean = false;
      
      public function class_4()
      {
         false;
         true;
         false;
         false;
         this.var_186 = [SplashScreen,SlotSelectScreen,EndOfDayScreen,StartDayPanel,ShopScreen,MainMenuScreen,CharacterEditorScreen];
         false;
         false;
         super();
      }
      
      public function method_141(param1:Event = null) : void
      {
         var _loc2_:class_4 = this;
         _loc2_.method_140();
         false;
         false;
         _loc2_.var_15 = new MovieClip();
         _loc2_.var_15.mouseEnabled = false;
         _loc2_.addChild(_loc2_.var_15);
         true;
         true;
         _loc2_.var_34 = new MovieClip();
         _loc2_.var_34.mouseEnabled = false;
         _loc2_.addChild(_loc2_.var_34);
         var _loc3_:MovieClip = new border_overlay();
         _loc2_.addChild(_loc3_);
         _loc2_.customerData = new CustomerData(_loc2_);
         _loc2_.userData = new UserData(_loc2_);
         _loc2_.var_38 = new GameData(_loc2_);
         _loc2_.var_20 = new ClothingData(_loc2_);
         _loc2_.workerData = new WorkerData();
         _loc2_.challengeManager = new ChallengeManager(_loc2_);
         _loc2_.var_10 = new class_6(_loc2_);
         true;
         true;
         _loc2_.var_10.method_65();
         _loc2_.customerData.outputTallies();
         class_5.info("Papa\'s Wingeria (c) 2012 Flipline Studios.  All Rights Reserved.");
         false;
         false;
         class_5.info("Game Version: " + _loc2_.var_10.var_158);
         class_5.info("----------------------------------------------------------------");
         false;
         false;
         _loc2_.method_130();
      }
      
      public function method_140() : void
      {
         var mod:class_4;
         var loaderInfo:LoaderInfo;
         var sentLevel:String;
         var numberLevel:Number;
         false;
         true;
         false;
         false;
         loaderInfo = null;
         sentLevel = null;
         false;
         false;
         numberLevel = NaN;
         mod = this;
         class_5.method_59(class_5.INFO_LEVEL);
         try
         {
            loaderInfo = mod.root.loaderInfo;
            false;
            false;
            if(loaderInfo.loader != null)
            {
               loaderInfo = loaderInfo.loader.loaderInfo;
            }
            if(loaderInfo.parameters.hasOwnProperty("traceall"))
            {
               class_5.method_59(class_5.ALL);
               false;
               false;
            }
            else if(loaderInfo.parameters.hasOwnProperty("tracelevel"))
            {
               sentLevel = String(loaderInfo.parameters.tracelevel);
               true;
               true;
               false;
               false;
               numberLevel = 0;
               false;
               false;
               if(sentLevel == "all")
               {
                  false;
                  false;
                  numberLevel = class_5.ALL;
               }
               else
               {
                  false;
                  false;
                  if(sentLevel == "debug")
                  {
                     true;
                     true;
                     true;
                     true;
                     numberLevel = class_5.DEBUG_LEVEL;
                  }
                  else
                  {
                     false;
                     false;
                     if(sentLevel == "error")
                     {
                        false;
                        false;
                        numberLevel = class_5.ERROR_LEVEL;
                     }
                     else
                     {
                        false;
                        false;
                        if(sentLevel == "warn")
                        {
                           false;
                           false;
                           numberLevel = class_5.WARN_LEVEL;
                        }
                        else
                        {
                           true;
                           true;
                           if(sentLevel == "none" || sentLevel == "off")
                           {
                              numberLevel = class_5.const_3;
                              false;
                              false;
                           }
                           else
                           {
                              numberLevel = Number(sentLevel);
                           }
                        }
                     }
                  }
               }
               class_5.method_59(numberLevel);
            }
         }
         catch(err:Error)
         {
            true;
            true;
            class_5.error("Error checking parameters for trace override.");
         }
      }
      
      public function method_130() : void
      {
         var _loc1_:class_4 = this;
         _loc1_.stage.stageFocusRect = false;
         _loc1_.soundManager = new SoundManager(_loc1_);
         true;
         true;
         _loc1_.var_10.method_58(_loc1_.soundManager);
         false;
         false;
         if(class_3.method_21())
         {
            true;
            true;
            if(class_3.method_2())
            {
               false;
               false;
               _loc1_.method_116();
            }
            else
            {
               _loc1_.method_100();
               false;
               false;
            }
         }
         else
         {
            _loc1_.method_146();
         }
      }
      
      public function method_169() : void
      {
      }
      
      public function method_160() : void
      {
      }
      
      public function method_146() : void
      {
         var _loc1_:class_4 = this;
         false;
         false;
         if(!_loc1_.var_169)
         {
            _loc1_.var_169 = new class_7(_loc1_);
         }
      }
      
      public function method_100() : void
      {
         var _loc1_:class_4 = this;
         _loc1_.var_94 = new SponsorLogoScreen(_loc1_);
      }
      
      public function method_144() : void
      {
         var _loc1_:class_4 = this;
         false;
         false;
         false;
         false;
         if(_loc1_.var_94)
         {
            _loc1_.var_94.destroy();
            true;
            true;
            _loc1_.var_94 = null;
         }
      }
      
      public function method_116() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         _loc1_.var_107 = new LicenseLogoScreen(_loc1_);
      }
      
      public function method_138() : void
      {
         var _loc1_:class_4 = this;
         true;
         true;
         if(_loc1_.var_107)
         {
            true;
            true;
            _loc1_.var_107.destroy();
            _loc1_.var_107 = null;
         }
      }
      
      public function method_128() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         true;
         true;
         _loc1_.var_108 = new FliplineLogoScreen(_loc1_);
      }
      
      public function method_110() : void
      {
         var _loc1_:class_4 = this;
         true;
         true;
         false;
         false;
         if(_loc1_.var_108)
         {
            true;
            true;
            _loc1_.var_108.destroy();
            _loc1_.var_108 = null;
         }
      }
      
      public function method_56() : void
      {
         var _loc1_:class_4 = this;
         true;
         true;
         true;
         true;
         _loc1_.var_10.api.method_33("EndOfDay");
         true;
         true;
         _loc1_.method_55();
         true;
         true;
         _loc1_.var_56 = false;
         _loc1_.var_117 = false;
         _loc1_.var_10.api.method_32("SplashScreen");
      }
      
      public function method_43() : void
      {
         var _loc1_:class_4 = this;
         true;
         true;
         if(!_loc1_.include)
         {
            _loc1_.include = new StartDayScreen(_loc1_);
         }
      }
      
      public function method_114() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         true;
         true;
         false;
         false;
         if(_loc1_.include)
         {
            _loc1_.include.destroy();
            _loc1_.include = null;
            true;
            true;
         }
         if(_loc1_.var_28)
         {
            _loc1_.var_28.resetKeyFocus();
         }
      }
      
      public function method_47() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         var _loc2_:Object = new Object();
         _loc2_.showAd = false;
         false;
         false;
         false;
         false;
         §§push(_loc1_.userData.playedALevel);
         if(_loc1_.userData.playedALevel)
         {
            false;
            false;
            §§pop();
            false;
            false;
            §§push(_loc1_.userData.currentDay > 0);
         }
         if(§§pop())
         {
            false;
            false;
            _loc2_.showAd = true;
            true;
            true;
         }
         else if(_loc1_.userData.playedALevel)
         {
            false;
            false;
            _loc2_.showClickaway = true;
         }
         _loc1_.var_10.api.method_32("StartDayPanel",_loc2_);
      }
      
      public function method_41() : void
      {
         var _loc1_:class_4 = this;
         _loc1_.var_10.api.method_33("StartDayPanel");
      }
      
      public function method_109() : void
      {
         var _loc1_:class_4 = this;
         true;
         true;
         class_5.method_25("Show Shop Screen!");
         _loc1_.var_10.api.method_32("ShopScreen");
      }
      
      public function method_85() : void
      {
         var _loc1_:class_4 = this;
         true;
         true;
         _loc1_.var_10.api.method_33("ShopScreen");
      }
      
      public function method_145(param1:Number = -1) : void
      {
         false;
         true;
         var _loc2_:class_4 = this;
         var _loc3_:Object = new Object();
         _loc3_.selectedSlot = param1;
         true;
         true;
         _loc3_.firsttime = true;
         true;
         true;
         _loc2_.var_10.api.method_32("CharacterEditor",_loc3_);
      }
      
      public function method_118() : void
      {
         var _loc1_:class_4 = this;
         false;
         false;
         _loc1_.var_10.api.method_33("CharacterEditor");
      }
      
      public function method_142() : void
      {
         var _loc1_:class_4 = this;
         false;
         false;
         if(!_loc1_.var_51)
         {
            false;
            false;
            _loc1_.var_51 = new LobbyEditorScreen(_loc1_);
         }
      }
      
      public function method_104() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         true;
         true;
         if(_loc1_.var_51)
         {
            _loc1_.var_51.destroy();
            false;
            false;
            _loc1_.var_51 = null;
         }
      }
      
      public function method_154() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         _loc1_.var_163 = true;
         false;
         false;
         _loc1_.var_117 = _loc1_.var_56;
         false;
         false;
         _loc1_.var_56 = true;
         _loc1_.var_10.api.method_32("MainMenu");
      }
      
      public function method_55() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         true;
         true;
         _loc1_.var_163 = false;
         true;
         true;
         _loc1_.var_56 = _loc1_.var_117;
         true;
         true;
         _loc1_.var_10.api.method_33("MainMenu");
      }
      
      public function method_60() : void
      {
         var _loc1_:class_4 = this;
         if(!_loc1_.var_87)
         {
            false;
            false;
            _loc1_.var_87 = new NewCustomerScreen(_loc1_);
         }
      }
      
      public function method_134() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         true;
         true;
         false;
         false;
         if(_loc1_.var_87)
         {
            true;
            true;
            _loc1_.var_87.destroy();
            _loc1_.var_87 = null;
         }
      }
      
      public function method_50() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         false;
         false;
         if(!_loc1_.var_85)
         {
            _loc1_.var_85 = new NewToppingScreen(_loc1_);
         }
      }
      
      public function method_117() : void
      {
         var _loc1_:class_4 = this;
         false;
         false;
         false;
         false;
         if(_loc1_.var_85)
         {
            _loc1_.var_85.destroy();
            _loc1_.var_85 = null;
         }
      }
      
      public function method_82() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         true;
         true;
         if(!_loc1_.var_76)
         {
            false;
            false;
            _loc1_.var_76 = new PayDayScreen(_loc1_);
         }
      }
      
      public function method_133() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         false;
         false;
         if(_loc1_.var_76)
         {
            _loc1_.var_76.destroy();
            _loc1_.var_76 = null;
         }
      }
      
      public function method_88(param1:Boolean = false) : void
      {
         false;
         true;
         var _loc2_:class_4 = this;
         false;
         false;
         if(!_loc2_.var_79)
         {
            true;
            true;
            _loc2_.var_79 = new ParadeScreen(_loc2_,param1);
         }
      }
      
      public function method_122() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         if(_loc1_.var_79)
         {
            _loc1_.var_79.destroy();
            false;
            false;
            _loc1_.var_79 = null;
         }
      }
      
      public function method_84(param1:String = "") : void
      {
         false;
         true;
         var _loc2_:class_4 = this;
         if(!_loc2_.var_83)
         {
            _loc2_.method_52();
            _loc2_.var_10.api.method_33("EndOfDay");
            _loc2_.var_83 = new MiniGameScreen(_loc2_,param1);
         }
      }
      
      public function method_99() : void
      {
         var _loc1_:class_4 = this;
         if(_loc1_.var_83)
         {
            true;
            true;
            _loc1_.var_83.destroy();
            _loc1_.var_83 = null;
         }
      }
      
      public function method_83() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         false;
         false;
         if(!_loc1_.var_88)
         {
            false;
            false;
            _loc1_.var_88 = new IntroScreen(_loc1_);
         }
      }
      
      public function method_127() : void
      {
         var _loc1_:class_4 = this;
         false;
         false;
         if(_loc1_.var_88)
         {
            false;
            false;
            _loc1_.var_88.destroy();
            _loc1_.var_88 = null;
         }
      }
      
      public function method_67() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         true;
         true;
         _loc1_.var_10.api.method_33("EndOfDay");
         _loc1_.method_99();
         if(_loc1_.userData.currentDay == 1)
         {
            _loc1_.var_14 = true;
            true;
            true;
            _loc1_.var_12 = 1;
         }
         else
         {
            _loc1_.var_14 = false;
         }
         _loc1_.var_28 = new GameControls(_loc1_);
         _loc1_.var_13 = new CustomerManager(_loc1_);
         _loc1_.var_18 = new TicketManager(_loc1_);
         _loc1_.hud = new GameHUD(_loc1_);
         _loc1_.var_21 = new OrderScreen(_loc1_);
         _loc1_.var_16 = new GrillScreen(_loc1_);
         _loc1_.var_11 = new BuildScreen(_loc1_);
         _loc1_.var_30 = new SauceScreen(_loc1_);
         _loc1_.var_59 = new TakeOrderScreen(_loc1_);
         _loc1_.var_53 = new GiveOrderScreen(_loc1_);
         false;
         false;
         if(_loc1_.userData.currentDay > 1)
         {
            _loc1_.method_47();
            true;
            true;
         }
         else
         {
            _loc1_.method_43();
         }
      }
      
      public function method_52() : void
      {
         var _loc1_:class_4 = this;
         false;
         false;
         if(_loc1_.hud)
         {
            _loc1_.var_28.destroy();
            false;
            false;
            _loc1_.var_13.destroy();
            _loc1_.var_18.destroy();
            _loc1_.hud.destroy();
            _loc1_.var_21.destroy();
            _loc1_.var_16.destroy();
            _loc1_.var_11.destroy();
            _loc1_.var_30.destroy();
            _loc1_.var_59.destroy();
            false;
            false;
            _loc1_.var_53.destroy();
            _loc1_.var_28 = null;
            false;
            false;
            _loc1_.var_13 = null;
            false;
            false;
            _loc1_.var_18 = null;
            _loc1_.hud = null;
            _loc1_.var_21 = null;
            _loc1_.var_16 = null;
            _loc1_.var_11 = null;
            _loc1_.var_30 = null;
            true;
            true;
            _loc1_.var_59 = null;
            _loc1_.var_53 = null;
         }
      }
      
      public function method_111() : void
      {
         var _loc1_:class_4 = this;
         _loc1_.var_103 = false;
         _loc1_.soundManager.restoreSoundAfterAd();
         false;
         false;
         _loc1_.var_28.setupGameCycle();
         true;
         true;
         _loc1_.var_30.initStationUpgrades();
         _loc1_.var_16.initStationUpgrades();
         _loc1_.var_11.initStationUpgrades();
         _loc1_.var_21.initStationUpgrades();
         true;
         true;
         _loc1_.var_59.initStationUpgrades();
         _loc1_.var_53.initStationUpgrades();
         _loc1_.hud.startHUD();
         _loc1_.var_13.startSpawningCustomers();
      }
      
      public function method_105() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         _loc1_.method_52();
         false;
         false;
         _loc1_.var_10.api.method_32("EndOfDay");
      }
      
      public function quitToTitle() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         false;
         false;
         _loc1_.method_85();
         true;
         true;
         _loc1_.method_41();
         true;
         true;
         _loc1_.method_55();
         _loc1_.method_52();
         false;
         false;
         _loc1_.method_56();
      }
      
      public function method_29() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         false;
         false;
         false;
         false;
         var _loc2_:*;
         var _loc3_:* = (_loc2_ = _loc1_).var_12 + 1;
         false;
         false;
         _loc2_.var_12 = _loc3_;
         try
         {
            false;
            false;
            _loc1_.hud.trainingClip.nextFrame();
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc1_.hud.showTrainingWarning("hidden");
         }
         catch(err:Error)
         {
         }
         if(_loc1_.var_12 > _loc1_.var_227)
         {
            true;
            true;
            _loc1_.var_14 = false;
         }
      }
      
      public function showAd() : void
      {
         var _loc1_:class_4 = this;
         true;
         true;
         MochiAd.showPreGameAd({
            "clip":_loc1_,
            "id":"194fdfab80576799",
            "res":"608x480",
            "background":16770518,
            "color":8501569,
            "outline":5117533
         });
      }
      
      public function showInterLevelAd() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         MochiAd.showInterLevelAd({
            "clip":_loc1_,
            "id":"194fdfab80576799",
            "res":"608x480",
            "background":16770518,
            "color":8501569,
            "outline":5117533
         });
      }
      
      public function showClickAwayAd() : void
      {
         false;
         true;
         var _loc1_:class_4 = this;
         true;
         true;
         MochiAd.showClickAwayAd({
            "clip":_loc1_,
            "id":"194fdfab80576799"
         });
      }
      
      public function method_170() : void
      {
         var _loc1_:class_4 = this;
         MochiAd.unload(_loc1_);
      }
   }
}
