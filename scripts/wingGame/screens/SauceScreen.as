package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.*;
   import package_2.class_5;
   import package_4.*;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   import wingGame.models.SauceBottle;
   import wingGame.models.WingOrder;
   
   public class SauceScreen
   {
       
      
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var gameObj:class_4;
      
      public var bowlStartX:Number = -220;
      
      public var bowlCenterX:Number = 140;
      
      public var bowlEndX:Number = 650;
      
      public var bowlTweenSpeed:Number = 2;
      
      public var topStartY:Number = -144;
      
      public var topEndY:Number = 100;
      
      public var topTweenSpeed:Number = 40;
      
      public var lidStartY:Number = -86;
      
      public var lidEndY:Number = 164;
      
      public var lidTweenSpeed:Number = 40;
      
      public var ticketStartX:Number = -329;
      
      public var ticketCenterX:Number = 31;
      
      public var ticketEndX:Number = -99;
      
      public var ticketTweenSpeed:Number = 2;
      
      public var isSpinning:Boolean = false;
      
      public var isTumbling:Boolean = false;
      
      public var isMeterSpinning:Boolean = false;
      
      public var isMeterTumbling:Boolean = false;
      
      public var isSaucing:Boolean = false;
      
      public var isMeterSaucing:Boolean = false;
      
      public var isAddingLid:Boolean = false;
      
      public var isAddingTumbler:Boolean = false;
      
      public var hasBeenSauced:Boolean = false;
      
      public var hasFinishedPreparing:Boolean = false;
      
      public var didLoopTumble:Boolean = false;
      
      public var meterTimer:Number = 0;
      
      public var sauceMeterSpeed:Number = 4;
      
      public var sauceMeterDivisions:Number = 12;
      
      public var meatHolder:MovieClip = null;
      
      public var sauceSquirter:MovieClip = null;
      
      public var ticketMeatClip:MovieClip = null;
      
      public var bottles:Vector.<SauceBottle>;
      
      public var wingQueue:Vector.<WingOrder>;
      
      public var currentWingOrder:WingOrder = null;
      
      public var animTimer:Number = 0;
      
      public var delayBeforeAddingTumbler:Number = 10;
      
      public var delayBeforeAddingLid:Number = 15;
      
      public var delayAfterAddingLid:Number = 3;
      
      public var sauceOptions:Array;
      
      public var sauceStartX:Number = 33;
      
      public var sauceSpacing:Number = 57.1;
      
      public var sauceStartY:Number = 308;
      
      public function SauceScreen(param1:class_4)
      {
         true;
         true;
         this.sauceOptions = [FoodData.SAUCE_PARMESAN,FoodData.SAUCE_TERIYAKI,FoodData.SAUCE_BBQ,FoodData.SAUCE_CALYPSO,FoodData.SAUCE_ATOMIC,FoodData.SAUCE_BUFFALO,FoodData.SAUCE_MEDIUM,FoodData.SAUCE_SPICYGARLIC,FoodData.SAUCE_HONEYMUSTARD,FoodData.SAUCE_WILDONION,FoodData.SAUCE_WASABI];
         false;
         false;
         super();
         var _loc2_:SauceScreen = this;
         false;
         false;
         _loc2_.gameObj = param1;
         true;
         true;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc3_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:SauceBottle = null;
         var _loc1_:SauceScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         true;
         true;
         _loc1_.wingQueue = new Vector.<WingOrder>();
         _loc1_.clip = new sauceScreenMC();
         _loc1_.clip.lid.gotoAndStop(1);
         _loc1_.clip.lid.y = _loc1_.lidStartY;
         _loc1_.clip.lid.x = _loc1_.bowlCenterX;
         _loc1_.clip.top.y = _loc1_.topStartY;
         false;
         false;
         _loc1_.clip.bottom.x = _loc1_.bowlStartX;
         _loc1_.clip.infoticket.x = _loc1_.ticketStartX;
         _loc1_.clip.tumbler.visible = false;
         _loc1_.clip.top.visible = true;
         _loc1_.clip.bottom.visible = true;
         false;
         false;
         _loc1_.clip.lid.visible = true;
         true;
         true;
         _loc1_.clip.sauce_meter.visible = false;
         _loc1_.clip.num_txt.visible = false;
         _loc1_.clip.num_pulser.visible = false;
         _loc1_.clip.spin_meter.visible = false;
         _loc1_.clip.tumble_meter_1.visible = false;
         _loc1_.clip.tumble_meter_2.visible = false;
         true;
         true;
         _loc1_.clip.spin_btn.visible = false;
         _loc1_.clip.spin_btn_pulser.visible = false;
         _loc1_.clip.message.gotoAndStop(1);
         _loc1_.clip.message.inside.gotoAndStop(1);
         _loc1_.clip.message.mouseEnabled = false;
         _loc1_.clip.message.mouseChildren = false;
         _loc1_.clip.spin_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSpinButton);
         false;
         false;
         _loc1_.clip.sauce_meter.holder.mask = _loc1_.clip.sauce_meter.masker;
         _loc1_.bottles = new Vector.<SauceBottle>();
         var _loc4_:Number = 0;
         _loc3_ = 0;
         while(_loc3_ < _loc1_.sauceOptions.length)
         {
            if(_loc2_.hasTopping(_loc1_.sauceOptions[_loc3_]))
            {
               false;
               false;
               false;
               false;
               _loc4_++;
            }
            _loc3_++;
         }
         var _loc5_:Number = Math.floor((_loc1_.sauceOptions.length - _loc4_) / 2);
         var _loc6_:Number = 0;
         true;
         true;
         true;
         true;
         _loc3_ = 0;
         while(_loc3_ < _loc1_.sauceOptions.length)
         {
            if(_loc2_.hasTopping(_loc1_.sauceOptions[_loc3_]))
            {
               true;
               true;
               false;
               false;
               _loc7_ = _loc1_.sauceStartX + (_loc5_ + _loc6_) * _loc1_.sauceSpacing;
               false;
               false;
               _loc8_ = new SauceBottle(_loc1_.gameObj,_loc1_.sauceOptions[_loc3_],_loc1_.clip.topholder,_loc7_,_loc1_.sauceStartY);
               _loc1_.bottles.push(_loc8_);
               false;
               false;
               true;
               true;
               false;
               false;
               _loc6_++;
            }
            _loc3_++;
            true;
            true;
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         null;
         var _loc1_:SauceScreen = this;
         false;
         false;
         _loc1_.clip.spin_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSpinButton);
         false;
         false;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.wingQueue.length)
         {
            _loc1_.wingQueue[_loc2_].destroy();
            true;
            true;
            _loc1_.wingQueue[_loc2_] = null;
            false;
            false;
            false;
            false;
            true;
            true;
            _loc2_++;
         }
         _loc1_.wingQueue = null;
         true;
         true;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.clip = null;
      }
      
      public function restoreSoundAfterAd() : void
      {
         this;
      }
      
      public function activateScreen() : void
      {
         var _loc1_:SauceScreen = this;
         if(!_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.addChild(_loc1_.clip);
         }
         false;
         false;
         _loc1_.gameObj.soundManager.switchMusic("other");
         _loc1_.checkForWaitingOrder();
         _loc1_.isActive = true;
         false;
         false;
         if(_loc1_.currentWingOrder != null && !_loc1_.gameObj.userData.hasTrainedSauce && _loc1_.gameObj.userData.getDay() >= 2 && !_loc1_.gameObj.var_14)
         {
            _loc1_.gameObj.hud.showContextTraining("saucetraining");
         }
      }
      
      public function deactivateScreen() : void
      {
         var _loc1_:SauceScreen = this;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.isActive = false;
      }
      
      public function updateScreen() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:SauceScreen = this;
         if(_loc1_.currentWingOrder != null)
         {
            if(!_loc1_.hasBeenSauced && !_loc1_.isMeterSaucing && !_loc1_.isSaucing)
            {
               _loc2_ = _loc1_.bowlCenterX - _loc1_.clip.bottom.x;
               true;
               true;
               _loc3_ = _loc1_.ticketCenterX - _loc1_.clip.infoticket.x;
               false;
               false;
               _loc1_.clip.bottom.x += _loc2_ / _loc1_.bowlTweenSpeed;
               _loc1_.clip.infoticket.x += _loc3_ / _loc1_.ticketTweenSpeed;
               if(Math.abs(_loc2_) <= 1)
               {
                  _loc1_.clip.bottom.x = _loc1_.bowlCenterX;
                  _loc1_.clip.infoticket.x = _loc1_.ticketCenterX;
               }
            }
            else
            {
               true;
               true;
               if(_loc1_.isMeterSaucing)
               {
                  _loc1_.updateSauceMeter();
               }
               else if(_loc1_.isSaucing)
               {
                  if(_loc1_.sauceSquirter)
                  {
                     _loc1_.sauceSquirter.drip.y += 20;
                     if(_loc1_.sauceSquirter.drip.y > 174)
                     {
                        _loc1_.startAddingTumbler();
                     }
                  }
               }
               else if(_loc1_.isAddingTumbler)
               {
                  true;
                  true;
                  ++_loc1_.animTimer;
                  false;
                  false;
                  if(_loc1_.animTimer > _loc1_.delayBeforeAddingTumbler)
                  {
                     _loc1_.clip.top.y += _loc1_.topTweenSpeed;
                     true;
                     true;
                     if(_loc1_.clip.top.y >= _loc1_.topEndY)
                     {
                        true;
                        true;
                        _loc1_.clip.top.y = _loc1_.topEndY;
                        false;
                        false;
                        _loc1_.startSpinMeter();
                     }
                  }
               }
               else
               {
                  false;
                  false;
                  if(_loc1_.isMeterSpinning)
                  {
                     if(_loc1_.clip.spin_meter.currentFrame == Math.round(_loc1_.clip.spin_meter.totalFrames / 2) - 3)
                     {
                        _loc1_.clip.spin_btn_pulser.gotoAndPlay("pulse");
                        false;
                        false;
                     }
                  }
                  else if(_loc1_.isSpinning)
                  {
                     _loc1_.clip.tumbler.nextFrame();
                     if(_loc1_.clip.tumbler.currentFrame == 31)
                     {
                        _loc1_.clip.tumbler.gotoAndStop(31);
                        _loc1_.startTumbleMeter();
                     }
                  }
                  else
                  {
                     true;
                     true;
                     if(_loc1_.isMeterTumbling)
                     {
                        false;
                        false;
                        if(_loc1_.clip.tumble_meter_1.currentFrame == Math.round(_loc1_.clip.tumble_meter_1.totalFrames / 2) - 3)
                        {
                           false;
                           false;
                           _loc1_.clip.spin_btn_pulser.gotoAndPlay("pulse");
                        }
                     }
                     else
                     {
                        true;
                        true;
                        if(_loc1_.isTumbling)
                        {
                           _loc1_.clip.tumbler.nextFrame();
                           true;
                           true;
                           if(_loc1_.clip.tumbler.currentFrame >= 58 && !_loc1_.didLoopTumble)
                           {
                              _loc1_.clip.tumbler.gotoAndStop(41);
                              _loc1_.didLoopTumble = true;
                           }
                           else
                           {
                              true;
                              true;
                              if(_loc1_.clip.tumbler.currentFrame == 50 && _loc1_.didLoopTumble)
                              {
                                 _loc1_.clip.tumbler.gotoAndStop(59);
                                 true;
                                 true;
                              }
                              else if(_loc1_.clip.tumbler.currentFrame == 66 && _loc1_.didLoopTumble)
                              {
                                 false;
                                 false;
                                 _loc1_.clip.tumbler.gotoAndStop(66);
                                 _loc1_.startAddingLid();
                              }
                           }
                        }
                        else
                        {
                           false;
                           false;
                           if(_loc1_.isAddingLid)
                           {
                              ++_loc1_.animTimer;
                              true;
                              true;
                              if(_loc1_.clip.top.y > _loc1_.topStartY)
                              {
                                 _loc1_.clip.top.y -= _loc1_.topTweenSpeed;
                              }
                              if(_loc1_.clip.lid.y < _loc1_.lidEndY)
                              {
                                 true;
                                 true;
                                 if(_loc1_.animTimer > _loc1_.delayBeforeAddingLid)
                                 {
                                    _loc1_.clip.lid.y += _loc1_.lidTweenSpeed;
                                 }
                                 if(_loc1_.clip.lid.y >= _loc1_.lidEndY)
                                 {
                                    _loc1_.clip.lid.y = _loc1_.lidEndY;
                                    _loc1_.animTimer = 0;
                                 }
                              }
                              else if(_loc1_.animTimer > _loc1_.delayAfterAddingLid)
                              {
                                 false;
                                 false;
                                 _loc1_.clip.lid.y = _loc1_.lidEndY;
                                 _loc1_.clip.top.y = _loc1_.topStartY;
                                 _loc1_.startFinishingBowl();
                                 true;
                                 true;
                              }
                           }
                           else if(_loc1_.hasFinishedPreparing)
                           {
                              _loc4_ = _loc1_.bowlEndX - _loc1_.clip.bottom.x;
                              false;
                              false;
                              _loc1_.clip.bottom.x += _loc4_ / _loc1_.bowlTweenSpeed;
                              _loc1_.clip.lid.x = _loc1_.clip.bottom.x;
                              _loc5_ = _loc1_.ticketEndX - _loc1_.clip.infoticket.x;
                              _loc1_.clip.infoticket.x += _loc5_ / _loc1_.ticketTweenSpeed;
                              if(Math.abs(_loc4_) <= 1)
                              {
                                 _loc1_.finishCurrentOrder();
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function finishCurrentOrder() : void
      {
         var _loc1_:SauceScreen = this;
         false;
         false;
         true;
         true;
         _loc1_.gameObj.var_11.addToWingQueue(_loc1_.currentWingOrder);
         false;
         false;
         _loc1_.currentWingOrder.createBowl();
         _loc1_.gameObj.var_11.checkForBowlGaps();
         false;
         false;
         _loc1_.currentWingOrder = null;
         false;
         false;
         _loc1_.checkForWaitingOrder();
      }
      
      public function checkForWaitingOrder() : void
      {
         false;
         true;
         var _loc1_:SauceScreen = this;
         true;
         true;
         §§push(_loc1_.currentWingOrder == null);
         if(_loc1_.currentWingOrder == null)
         {
            false;
            false;
            §§pop();
            §§push(_loc1_.wingQueue.length > 0);
         }
         if(§§pop())
         {
            _loc1_.currentWingOrder = _loc1_.wingQueue.shift();
            _loc1_.createOrder();
         }
      }
      
      public function createOrder() : void
      {
         false;
         true;
         var _loc1_:SauceScreen = this;
         true;
         true;
         _loc1_.clip.lid.gotoAndStop(1);
         _loc1_.clip.lid.y = _loc1_.lidStartY;
         _loc1_.clip.lid.x = _loc1_.bowlCenterX;
         _loc1_.clip.top.y = _loc1_.topStartY;
         _loc1_.clip.bottom.x = _loc1_.bowlStartX;
         _loc1_.clip.infoticket.x = _loc1_.ticketStartX;
         _loc1_.clip.tumbler.gotoAndStop(1);
         _loc1_.clip.tumbler.visible = false;
         _loc1_.clip.top.visible = true;
         _loc1_.clip.bottom.visible = true;
         _loc1_.clip.lid.visible = true;
         true;
         true;
         _loc1_.clip.sauce_meter.visible = false;
         _loc1_.clip.num_txt.visible = false;
         _loc1_.clip.spin_meter.visible = false;
         _loc1_.clip.tumble_meter_1.visible = false;
         _loc1_.clip.tumble_meter_2.visible = false;
         false;
         false;
         _loc1_.clip.spin_btn.visible = false;
         true;
         true;
         _loc1_.clip.spin_btn_pulser.visible = false;
         _loc1_.hasBeenSauced = false;
         false;
         false;
         _loc1_.hasFinishedPreparing = false;
         _loc1_.didLoopTumble = false;
         if(_loc1_.meatHolder != null)
         {
            _loc1_.clip.bottom.meatholder.removeChild(_loc1_.meatHolder);
            true;
            true;
            _loc1_.meatHolder = null;
         }
         if(_loc1_.ticketMeatClip != null)
         {
            false;
            false;
            _loc1_.clip.infoticket.removeChild(_loc1_.ticketMeatClip);
            false;
            false;
            _loc1_.ticketMeatClip = null;
         }
         true;
         true;
         if(_loc1_.currentWingOrder.meatType == FoodData.MEAT_WING)
         {
            _loc1_.meatHolder = new saucebowl_meatcontainer_wing();
            _loc1_.ticketMeatClip = new meat_wing();
         }
         else
         {
            false;
            false;
            if(_loc1_.currentWingOrder.meatType == FoodData.MEAT_BONELESS)
            {
               false;
               false;
               _loc1_.meatHolder = new saucebowl_meatcontainer_boneless();
               _loc1_.ticketMeatClip = new meat_boneless();
            }
            else
            {
               false;
               false;
               false;
               false;
               if(_loc1_.currentWingOrder.meatType == FoodData.MEAT_SHRIMP)
               {
                  _loc1_.meatHolder = new saucebowl_meatcontainer_shrimp();
                  _loc1_.ticketMeatClip = new meat_shrimp();
               }
               else if(_loc1_.currentWingOrder.meatType == FoodData.MEAT_STRIPS)
               {
                  _loc1_.meatHolder = new saucebowl_meatcontainer_strips();
                  _loc1_.ticketMeatClip = new meat_strips();
                  false;
                  false;
               }
            }
         }
         _loc1_.clip.bottom.meatholder.addChild(_loc1_.meatHolder);
         _loc1_.clip.infoticket.addChild(_loc1_.ticketMeatClip);
         9;
         false;
         false;
         true;
         true;
         var _loc3_:Number = _loc1_.currentWingOrder.cookAmount / FoodData.getMaxCookTime(_loc1_.currentWingOrder.meatType);
         var _loc4_:Number = Math.min(9,Math.floor(_loc3_ * (9 - 1)) + 1);
         var _loc5_:int = 1;
         while(_loc5_ <= 3)
         {
            _loc1_.meatHolder["meat" + _loc5_].sauce.stop();
            _loc1_.meatHolder["meat" + _loc5_].sauce.visible = false;
            true;
            true;
            _loc1_.meatHolder["meat" + _loc5_].meat.gotoAndStop(_loc4_);
            if(_loc5_ == 1)
            {
               _loc1_.meatHolder["meat" + _loc5_].visible = true;
            }
            else
            {
               true;
               true;
               if(_loc5_ == 2 && _loc1_.currentWingOrder.meatAmount > 3)
               {
                  _loc1_.meatHolder["meat" + _loc5_].visible = true;
               }
               else
               {
                  true;
                  true;
                  if(_loc5_ == 3 && _loc1_.currentWingOrder.meatAmount > 6)
                  {
                     _loc1_.meatHolder["meat" + _loc5_].visible = true;
                  }
                  else
                  {
                     _loc1_.meatHolder["meat" + _loc5_].visible = false;
                  }
               }
            }
            _loc5_++;
         }
         _loc1_.ticketMeatClip.sauce.stop();
         _loc1_.ticketMeatClip.sauce.visible = false;
         _loc1_.ticketMeatClip.meat.gotoAndStop(_loc4_);
         _loc1_.ticketMeatClip.scaleX = 0.35;
         true;
         true;
         _loc1_.ticketMeatClip.scaleY = 0.35;
         _loc1_.ticketMeatClip.x = 30;
         _loc1_.ticketMeatClip.y = 64;
         _loc1_.clip.infoticket.num_txt.text = String(_loc1_.currentWingOrder.meatAmount);
         _loc1_.gameObj.soundManager.playSound("trayslide.wav");
      }
      
      public function startSauceMeter() : void
      {
         var _loc1_:SauceScreen = this;
         _loc1_.isMeterSaucing = true;
         _loc1_.meterTimer = 15;
         true;
         true;
         _loc1_.clip.sauce_meter.visible = true;
         _loc1_.clip.num_txt.visible = true;
         _loc1_.clip.num_txt.text = "1";
         false;
         false;
         _loc1_.clip.num_pulser.visible = true;
         _loc1_.clip.sauce_meter.holder.graphics.clear();
         false;
         false;
         if(_loc1_.gameObj.var_14 && _loc1_.gameObj.var_12 == 16)
         {
            _loc1_.gameObj.method_29();
            false;
            false;
         }
         if(_loc1_.gameObj.hud.whichContextTraining == "saucetraining")
         {
            _loc1_.gameObj.hud.showContextTraining("saucetraining2");
         }
      }
      
      public function stopSauceMeter() : void
      {
         var _loc1_:SauceScreen = this;
         _loc1_.isMeterSaucing = false;
         true;
         true;
         _loc1_.meterTimer = 0;
         false;
         false;
         _loc1_.clip.sauce_meter.visible = false;
         false;
         false;
         _loc1_.clip.num_txt.visible = false;
      }
      
      public function startSpinMeter() : void
      {
         false;
         true;
         var _loc1_:SauceScreen = this;
         _loc1_.isSaucing = false;
         _loc1_.isAddingTumbler = false;
         _loc1_.isMeterSpinning = true;
         _loc1_.meterTimer = 0;
         false;
         false;
         _loc1_.clip.spin_meter.gotoAndPlay(1);
         true;
         true;
         _loc1_.clip.spin_btn.visible = true;
         _loc1_.clip.spin_btn_pulser.visible = true;
         _loc1_.clip.spin_meter.visible = true;
         _loc1_.clip.bottom.visible = false;
         _loc1_.clip.top.visible = false;
         _loc1_.clip.tumbler.visible = true;
         _loc1_.gameObj.soundManager.playSound("fryer_return.wav");
      }
      
      public function startTumbleMeter() : void
      {
         false;
         true;
         var _loc1_:SauceScreen = this;
         _loc1_.isSpinning = false;
         _loc1_.isMeterTumbling = true;
         _loc1_.meterTimer = 0;
         _loc1_.clip.spin_btn.visible = true;
         _loc1_.clip.spin_btn_pulser.visible = true;
         _loc1_.clip.tumble_meter_1.visible = true;
         _loc1_.clip.tumble_meter_2.visible = true;
         _loc1_.clip.tumble_meter_1.gotoAndPlay(1);
         _loc1_.clip.tumble_meter_2.gotoAndPlay(2);
         true;
         true;
         true;
         true;
         true;
         true;
         if(_loc1_.gameObj.var_14 && _loc1_.gameObj.var_12 == 19)
         {
            _loc1_.gameObj.method_29();
         }
      }
      
      public function startAddingLid() : void
      {
         false;
         true;
         var _loc1_:SauceScreen = this;
         _loc1_.animTimer = 0;
         _loc1_.isTumbling = false;
         _loc1_.isAddingLid = true;
         _loc1_.clip.spin_btn.visible = false;
         _loc1_.clip.spin_btn_pulser.visible = false;
         _loc1_.clip.tumble_meter_1.visible = false;
         _loc1_.clip.tumble_meter_2.visible = false;
         _loc1_.clip.spin_meter.visible = false;
         true;
         true;
         _loc1_.clip.sauce_meter.visible = false;
         _loc1_.clip.num_txt.visible = false;
         _loc1_.clip.num_pulser.visible = false;
         _loc1_.clip.tumbler.visible = false;
         _loc1_.clip.top.visible = true;
         _loc1_.clip.bottom.visible = true;
         _loc1_.clip.lid.gotoAndStop(FoodData.getSauceFrame(_loc1_.currentWingOrder.sauceType));
         var _loc2_:Number = _loc1_.currentWingOrder.getSauceQualityFrame();
         5;
         false;
         false;
         var _loc4_:Number = (FoodData.getSauceFrame(_loc1_.currentWingOrder.sauceType) - 1) * 5 + _loc2_;
         var _loc5_:int = 1;
         while(_loc5_ <= 3)
         {
            _loc1_.meatHolder["meat" + _loc5_].sauce.gotoAndStop(_loc4_);
            true;
            true;
            _loc1_.meatHolder["meat" + _loc5_].sauce.visible = true;
            false;
            false;
            _loc5_++;
         }
      }
      
      public function squirtSauce(param1:String, param2:Number, param3:Number) : void
      {
         var type:String;
         var x:Number;
         var y:Number;
         var screen:SauceScreen;
         var amount:Number;
         false;
         true;
         type = param1;
         true;
         true;
         x = param2;
         false;
         false;
         y = param3;
         true;
         true;
         screen = this;
         false;
         false;
         amount = screen.meterTimer;
         true;
         true;
         true;
         true;
         screen.currentWingOrder.sauceType = type;
         screen.currentWingOrder.sauceAmountValue = amount;
         try
         {
            false;
            false;
            screen.clip.message.inside.gotoAndStop(screen.currentWingOrder.getSauceMessage());
            screen.clip.message.gotoAndPlay(2);
         }
         catch(err:Error)
         {
            class_5.error("Error with sauce message: " + err.message);
         }
         true;
         true;
         false;
         false;
         §§push(screen.gameObj.hud.whichContextTraining == "saucetraining");
         if(!(screen.gameObj.hud.whichContextTraining == "saucetraining"))
         {
            true;
            true;
            §§pop();
            true;
            true;
            §§push(screen.gameObj.hud.whichContextTraining == "saucetraining2");
         }
         if(§§pop())
         {
            true;
            true;
            false;
            false;
            true;
            true;
            true;
            true;
            if(screen.currentWingOrder.getSauceMessage() == "good" || screen.currentWingOrder.getSauceMessage() == "great")
            {
               false;
               false;
               true;
               true;
               true;
               true;
               screen.gameObj.hud.showContextTraining("saucegood");
            }
            else
            {
               screen.gameObj.hud.showContextTraining("saucebad");
            }
            screen.gameObj.userData.hasTrainedSauce = true;
         }
         if(screen.sauceSquirter != null)
         {
            false;
            false;
            screen.clip.bottom.meatholder.removeChild(screen.sauceSquirter);
            true;
            true;
            screen.sauceSquirter = null;
         }
         screen.sauceSquirter = new sauce_squirtclip();
         true;
         true;
         true;
         true;
         screen.clip.bottom.meatholder.addChild(screen.sauceSquirter);
         screen.sauceSquirter.drip.mask = screen.sauceSquirter.masker;
         screen.sauceSquirter.drip.gotoAndStop(FoodData.getSauceFrame(type));
         screen.sauceSquirter.drip.x = x - screen.clip.bottom.x;
         true;
         true;
         screen.sauceSquirter.drip.y = y - screen.clip.bottom.y;
         true;
         true;
         true;
         true;
         screen.isMeterSaucing = false;
         false;
         false;
         screen.isSaucing = true;
         screen.clip.sauce_meter.visible = false;
         screen.clip.num_txt.visible = false;
         false;
         false;
         false;
         false;
         if(screen.gameObj.var_14 && screen.gameObj.var_12 == 17)
         {
            true;
            true;
            false;
            false;
            true;
            true;
            screen.gameObj.method_29();
            false;
            false;
         }
         screen.gameObj.soundManager.playSound("sauce_squirting.wav");
      }
      
      public function startAddingTumbler() : void
      {
         false;
         true;
         var _loc1_:SauceScreen = this;
         _loc1_.animTimer = 0;
         _loc1_.isSaucing = false;
         _loc1_.hasBeenSauced = true;
         _loc1_.isAddingTumbler = true;
         _loc1_.clip.bottom.x = _loc1_.bowlCenterX;
         false;
         false;
         _loc1_.clip.infoticket.x = _loc1_.ticketCenterX;
      }
      
      public function startFinishingBowl() : void
      {
         false;
         true;
         var _loc1_:SauceScreen = this;
         if(_loc1_.meatHolder != null)
         {
            _loc1_.clip.bottom.meatholder.removeChild(_loc1_.meatHolder);
            _loc1_.meatHolder = null;
         }
         _loc1_.isAddingLid = false;
         _loc1_.hasFinishedPreparing = true;
         true;
         true;
         _loc1_.gameObj.soundManager.playSound("trayslide.wav");
         false;
         false;
         false;
         false;
         if(_loc1_.gameObj.var_14 && _loc1_.gameObj.var_12 == 21)
         {
            _loc1_.gameObj.method_29();
         }
      }
      
      public function clickSpinButton(param1:MouseEvent) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:SauceScreen = this;
         if(_loc2_.isMeterSpinning)
         {
            _loc2_.isMeterSpinning = false;
            _loc2_.isSpinning = true;
            _loc2_.clip.tumbler.gotoAndStop(1);
            _loc2_.clip.spin_meter.visible = false;
            _loc2_.clip.spin_meter.stop();
            _loc3_ = Number(_loc2_.clip.spin_meter.totalFrames);
            true;
            true;
            true;
            true;
            if((_loc4_ = Number(_loc2_.clip.spin_meter.currentFrame)) > _loc3_ / 2 + 2)
            {
               _loc2_.clip.message.inside.gotoAndStop("late");
               false;
               false;
            }
            else
            {
               true;
               true;
               if(_loc4_ < _loc3_ / 2 - 2)
               {
                  _loc2_.clip.message.inside.gotoAndStop("early");
               }
               else
               {
                  false;
                  false;
                  if(_loc4_ == _loc3_ / 2)
                  {
                     _loc2_.clip.message.inside.gotoAndStop("great");
                  }
                  else
                  {
                     _loc2_.clip.message.inside.gotoAndStop("good");
                  }
               }
            }
            _loc2_.clip.message.gotoAndPlay(2);
            false;
            false;
            false;
            false;
            if(_loc4_ > _loc3_ / 2)
            {
               _loc4_ = Math.abs(_loc4_ - _loc3_);
            }
            _loc5_ = _loc4_ / (_loc3_ / 2);
            true;
            true;
            _loc5_ = Math.min(1,_loc5_ + 0.05);
            false;
            false;
            true;
            true;
            _loc2_.currentWingOrder.sauceSpinValue = _loc5_;
            false;
            false;
            if(_loc2_.gameObj.var_14 && _loc2_.gameObj.var_12 == 18)
            {
               _loc2_.gameObj.method_29();
            }
            false;
            false;
            false;
            false;
            true;
            true;
            true;
            true;
            if(_loc2_.gameObj.hud.whichContextTraining == "saucegood" || _loc2_.gameObj.hud.whichContextTraining == "saucebad")
            {
               _loc2_.gameObj.hud.removeContextTraining();
               false;
               false;
            }
            false;
            false;
            true;
            true;
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            false;
            false;
            _loc2_.gameObj.soundManager.playSound("sauce_tumble.wav");
         }
         else if(_loc2_.isMeterTumbling)
         {
            _loc2_.isMeterTumbling = false;
            _loc2_.isTumbling = true;
            _loc2_.clip.tumbler.gotoAndStop(32);
            true;
            true;
            _loc2_.clip.tumble_meter_1.visible = false;
            _loc2_.clip.tumble_meter_2.visible = false;
            _loc2_.clip.tumble_meter_1.stop();
            false;
            false;
            _loc2_.clip.tumble_meter_2.stop();
            true;
            true;
            _loc6_ = Number(_loc2_.clip.tumble_meter_1.totalFrames);
            false;
            false;
            true;
            true;
            if((_loc7_ = Number(_loc2_.clip.tumble_meter_1.currentFrame)) > _loc6_ / 2 + 2)
            {
               _loc2_.clip.message.inside.gotoAndStop("late");
            }
            else
            {
               true;
               true;
               if(_loc7_ < _loc6_ / 2 - 2)
               {
                  _loc2_.clip.message.inside.gotoAndStop("early");
                  true;
                  true;
               }
               else
               {
                  false;
                  false;
                  if(_loc7_ == _loc6_ / 2)
                  {
                     _loc2_.clip.message.inside.gotoAndStop("great");
                  }
                  else
                  {
                     _loc2_.clip.message.inside.gotoAndStop("good");
                  }
               }
            }
            _loc2_.clip.message.gotoAndPlay(2);
            if(_loc7_ > _loc6_ / 2)
            {
               false;
               false;
               _loc7_ = Math.abs(_loc7_ - _loc6_);
            }
            _loc8_ = _loc7_ / (_loc6_ / 2);
            _loc8_ = Math.min(1,_loc8_ + 0.09);
            _loc2_.currentWingOrder.sauceTumbleValue = _loc8_;
            false;
            false;
            §§push(_loc2_.gameObj.var_14);
            if(_loc2_.gameObj.var_14)
            {
               true;
               true;
               §§pop();
               §§push(_loc2_.gameObj.var_12 == 20);
            }
            if(§§pop())
            {
               _loc2_.gameObj.method_29();
            }
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            _loc2_.gameObj.soundManager.playSound("sauce_tumble2.wav");
         }
         _loc2_.clip.spin_btn.visible = false;
         _loc2_.clip.spin_btn_pulser.visible = false;
      }
      
      public function updateSauceMeter() : void
      {
         var _loc1_:SauceScreen = this;
         true;
         true;
         false;
         false;
         _loc1_.meterTimer += _loc1_.sauceMeterSpeed;
         false;
         false;
         if(_loc1_.meterTimer > 360)
         {
            false;
            false;
            _loc1_.meterTimer -= 360;
         }
         var _loc2_:Number = FoodData.getSauceNumberAmount(_loc1_.meterTimer);
         true;
         true;
         _loc1_.clip.num_txt.text = String(_loc2_);
         true;
         true;
         true;
         true;
         §§push(_loc2_ == _loc1_.currentWingOrder.meatAmount);
         if(_loc2_ == _loc1_.currentWingOrder.meatAmount)
         {
            true;
            true;
            §§pop();
            §§push(_loc1_.clip.num_pulser.currentFrame == 1);
         }
         if(§§pop())
         {
            _loc1_.clip.num_pulser.gotoAndPlay(2);
         }
         var _loc3_:MovieClip = _loc1_.clip.sauce_meter.holder;
         260;
         false;
         false;
         0 + 260 / 2;
         true;
         true;
         true;
         true;
         0 + 260 / 2;
         var _loc7_:Number = 20;
         var _loc8_:Number = Math.min(90,Math.abs(_loc1_.meterTimer - 180));
         true;
         true;
         false;
         false;
         var _loc9_:Number = (90 - _loc8_) / 90 * 30;
         false;
         false;
         true;
         true;
         _loc7_ += _loc9_;
         _loc3_.graphics.clear();
         false;
         false;
         _loc3_.graphics.lineStyle(_loc7_,8912712,1);
         true;
         true;
         _loc3_.graphics.moveTo(130,130);
         true;
         true;
         260;
         true;
         true;
         true;
         true;
         false;
         false;
         false;
         false;
         var _loc11_:Number = _loc1_.meterTimer / 360 * (2 * Math.PI) - Math.PI / 2;
         true;
         true;
         true;
         true;
         var _loc12_:Number = 260 * Math.cos(_loc11_) + 130;
         false;
         false;
         true;
         true;
         var _loc13_:Number = 260 * Math.sin(_loc11_) + 130;
         _loc3_.graphics.lineTo(_loc12_,_loc13_);
      }
      
      private function drawArc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:MovieClip) : void
      {
         false;
         true;
         var _loc13_:Number = NaN;
         false;
         false;
         true;
         true;
         param4 -= 0.25;
         true;
         true;
         var _loc8_:Number = 2 * Math.PI;
         false;
         false;
         var _loc9_:Number = param5 / param6;
         false;
         false;
         var _loc10_:Number = param1 + Math.cos(param4 * _loc8_) * param3;
         false;
         false;
         var _loc11_:Number = param2 + Math.sin(param4 * _loc8_) * param3;
         param7.graphics.moveTo(_loc10_,_loc11_);
         var _loc12_:int = 1;
         while(_loc12_ <= param6)
         {
            false;
            false;
            false;
            false;
            _loc13_ = param4 + _loc12_ * _loc9_;
            _loc10_ = param1 + Math.cos(_loc13_ * _loc8_) * param3;
            false;
            false;
            _loc11_ = param2 + Math.sin(_loc13_ * _loc8_) * param3;
            param7.graphics.lineTo(_loc10_,_loc11_);
            _loc12_++;
            false;
            false;
         }
      }
      
      public function initStationUpgrades() : void
      {
         this;
      }
      
      public function addToWingQueue(param1:WingOrder) : void
      {
         var _loc2_:SauceScreen = this;
         _loc2_.wingQueue.push(param1);
      }
      
      public function removeFromWingQueue(param1:Number) : void
      {
         var _loc2_:SauceScreen = this;
         if(param1 < _loc2_.wingQueue.length)
         {
            _loc2_.wingQueue.splice(param1,1);
         }
      }
   }
}
