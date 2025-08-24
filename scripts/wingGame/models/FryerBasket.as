package wingGame.models
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import package_2.*;
   import package_4.class_4;
   import wingGame.data.*;
   
   public class FryerBasket
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var meatType:String = null;
      
      public var meatAmount:Number = 0;
      
      public var grillX:Number = 0;
      
      public var grillY:Number = 0;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isRollingOver:Boolean = false;
      
      public var isCooking:Boolean = false;
      
      public var isDumping:Boolean = false;
      
      public var isThrowingAway:Boolean = false;
      
      public var cookTime:Number = 0;
      
      public var spriteSheet:BitmapData;
      
      public var meatSprite:BitmapData;
      
      public var meatBitmap:Bitmap;
      
      public var meatScale:Number = 0.4;
      
      public var meatSpriteWidth:Number = 84;
      
      public var meatSpriteHeight:Number = 84;
      
      public var meatSpritePadX:Number = 3;
      
      public var meatCookLevels:Number = 9;
      
      public var currentMeatFrame:Number = 1;
      
      public var basketBoundsStartX:Number = 8;
      
      public var basketBoundsSpacingX:Number = 120;
      
      public var basketBoundsStartY:Number = 55;
      
      public var basketBoundsSpacingY:Number = 156;
      
      public var pourTargetX:Number = 469;
      
      public var pourTargetY:Number = 356;
      
      public var throwawayTargetX:Number = 44;
      
      public var throwawayTargetY:Number = 356;
      
      public var hasAlarm:Boolean = false;
      
      public var alarmIsSounding:Boolean = false;
      
      public var tweenSpeed:Number = 2;
      
      public var timerBounds:Number = 58;
      
      public var maxMeterTime:Number = 3600;
      
      public var downFrame:Number = 1;
      
      public var rolloverFrame:Number = 5;
      
      public var dragFrame:Number = 8;
      
      public var sidewaysFrame:Number = 15;
      
      public var pourFrame:Number = 16;
      
      public var timeAllowRollover:Number = 20;
      
      public function FryerBasket(param1:class_4, param2:MovieClip, param3:Number, param4:Number)
      {
         super();
         var _loc5_:FryerBasket;
         (_loc5_ = this).gameObj = param1;
         _loc5_.clip = param2;
         _loc5_.grillX = param3;
         false;
         false;
         _loc5_.grillY = param4;
         _loc5_.setupBasket();
      }
      
      public function setupBasket() : void
      {
         var _loc1_:FryerBasket = this;
         _loc1_.clip.buttonMode = true;
         true;
         true;
         _loc1_.clip.useHandCursor = true;
         _loc1_.clip.mouseChildren = false;
         _loc1_.clip.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBasket);
         _loc1_.clip.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBasket);
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBasket);
         2;
         _loc1_.clip.handle1.gotoAndStop(2);
         _loc1_.clip.handle2.gotoAndStop(2);
         _loc1_.clip.handle_3.gotoAndStop(2);
         _loc1_.clip.handle_4.gotoAndStop(2);
         _loc1_.clip.handle_5.gotoAndStop(2);
         _loc1_.clip.handle_6.gotoAndStop(2);
         _loc1_.clip.handle_7.gotoAndStop(2);
         _loc1_.clip.frymeter.greenbar.mask = _loc1_.clip.frymeter.masker;
         _loc1_.clip.frymeter.greenbar.y = _loc1_.timerBounds;
         false;
         false;
         _loc1_.clip.frymeter.whitebar.visible = false;
         _loc1_.clip.counter.bells.stop();
         _loc1_.clip.counter.bells.visible = false;
         _loc1_.clip.counter.num_txt.text = "";
         _loc1_.clip.gotoAndStop(_loc1_.rolloverFrame);
         _loc1_.clip.oil.gotoAndStop("static");
         false;
         false;
         _loc1_.clip.oil.boostboil.stop();
         _loc1_.clip.oil.boostboil.visible = false;
      }
      
      public function enableAlarm() : void
      {
         var _loc1_:FryerBasket = this;
         true;
         true;
         _loc1_.clip.counter.bells.visible = true;
         _loc1_.hasAlarm = true;
      }
      
      public function startAlarmBells() : void
      {
         var _loc1_:FryerBasket = this;
         true;
         true;
         _loc1_.clip.counter.bells.gotoAndPlay(2);
      }
      
      public function stopAlarmBells() : void
      {
         var _loc1_:FryerBasket = this;
         _loc1_.clip.counter.bells.gotoAndStop(1);
      }
      
      public function addMeat(param1:String, param2:Number) : void
      {
         false;
         true;
         var _loc3_:FryerBasket = this;
         false;
         false;
         _loc3_.meatType = param1;
         false;
         false;
         _loc3_.meatAmount = param2;
         _loc3_.cookTime = 0;
         false;
         false;
         _loc3_.createMeatGraphic();
         var _loc4_:Number = 1;
         true;
         true;
         false;
         false;
         if(_loc3_.meatType == FoodData.MEAT_SHRIMP)
         {
            true;
            true;
            _loc4_ = 1;
         }
         else
         {
            false;
            false;
            if(_loc3_.meatType == FoodData.MEAT_WING)
            {
               _loc4_ = 2;
            }
            else
            {
               false;
               false;
               if(_loc3_.meatType == FoodData.MEAT_BONELESS)
               {
                  true;
                  true;
                  _loc4_ = 3;
               }
               else if(_loc3_.meatType == FoodData.MEAT_STRIPS)
               {
                  _loc4_ = 4;
                  true;
                  true;
               }
            }
         }
         _loc3_.clip.handle1.gotoAndStop(_loc4_);
         _loc3_.clip.handle2.gotoAndStop(_loc4_);
         _loc3_.clip.handle_3.gotoAndStop(_loc4_);
         _loc3_.clip.handle_4.gotoAndStop(_loc4_);
         _loc3_.clip.handle_5.gotoAndStop(_loc4_);
         _loc3_.clip.handle_6.gotoAndStop(_loc4_);
         false;
         false;
         _loc3_.clip.handle_7.gotoAndStop(_loc4_);
         _loc3_.clip.counter.num_txt.text = String(_loc3_.meatAmount);
         true;
         true;
         _loc3_.clip.frymeter.whitebar.visible = true;
         false;
         false;
         _loc3_.clip.frymeter.greenbar.gotoAndStop(1);
         _loc3_.clip.frymeter.whitebar.y = _loc3_.timerBounds - FoodData.getTargetCookTime(_loc3_.meatType) / _loc3_.maxMeterTime * _loc3_.timerBounds;
         false;
         false;
         _loc3_.isCooking = true;
         false;
         false;
         _loc3_.clip.oil.gotoAndPlay("rise");
         false;
         false;
         if(_loc3_.gameObj.var_16.isActive)
         {
            false;
            false;
            _loc3_.gameObj.soundManager.playSound("fryer_dropoil.wav");
         }
         else
         {
            _loc3_.gameObj.soundManager.playSound("fryer_dropoil.wav",false,0.4);
         }
      }
      
      public function createMeatGraphic() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:Matrix = null;
         var _loc1_:FryerBasket = this;
         if(_loc1_.spriteSheet)
         {
            false;
            false;
            _loc1_.spriteSheet.fillRect(_loc1_.spriteSheet.rect,0);
         }
         else
         {
            _loc1_.spriteSheet = new BitmapData(_loc1_.meatSpriteWidth * _loc1_.meatCookLevels,_loc1_.meatSpriteHeight,true,0);
         }
         if(_loc1_.meatSprite)
         {
            _loc1_.meatSprite.fillRect(_loc1_.meatSprite.rect,0);
            true;
            true;
         }
         else
         {
            _loc1_.meatSprite = new BitmapData(_loc1_.meatSpriteWidth,_loc1_.meatSpriteHeight,true,0);
            _loc1_.meatBitmap = new Bitmap(_loc1_.meatSprite);
            _loc1_.clip.meatholder.addChild(_loc1_.meatBitmap);
         }
         var _loc3_:MovieClip = new MovieClip();
         var _loc4_:Number = Math.floor(Math.random() * 360);
         _loc2_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc2_ >= _loc1_.meatAmount)
            {
               break;
            }
            (_loc5_ = class_9.method_26("meat_" + _loc1_.meatType)).sauce.stop();
            true;
            true;
            _loc5_.sauce.visible = false;
            _loc5_.scaleX = _loc1_.meatScale;
            true;
            true;
            _loc5_.scaleY = _loc1_.meatScale;
            false;
            false;
            _loc4_ += 20 + Math.random() * 20;
            _loc5_.rotation = _loc4_;
            _loc6_ = _loc1_.meatSpritePadX + _loc5_.width / 2;
            true;
            true;
            true;
            true;
            if((_loc8_ = (_loc7_ = _loc1_.meatSpriteWidth - _loc1_.meatSpritePadX - _loc5_.width / 2) - _loc6_) < 0)
            {
               true;
               true;
               _loc8_ = 0;
            }
            false;
            false;
            true;
            true;
            if(_loc2_ % 2 == 0)
            {
               _loc5_.x = _loc6_ + Math.random() * (_loc8_ / 2);
            }
            else
            {
               _loc5_.x = _loc6_ + _loc8_ / 2 + Math.random() * (_loc8_ / 2);
            }
            _loc9_ = _loc5_.height / 2;
            true;
            true;
            false;
            false;
            false;
            false;
            if((_loc11_ = (_loc10_ = _loc1_.meatSpriteHeight - _loc5_.height / 2) - _loc9_) < 0)
            {
               _loc11_ = 0;
            }
            if(_loc2_ % 4 == 0)
            {
               _loc5_.y = _loc9_ + Math.random() * (_loc11_ / 2);
            }
            else
            {
               _loc5_.y = _loc9_ + _loc11_ / 2 + Math.random() * (_loc11_ / 2);
            }
            _loc3_.addChild(_loc5_);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc1_.meatCookLevels)
         {
            _loc12_ = 0;
            while(_loc12_ < _loc3_.numChildren)
            {
               MovieClip(_loc3_.getChildAt(_loc12_)).meat.gotoAndStop(_loc2_ + 1);
               _loc12_++;
            }
            true;
            true;
            (_loc13_ = new Matrix()).translate(_loc2_ * _loc1_.meatSpriteWidth,0);
            _loc1_.spriteSheet.draw(_loc3_,_loc13_);
            false;
            false;
            _loc2_++;
         }
         _loc1_.meatSprite.copyPixels(_loc1_.spriteSheet,new Rectangle(0,0,_loc1_.meatSpriteWidth,_loc1_.meatSpriteHeight),new Point(0,0));
         _loc1_.currentMeatFrame = 1;
         _loc3_ = null;
      }
      
      public function updateMeatGraphic() : void
      {
         false;
         true;
         var _loc1_:FryerBasket = this;
         var _loc2_:Number = _loc1_.cookTime / FoodData.getMaxCookTime(_loc1_.meatType);
         var _loc3_:Number = Math.min(_loc1_.meatCookLevels,Math.floor(_loc2_ * (_loc1_.meatCookLevels - 1)) + 1);
         false;
         false;
         if(_loc1_.currentMeatFrame != _loc3_)
         {
            _loc1_.meatSprite.copyPixels(_loc1_.spriteSheet,new Rectangle((_loc3_ - 1) * _loc1_.meatSpriteWidth,0,_loc1_.meatSpriteWidth,_loc1_.meatSpriteHeight),new Point(0,0));
            _loc1_.currentMeatFrame = _loc3_;
         }
         false;
         false;
         true;
         true;
         true;
         true;
         if(_loc3_ == Math.ceil(_loc1_.meatCookLevels / 2) && _loc1_.hasAlarm && !_loc1_.alarmIsSounding)
         {
            false;
            false;
            false;
            false;
            _loc1_.gameObj.var_16.soundAlarm(_loc1_.grillX,_loc1_.grillY);
            _loc1_.startAlarmBells();
            _loc1_.alarmIsSounding = true;
         }
         else
         {
            true;
            true;
            false;
            false;
            if(_loc3_ == Math.ceil(_loc1_.meatCookLevels / 2) && _loc1_.gameObj.var_14 && _loc1_.gameObj.var_12 == 13)
            {
               true;
               true;
               _loc1_.gameObj.method_29();
            }
         }
      }
      
      public function updateMeter() : void
      {
         false;
         true;
         var _loc1_:FryerBasket = this;
         var _loc2_:Number = _loc1_.cookTime / _loc1_.maxMeterTime;
         true;
         true;
         if(_loc2_ > 1)
         {
            false;
            false;
            _loc2_ = 1;
            true;
            true;
         }
         _loc1_.clip.frymeter.greenbar.y = _loc1_.timerBounds - _loc2_ * _loc1_.timerBounds;
         if(_loc1_.clip.frymeter.greenbar.currentFrame != 1)
         {
            true;
            true;
            _loc1_.clip.frymeter.greenbar.gotoAndStop(1);
         }
      }
      
      public function startCooking() : void
      {
         var _loc1_:FryerBasket = this;
         false;
         false;
         _loc1_.isCooking = true;
      }
      
      public function isFree() : Boolean
      {
         false;
         true;
         var _loc1_:FryerBasket = this;
         var _loc2_:Boolean = true;
         false;
         false;
         true;
         true;
         true;
         true;
         true;
         true;
         if(_loc1_.meatType == FoodData.MEAT_STRIPS || _loc1_.meatType == FoodData.MEAT_BONELESS || _loc1_.meatType == FoodData.MEAT_SHRIMP || _loc1_.meatType == FoodData.MEAT_WING)
         {
            _loc2_ = false;
         }
         else
         {
            §§push(_loc1_.isDragging);
            if(!_loc1_.isDragging)
            {
               true;
               true;
               §§pop();
               §§push(_loc1_.isReturning);
            }
            if(§§pop())
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public function getMeatType() : String
      {
         var _loc1_:FryerBasket = this;
         return _loc1_.meatType;
      }
      
      public function getMeatAmount() : Number
      {
         var _loc1_:FryerBasket = this;
         return _loc1_.meatAmount;
      }
      
      public function destroy() : void
      {
         var _loc1_:FryerBasket = this;
         true;
         true;
         if(_loc1_.meatBitmap)
         {
            _loc1_.clip.meatholder.removeChild(_loc1_.meatBitmap);
            _loc1_.meatBitmap = null;
         }
         if(_loc1_.meatSprite)
         {
            _loc1_.meatSprite.dispose();
            _loc1_.meatSprite = null;
         }
         if(_loc1_.spriteSheet)
         {
            _loc1_.spriteSheet.dispose();
            _loc1_.spriteSheet = null;
         }
         _loc1_.clip.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBasket);
         _loc1_.clip.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBasket);
         _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBasket);
         true;
         true;
         _loc1_.clip = null;
      }
      
      public function clickBasket(param1:MouseEvent) : void
      {
         var _loc2_:FryerBasket = this;
         if(!_loc2_.gameObj.var_14 || _loc2_.gameObj.var_12 == 14)
         {
            true;
            true;
            true;
            true;
            true;
            true;
            if(!_loc2_.isDumping && !_loc2_.isDragging && !_loc2_.isReturning && !_loc2_.isFree())
            {
               false;
               false;
               _loc2_.gameObj.var_16.clip.topholder.addChild(_loc2_.clip);
               _loc2_.gameObj.var_16.isDraggingBasket = true;
               _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBasket);
               _loc2_.isDragging = true;
               _loc2_.clip.startDrag();
               _loc2_.isCooking = false;
               _loc2_.isRollingOver = false;
               _loc2_.isReturning = false;
               _loc2_.clip.oil.gotoAndStop("static");
               _loc2_.clip.oil.boostboil.stop();
               _loc2_.clip.oil.boostboil.visible = false;
               true;
               true;
               if(_loc2_.alarmIsSounding)
               {
                  _loc2_.alarmIsSounding = false;
                  _loc2_.gameObj.var_16.stopAlarm(_loc2_.grillX,_loc2_.grillY);
                  _loc2_.stopAlarmBells();
               }
               _loc2_.gameObj.soundManager.playSound("fryer_pickup.wav");
            }
         }
         else if(_loc2_.gameObj.var_14 && _loc2_.gameObj.var_12 == 13)
         {
            _loc2_.gameObj.hud.showTrainingWarning("waitmove");
         }
      }
      
      public function releaseBasket(param1:MouseEvent) : void
      {
         var _loc2_:FryerBasket = this;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBasket);
         false;
         false;
         _loc2_.gameObj.var_16.isDraggingBasket = false;
         _loc2_.clip.stopDrag();
         true;
         true;
         _loc2_.isDragging = false;
         true;
         true;
         if(_loc2_.clip.x < 124 && _loc2_.clip.y > 236 && _loc2_.meatAmount > 0 && !_loc2_.gameObj.var_14)
         {
            false;
            false;
            _loc2_.isThrowingAway = true;
            true;
            true;
            _loc2_.gameObj.var_16.isThrowingAway = true;
            _loc2_.clip.gotoAndPlay(_loc2_.pourFrame);
            _loc2_.gameObj.soundManager.playSound("dump_wings_into_bowl.wav");
         }
         else if((_loc2_.clip.x > 455 || _loc2_.clip.x > 390 && _loc2_.clip.y > 236) && _loc2_.meatAmount > 0)
         {
            _loc2_.isDumping = true;
            _loc2_.gameObj.var_16.isPouringMeat = true;
            _loc2_.clip.gotoAndPlay(_loc2_.pourFrame);
            false;
            false;
            _loc2_.gameObj.soundManager.playSound("dump_wings_into_bowl.wav");
            _loc2_.createWingOrder();
         }
         else
         {
            _loc2_.isReturning = true;
         }
      }
      
      public function createWingOrder() : void
      {
         false;
         true;
         var _loc1_:FryerBasket = this;
         var _loc2_:WingOrder = new WingOrder(_loc1_.gameObj,_loc1_.meatType,_loc1_.meatAmount,_loc1_.cookTime);
         false;
         false;
         _loc1_.gameObj.var_30.addToWingQueue(_loc2_);
         false;
         false;
         false;
         false;
         §§push(_loc1_.gameObj.var_14);
         if(_loc1_.gameObj.var_14)
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(_loc1_.gameObj.var_12 == 14);
         }
         if(§§pop())
         {
            true;
            true;
            _loc1_.gameObj.method_29();
         }
      }
      
      public function rolloverBasket(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:FryerBasket = this;
         false;
         false;
         true;
         true;
         false;
         false;
         if(_loc2_.isCooking && !_loc2_.gameObj.var_16.isDraggingLidDial() && _loc2_.cookTime > _loc2_.timeAllowRollover)
         {
            _loc2_.clip.oil.gotoAndPlay("fall");
            _loc2_.isRollingOver = true;
            true;
            true;
            if(_loc2_.gameObj.var_14 && _loc2_.gameObj.var_12 == 13)
            {
               _loc2_.gameObj.hud.showTrainingWarning("rolloverbasket");
            }
         }
      }
      
      public function rolloutBasket(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:FryerBasket = this;
         false;
         false;
         if(_loc2_.isRollingOver)
         {
            true;
            true;
            _loc2_.clip.oil.gotoAndPlay("rise");
            _loc2_.gameObj.soundManager.playSound("fryer_dropoil.wav",false,0.8);
            _loc2_.isRollingOver = false;
         }
      }
      
      public function resetBasket() : void
      {
         var _loc1_:FryerBasket = this;
         _loc1_.meatType = null;
         _loc1_.meatAmount = 0;
         false;
         false;
         _loc1_.clip.counter.num_txt.text = "";
         _loc1_.clip.frymeter.greenbar.y = _loc1_.timerBounds;
         _loc1_.clip.frymeter.greenbar.gotoAndStop(2);
         if(_loc1_.meatSprite != null)
         {
            false;
            false;
            _loc1_.meatSprite.fillRect(_loc1_.meatSprite.rect,0);
         }
         2;
         _loc1_.clip.handle1.gotoAndStop(2);
         _loc1_.clip.handle2.gotoAndStop(2);
         true;
         true;
         _loc1_.clip.handle_3.gotoAndStop(2);
         false;
         false;
         _loc1_.clip.handle_4.gotoAndStop(2);
         _loc1_.clip.handle_5.gotoAndStop(2);
         false;
         false;
         _loc1_.clip.handle_6.gotoAndStop(2);
         _loc1_.clip.handle_7.gotoAndStop(2);
         _loc1_.clip.frymeter.whitebar.visible = false;
         _loc1_.isCooking = false;
         _loc1_.isDumping = false;
         _loc1_.isDragging = false;
         _loc1_.isThrowingAway = false;
         false;
         false;
         _loc1_.isRollingOver = false;
         _loc1_.isReturning = true;
      }
      
      public function updateBasket() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:FryerBasket = this;
         false;
         false;
         if(_loc1_.isRollingOver && _loc1_.isCooking && _loc1_.clip.currentFrame < _loc1_.rolloverFrame)
         {
            _loc1_.clip.nextFrame();
         }
         else if(_loc1_.isRollingOver && _loc1_.isCooking && _loc1_.clip.currentFrame > _loc1_.rolloverFrame)
         {
            _loc1_.clip.prevFrame();
            false;
            false;
         }
         else
         {
            false;
            false;
            §§push(!_loc1_.isCooking && _loc1_.isFree() && !_loc1_.isReturning);
            if(!_loc1_.isCooking && _loc1_.isFree() && !_loc1_.isReturning)
            {
               false;
               false;
               §§pop();
               §§push(_loc1_.clip.currentFrame > _loc1_.rolloverFrame);
            }
            if(§§pop())
            {
               _loc1_.clip.prevFrame();
            }
            else
            {
               §§push(!_loc1_.isRollingOver);
               if(!_loc1_.isRollingOver)
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  §§push(_loc1_.isCooking);
               }
               false;
               false;
               false;
               false;
               if(§§pop() && !_loc1_.isDragging && !_loc1_.isReturning && !_loc1_.isDumping && !_loc1_.isThrowingAway && _loc1_.clip.currentFrame > _loc1_.downFrame)
               {
                  if(_loc1_.clip.currentFrame > _loc1_.dragFrame)
                  {
                     _loc1_.clip.gotoAndStop(_loc1_.dragFrame);
                  }
                  else
                  {
                     _loc1_.clip.prevFrame();
                  }
               }
               else if(_loc1_.isDragging)
               {
                  if(_loc1_.clip.currentFrame < _loc1_.rolloverFrame)
                  {
                     _loc1_.clip.gotoAndStop(_loc1_.rolloverFrame);
                  }
                  else if(_loc1_.clip.currentFrame < _loc1_.sidewaysFrame)
                  {
                     _loc1_.clip.nextFrame();
                  }
                  true;
                  true;
                  if(_loc1_.gameObj.mouseX < 0 || _loc1_.gameObj.mouseX > 640 || _loc1_.gameObj.mouseY < 0 || _loc1_.gameObj.mouseY > 480)
                  {
                     _loc1_.releaseBasket(null);
                  }
               }
               else
               {
                  true;
                  true;
                  if(_loc1_.isReturning)
                  {
                     false;
                     false;
                     false;
                     false;
                     true;
                     true;
                     _loc2_ = _loc1_.basketBoundsStartX + _loc1_.grillX * _loc1_.basketBoundsSpacingX;
                     true;
                     true;
                     true;
                     true;
                     _loc3_ = _loc1_.basketBoundsStartY + _loc1_.grillY * _loc1_.basketBoundsSpacingY;
                     true;
                     true;
                     _loc4_ = _loc2_ - _loc1_.clip.x;
                     _loc5_ = _loc3_ - _loc1_.clip.y;
                     _loc1_.clip.x += _loc4_ / _loc1_.tweenSpeed;
                     _loc1_.clip.y += _loc5_ / _loc1_.tweenSpeed;
                     if(_loc1_.clip.currentFrame > _loc1_.dragFrame)
                     {
                        _loc1_.clip.prevFrame();
                     }
                     else if(_loc1_.clip.currentFrame < _loc1_.dragFrame)
                     {
                        _loc1_.clip.gotoAndStop(_loc1_.dragFrame);
                     }
                     true;
                     true;
                     §§push(Math.abs(_loc4_) <= 1 && Math.abs(_loc5_) <= 1);
                     if(Math.abs(_loc4_) <= 1 && Math.abs(_loc5_) <= 1)
                     {
                        false;
                        false;
                        §§pop();
                        §§push(_loc1_.clip.currentFrame == _loc1_.dragFrame);
                     }
                     if(§§pop())
                     {
                        true;
                        true;
                        _loc1_.clip.x = _loc2_;
                        _loc1_.clip.y = _loc3_;
                        _loc1_.gameObj.var_16.clip.basketholder.addChild(_loc1_.clip);
                        _loc1_.isReturning = false;
                        false;
                        false;
                        _loc1_.gameObj.soundManager.playSound("fryer_return.wav");
                        if(!_loc1_.isFree())
                        {
                           _loc1_.isCooking = true;
                           _loc1_.clip.oil.gotoAndPlay("rise");
                           false;
                           false;
                           _loc1_.gameObj.soundManager.playSound("fryer_dropoil.wav");
                           true;
                           true;
                        }
                     }
                  }
                  else if(_loc1_.isDumping)
                  {
                     false;
                     false;
                     false;
                     false;
                     _loc6_ = _loc1_.pourTargetX - _loc1_.clip.x;
                     true;
                     true;
                     _loc7_ = _loc1_.pourTargetY - _loc1_.clip.y;
                     _loc1_.clip.x += _loc6_ / _loc1_.tweenSpeed;
                     _loc1_.clip.y += _loc7_ / _loc1_.tweenSpeed;
                     §§push(Math.abs(_loc6_) <= 1);
                     if(Math.abs(_loc6_) <= 1)
                     {
                        false;
                        false;
                        §§pop();
                        §§push(Math.abs(_loc7_) <= 1);
                     }
                     if(§§pop())
                     {
                        _loc1_.clip.x = _loc1_.pourTargetX;
                        _loc1_.clip.y = _loc1_.pourTargetY;
                        true;
                        true;
                     }
                     if(_loc1_.clip.currentFrame == _loc1_.clip.totalFrames)
                     {
                        _loc1_.resetBasket();
                        false;
                        false;
                        _loc1_.gameObj.var_16.isSwitchingBowls = true;
                        true;
                        true;
                        _loc1_.gameObj.var_16.isPouringMeat = false;
                     }
                  }
                  else if(_loc1_.isThrowingAway)
                  {
                     false;
                     false;
                     _loc8_ = _loc1_.throwawayTargetX - _loc1_.clip.x;
                     true;
                     true;
                     _loc9_ = _loc1_.throwawayTargetY - _loc1_.clip.y;
                     _loc1_.clip.x += _loc8_ / _loc1_.tweenSpeed;
                     _loc1_.clip.y += _loc9_ / _loc1_.tweenSpeed;
                     §§push(Math.abs(_loc8_) <= 1);
                     if(Math.abs(_loc8_) <= 1)
                     {
                        true;
                        true;
                        §§pop();
                        false;
                        false;
                        §§push(Math.abs(_loc9_) <= 1);
                     }
                     if(§§pop())
                     {
                        _loc1_.clip.x = _loc1_.throwawayTargetX;
                        _loc1_.clip.y = _loc1_.throwawayTargetY;
                     }
                     if(_loc1_.clip.currentFrame == _loc1_.clip.totalFrames)
                     {
                        _loc1_.resetBasket();
                        _loc1_.gameObj.var_16.isPouringMeat = false;
                     }
                     if(_loc1_.clip.currentFrame == _loc1_.clip.totalFrames)
                     {
                        _loc1_.resetBasket();
                        _loc1_.gameObj.var_16.isThrowingAway = false;
                     }
                  }
               }
            }
         }
         false;
         false;
         if(_loc1_.isCooking && !_loc1_.isRollingOver)
         {
            true;
            true;
            var _loc10_:*;
            var _loc11_:* = (_loc10_ = _loc1_).cookTime + 1;
            true;
            true;
            _loc10_.cookTime = _loc11_;
            if(_loc1_.gameObj.userData.currentDay == 1)
            {
               _loc1_.cookTime += 2;
               true;
               true;
            }
            true;
            true;
            true;
            true;
            if(_loc1_.gameObj.var_16.isBoosting && _loc1_.gameObj.var_16.boostingWhich == _loc1_.grillX + 1)
            {
               _loc11_ = (_loc10_ = _loc1_).cookTime + 1;
               false;
               false;
               _loc10_.cookTime = _loc11_;
               _loc1_.clip.frymeter.bg.gotoAndStop(2);
               _loc1_.clip.oil.boostboil.play();
               _loc1_.clip.oil.boostboil.visible = true;
            }
            else if(_loc1_.clip.frymeter.bg.currentFrame != 1)
            {
               _loc1_.clip.frymeter.bg.gotoAndStop(1);
               _loc1_.clip.oil.boostboil.stop();
               _loc1_.clip.oil.boostboil.visible = false;
            }
            _loc1_.updateMeatGraphic();
            _loc1_.updateMeter();
         }
         else if(_loc1_.clip.frymeter.greenbar.currentFrame != 2)
         {
            _loc1_.clip.frymeter.greenbar.gotoAndStop(2);
            true;
            true;
            _loc1_.clip.frymeter.bg.gotoAndStop(1);
         }
      }
   }
}
