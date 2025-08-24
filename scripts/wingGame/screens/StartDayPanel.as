package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.utils.getDefinitionByName;
   import mochi.as3.*;
   import package_1.class_1;
   import package_2.class_15;
   import package_2.class_3;
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.CustomerData;
   import wingGame.data.UserData;
   
   public class StartDayPanel
   {
       
      
      public var gameObj:class_4;
      
      public var container:MovieClip;
      
      public var clip:MovieClip;
      
      public var var_64:Boolean = false;
      
      public var var_82:Boolean = false;
      
      public var var_67:Boolean = false;
      
      public var var_238:Boolean = false;
      
      public var var_222:Number = 10;
      
      public var var_135:Number = 21;
      
      public var action:String = "continue";
      
      public var var_115:Boolean = true;
      
      public var trainingClip:MovieClip;
      
      public var var_155:String = "none";
      
      public var editor:CharacterEditorScreen;
      
      public var paradetip:MovieClip = null;
      
      public var newstar:MovieClip = null;
      
      public var paradestar:MovieClip = null;
      
      public function StartDayPanel(param1:class_4, param2:MovieClip, param3:Object = null)
      {
         false;
         false;
         super();
         var _loc4_:StartDayPanel;
         (_loc4_ = this).gameObj = param1;
         _loc4_.container = param2;
         false;
         false;
         if(param3 != null && param3.hasOwnProperty("showAd"))
         {
            _loc4_.var_64 = param3.showAd;
            true;
            true;
         }
         if(param3 != null && param3.hasOwnProperty("showClickaway"))
         {
            _loc4_.var_67 = param3.showClickaway;
         }
         _loc4_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc1_:StartDayPanel = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         false;
         false;
         _loc1_.clip = new startDayPanelMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.container.addEventListener("clickShop",_loc1_.clickShop);
         false;
         false;
         _loc1_.container.addEventListener("clickEditLobby",_loc1_.clickEditLobby);
         _loc1_.container.addEventListener("clickContinue",_loc1_.clickContinue);
         _loc1_.container.addEventListener("clickParade",_loc1_.clickParade);
         _loc1_.container.addEventListener("clickQuit",_loc1_.clickQuit);
         _loc1_.clip.burgerzilla_btn.visible = false;
         _loc1_.clip.hotshot_btn.visible = false;
         true;
         true;
         _loc1_.clip.putt_btn.visible = false;
         _loc1_.clip.hallway_btn.visible = false;
         _loc1_.clip.cravings_btn.visible = false;
         false;
         false;
         _loc1_.clip.pachinko_btn.visible = false;
         _loc1_.clip.blast_btn.visible = false;
         false;
         false;
         if(_loc2_.furniInventory.length == 0)
         {
            false;
            false;
            _loc1_.var_115 = false;
            true;
            true;
         }
         _loc1_.clip.play();
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,this.updateScreen);
         _loc1_.clip.clickawayMC.visible = false;
         true;
         true;
         _loc1_.clip.clickaway_btn.visible = false;
         _loc1_.clip.clickaway_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.method_78);
         true;
         true;
         true;
         true;
         false;
         false;
         false;
         false;
         false;
         false;
         if(_loc2_.hasTrainedDecorate == false && _loc1_.var_115 == true)
         {
         }
         _loc1_.paradetip = _loc1_.clip.paradetip;
         _loc1_.paradestar = _loc1_.clip.paradestar;
         _loc1_.newstar = _loc1_.clip.furnistar;
         true;
         true;
         if(_loc1_.method_126() > _loc2_.seenFloatsInParade)
         {
            true;
            true;
            class_5.method_25("Show New Float!");
            _loc1_.paradetip.visible = false;
            _loc1_.gameObj.addChild(_loc1_.paradestar);
            _loc1_.paradestar.visible = true;
         }
         else
         {
            _loc1_.paradetip.visible = false;
            false;
            false;
            _loc1_.paradestar.visible = false;
         }
         if(_loc2_.hasNewFurni)
         {
            _loc1_.gameObj.addChild(_loc1_.newstar);
            true;
            true;
            _loc1_.newstar.visible = true;
         }
         else
         {
            _loc1_.newstar.visible = false;
         }
         _loc1_.editor = new CharacterEditorScreen(_loc1_.gameObj,_loc1_.clip.backdrop_holder);
      }
      
      public function method_126() : Number
      {
         false;
         true;
         var _loc1_:StartDayPanel = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         var _loc4_:Number = 0;
         if(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Marty")) > 0 || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Rita")) > 0)
         {
            _loc4_++;
            true;
            true;
         }
         if(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Mitch")) > 0 || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Maggie")) > 0)
         {
            false;
            false;
            _loc4_++;
         }
         true;
         true;
         if(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Penny")) > 0 || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Alberto")) > 0)
         {
            true;
            true;
            _loc4_++;
         }
         if(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Cooper")) > 0 || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Prudence")) > 0)
         {
            true;
            true;
            true;
            true;
            _loc4_++;
         }
         false;
         false;
         §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Carlo Romano")) > 0 || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Gino Romano")) > 0);
         if(!(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Carlo Romano")) > 0 || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Gino Romano")) > 0))
         {
            false;
            false;
            §§pop();
            §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Bruna Romano")) > 0);
         }
         if(§§pop() || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Little Edoardo")) > 0)
         {
            _loc4_++;
         }
         true;
         true;
         if(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Roy")) > 0)
         {
            _loc4_++;
         }
         true;
         true;
         false;
         false;
         true;
         true;
         if(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Matt")) > 0 || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Tony")) > 0)
         {
            false;
            false;
            _loc4_++;
         }
         class_5.method_25("Floats in parade: " + _loc4_);
         return _loc4_;
      }
      
      public function clickContinue(param1:Event) : void
      {
         var _loc2_:StartDayPanel = this;
         _loc2_.action = "continue";
         _loc2_.clip.gotoAndPlay("hide");
         true;
         true;
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         false;
         false;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("trayslide.wav");
         _loc2_.paradetip.gotoAndStop(1);
         _loc2_.newstar.visible = false;
         _loc2_.paradestar.visible = false;
         true;
         true;
         true;
         true;
         true;
         true;
         _loc2_.gameObj.var_10.api.disableButtons();
         _loc2_.gameObj.var_10.api.method_34("StartDayPanel");
         _loc2_.gameObj.soundManager.switchMusic("none");
      }
      
      public function clickQuit(param1:Event) : void
      {
         false;
         true;
         var _loc2_:StartDayPanel = this;
         _loc2_.action = "quit";
         _loc2_.clip.gotoAndPlay("hide");
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         _loc2_.gameObj.soundManager.playSound("trayslide.wav");
         _loc2_.paradetip.gotoAndStop(1);
         true;
         true;
         _loc2_.newstar.visible = false;
         _loc2_.paradestar.visible = false;
         false;
         false;
         _loc2_.gameObj.var_10.api.disableButtons();
         _loc2_.gameObj.var_10.api.method_34("StartDayPanel");
         _loc2_.var_64 = false;
         false;
         false;
         _loc2_.var_67 = false;
      }
      
      public function clickShop(param1:Event) : void
      {
         false;
         true;
         var _loc2_:StartDayPanel = this;
         _loc2_.action = "shop";
         _loc2_.clip.gotoAndPlay("hide");
         true;
         true;
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         _loc2_.gameObj.soundManager.playSound("trayslide.wav");
         _loc2_.paradetip.gotoAndStop(1);
         _loc2_.newstar.visible = false;
         _loc2_.paradestar.visible = false;
         false;
         false;
         true;
         true;
         true;
         true;
         false;
         false;
         _loc2_.gameObj.var_10.api.disableButtons();
         _loc2_.gameObj.var_10.api.method_34("StartDayPanel");
         _loc2_.var_64 = false;
         _loc2_.var_67 = false;
      }
      
      public function clickParade(param1:Event) : void
      {
         var _loc2_:StartDayPanel = this;
         false;
         false;
         _loc2_.action = "parade";
         _loc2_.clip.gotoAndPlay("hide");
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         false;
         false;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("trayslide.wav");
         true;
         true;
         true;
         true;
         _loc2_.gameObj.var_10.api.disableButtons();
         true;
         true;
         _loc2_.gameObj.var_10.api.method_34("StartDayPanel");
         _loc2_.var_64 = false;
         _loc2_.var_67 = false;
         _loc2_.paradetip.gotoAndStop(1);
         _loc2_.newstar.visible = false;
         true;
         true;
         _loc2_.paradestar.visible = false;
      }
      
      public function method_164(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:StartDayPanel = this;
         var _loc3_:String = String(String(param1.currentTarget.name).split("_")[0]);
         _loc2_.var_155 = _loc3_;
         _loc2_.action = "minigame";
         _loc2_.clip.gotoAndPlay("hide");
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         _loc2_.gameObj.soundManager.playSound("trayslide.wav");
         true;
         true;
         _loc2_.paradetip.gotoAndStop(1);
         _loc2_.newstar.visible = false;
         _loc2_.paradestar.visible = false;
         true;
         true;
         true;
         true;
         false;
         false;
         _loc2_.gameObj.var_10.api.disableButtons();
         _loc2_.gameObj.var_10.api.method_34("StartDayPanel");
         _loc2_.var_64 = false;
         _loc2_.var_67 = false;
      }
      
      public function clickEditLobby(param1:Event) : void
      {
         false;
         true;
         var _loc2_:StartDayPanel = this;
         _loc2_.action = "lobbyeditor";
         false;
         false;
         _loc2_.clip.gotoAndPlay("hide");
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("trayslide.wav");
         true;
         true;
         _loc2_.paradetip.gotoAndStop(1);
         _loc2_.newstar.visible = false;
         _loc2_.paradestar.visible = false;
         true;
         true;
         true;
         true;
         true;
         true;
         _loc2_.gameObj.var_10.api.disableButtons();
         true;
         true;
         _loc2_.gameObj.var_10.api.method_34("StartDayPanel");
         _loc2_.var_64 = false;
         _loc2_.var_67 = false;
         true;
         true;
         true;
         true;
         _loc2_.gameObj.userData.hasTrainedDecorate = true;
         true;
         true;
         true;
         true;
         _loc2_.gameObj.userData.hasNewFurni = false;
         if(_loc2_.trainingClip)
         {
            false;
            false;
            _loc2_.gameObj.removeChild(_loc2_.trainingClip);
            _loc2_.trainingClip = null;
         }
      }
      
      public function method_75(param1:Event = null) : void
      {
         false;
         true;
         var _loc2_:StartDayPanel = this;
         false;
         false;
         class_5.method_25("Ad Finished");
         true;
         true;
         _loc2_.clip.gotoAndPlay(_loc2_.var_135 + 1);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var util:class_15;
         var buttonsToShow:Array = null;
         var opt:Object = null;
         var cl:* = undefined;
         var e:Event = param1;
         var screen:StartDayPanel = this;
         true;
         true;
         util = screen.gameObj.var_10.api.util;
         false;
         false;
         false;
         false;
         if(screen.clip.currentFrame == screen.var_222 - 1)
         {
            buttonsToShow = ["Continue ►","Visit Shop","View Parade"];
            if(screen.var_115)
            {
               buttonsToShow.push("Decorate Lobby");
            }
            screen.gameObj.var_10.api.enableButtons("StartDayPanel",buttonsToShow);
         }
         else if(screen.clip.currentFrame == screen.var_135)
         {
            true;
            true;
            §§push(screen.var_64 && !screen.var_82);
            if(screen.var_64 && !screen.var_82)
            {
               false;
               false;
               §§pop();
               §§push(!class_3.method_8());
            }
            if(§§pop())
            {
               true;
               true;
               screen.var_82 = true;
               opt = new Object();
               true;
               true;
               opt[class_3.method_1("140095010401010108")] = screen.gameObj;
               opt[class_3.method_1("1201010096")] = class_1.method_11();
               false;
               false;
               opt[class_3.method_1("13011000970111")] = class_3.method_1("170050004800440116004800520044");
               opt[class_3.method_1("2100093009600910111011200930110011200970096")] = function():void
               {
               };
               opt[class_3.method_1("21100930096009100980101010601010111010000970096")] = screen.method_75;
               false;
               false;
               opt[class_3.method_1("1501060107009100940099")] = true;
               false;
               false;
               cl = getDefinitionByName(class_3.method_1("21701050107009501000101004200930111004700420073010700950100010100610096")) as Class;
               cl[class_3.method_1("2160111010001070115006901060112009701100072009701140097010400610096")](opt);
               true;
               true;
            }
            else
            {
               §§push(this.var_67 && !screen.var_82);
               if(this.var_67 && !screen.var_82)
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  §§push(!class_3.method_8());
               }
               if(§§pop())
               {
                  false;
                  false;
                  screen.var_82 = true;
                  true;
                  true;
                  screen.clip.clickawayMC.visible = true;
                  false;
                  false;
                  false;
                  false;
                  screen.clip.clickaway_btn.visible = true;
                  screen.clip.clickawayMC.buttonMode = true;
                  screen.clip.clickawayMC.useHandCursor = true;
                  true;
                  true;
                  if(screen.clip.clickawayMC.currentFrame == 1)
                  {
                     screen.clip.clickawayMC.gotoAndPlay(2);
                  }
                  false;
                  false;
                  screen.clip.clickawayMC.addEventListener(MouseEvent.MOUSE_DOWN,screen.method_71);
               }
               else if(!screen.var_82)
               {
                  trace("Show ad now? " + screen.var_64);
                  if(screen.var_64)
                  {
                     if(ExternalInterface.available)
                     {
                        ExternalInterface.call("eval","window.commercialBreak();");
                     }
                  }
                  screen.clip.gotoAndPlay(screen.var_135 + 1);
                  false;
                  false;
               }
            }
         }
         else if(screen.clip.currentFrame == screen.clip.totalFrames)
         {
            screen.clip.removeEventListener(Event.ENTER_FRAME,this.updateScreen);
            screen.gameObj.soundManager.restoreSoundAfterAd();
            if(screen.action == "continue")
            {
               false;
               false;
               if(screen.gameObj.userData.customersUnlocked.length > screen.gameObj.customerData.getCustomerTotal() && screen.gameObj.userData.customersUnlocked[screen.gameObj.customerData.getCustomerTotal()] == 1 && !screen.gameObj.userData.didShowParade)
               {
                  false;
                  false;
                  true;
                  true;
                  screen.gameObj.method_88(false);
                  true;
                  true;
               }
               else if(screen.gameObj.userData.isPayday())
               {
                  true;
                  true;
                  screen.gameObj.method_82();
               }
               else
               {
                  false;
                  false;
                  if(screen.gameObj.var_13.showNoPapa || screen.gameObj.var_13.showNewCustomer)
                  {
                     false;
                     false;
                     screen.gameObj.method_60();
                  }
                  else if(screen.gameObj.userData.getToppingToReveal() != "none")
                  {
                     false;
                     false;
                     screen.gameObj.method_50();
                  }
                  else
                  {
                     false;
                     false;
                     screen.gameObj.method_43();
                  }
               }
               false;
               false;
               screen.gameObj.method_41();
               false;
               false;
            }
            else if(screen.action == "shop")
            {
               screen.gameObj.method_109();
               true;
               true;
               screen.gameObj.method_41();
            }
            else if(screen.action == "lobbyeditor")
            {
               screen.gameObj.method_142();
               true;
               true;
               screen.gameObj.method_41();
            }
            else if(screen.action == "minigame")
            {
               true;
               true;
               screen.gameObj.method_84(screen.var_155);
               screen.gameObj.method_41();
            }
            else if(screen.action == "parade")
            {
               screen.gameObj.method_88(true);
               true;
               true;
               true;
               true;
               screen.gameObj.method_41();
            }
            else if(screen.action == "quit")
            {
               screen.gameObj.quitToTitle();
            }
         }
      }
      
      public function method_78(param1:MouseEvent = null) : void
      {
         var _loc2_:StartDayPanel = this;
         MochiAd.unload(_loc2_.clip.clickawayMC);
         _loc2_.clip.clickawayMC.visible = false;
         _loc2_.clip.clickaway_btn.visible = false;
         _loc2_.method_75();
      }
      
      public function method_71(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:StartDayPanel = this;
         _loc2_.gameObj.var_10.api.method_28("http://itunes.apple.com/us/app/papas-burgeria/id514634235?ls=1&mt=8","iPadPromoAd","Links");
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:StartDayPanel = this;
         try
         {
            _loc1_.clip.clickawayMC.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.method_71);
         }
         catch(err:Error)
         {
         }
         _loc1_.clip.clickaway_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.method_78);
         if(_loc1_.paradetip != null)
         {
            true;
            true;
            _loc1_.paradetip.parent.removeChild(_loc1_.paradetip);
            _loc1_.paradetip = null;
         }
         if(_loc1_.newstar != null)
         {
            true;
            true;
            _loc1_.newstar.parent.removeChild(_loc1_.newstar);
            _loc1_.newstar = null;
         }
         _loc1_.editor.destroy();
         _loc1_.editor = null;
         if(_loc1_.trainingClip)
         {
            _loc1_.gameObj.removeChild(_loc1_.trainingClip);
            _loc1_.trainingClip = null;
         }
         _loc1_.container.removeEventListener("clickShop",_loc1_.clickShop);
         _loc1_.container.removeEventListener("clickEditLobby",_loc1_.clickEditLobby);
         _loc1_.container.removeEventListener("clickContinue",_loc1_.clickContinue);
         _loc1_.container.removeEventListener("clickParade",_loc1_.clickParade);
         false;
         false;
         _loc1_.container.removeEventListener("clickQuit",_loc1_.clickQuit);
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
   }
}
