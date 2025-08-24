package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.*;
   import package_4.*;
   import wingGame.data.UserData;
   
   public class GameHUD
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var currentStation:String = "none";
      
      public var duringTransition:Boolean = false;
      
      private var transitionToScreen:String = "none";
      
      private var transitionSpeed:Number = 0.2;
      
      private var switchedTransition:Boolean = false;
      
      public var trainingClip:MovieClip;
      
      public var whichContextTraining:String = "none";
      
      public var timersGoingOff:Number = 0;
      
      public function GameHUD(param1:class_4)
      {
         super();
         var _loc2_:GameHUD = this;
         false;
         false;
         _loc2_.gameObj = param1;
         false;
         false;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:GameHUD = this;
         _loc1_.clip = new hudMC();
         false;
         false;
         _loc1_.gameObj.var_34.addChild(_loc1_.clip);
         _loc1_.clip.mouseEnabled = false;
         _loc1_.clip.order_ring.visible = false;
         _loc1_.clip.grill_ring.visible = false;
         _loc1_.clip.build_ring.visible = false;
         false;
         false;
         _loc1_.clip.sauce_ring.visible = false;
         _loc1_.clip.order_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickOrder);
         _loc1_.clip.grill_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickGrill);
         _loc1_.clip.build_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickBuild);
         _loc1_.clip.sauce_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickSauce);
         _loc1_.clip.pause_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPause);
         false;
         false;
         _loc1_.clip.mute_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMute);
         _loc1_.clip.unmute_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickUnmute);
         _loc1_.clip.menu_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMenu);
         _loc1_.updateMuteButton();
         _loc1_.clip.pausedBG.visible = false;
         _loc1_.clip.pausedBG.mouseEnabled = true;
         _loc1_.clip.doorchime_alert.visible = false;
         _loc1_.clip.doorchime_alert.stop();
         _loc1_.clip.doorchime_alert.mouseEnabled = false;
         _loc1_.clip.red_timer.visible = false;
         _loc1_.clip.red_timer.mouseEnabled = false;
         _loc1_.clip.yellow_timer.visible = false;
         _loc1_.clip.yellow_timer.mouseEnabled = false;
         _loc1_.clip.blue_timer.visible = false;
         _loc1_.clip.blue_timer.mouseEnabled = false;
         true;
         true;
         _loc1_.clip.red_timer.stop();
         _loc1_.clip.yellow_timer.stop();
         _loc1_.clip.blue_timer.stop();
         false;
         false;
         if(_loc1_.gameObj.userData.currentDay == 1)
         {
            true;
            true;
            _loc1_.trainingClip = new trainingMC();
            false;
            false;
            _loc1_.clip.addChild(_loc1_.trainingClip);
            _loc1_.trainingClip.mouseEnabled = false;
            _loc1_.trainingClip.mouseChildren = false;
         }
         _loc1_.clip.fps_txt.visible = false;
         _loc1_.gameObj.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickHeatMap);
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:GameHUD = this;
         _loc1_.gameObj.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickHeatMap);
         _loc1_.clip.order_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickOrder);
         _loc1_.clip.grill_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickGrill);
         false;
         false;
         _loc1_.clip.build_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickBuild);
         _loc1_.clip.sauce_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickSauce);
         _loc1_.clip.pause_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPause);
         _loc1_.clip.mute_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickMute);
         _loc1_.clip.unmute_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickUnmute);
         false;
         false;
         _loc1_.clip.menu_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickMenu);
         true;
         true;
         if(_loc1_.trainingClip)
         {
            _loc1_.clip.removeChild(_loc1_.trainingClip);
            false;
            false;
            _loc1_.trainingClip = null;
         }
         _loc1_.gameObj.var_34.removeChild(_loc1_.clip);
         false;
         false;
         _loc1_.clip = null;
      }
      
      public function clickOrder(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:GameHUD = this;
         true;
         true;
         §§push(_loc2_.currentStation != "order");
         if(_loc2_.currentStation != "order")
         {
            true;
            true;
            §§pop();
            false;
            false;
            true;
            true;
            §§push(_loc2_.canClickInTraining(param1));
         }
         if(§§pop())
         {
            _loc2_.gameObj.var_21.registerClickForForcing();
            false;
            false;
            _loc2_.startTransition("order");
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickGrill(param1:MouseEvent = null) : void
      {
         var _loc2_:GameHUD = this;
         if(_loc2_.currentStation != "grill" && _loc2_.canClickInTraining(param1))
         {
            _loc2_.startTransition("grill");
            true;
            true;
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickBuild(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:GameHUD = this;
         false;
         false;
         if(_loc2_.currentStation != "build" && _loc2_.canClickInTraining(param1))
         {
            true;
            true;
            _loc2_.startTransition("build");
            true;
            true;
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickSauce(param1:MouseEvent = null) : void
      {
         var _loc2_:GameHUD = this;
         true;
         true;
         if(_loc2_.currentStation != "sauce" && _loc2_.canClickInTraining(param1))
         {
            false;
            false;
            _loc2_.startTransition("sauce");
            false;
            false;
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickMute(param1:MouseEvent = null) : void
      {
         var _loc2_:GameHUD = this;
         _loc2_.gameObj.soundManager.muteSound();
         _loc2_.updateMuteButton();
      }
      
      public function updateMuteButton() : void
      {
         false;
         true;
         var _loc1_:GameHUD = this;
         _loc1_.clip.mute_btn.visible = !_loc1_.gameObj.soundManager.isMute;
         false;
         false;
         _loc1_.clip.unmute_btn.visible = _loc1_.gameObj.soundManager.isMute;
      }
      
      public function clickUnmute(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:GameHUD = this;
         true;
         true;
         false;
         false;
         _loc2_.gameObj.soundManager.unmuteSound();
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.updateMuteButton();
      }
      
      public function clickPause(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:GameHUD = this;
         true;
         true;
         _loc2_.clickMenu(param1);
      }
      
      public function clickMenu(param1:MouseEvent = null) : void
      {
         var _loc2_:GameHUD = this;
         false;
         false;
         if(_loc2_.canClickInTraining(param1))
         {
            false;
            false;
            false;
            false;
            _loc2_.gameObj.var_16.quietSoundWhenPaused();
            _loc2_.gameObj.var_21.stopFurniMusic();
            true;
            true;
            true;
            true;
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            false;
            false;
            _loc2_.gameObj.method_154();
         }
      }
      
      public function startTransition(param1:String, param2:Boolean = false) : void
      {
         false;
         true;
         var _loc3_:GameHUD = this;
         if(!_loc3_.duringTransition)
         {
            _loc3_.transitionToScreen = param1;
            _loc3_.duringTransition = true;
            _loc3_.switchedTransition = false;
            _loc3_.clip.transition.visible = true;
            _loc3_.clip.transition.alpha = 0;
            if(param2)
            {
               _loc3_.clip.transition.alpha = 1;
            }
            if(_loc3_.whichContextTraining != "none")
            {
               false;
               false;
               _loc3_.removeContextTraining();
            }
         }
      }
      
      private function triggerTransition() : void
      {
         false;
         true;
         var _loc1_:GameHUD = this;
         _loc1_.clip.order_ring.visible = false;
         _loc1_.clip.grill_ring.visible = false;
         true;
         true;
         _loc1_.clip.build_ring.visible = false;
         true;
         true;
         _loc1_.clip.sauce_ring.visible = false;
         true;
         true;
         if(_loc1_.currentStation == "build")
         {
            _loc1_.gameObj.var_11.deactivateScreen();
         }
         else
         {
            false;
            false;
            if(_loc1_.currentStation == "grill")
            {
               false;
               false;
               _loc1_.gameObj.var_16.deactivateScreen();
            }
            else if(_loc1_.currentStation == "sauce")
            {
               true;
               true;
               true;
               true;
               _loc1_.gameObj.var_30.deactivateScreen();
            }
            else
            {
               true;
               true;
               if(_loc1_.currentStation == "order")
               {
                  _loc1_.gameObj.var_21.deactivateScreen();
               }
               else
               {
                  true;
                  true;
                  if(_loc1_.currentStation == "takeOrder")
                  {
                     _loc1_.gameObj.var_59.deactivateScreen();
                     true;
                     true;
                  }
                  else if(_loc1_.currentStation == "giveOrder")
                  {
                     true;
                     true;
                     _loc1_.gameObj.var_53.deactivateScreen();
                  }
               }
            }
         }
         if(_loc1_.transitionToScreen == "order")
         {
            false;
            false;
            _loc1_.gameObj.var_21.activateScreen();
            _loc1_.clip.order_ring.visible = true;
            if(_loc1_.gameObj.var_14 && (_loc1_.gameObj.var_12 == 4 || _loc1_.gameObj.var_12 == 28 || _loc1_.gameObj.var_12 == 7))
            {
               _loc1_.gameObj.method_29();
            }
         }
         else if(_loc1_.transitionToScreen == "grill")
         {
            _loc1_.gameObj.var_16.activateScreen();
            _loc1_.clip.grill_ring.visible = true;
            if(_loc1_.gameObj.var_14 && (_loc1_.gameObj.var_12 == 1 || _loc1_.gameObj.var_12 == 9))
            {
               _loc1_.gameObj.method_29();
               true;
               true;
            }
         }
         else if(_loc1_.transitionToScreen == "sauce")
         {
            true;
            true;
            _loc1_.gameObj.var_30.activateScreen();
            _loc1_.clip.sauce_ring.visible = true;
            true;
            true;
            if(_loc1_.gameObj.var_14 && (_loc1_.gameObj.var_12 == 2 || _loc1_.gameObj.var_12 == 15))
            {
               false;
               false;
               _loc1_.gameObj.method_29();
            }
         }
         else
         {
            true;
            true;
            if(_loc1_.transitionToScreen == "build")
            {
               _loc1_.gameObj.var_11.activateScreen();
               true;
               true;
               _loc1_.clip.build_ring.visible = true;
               true;
               true;
               false;
               false;
               §§push(_loc1_.gameObj.var_14);
               if(_loc1_.gameObj.var_14)
               {
                  §§pop();
                  §§push(_loc1_.gameObj.var_12 == 3 || _loc1_.gameObj.var_12 == 22);
                  if(!(_loc1_.gameObj.var_12 == 3 || _loc1_.gameObj.var_12 == 22))
                  {
                     false;
                     false;
                     §§pop();
                     §§push(_loc1_.gameObj.var_12 == 27);
                  }
               }
               if(§§pop())
               {
                  true;
                  true;
                  _loc1_.gameObj.method_29();
               }
            }
            else if(_loc1_.transitionToScreen == "takeOrder")
            {
               false;
               false;
               true;
               true;
               _loc1_.gameObj.var_59.activateScreen();
            }
            else if(_loc1_.transitionToScreen == "giveOrder")
            {
               _loc1_.gameObj.var_53.activateScreen();
            }
         }
         false;
         false;
         true;
         true;
         if(_loc1_.transitionToScreen == "order" && _loc1_.gameObj.userData.hasRibbon() && !_loc1_.gameObj.userData.hasTrainedRibbon && !_loc1_.gameObj.var_21.isWaitingToEnd)
         {
            _loc1_.showContextTraining("ribbon");
            _loc1_.gameObj.userData.hasTrainedRibbon = true;
         }
         if(_loc1_.transitionToScreen == "takeOrder" || _loc1_.transitionToScreen == "giveOrder" || _loc1_.gameObj.var_21.isWaitingToEnd)
         {
            true;
            true;
            _loc1_.clip.build_btn.visible = false;
            true;
            true;
            _loc1_.clip.grill_btn.visible = false;
            _loc1_.clip.order_btn.visible = false;
            _loc1_.clip.sauce_btn.visible = false;
            true;
            true;
         }
         else
         {
            _loc1_.clip.build_btn.visible = true;
            _loc1_.clip.grill_btn.visible = true;
            _loc1_.clip.order_btn.visible = true;
            _loc1_.clip.sauce_btn.visible = true;
            true;
            true;
         }
         if(_loc1_.transitionToScreen == "ending")
         {
            _loc1_.gameObj.method_105();
         }
         else
         {
            _loc1_.currentStation = _loc1_.transitionToScreen;
            _loc1_.transitionToScreen = "none";
         }
      }
      
      public function disableStationButtons() : void
      {
         var _loc1_:GameHUD = this;
         _loc1_.clip.build_btn.visible = false;
         true;
         true;
         _loc1_.clip.grill_btn.visible = false;
         false;
         false;
         _loc1_.clip.order_btn.visible = false;
         _loc1_.clip.sauce_btn.visible = false;
      }
      
      public function enableStationButtons() : void
      {
         false;
         true;
         var _loc1_:GameHUD = this;
         false;
         false;
         _loc1_.clip.build_btn.visible = true;
         _loc1_.clip.grill_btn.visible = true;
         true;
         true;
         _loc1_.clip.order_btn.visible = true;
         _loc1_.clip.sauce_btn.visible = true;
      }
      
      public function updateHUD() : void
      {
         false;
         true;
         var _loc1_:GameHUD = this;
         if(_loc1_.duringTransition)
         {
            true;
            true;
            if(!_loc1_.switchedTransition)
            {
               false;
               false;
               _loc1_.clip.transition.alpha += _loc1_.transitionSpeed;
               if(_loc1_.clip.transition.alpha >= 1)
               {
                  _loc1_.clip.transition.alpha = 1;
                  _loc1_.triggerTransition();
                  _loc1_.switchedTransition = true;
               }
            }
            else
            {
               _loc1_.clip.transition.alpha -= _loc1_.transitionSpeed;
               if(_loc1_.clip.transition.alpha <= 0)
               {
                  _loc1_.clip.transition.alpha = 0;
                  false;
                  false;
                  _loc1_.clip.transition.visible = false;
                  _loc1_.duringTransition = false;
               }
            }
         }
      }
      
      public function startHUD() : void
      {
         false;
         true;
         var _loc1_:GameHUD = this;
         _loc1_.updateMuteButton();
         true;
         true;
         _loc1_.startTransition("order",true);
      }
      
      public function showCustomerAlert() : void
      {
         var _loc3_:Number = NaN;
         var _loc1_:GameHUD = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         true;
         true;
         if(_loc2_.hasBonus("doorbell"))
         {
            false;
            false;
            _loc3_ = _loc1_.gameObj.var_13.orderline.length;
            if(_loc3_ > 0)
            {
               true;
               true;
               true;
               true;
               true;
               true;
               §§push(_loc1_.currentStation != "order");
               if(_loc1_.currentStation != "order")
               {
                  true;
                  true;
                  §§pop();
                  §§push(_loc1_.transitionToScreen != "order");
               }
               if(§§pop())
               {
                  _loc1_.clip.doorchime_alert.visible = true;
                  _loc1_.clip.doorchime_alert.play();
                  _loc1_.clip.doorchime_alert.num_txt.text = String(_loc3_);
               }
               _loc1_.gameObj.soundManager.playSound("doorchime.wav");
            }
         }
      }
      
      public function showTimerAlert(param1:Number = 0) : void
      {
         var _loc2_:GameHUD = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         true;
         true;
         true;
         true;
         if(_loc2_.currentStation != "grill" && _loc2_.transitionToScreen != "grill")
         {
            true;
            true;
            true;
            true;
            ++_loc2_.timersGoingOff;
            if(_loc2_.timersGoingOff == 1)
            {
               _loc2_.clip.blue_timer.visible = true;
               _loc2_.clip.blue_timer.play();
            }
            else
            {
               true;
               true;
               if(_loc2_.timersGoingOff == 2)
               {
                  _loc2_.clip.yellow_timer.visible = true;
                  _loc2_.clip.yellow_timer.play();
               }
               else if(_loc2_.timersGoingOff > 2)
               {
                  _loc2_.clip.red_timer.visible = true;
                  _loc2_.clip.red_timer.play();
               }
            }
         }
      }
      
      public function hideTimerAlerts() : void
      {
         var _loc1_:GameHUD = this;
         _loc1_.timersGoingOff = 0;
         _loc1_.clip.blue_timer.visible = false;
         _loc1_.clip.yellow_timer.visible = false;
         _loc1_.clip.red_timer.visible = false;
         _loc1_.clip.blue_timer.stop();
         _loc1_.clip.yellow_timer.stop();
         _loc1_.clip.red_timer.stop();
      }
      
      public function canClickInTraining(param1:Event) : Boolean
      {
         var _loc2_:GameHUD = this;
         var _loc3_:class_4 = _loc2_.gameObj;
         var _loc4_:Boolean = false;
         if(_loc3_.var_14)
         {
            true;
            true;
            §§push(param1.currentTarget == _loc2_.clip.grill_btn);
            if(param1.currentTarget == _loc2_.clip.grill_btn)
            {
               false;
               false;
               §§pop();
               §§push(_loc3_.var_12 == 1);
            }
            if(§§pop())
            {
               return true;
            }
            if(param1.currentTarget == _loc2_.clip.grill_btn && _loc3_.var_12 == 9)
            {
               return true;
            }
            if(param1.currentTarget == _loc2_.clip.build_btn && _loc3_.var_12 == 3)
            {
               return true;
            }
            if(param1.currentTarget == _loc2_.clip.build_btn && _loc3_.var_12 == 22)
            {
               return true;
            }
            false;
            false;
            if(param1.currentTarget == _loc2_.clip.sauce_btn && _loc3_.var_12 == 2)
            {
               false;
               false;
               return true;
            }
            if(param1.currentTarget == _loc2_.clip.sauce_btn && _loc3_.var_12 == 15)
            {
               return true;
            }
            false;
            false;
            §§push(param1.currentTarget == _loc2_.clip.order_btn);
            if(param1.currentTarget == _loc2_.clip.order_btn)
            {
               false;
               false;
               §§pop();
               false;
               false;
               §§push(_loc3_.var_12 == 4);
            }
            if(§§pop())
            {
               return true;
            }
            §§push(param1.currentTarget == _loc2_.clip.order_btn);
            if(param1.currentTarget == _loc2_.clip.order_btn)
            {
               false;
               false;
               §§pop();
               true;
               true;
               §§push(_loc3_.var_12 == 28);
            }
            if(§§pop())
            {
               return true;
            }
         }
         else
         {
            _loc4_ = true;
         }
         return _loc4_;
      }
      
      public function showContextTraining(param1:String) : void
      {
         false;
         true;
         var _loc2_:GameHUD = this;
         §§push(!_loc2_.trainingClip);
         if(!_loc2_.trainingClip)
         {
            false;
            false;
            §§pop();
            §§push(!_loc2_.gameObj.var_14);
         }
         if(§§pop())
         {
            true;
            true;
            _loc2_.trainingClip = new trainingMC();
            _loc2_.clip.addChild(_loc2_.trainingClip);
            _loc2_.trainingClip.mouseEnabled = false;
            _loc2_.trainingClip.mouseChildren = false;
         }
         _loc2_.whichContextTraining = param1;
         _loc2_.trainingClip.gotoAndStop(param1);
      }
      
      public function removeContextTraining() : void
      {
         false;
         true;
         var _loc1_:GameHUD = this;
         true;
         true;
         §§push(!_loc1_.gameObj.var_14);
         if(!_loc1_.gameObj.var_14)
         {
            false;
            false;
            §§pop();
            §§push(Boolean(_loc1_.trainingClip));
         }
         if(§§pop())
         {
            _loc1_.clip.removeChild(_loc1_.trainingClip);
            _loc1_.trainingClip = null;
         }
         _loc1_.whichContextTraining = "none";
      }
      
      public function showTrainingWarning(param1:String) : void
      {
         false;
         true;
         var _loc2_:GameHUD = this;
         false;
         false;
         if(_loc2_.trainingClip)
         {
            try
            {
               _loc2_.trainingClip.warningMC.gotoAndPlay(param1);
            }
            catch(err:Error)
            {
            }
         }
      }
      
      public function clickHeatMap(param1:MouseEvent) : void
      {
         this;
      }
   }
}
