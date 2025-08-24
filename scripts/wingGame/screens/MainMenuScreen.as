package wingGame.screens
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.getDefinitionByName;
   import package_2.class_3;
   import package_2.class_5;
   import package_2.class_8;
   import package_4.class_4;
   import package_7.class_14;
   import wingGame.data.CustomerData;
   import wingGame.data.GameData;
   import wingGame.data.UserData;
   import wingGame.managers.ChallengeManager;
   
   public class MainMenuScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      private var params:Object;
      
      private var confirmYesButton:class_14;
      
      private var confirmNoButton:class_14;
      
      public var currentSection:String = "";
      
      public var customerThumbClips:Array;
      
      public var customerThumbBitmaps:Array;
      
      public var customerThumbBMP:Array;
      
      public var currentCustomer:Number = 1;
      
      public var currentCustomerPage:Number = 1;
      
      public var totalCustomerPages:Number = 1;
      
      public var customerTweenSpeed:Number = 4;
      
      public var customerStartX:Number = 155;
      
      public var customerClip:MovieClip;
      
      public var backdropBitmap:Bitmap;
      
      private var medalsPage:Number = 0;
      
      private var medalsPerPage:Number = 10;
      
      private var medalsDirection:String = "next";
      
      private var medalsTransitioning:Boolean = true;
      
      private var papalouieLink:String = "http://www.flipline.com/games/papalouie/";
      
      private var pizzeriaLink:String = "http://www.flipline.com/games/papaspizzeria/";
      
      private var burgeriaLink:String = "http://www.flipline.com/games/papasburgeria/";
      
      private var tacomiaLink:String = "http://www.flipline.com/games/papastacomia/";
      
      private var freezeriaLink:String = "http://www.flipline.com/games/papasfreezeria/";
      
      private var pancakeriaLink:String = "http://www.flipline.com/games/papaspancakeria/";
      
      private var useWhichLink:String = "";
      
      private var shouldShowPlayNow:Boolean = false;
      
      private var playnowPadX:Number = 10;
      
      public var editor:CharacterEditorScreen;
      
      public function MainMenuScreen(param1:class_4, param2:MovieClip, param3:Object = null)
      {
         false;
         true;
         this.customerThumbClips = [];
         false;
         false;
         this.customerThumbBitmaps = [];
         false;
         false;
         this.customerThumbBMP = [];
         true;
         true;
         super();
         this.gameObj = param1;
         this.container = param2;
         this.params = param3;
         this.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc1_:MainMenuScreen = this;
         _loc1_.clip = new mainmenuMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.container.addEventListener("clickInfo",_loc1_.clickInfo);
         true;
         true;
         _loc1_.container.addEventListener("clickCustomers",_loc1_.clickCustomers);
         _loc1_.container.addEventListener("clickMedals",_loc1_.clickMedals);
         _loc1_.container.addEventListener("clickCredits",_loc1_.clickCredits);
         _loc1_.container.addEventListener("clickHelp",_loc1_.clickHelp);
         _loc1_.container.addEventListener("clickBackToGame",_loc1_.clickBackToGame);
         true;
         true;
         _loc1_.container.addEventListener("clickQuit",_loc1_.clickQuit);
         _loc1_.setupInfo();
         _loc1_.setupCustomers();
         true;
         true;
         _loc1_.setupMedals();
         _loc1_.setupHelp();
         _loc1_.setupCredits();
         true;
         true;
         _loc1_.setupConfirmQuit();
         false;
         false;
         _loc1_.setSection("info");
         true;
         true;
         _loc1_.gameObj.soundManager.switchMusic("none");
      }
      
      public function clickInfo(param1:Event) : void
      {
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.setSection("info");
      }
      
      public function clickCustomers(param1:Event) : void
      {
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         _loc2_.setSection("customers");
      }
      
      public function clickMedals(param1:Event) : void
      {
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         _loc2_.setSection("medals");
      }
      
      public function clickHelp(param1:Event) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.setSection("help");
      }
      
      public function clickCredits(param1:Event) : void
      {
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.setSection("credits");
      }
      
      public function clickBackToGame(param1:Event) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         _loc2_.closeMainMenuScreen();
      }
      
      public function clickQuit(param1:Event) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         _loc2_.clip.confirmquit.visible = true;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.gameObj.var_10.api.disableButtons();
      }
      
      public function clickConfirmQuit(param1:Event) : void
      {
         var _loc2_:MainMenuScreen = this;
         false;
         false;
         _loc2_.clip.confirmquit.visible = false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         _loc2_.closeMainMenuScreen(true);
      }
      
      public function clickCancelQuit(param1:Event) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         _loc2_.clip.confirmquit.visible = false;
         true;
         true;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         _loc2_.gameObj.var_10.api.enableButtons();
      }
      
      public function setSection(param1:String) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         if(param1 != _loc2_.currentSection)
         {
            false;
            false;
            _loc2_.currentSection = param1;
            _loc2_.clip.info.visible = false;
            _loc2_.clip.customers.visible = false;
            _loc2_.clip.credits.visible = false;
            _loc2_.clip.help.visible = false;
            _loc2_.clip.medals.visible = false;
            false;
            false;
            true;
            true;
            if(_loc2_.currentSection != "" && _loc2_.currentSection != "none")
            {
               _loc2_.clip[_loc2_.currentSection].visible = true;
            }
            true;
            true;
            true;
            true;
            _loc2_.gameObj.var_10.api.method_54(_loc2_.getSectionTitle());
            true;
            true;
            _loc2_.clip.fader.gotoAndPlay("fadein");
            if(param1 == "info")
            {
               false;
               false;
               _loc2_.gameObj.var_10.api.method_27("Menu_Info","Unique_Menu_Visits",true);
               true;
               true;
               _loc2_.gameObj.var_10.api.method_27("Menu_Info_Total","Total_Menu_Visits");
            }
            else if(param1 == "customers")
            {
               true;
               true;
               _loc2_.gameObj.var_10.api.method_27("Menu_Customers","Unique_Menu_Visits",true);
               _loc2_.gameObj.var_10.api.method_27("Menu_Customers_Total","Total_Menu_Visits");
            }
            else if(param1 == "help")
            {
               false;
               false;
               false;
               false;
               _loc2_.gameObj.var_10.api.method_27("Menu_Help","Unique_Menu_Visits",true);
               _loc2_.gameObj.var_10.api.method_27("Menu_Help_Total","Total_Menu_Visits");
            }
            else if(param1 == "credits")
            {
               true;
               true;
               _loc2_.gameObj.var_10.api.method_27("Menu_Credits","Unique_Menu_Visits",true);
               true;
               true;
               _loc2_.gameObj.var_10.api.method_27("Menu_Credits_Total","Total_Menu_Visits");
            }
            else if(param1 == "badges")
            {
               _loc2_.gameObj.var_10.api.method_27("Menu_Badges","Unique_Menu_Visits",true);
               false;
               false;
               _loc2_.gameObj.var_10.api.method_27("Menu_Badges_Total","Total_Menu_Visits");
               if(!_loc2_.gameObj.userData.hasVisitedBadgesScreen)
               {
                  false;
                  false;
                  _loc2_.gameObj.var_10.api.method_27("NoticedBadgesScreen","Screens",true);
                  true;
                  true;
                  _loc2_.gameObj.userData.hasVisitedBadgesScreen = true;
               }
            }
         }
      }
      
      public function setupInfo(param1:Boolean = true) : void
      {
         var _loc5_:Object = null;
         var _loc2_:MainMenuScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:GameData = _loc2_.gameObj.var_38;
         true;
         true;
         if(param1)
         {
            false;
            false;
            (_loc5_ = {}).inMenu = true;
            false;
            false;
            _loc2_.editor = new CharacterEditorScreen(_loc2_.gameObj,_loc2_.clip.info,_loc5_);
         }
         else
         {
            _loc2_.editor.destroy();
            true;
            true;
            _loc2_.editor = null;
         }
      }
      
      public function setupCustomers(param1:Boolean = true) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Class = null;
         var _loc14_:Boolean = false;
         var _loc15_:Bitmap = null;
         var _loc16_:MovieClip = null;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc2_:MainMenuScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:CustomerData = _loc2_.gameObj.customerData;
         true;
         true;
         if(param1)
         {
            if(!class_3.method_2())
            {
               _loc2_.shouldShowPlayNow = true;
            }
            _loc2_.clip.customers.playnow_btn.visible = false;
            false;
            false;
            _loc6_ = 8;
            true;
            true;
            false;
            false;
            _loc7_ = 2;
            false;
            false;
            _loc8_ = 41;
            true;
            true;
            _loc9_ = 55;
            true;
            true;
            _loc10_ = 0;
            _loc2_.customerThumbBitmaps = [];
            _loc2_.customerThumbBMP = [];
            _loc2_.customerThumbClips = [];
            _loc2_.totalCustomerPages = Math.ceil(_loc3_.customersUnlocked.length / (_loc6_ * _loc7_));
            _loc5_ = 1;
            while(_loc5_ < _loc3_.customersUnlocked.length)
            {
               _loc11_ = _loc4_.getCustomerClipName(_loc5_);
               _loc14_ = true;
               false;
               false;
               §§push(_loc3_.customersUnlocked[_loc5_] == 0);
               if(!(_loc3_.customersUnlocked[_loc5_] == 0))
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  false;
                  false;
                  §§push(_loc3_.customerVisits[_loc5_] == 0);
               }
               if(§§pop())
               {
                  true;
                  true;
                  _loc14_ = false;
               }
               if(_loc14_)
               {
                  false;
                  false;
                  _loc12_ = new (_loc13_ = getDefinitionByName("customer_" + _loc11_ + "_t1.png") as Class)(0,0);
               }
               else
               {
                  _loc12_ = new (_loc13_ = getDefinitionByName("customer_" + _loc11_ + "_t2.png") as Class)(0,0);
               }
               _loc15_ = new Bitmap(_loc12_);
               (_loc16_ = new menu_customer_thumb()).inside.addChild(_loc15_);
               _loc16_.whichCustomer = _loc5_;
               if(_loc3_.customerSeals[_loc5_] > 0)
               {
                  _loc16_.star.visible = true;
                  _loc16_.star.gotoAndStop(2);
               }
               else
               {
                  _loc16_.star.visible = false;
                  true;
                  true;
               }
               _loc16_.btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCustomerThumb);
               if(!_loc14_)
               {
                  _loc16_.btn.visible = false;
               }
               else
               {
                  false;
                  false;
                  false;
                  false;
                  _loc10_++;
               }
               if(_loc14_)
               {
                  _loc2_.customerThumbClips.unshift(_loc16_);
                  _loc2_.customerThumbBitmaps.unshift(_loc15_);
                  _loc2_.customerThumbBMP.unshift(_loc12_);
               }
               else
               {
                  false;
                  false;
                  _loc2_.customerThumbClips.push(_loc16_);
                  false;
                  false;
                  _loc2_.customerThumbBitmaps.push(_loc15_);
                  _loc2_.customerThumbBMP.push(_loc12_);
                  true;
                  true;
               }
               false;
               false;
               _loc5_++;
            }
            _loc5_ = 0;
            while(_loc5_ < _loc2_.customerThumbClips.length)
            {
               true;
               true;
               true;
               true;
               _loc17_ = _loc5_ % _loc6_ * _loc8_;
               false;
               false;
               _loc18_ = _loc5_ % (_loc6_ * _loc7_);
               _loc19_ = 0;
               false;
               false;
               if(_loc18_ >= _loc6_)
               {
                  true;
                  true;
                  _loc19_ = _loc9_;
               }
               _loc20_ = Math.floor(_loc5_ / (_loc6_ * _loc7_)) * (_loc8_ * _loc6_);
               true;
               true;
               _loc2_.customerThumbClips[_loc5_].x = _loc17_ + _loc20_;
               false;
               false;
               _loc2_.customerThumbClips[_loc5_].y = _loc19_;
               _loc2_.clip.customers.thumbholder.addChild(_loc2_.customerThumbClips[_loc5_]);
               _loc5_++;
            }
            _loc2_.clip.customers.right_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCustomerNext);
            _loc2_.clip.customers.left_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCustomerPrev);
            _loc2_.clip.customers.left_btn.visible = false;
            _loc2_.clip.customers.playnow_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCustomerPlayGame);
            _loc2_.clip.customers.holder.mask = _loc2_.clip.customers.masker;
            _loc2_.clip.customers.masker.visible = false;
            _loc2_.clip.customers.topfader.mouseEnabled = false;
            if(_loc10_ == 0)
            {
               _loc2_.showCustomerDetails(9);
            }
            else
            {
               _loc2_.showCustomerDetails(_loc2_.customerThumbClips[0].whichCustomer);
            }
         }
         else
         {
            _loc2_.destroyPreviousPhoto();
            _loc21_ = _loc2_.customerThumbClips.length;
            false;
            false;
            _loc5_ = 0;
            while(_loc5_ < _loc21_)
            {
               _loc2_.customerThumbClips[_loc5_].btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCustomerThumb);
               _loc2_.clip.customers.thumbholder.removeChild(_loc2_.customerThumbClips[_loc5_]);
               _loc2_.customerThumbClips[_loc5_].inside.removeChild(_loc2_.customerThumbBitmaps[_loc5_]);
               true;
               true;
               _loc2_.customerThumbClips[_loc5_] = null;
               true;
               true;
               false;
               false;
               _loc2_.customerThumbBitmaps[_loc5_] = null;
               false;
               false;
               _loc2_.customerThumbBMP[_loc5_].dispose();
               _loc2_.customerThumbBMP[_loc5_] = null;
               _loc5_++;
            }
            _loc2_.customerThumbBitmaps = null;
            _loc2_.customerThumbBMP = null;
            _loc2_.customerThumbClips = null;
            _loc2_.clip.customers.right_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCustomerNext);
            false;
            false;
            _loc2_.clip.customers.left_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCustomerPrev);
            _loc2_.clip.customers.playnow_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCustomerPlayGame);
            try
            {
               _loc2_.clip.customers.removeEventListener(Event.ENTER_FRAME,_loc2_.animateCustomerPanel);
            }
            catch(err:Error)
            {
            }
         }
      }
      
      public function clickCustomerThumb(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         var _loc3_:Number = Number(param1.currentTarget.parent.whichCustomer);
         _loc2_.showCustomerDetails(_loc3_);
      }
      
      public function clickCustomerPlayGame(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         if(_loc2_.useWhichLink != "")
         {
            _loc2_.gameObj.var_10.api.method_28(_loc2_.useWhichLink,"CustomerGameLink","Links");
         }
      }
      
      public function showCustomerDetails(param1:Number) : void
      {
         false;
         true;
         var _loc5_:Number = NaN;
         var _loc2_:MainMenuScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:CustomerData = _loc2_.gameObj.customerData;
         _loc2_.clip.customers.name_txt.text = _loc4_.getCustomerName(param1);
         _loc2_.clip.customers.firstvisit_txt.text = "Day " + _loc3_.getCustomerFirstDay(param1);
         _loc2_.clip.customers.orders_txt.text = _loc3_.getCustomerTotalOrders(param1);
         _loc2_.clip.customers.firstgame_txt.text = _loc4_.getCustomerFirstGame(param1);
         _loc2_.clip.customers.favorites_txt.text = _loc4_.getCustomerToppingString(param1);
         if(_loc2_.shouldShowPlayNow)
         {
            false;
            false;
            _loc2_.clip.customers.playnow_btn.visible = true;
            _loc2_.clip.customers.playnow_btn.x = _loc2_.clip.customers.firstgame_txt.x + _loc2_.clip.customers.firstgame_txt.textWidth + _loc2_.playnowPadX;
            false;
            false;
            if(_loc4_.getCustomerFirstGame(param1) == "Papa Louie")
            {
               _loc2_.useWhichLink = _loc2_.papalouieLink;
            }
            else
            {
               true;
               true;
               if(_loc4_.getCustomerFirstGame(param1) == "Papa\'s Pizzeria")
               {
                  _loc2_.useWhichLink = _loc2_.pizzeriaLink;
               }
               else
               {
                  true;
                  true;
                  if(_loc4_.getCustomerFirstGame(param1) == "Papa\'s Burgeria")
                  {
                     _loc2_.useWhichLink = _loc2_.burgeriaLink;
                  }
                  else
                  {
                     true;
                     true;
                     if(_loc4_.getCustomerFirstGame(param1) == "Papa\'s Taco Mia!")
                     {
                        false;
                        false;
                        _loc2_.useWhichLink = _loc2_.tacomiaLink;
                     }
                     else if(_loc4_.getCustomerFirstGame(param1) == "Papa\'s Freezeria")
                     {
                        _loc2_.useWhichLink = _loc2_.freezeriaLink;
                     }
                     else if(_loc4_.getCustomerFirstGame(param1) == "Papa\'s Pancakeria")
                     {
                        _loc2_.useWhichLink = _loc2_.pancakeriaLink;
                     }
                     else
                     {
                        _loc2_.useWhichLink = "";
                        _loc2_.clip.customers.playnow_btn.visible = false;
                     }
                  }
               }
            }
         }
         else
         {
            _loc2_.clip.customers.playnow_btn.visible = false;
         }
         false;
         false;
         var _loc6_:Number = _loc3_.getCustomerSeal(param1);
         false;
         false;
         var _loc7_:Number = _loc3_.getCustomerStars(param1);
         false;
         false;
         false;
         false;
         if(_loc6_ > 0)
         {
            true;
            true;
            _loc2_.clip.customers.sealMC.visible = true;
            _loc2_.clip.customers.sealMC.gotoAndStop(_loc6_);
         }
         else
         {
            _loc2_.clip.customers.sealMC.visible = false;
         }
         _loc5_ = 1;
         while(_loc5_ <= 5)
         {
            if(_loc7_ >= _loc5_)
            {
               _loc2_.clip.customers["star_" + _loc5_].gotoAndStop(2);
            }
            else
            {
               _loc2_.clip.customers["star_" + _loc5_].gotoAndStop(1);
            }
            false;
            false;
            _loc5_++;
         }
         true;
         true;
         _loc2_.buildCustomerPhoto(param1,_loc6_);
         if(_loc4_.isCloser(param1))
         {
            if(param1 == 1)
            {
               _loc2_.clip.customers.typelabel.visible = true;
               _loc2_.clip.customers.typelabel.gotoAndStop(2);
            }
            else
            {
               _loc2_.clip.customers.typelabel.visible = true;
               true;
               true;
               _loc2_.clip.customers.typelabel.gotoAndStop(1);
            }
         }
         else
         {
            _loc2_.clip.customers.typelabel.visible = false;
         }
         _loc2_.clip.customers.topfader.gotoAndPlay(1);
      }
      
      public function destroyPreviousPhoto() : void
      {
         var screen:MainMenuScreen;
         true;
         true;
         screen = this;
         true;
         true;
         if(screen.customerClip)
         {
            false;
            false;
            screen.customerClip.stop();
            try
            {
               screen.customerClip.body.removeChildAt(0);
               true;
               true;
               false;
               false;
               false;
               false;
               screen.customerClip.head.removeChildAt(0);
               false;
               false;
               screen.customerClip.eyes.removeChildAt(0);
               screen.customerClip.mouth.removeChildAt(0);
               screen.customerClip.neck.removeChildAt(0);
               true;
               true;
               screen.customerClip.front_shoe.removeChildAt(0);
               screen.customerClip.back_shoe.removeChildAt(0);
               screen.customerClip.fronthand.removeChildAt(0);
               screen.customerClip.backhand.removeChildAt(0);
               screen.customerClip.front_upperarm.removeChildAt(0);
               screen.customerClip.back_upperarm.removeChildAt(0);
               false;
               false;
               screen.customerClip.front_forearm.removeChildAt(0);
               false;
               false;
               screen.customerClip.back_forearm.removeChildAt(0);
            }
            catch(err:Error)
            {
               class_5.error("Error removing parts of customer");
            }
            try
            {
               screen.customerClip.hair.removeChildAt(0);
            }
            catch(err:Error)
            {
            }
            try
            {
               screen.customerClip.back_hair.removeChildAt(0);
            }
            catch(err:Error)
            {
            }
            true;
            true;
            false;
            false;
            screen.clip.customers.holder.removeChild(screen.customerClip);
            screen.customerClip = null;
         }
      }
      
      public function buildCustomerPhoto(param1:Number, param2:Number) : void
      {
         false;
         true;
         var _loc28_:Class = null;
         var _loc29_:MovieClip = null;
         var _loc30_:Class = null;
         var _loc31_:MovieClip = null;
         var _loc3_:MainMenuScreen = this;
         _loc3_.destroyPreviousPhoto();
         _loc3_.customerClip = new customerMC();
         true;
         true;
         var _loc4_:String = _loc3_.gameObj.customerData.getCustomerClipName(param1);
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = getDefinitionByName("customer_" + _loc4_ + "_body") as Class)()).name = "clip";
         false;
         false;
         _loc3_.customerClip.body.addChild(_loc6_);
         var _loc8_:MovieClip;
         var _loc7_:Class;
         (_loc8_ = new (_loc7_ = getDefinitionByName("customer_" + _loc4_ + "_head") as Class)()).name = "clip";
         _loc3_.customerClip.head.addChild(_loc8_);
         var _loc10_:MovieClip;
         var _loc9_:Class;
         (_loc10_ = new (_loc9_ = getDefinitionByName("customer_" + _loc4_ + "_eyes") as Class)()).name = "clip";
         true;
         true;
         _loc3_.customerClip.eyes.addChild(_loc10_);
         var _loc12_:MovieClip;
         var _loc11_:Class;
         (_loc12_ = new (_loc11_ = getDefinitionByName("customer_" + _loc4_ + "_mouth") as Class)()).name = "clip";
         _loc3_.customerClip.mouth.addChild(_loc12_);
         var _loc14_:MovieClip;
         var _loc13_:Class;
         (_loc14_ = new (_loc13_ = getDefinitionByName("customer_" + _loc4_ + "_neck") as Class)()).name = "clip";
         false;
         false;
         _loc3_.customerClip.neck.addChild(_loc14_);
         try
         {
            (_loc29_ = new (_loc28_ = getDefinitionByName("customer_" + _loc4_ + "_hair") as Class)()).name = "clip";
            _loc3_.customerClip.hair.addChild(_loc29_);
         }
         catch(err:Error)
         {
         }
         try
         {
            (_loc31_ = new (_loc30_ = getDefinitionByName("customer_" + _loc4_ + "_back_hair") as Class)()).name = "clip";
            false;
            false;
            _loc3_.customerClip.back_hair.addChild(_loc31_);
         }
         catch(err:Error)
         {
         }
         var _loc16_:MovieClip;
         var _loc15_:Class;
         (_loc16_ = new (_loc15_ = getDefinitionByName("customer_" + _loc4_ + "_foot") as Class)()).name = "clip";
         false;
         false;
         _loc3_.customerClip.front_shoe.addChild(_loc16_);
         var _loc17_:MovieClip;
         (_loc17_ = new _loc15_()).name = "clip";
         true;
         true;
         _loc3_.customerClip.back_shoe.addChild(_loc17_);
         var _loc19_:MovieClip;
         var _loc18_:Class;
         (_loc19_ = new (_loc18_ = getDefinitionByName("customer_" + _loc4_ + "_hand") as Class)()).name = "clip";
         _loc3_.customerClip.fronthand.addChild(_loc19_);
         var _loc21_:MovieClip;
         var _loc20_:Class;
         (_loc21_ = new (_loc20_ = getDefinitionByName("customer_" + _loc4_ + "_hand2") as Class)()).name = "clip";
         _loc3_.customerClip.backhand.addChild(_loc21_);
         var _loc23_:MovieClip;
         var _loc22_:Class;
         (_loc23_ = new (_loc22_ = getDefinitionByName("customer_" + _loc4_ + "_upperarm") as Class)()).name = "clip";
         _loc3_.customerClip.front_upperarm.addChild(_loc23_);
         var _loc24_:MovieClip;
         (_loc24_ = new _loc22_()).name = "clip";
         _loc3_.customerClip.back_upperarm.addChild(_loc24_);
         var _loc26_:MovieClip;
         var _loc25_:Class;
         (_loc26_ = new (_loc25_ = getDefinitionByName("customer_" + _loc4_ + "_forearm") as Class)()).name = "clip";
         false;
         false;
         _loc3_.customerClip.front_forearm.addChild(_loc26_);
         var _loc27_:MovieClip;
         (_loc27_ = new _loc25_()).name = "clip";
         _loc3_.customerClip.back_forearm.addChild(_loc27_);
         if(param2 > 0)
         {
            _loc3_.customerClip.gotoAndStop("overjoyedposter");
         }
         else
         {
            _loc3_.customerClip.gotoAndStop("portrait");
         }
         _loc3_.clip.customers.holder.gotoAndStop(_loc3_.gameObj.customerData.getCustomerColor(param1));
         _loc3_.clip.customers.holder.addChild(_loc3_.customerClip);
         true;
         true;
         _loc3_.customerClip.x = 20;
      }
      
      public function clickCustomerNext(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = _loc2_).currentCustomerPage + 1;
         true;
         true;
         _loc3_.currentCustomerPage = _loc4_;
         false;
         false;
         true;
         true;
         if(_loc2_.currentCustomerPage > 1)
         {
            true;
            true;
            _loc2_.clip.customers.left_btn.visible = true;
            false;
            false;
         }
         else
         {
            _loc2_.clip.customers.left_btn.visible = false;
         }
         if(_loc2_.currentCustomerPage < _loc2_.totalCustomerPages)
         {
            _loc2_.clip.customers.right_btn.visible = true;
         }
         else
         {
            _loc2_.clip.customers.right_btn.visible = false;
         }
         if(!_loc2_.clip.customers.hasEventListener(Event.ENTER_FRAME))
         {
            _loc2_.clip.customers.addEventListener(Event.ENTER_FRAME,_loc2_.animateCustomerPanel);
         }
      }
      
      public function clickCustomerPrev(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         true;
         true;
         if(_loc2_.currentCustomerPage > 1)
         {
            false;
            false;
            --_loc2_.currentCustomerPage;
            false;
            false;
            if(_loc2_.currentCustomerPage > 1)
            {
               _loc2_.clip.customers.left_btn.visible = true;
               false;
               false;
            }
            else
            {
               _loc2_.clip.customers.left_btn.visible = false;
            }
            if(_loc2_.currentCustomerPage < _loc2_.totalCustomerPages)
            {
               _loc2_.clip.customers.right_btn.visible = true;
            }
            else
            {
               _loc2_.clip.customers.right_btn.visible = false;
            }
            if(!_loc2_.clip.customers.hasEventListener(Event.ENTER_FRAME))
            {
               true;
               true;
               _loc2_.clip.customers.addEventListener(Event.ENTER_FRAME,_loc2_.animateCustomerPanel);
            }
         }
      }
      
      public function animateCustomerPanel(param1:Event) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         328;
         false;
         false;
         false;
         false;
         true;
         true;
         true;
         true;
         false;
         false;
         var _loc4_:Number;
         var _loc5_:Number = (_loc4_ = _loc2_.customerStartX - (_loc2_.currentCustomerPage - 1) * 328) - _loc2_.clip.customers.thumbholder.x;
         _loc2_.clip.customers.thumbholder.x += _loc5_ / _loc2_.customerTweenSpeed;
         true;
         true;
         true;
         true;
         §§push(_loc5_ >= -1);
         if(_loc5_ >= -1)
         {
            false;
            false;
            §§pop();
            §§push(_loc5_ <= 1);
         }
         if(§§pop())
         {
            _loc2_.clip.customers.thumbholder.x = _loc4_;
            _loc2_.clip.customers.removeEventListener(Event.ENTER_FRAME,_loc2_.animateCustomerPanel);
         }
      }
      
      public function setupHelp(param1:Boolean = true) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         false;
         false;
         if(param1)
         {
            false;
            false;
            _loc2_.clip.help.panel.next_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpNext);
            _loc2_.clip.help.panel.prev_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpPrevious);
            _loc2_.clip.help.panel.main_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpMain);
            _loc2_.clip.help.inside.pattern.next_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpPatternNext);
            _loc2_.clip.help.inside.pattern.prev_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpPatternPrevious);
            _loc2_.clip.help.inside.orders_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.tickets_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.building_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.frying_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.saucing_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.finishing_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.ranking_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            true;
            true;
            _loc2_.clip.help.inside.arranging_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            true;
            true;
            _loc2_.clip.help.inside.closers_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            false;
            false;
            _loc2_.clip.help.inside.rewards_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.shop_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.clothing_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.minigames_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.badges_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
         }
         else
         {
            _loc2_.clip.help.panel.next_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpNext);
            _loc2_.clip.help.panel.prev_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpPrevious);
            _loc2_.clip.help.panel.main_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpMain);
            _loc2_.clip.help.inside.pattern.next_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpPatternNext);
            _loc2_.clip.help.inside.pattern.prev_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpPatternPrevious);
            _loc2_.clip.help.inside.orders_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            false;
            false;
            _loc2_.clip.help.inside.tickets_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.building_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.frying_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            false;
            false;
            _loc2_.clip.help.inside.saucing_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            true;
            true;
            _loc2_.clip.help.inside.finishing_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            true;
            true;
            _loc2_.clip.help.inside.ranking_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.arranging_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            true;
            true;
            _loc2_.clip.help.inside.closers_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.shop_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.rewards_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.clothing_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.minigames_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.badges_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
         }
      }
      
      public function clickHelpSection(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         var _loc3_:String = String(param1.currentTarget.name).substr(0,param1.currentTarget.name.length - 4);
         true;
         true;
         _loc2_.clip.help.inside.gotoAndStop(_loc3_);
      }
      
      public function clickHelpPatternNext(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(_loc2_.clip.help.inside.pattern.currentFrame == _loc2_.clip.help.inside.pattern.totalFrames)
         {
            _loc2_.clip.help.inside.pattern.gotoAndStop(1);
         }
         else
         {
            _loc2_.clip.help.inside.pattern.nextFrame();
         }
      }
      
      public function clickHelpPatternPrevious(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         if(_loc2_.clip.help.inside.pattern.currentFrame == 1)
         {
            _loc2_.clip.help.inside.pattern.gotoAndStop(_loc2_.clip.help.inside.pattern.totalFrames);
            false;
            false;
         }
         else
         {
            _loc2_.clip.help.inside.pattern.prevFrame();
         }
      }
      
      public function clickHelpNext(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         if(_loc2_.clip.help.inside.currentFrame == _loc2_.clip.help.inside.totalFrames)
         {
            _loc2_.clip.help.inside.gotoAndStop(1);
         }
         else
         {
            _loc2_.clip.help.inside.nextFrame();
         }
      }
      
      public function clickHelpPrevious(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(_loc2_.clip.help.inside.currentFrame == 1)
         {
            true;
            true;
            _loc2_.clip.help.inside.gotoAndStop(_loc2_.clip.help.inside.totalFrames);
         }
         else
         {
            _loc2_.clip.help.inside.prevFrame();
         }
      }
      
      public function clickHelpMain(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         true;
         true;
         _loc2_.clip.help.inside.gotoAndStop("menu");
      }
      
      public function setupCredits(param1:Boolean = true) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         false;
         false;
         if(param1)
         {
            false;
            false;
            _loc2_.clip.credits.flipline1_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.flipline2_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.links.flipline3_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            false;
            false;
            _loc2_.clip.credits.links.papalouie_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsPapaLouie);
            _loc2_.clip.credits.facebook_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickFacebook);
            false;
            false;
            _loc2_.clip.credits.twitter_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickTwitter);
            if(class_3.method_2())
            {
               _loc2_.clip.credits.links.visible = false;
               _loc2_.clip.credits.flipline1_btn.visible = false;
               _loc2_.clip.credits.flipline2_btn.visible = false;
               _loc2_.clip.credits.facebook_btn.visible = false;
               _loc2_.clip.credits.twitter_btn.visible = false;
            }
         }
         else
         {
            _loc2_.clip.credits.flipline1_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.flipline2_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.links.flipline3_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            false;
            false;
            _loc2_.clip.credits.links.papalouie_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsPapaLouie);
            _loc2_.clip.credits.facebook_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickFacebook);
            false;
            false;
            _loc2_.clip.credits.twitter_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickTwitter);
         }
      }
      
      public function clickCreditsFlipline(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         _loc2_.gameObj.var_10.api.method_28("http://www.flipline.com","CreditsFlipline","Links");
      }
      
      public function clickCreditsPapaLouie(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         _loc2_.gameObj.var_10.api.method_28("http://www.papalouie.com","CreditsPapaLouie","Links");
      }
      
      public function clickFacebook(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.gameObj.var_10.api.method_28("http://www.facebook.com/pages/Flipline-Studios/121045844606187","CreditsFliplineFacebook","Links");
      }
      
      public function clickTwitter(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         _loc2_.gameObj.var_10.api.method_28("http://www.twitter.com/FliplineStudios","CreditsFliplineTwitter","Links");
      }
      
      public function setupConfirmQuit(param1:Boolean = true) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         if(param1)
         {
            _loc2_.confirmYesButton = new class_14(null,"YES","small","button","clickYesQuit",null,false,false,false,null,false,80);
            false;
            false;
            _loc2_.confirmYesButton.x = 203;
            false;
            false;
            _loc2_.confirmYesButton.y = 230;
            _loc2_.confirmNoButton = new class_14(null,"NO","small","button","clickNoQuit",null,false,false,false,null,false,80);
            _loc2_.confirmNoButton.x = 356;
            _loc2_.confirmNoButton.y = _loc2_.confirmYesButton.y;
            true;
            true;
            _loc2_.clip.confirmquit.addChild(_loc2_.confirmYesButton);
            true;
            true;
            _loc2_.clip.confirmquit.addChild(_loc2_.confirmNoButton);
            _loc2_.confirmYesButton.addEventListener("clickYesQuit",_loc2_.clickConfirmQuit);
            _loc2_.confirmNoButton.addEventListener("clickNoQuit",_loc2_.clickCancelQuit);
            _loc2_.clip.confirmquit.visible = false;
         }
         else
         {
            _loc2_.clip.confirmquit.removeChild(_loc2_.confirmYesButton);
            false;
            false;
            _loc2_.clip.confirmquit.removeChild(_loc2_.confirmNoButton);
            false;
            false;
            _loc2_.confirmYesButton.removeEventListener("clickYesQuit",_loc2_.clickConfirmQuit);
            false;
            false;
            _loc2_.confirmNoButton.removeEventListener("clickNoQuit",_loc2_.clickCancelQuit);
            _loc2_.confirmYesButton.destroy();
            _loc2_.confirmNoButton.destroy();
            _loc2_.confirmYesButton = null;
            _loc2_.confirmNoButton = null;
         }
      }
      
      public function closeMainMenuScreen(param1:Boolean = false) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         false;
         false;
         if(param1)
         {
            _loc2_.gameObj.method_52();
            _loc2_.gameObj.method_56();
         }
         else
         {
            try
            {
               true;
               true;
               if(_loc2_.gameObj.var_21.isActive)
               {
                  false;
                  false;
                  _loc2_.gameObj.soundManager.switchMusic("order");
                  _loc2_.gameObj.var_21.playFurniMusic();
               }
               else
               {
                  true;
                  true;
                  if(_loc2_.gameObj.var_59.isActive)
                  {
                     true;
                     true;
                     _loc2_.gameObj.soundManager.switchMusic("order");
                  }
                  else
                  {
                     true;
                     true;
                     if(_loc2_.gameObj.var_16.isActive)
                     {
                        true;
                        true;
                        _loc2_.gameObj.soundManager.switchMusic("grill");
                     }
                     else
                     {
                        false;
                        false;
                        if(_loc2_.gameObj.var_11.isActive)
                        {
                           true;
                           true;
                           _loc2_.gameObj.soundManager.switchMusic("build");
                        }
                        else if(_loc2_.gameObj.var_30.isActive)
                        {
                           false;
                           false;
                           _loc2_.gameObj.soundManager.switchMusic("other");
                        }
                     }
                  }
               }
            }
            catch(err:Error)
            {
            }
            _loc2_.gameObj.method_55();
         }
      }
      
      public function getSectionTitle() : String
      {
         false;
         true;
         var _loc1_:MainMenuScreen = this;
         false;
         false;
         if(_loc1_.currentSection == "info")
         {
            return "INFO";
         }
         false;
         false;
         if(_loc1_.currentSection == "credits")
         {
            true;
            true;
            return "CREDITS";
         }
         true;
         true;
         if(_loc1_.currentSection == "help")
         {
            true;
            true;
            return "HELP";
         }
         false;
         false;
         if(_loc1_.currentSection == "customers")
         {
            return "CUSTOMERS";
         }
         if(_loc1_.currentSection == "medals")
         {
            return "BADGES";
         }
         return _loc1_.currentSection.toUpperCase();
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:MainMenuScreen = this;
         _loc1_.container.removeEventListener("clickInfo",_loc1_.clickInfo);
         _loc1_.container.removeEventListener("clickCustomers",_loc1_.clickCustomers);
         _loc1_.container.addEventListener("clickMedals",_loc1_.clickMedals);
         _loc1_.container.removeEventListener("clickCredits",_loc1_.clickCredits);
         _loc1_.container.removeEventListener("clickHelp",_loc1_.clickHelp);
         _loc1_.container.removeEventListener("clickBackToGame",_loc1_.clickBackToGame);
         _loc1_.container.removeEventListener("clickQuit",_loc1_.clickQuit);
         _loc1_.setupInfo(false);
         true;
         true;
         _loc1_.setupCustomers(false);
         _loc1_.setupMedals(false);
         _loc1_.setupHelp(false);
         _loc1_.setupCredits(false);
         _loc1_.setupConfirmQuit(false);
         false;
         false;
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function setupMedals(param1:Boolean = true) : void
      {
         var _loc2_:MainMenuScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:ChallengeManager = _loc2_.gameObj.challengeManager;
         _loc2_.medalsPage = 0;
         _loc2_.medalsDirection = "next";
         false;
         false;
         _loc2_.medalsTransitioning = true;
         true;
         true;
         if(param1)
         {
            _loc2_.clip.medals.next_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickNextMedals);
            _loc2_.clip.medals.prev_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickPrevMedals);
            _loc2_.clip.medals.prev_btn.visible = false;
            false;
            false;
            _loc2_.clip.medals.total_txt.text = String(_loc3_.getTotalBadgesEarned() + "/" + _loc4_.getNumberOfBadges());
            _loc2_.populateMedals();
            _loc2_.clip.medals.panel.addEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
         }
         else
         {
            _loc2_.clip.medals.next_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickNextMedals);
            _loc2_.clip.medals.prev_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickPrevMedals);
            true;
            true;
            if(_loc2_.clip.medals.panel.hasEventListener(Event.ENTER_FRAME))
            {
               _loc2_.clip.medals.panel.removeEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
            }
         }
      }
      
      public function getDesaturatedFilter() : ColorMatrixFilter
      {
         0.212671;
         0.71516;
         false;
         false;
         0.072169;
         return new ColorMatrixFilter([0.212671,0.71516,0.072169,0,0,0.212671,0.71516,0.072169,0,0,0.212671,0.71516,0.072169,0,0,0,0,0,1,0]);
      }
      
      public function populateMedals() : void
      {
         var _loc9_:MovieClip = null;
         var _loc10_:Number = NaN;
         var _loc1_:MainMenuScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:ChallengeManager = _loc1_.gameObj.challengeManager;
         false;
         false;
         true;
         true;
         var _loc4_:Number = 0 + _loc1_.medalsPage * _loc1_.medalsPerPage;
         false;
         false;
         true;
         true;
         var _loc5_:Number;
         var _loc6_:Number = (_loc5_ = Math.min(_loc3_.getNumberOfBadges() - 1,_loc4_ + (_loc1_.medalsPerPage - 1))) - _loc4_ + 1;
         var _loc7_:int = 0;
         while(_loc7_ < _loc1_.medalsPerPage)
         {
            _loc9_ = _loc1_.clip.medals.panel["panel" + (_loc7_ + 1)];
            false;
            false;
            _loc10_ = _loc7_ + _loc4_;
            false;
            false;
            if(_loc7_ < _loc6_)
            {
               false;
               false;
               _loc9_.visible = true;
               _loc9_.title_txt.text = _loc3_.getChallengeTitle(_loc10_);
               false;
               false;
               _loc9_.description_txt.text = _loc3_.getChallengeDescription(_loc10_) + " " + _loc3_.getBadgeTallyString(_loc10_);
               _loc9_.reward_txt.text = "+ $" + class_8.method_31(_loc3_.getChallengeRewardAmount(_loc10_) / 100);
               if(_loc3_.getChallengeTicketAmount(_loc10_) > 0)
               {
                  _loc9_.tickets_txt.text = String(_loc3_.getChallengeTicketAmount(_loc10_));
                  _loc9_.ticketicon.visible = true;
               }
               else
               {
                  _loc9_.tickets_txt.text = "";
                  _loc9_.ticketicon.visible = false;
               }
               _loc9_.thumb.gotoAndStop(_loc10_ + 1);
               if(_loc2_.hasBadge(_loc10_))
               {
                  _loc9_.earned.visible = true;
                  true;
                  true;
                  _loc9_.thumb.filters = [];
               }
               else
               {
                  _loc9_.earned.visible = false;
                  _loc9_.thumb.filters = [_loc1_.getDesaturatedFilter()];
               }
            }
            else
            {
               _loc9_.visible = false;
            }
            _loc7_++;
         }
         var _loc8_:Number = Math.ceil(_loc3_.getNumberOfBadges() / _loc1_.medalsPerPage);
         false;
         false;
         if(_loc1_.medalsPage > 0)
         {
            _loc1_.clip.medals.prev_btn.visible = true;
         }
         else
         {
            _loc1_.clip.medals.prev_btn.visible = false;
         }
         false;
         false;
         if(_loc1_.medalsPage < _loc8_ - 1)
         {
            _loc1_.clip.medals.next_btn.visible = true;
         }
         else
         {
            _loc1_.clip.medals.next_btn.visible = false;
            true;
            true;
         }
         _loc1_.clip.medals.page_txt.text = _loc1_.medalsPage + 1 + " / " + _loc8_;
         true;
         true;
         if(_loc1_.medalsDirection == "next")
         {
            _loc1_.clip.medals.panel.gotoAndPlay("innext");
         }
         else
         {
            _loc1_.clip.medals.panel.gotoAndPlay("inprev");
         }
      }
      
      public function clickNextMedals(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(!_loc2_.medalsTransitioning)
         {
            false;
            false;
            ++_loc2_.medalsPage;
            _loc2_.medalsDirection = "next";
            false;
            false;
            _loc2_.medalsTransitioning = true;
            _loc2_.clip.medals.panel.gotoAndPlay("outnext");
            _loc2_.clip.medals.panel.addEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
         }
      }
      
      public function clickPrevMedals(param1:MouseEvent) : void
      {
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(!_loc2_.medalsTransitioning)
         {
            true;
            true;
            --_loc2_.medalsPage;
            _loc2_.medalsDirection = "prev";
            false;
            false;
            _loc2_.medalsTransitioning = true;
            _loc2_.clip.medals.panel.gotoAndPlay("outprev");
            _loc2_.clip.medals.panel.addEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
         }
      }
      
      public function animateMedalsTransition(param1:Event) : void
      {
         false;
         true;
         var _loc2_:MainMenuScreen = this;
         true;
         true;
         true;
         true;
         §§push(_loc2_.clip.medals.panel.currentLabel == "outnextframe");
         if(!(_loc2_.clip.medals.panel.currentLabel == "outnextframe"))
         {
            true;
            true;
            §§pop();
            §§push(_loc2_.clip.medals.panel.currentLabel == "outprevframe");
         }
         if(§§pop())
         {
            _loc2_.populateMedals();
         }
         else
         {
            true;
            true;
            if(_loc2_.clip.medals.panel.currentLabel == "innextframe" || _loc2_.clip.medals.panel.currentLabel == "inprevframe")
            {
               _loc2_.clip.medals.panel.removeEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
               _loc2_.medalsTransitioning = false;
            }
         }
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         false;
         true;
         var _loc4_:BitmapData = null;
         var _loc1_:MainMenuScreen = this;
         var _loc2_:GiveOrderScreen = _loc1_.gameObj.var_53;
         var _loc3_:Bitmap = null;
         false;
         false;
         §§push(_loc2_ != null);
         if(_loc2_ != null)
         {
            true;
            true;
            §§pop();
            true;
            true;
            §§push(_loc2_.backdropBitmap != null);
         }
         if(§§pop())
         {
            _loc4_ = _loc2_.backdropBitmap.bitmapData.clone();
            _loc3_ = new Bitmap(_loc4_);
         }
         else
         {
            _loc3_ = new Bitmap();
         }
         return _loc3_;
      }
   }
}
