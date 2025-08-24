package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import package_4.*;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   import wingGame.models.*;
   
   public class GrillScreen
   {
       
      
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var gameObj:class_4;
      
      public var alarmsRunning:Number = 0;
      
      public var alarmSound:SoundChannel = null;
      
      public var alarmBaseVolume:Number = 0.5;
      
      public var alarmExtraVolume:Number = 0.2;
      
      public var grillSound:SoundChannel;
      
      public var grillVolume:Number = 0;
      
      public var boostSound:SoundChannel;
      
      public var isBoosting:Boolean = false;
      
      public var boostingWhich:Number = 0;
      
      public var basketsPerRow:Number = 4;
      
      public var basketRows:Number = 2;
      
      public var isDraggingBasket:Boolean = false;
      
      public var isThrowingAway:Boolean = false;
      
      public var isPouringMeat:Boolean = false;
      
      public var isSwitchingBowls:Boolean = false;
      
      public var bins:Vector.<MeatBin> = null;
      
      public var baskets:Vector.<Vector.<FryerBasket>> = null;
      
      public function GrillScreen(param1:class_4)
      {
         true;
         true;
         super();
         var _loc2_:GrillScreen = this;
         true;
         true;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
      }
      
      public function restoreSoundAfterAd() : void
      {
         var _loc1_:GrillScreen = this;
         false;
         false;
         if(_loc1_.grillSound)
         {
            _loc1_.grillSound.stop();
         }
         _loc1_.grillSound = null;
         _loc1_.grillSound = _loc1_.gameObj.soundManager.playSound("fryeroil.wav",true,0);
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:MeatBin = null;
         var _loc6_:MeatBin = null;
         var _loc7_:MeatBin = null;
         var _loc8_:MeatBin = null;
         var _loc9_:FryerBasket = null;
         var _loc1_:GrillScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         false;
         false;
         _loc1_.clip = new grillScreenMC();
         _loc1_.grillSound = _loc1_.gameObj.soundManager.playSound("fryeroil.wav",true,0);
         _loc1_.bins = new Vector.<MeatBin>();
         if(_loc2_.hasTopping(FoodData.MEAT_SHRIMP))
         {
            _loc5_ = new MeatBin(_loc1_.gameObj,_loc1_.clip.bin_shrimp,FoodData.MEAT_SHRIMP);
            _loc1_.bins.push(_loc5_);
         }
         else
         {
            _loc1_.clip.bin_shrimp.visible = false;
         }
         if(_loc2_.hasTopping(FoodData.MEAT_WING))
         {
            false;
            false;
            _loc6_ = new MeatBin(_loc1_.gameObj,_loc1_.clip.bin_wing,FoodData.MEAT_WING);
            _loc1_.bins.push(_loc6_);
         }
         else
         {
            _loc1_.clip.bin_wing.visible = false;
         }
         if(_loc2_.hasTopping(FoodData.MEAT_BONELESS))
         {
            false;
            false;
            _loc7_ = new MeatBin(_loc1_.gameObj,_loc1_.clip.bin_boneless,FoodData.MEAT_BONELESS);
            _loc1_.bins.push(_loc7_);
         }
         else
         {
            _loc1_.clip.bin_boneless.visible = false;
         }
         if(_loc2_.hasTopping(FoodData.MEAT_STRIPS))
         {
            false;
            false;
            _loc8_ = new MeatBin(_loc1_.gameObj,_loc1_.clip.bin_strips,FoodData.MEAT_STRIPS);
            _loc1_.bins.push(_loc8_);
         }
         else
         {
            _loc1_.clip.bin_strips.visible = false;
         }
         _loc1_.baskets = new Vector.<Vector.<FryerBasket>>();
         _loc1_.baskets.push(new Vector.<FryerBasket>());
         _loc1_.baskets.push(new Vector.<FryerBasket>());
         _loc4_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc4_ >= _loc1_.basketRows)
            {
               break;
            }
            _loc3_ = 0;
            true;
            true;
            while(true)
            {
               true;
               true;
               if(_loc3_ >= _loc1_.basketsPerRow)
               {
                  break;
               }
               _loc9_ = new FryerBasket(_loc1_.gameObj,_loc1_.clip["basket_" + _loc4_ + "_" + _loc3_],_loc3_,_loc4_);
               false;
               false;
               _loc1_.baskets[_loc4_].push(_loc9_);
               true;
               true;
               true;
               true;
               _loc3_++;
            }
            _loc4_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 4)
         {
            _loc1_.clip["boost_" + _loc3_].addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.pressBoostButton);
            _loc3_++;
            false;
            false;
         }
      }
      
      public function stopSounds() : void
      {
         false;
         true;
         var _loc1_:GrillScreen = this;
         if(_loc1_.grillSound)
         {
            true;
            true;
            _loc1_.grillSound.stop();
            false;
            false;
            _loc1_.grillSound = null;
         }
         if(_loc1_.alarmSound)
         {
            _loc1_.alarmSound.stop();
            _loc1_.alarmSound = null;
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc1_:GrillScreen = this;
         _loc1_.stopSounds();
         _loc2_ = 1;
         while(_loc2_ <= 4)
         {
            _loc1_.clip["boost_" + _loc2_].removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.pressBoostButton);
            true;
            true;
            _loc2_++;
         }
         true;
         true;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            true;
            true;
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.clip = null;
      }
      
      public function activateScreen() : void
      {
         false;
         true;
         var _loc1_:GrillScreen = this;
         true;
         true;
         if(!_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.addChild(_loc1_.clip);
         }
         _loc1_.gameObj.hud.hideTimerAlerts();
         _loc1_.gameObj.soundManager.switchMusic("grill");
         true;
         true;
         _loc1_.isActive = true;
      }
      
      public function deactivateScreen() : void
      {
         var _loc1_:GrillScreen = this;
         true;
         true;
         false;
         false;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            true;
            true;
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.isActive = false;
      }
      
      public function updateScreen() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc1_:GrillScreen = this;
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.bins.length)
         {
            _loc1_.bins[_loc2_].updateBin();
            true;
            true;
            _loc2_++;
         }
         true;
         true;
         false;
         false;
         _loc3_ = 0;
         while(_loc3_ < _loc1_.basketRows)
         {
            true;
            true;
            _loc2_ = 0;
            while(true)
            {
               true;
               true;
               if(_loc2_ >= _loc1_.basketsPerRow)
               {
                  break;
               }
               _loc1_.baskets[_loc3_][_loc2_].updateBasket();
               _loc2_++;
            }
            _loc3_++;
            true;
            true;
         }
         true;
         true;
         _loc1_.updateBowls();
         _loc1_.updateGrillSound();
      }
      
      public function updateBowls() : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:GrillScreen = this;
         var _loc2_:Number = -216;
         true;
         true;
         §§push(_loc1_.isDraggingBasket);
         if(!_loc1_.isDraggingBasket)
         {
            true;
            true;
            §§pop();
            true;
            true;
            false;
            false;
            §§push(_loc1_.isThrowingAway);
         }
         if(§§pop())
         {
            false;
            false;
            _loc2_ = 2;
         }
         if(_loc1_.clip.bad_bowl.x != _loc2_)
         {
            false;
            false;
            true;
            true;
            _loc3_ = _loc2_ - _loc1_.clip.bad_bowl.x;
            _loc1_.clip.bad_bowl.x += _loc3_ / 2;
            true;
            true;
            if(Math.abs(_loc3_) <= 1)
            {
               _loc1_.clip.bad_bowl.x = _loc2_;
            }
         }
         if(_loc1_.isSwitchingBowls)
         {
            true;
            true;
            _loc4_ = 800;
            _loc5_ = 365;
            _loc1_.clip.good_bowl.x += (_loc4_ - _loc1_.clip.good_bowl.x) / 2;
            _loc1_.clip.filler_bowl.y += (_loc5_ - _loc1_.clip.filler_bowl.y) / 3;
            if(Math.abs(_loc4_ - _loc1_.clip.good_bowl.x) <= 1)
            {
               true;
               true;
               _loc1_.clip.good_bowl.x = 425;
               true;
               true;
               _loc1_.clip.filler_bowl.y = 483;
               _loc1_.isSwitchingBowls = false;
            }
         }
      }
      
      public function updateGrillSound() : void
      {
         false;
         true;
         var _loc1_:GrillScreen = this;
         var _loc2_:SoundTransform = new SoundTransform();
         var _loc3_:Number = _loc1_.grillSound.soundTransform.volume;
         true;
         true;
         var _loc4_:Number = Math.min(5,_loc1_.getTotalFryersCooking()) / 5;
         true;
         true;
         var _loc5_:Number = _loc1_.grillVolume;
         if(_loc4_ > _loc5_)
         {
            false;
            false;
            _loc5_ += 0.01;
         }
         else if(_loc4_ < _loc5_)
         {
            _loc5_ -= 0.01;
         }
         true;
         true;
         true;
         true;
         if(!_loc1_.isActive && _loc4_ > 0)
         {
            _loc5_ = 0.15;
         }
         else
         {
            true;
            true;
            if(!_loc1_.isActive && _loc4_ == 0)
            {
               _loc5_ = 0;
               false;
               false;
            }
            else
            {
               _loc1_.grillVolume = _loc5_;
            }
         }
         _loc2_.volume = _loc5_;
         _loc1_.grillSound.soundTransform = _loc2_;
      }
      
      public function getTotalFryersCooking() : Number
      {
         var _loc4_:int = 0;
         var _loc1_:GrillScreen = this;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.basketRows)
         {
            _loc4_ = 0;
            true;
            true;
            while(_loc4_ < _loc1_.basketsPerRow)
            {
               false;
               false;
               §§push(_loc1_.baskets[_loc3_][_loc4_].isCooking);
               if(_loc1_.baskets[_loc3_][_loc4_].isCooking)
               {
                  false;
                  false;
                  §§pop();
                  §§push(!_loc1_.baskets[_loc3_][_loc4_].isRollingOver);
               }
               if(§§pop())
               {
                  true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  _loc2_++;
               }
               _loc4_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function isFryerFree(param1:Number, param2:Number) : Boolean
      {
         var _loc5_:int = 0;
         var _loc3_:GrillScreen = this;
         var _loc4_:Boolean = true;
         true;
         true;
         false;
         false;
         true;
         true;
         §§push(param1 < 0);
         if(!(param1 < 0))
         {
            true;
            true;
            §§pop();
            §§push(param2 < 0);
         }
         §§push(§§pop() || param1 > 3);
         if(!(§§pop() || param1 > 3))
         {
            false;
            false;
            §§pop();
            §§push(param2 > 1);
         }
         if(§§pop())
         {
            true;
            true;
            _loc4_ = false;
         }
         else if(_loc3_.baskets[param2][param1].isFree() == false)
         {
            _loc4_ = false;
            true;
            true;
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < _loc3_.bins.length)
            {
               false;
               false;
               if(_loc3_.bins[_loc5_].pouringWhichFryerX == param1 && _loc3_.bins[_loc5_].pouringWhichFryerY == param2)
               {
                  _loc4_ = false;
                  break;
               }
               _loc5_++;
            }
         }
         if(_loc3_.gameObj.var_14)
         {
            true;
            true;
            if(param1 == 2 && param2 == 1)
            {
               true;
               true;
               _loc4_ = true;
            }
            else
            {
               _loc4_ = false;
            }
         }
         return _loc4_;
      }
      
      public function isDraggingLidDial() : Boolean
      {
         var _loc1_:GrillScreen = this;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.bins.length)
         {
            if(_loc1_.bins[_loc3_].isClickingDial)
            {
               false;
               false;
               true;
               true;
               _loc2_ = true;
               false;
               false;
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function addMeatToFryer(param1:Number, param2:Number, param3:String, param4:Number) : void
      {
         false;
         true;
         var _loc5_:GrillScreen;
         if((_loc5_ = this).baskets[param2][param1].isFree())
         {
            false;
            false;
            _loc5_.baskets[param2][param1].addMeat(param3,param4);
         }
      }
      
      public function quietSoundWhenPaused() : void
      {
         var _loc2_:SoundTransform = null;
         var _loc1_:GrillScreen = this;
         if(_loc1_.grillSound)
         {
            _loc2_ = new SoundTransform();
            _loc2_.volume = 0;
            _loc1_.grillSound.soundTransform = _loc2_;
         }
      }
      
      public function initStationUpgrades() : void
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc1_:GrillScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 1;
         while(_loc3_ <= 4)
         {
            true;
            true;
            if(_loc2_.hasBonus("booster" + _loc3_))
            {
               _loc1_.clip["boost_" + _loc3_].visible = true;
               false;
               false;
            }
            else
            {
               _loc1_.clip["boost_" + _loc3_].visible = false;
            }
            if(_loc2_.hasBonus("alarm" + _loc3_))
            {
               false;
               false;
               _loc4_ = 0;
               while(true)
               {
                  true;
                  true;
                  if(_loc4_ >= _loc1_.baskets.length)
                  {
                     break;
                  }
                  _loc1_.baskets[_loc4_][_loc3_ - 1].enableAlarm();
                  false;
                  false;
                  _loc4_++;
               }
            }
            _loc3_++;
         }
      }
      
      public function soundAlarm(param1:Number, param2:Number) : void
      {
         var _loc3_:GrillScreen = this;
         true;
         true;
         false;
         false;
         true;
         true;
         if(_loc3_.gameObj.userData.hasBonus("alarm" + (param1 + 1)))
         {
            false;
            false;
            _loc3_.gameObj.hud.showTimerAlert();
            true;
            true;
            ++_loc3_.alarmsRunning;
            false;
            false;
            _loc3_.updateAlarmSound();
         }
      }
      
      public function stopAlarm(param1:Number, param2:Number) : void
      {
         false;
         true;
         var _loc3_:GrillScreen = this;
         false;
         false;
         if(_loc3_.gameObj.userData.hasBonus("alarm" + (param1 + 1)))
         {
            false;
            false;
            --_loc3_.alarmsRunning;
            _loc3_.updateAlarmSound();
         }
      }
      
      public function updateAlarmSound() : void
      {
         var _loc1_:GrillScreen = this;
         if(_loc1_.alarmSound != null)
         {
            _loc1_.alarmSound.stop();
            true;
            true;
            _loc1_.alarmSound = null;
         }
         true;
         true;
         true;
         true;
         false;
         false;
         var _loc2_:Number = _loc1_.alarmBaseVolume + (_loc1_.alarmsRunning - 1) * _loc1_.alarmExtraVolume;
         true;
         true;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         if(_loc1_.alarmsRunning > 0)
         {
            _loc1_.alarmSound = _loc1_.gameObj.soundManager.playSound("timeralarm.wav",true,_loc2_);
         }
      }
      
      public function pressBoostButton(param1:MouseEvent) : void
      {
         var _loc2_:GrillScreen = this;
         false;
         false;
         _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBoostButton);
         _loc2_.isBoosting = true;
         _loc2_.boostingWhich = Number(String(param1.currentTarget.name).split("_")[1]);
         _loc2_.gameObj.soundManager.playSound("press_machine_button.wav");
         if(_loc2_.boostSound)
         {
            false;
            false;
            _loc2_.boostSound.stop();
            _loc2_.boostSound = null;
         }
         _loc2_.boostSound = _loc2_.gameObj.soundManager.playSound("fryer_bubbling.wav",true);
      }
      
      public function releaseBoostButton(param1:MouseEvent) : void
      {
         var _loc2_:GrillScreen = this;
         false;
         false;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBoostButton);
         _loc2_.isBoosting = false;
         _loc2_.boostingWhich = 0;
         _loc2_.gameObj.soundManager.playSound("release_button.wav");
         if(_loc2_.boostSound)
         {
            _loc2_.boostSound.stop();
            _loc2_.boostSound = null;
         }
      }
   }
}
