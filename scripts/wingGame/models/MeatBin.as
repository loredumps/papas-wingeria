package wingGame.models
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import package_2.*;
   import package_4.class_4;
   import wingGame.data.*;
   import wingGame.screens.*;
   
   public class MeatBin
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var shelfSpots:Array;
      
      public var shelfX:Number = 0;
      
      public var shelfY:Number = 324;
      
      public var binCenterX:Number = 65;
      
      public var binCenterY:Number = 90;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isTweeningToLid:Boolean = false;
      
      public var isTweeningToPour:Boolean = false;
      
      public var isShowingLid:Boolean = false;
      
      public var isWaitingToDump:Boolean = false;
      
      public var isPouring:Boolean = false;
      
      public var pouringWhichFryerX:Number = -1;
      
      public var pouringWhichFryerY:Number = -1;
      
      public var fryerBoundsStartX:Number = 12;
      
      public var fryerBoundsSpacingX:Number = 120;
      
      public var fryerBoundsStartY:Number = 86;
      
      public var fryerBoundsSpacingY:Number = 142;
      
      public var isClickingDial:Boolean = false;
      
      public var pourHowMany:Number = 0;
      
      public var pourMax:Number = 12;
      
      public var lastPourHowMany:Number = 0;
      
      public var tweenSpeed:Number = 2;
      
      public var finishedPouringFrame:Number = 48;
      
      public function MeatBin(param1:class_4, param2:MovieClip, param3:String)
      {
         true;
         true;
         this.shelfSpots = [3,103,203,303];
         true;
         true;
         super();
         var _loc4_:MeatBin;
         (_loc4_ = this).gameObj = param1;
         _loc4_.clip = param2;
         true;
         true;
         _loc4_.type = param3;
         _loc4_.setupBin();
      }
      
      public function setupBin() : void
      {
         var _loc1_:MeatBin = this;
         true;
         true;
         if(_loc1_.type == FoodData.MEAT_SHRIMP)
         {
            false;
            false;
            _loc1_.shelfX = _loc1_.shelfSpots[0];
            false;
            false;
         }
         else
         {
            false;
            false;
            false;
            false;
            if(_loc1_.type == FoodData.MEAT_WING)
            {
               _loc1_.shelfX = _loc1_.shelfSpots[1];
               true;
               true;
            }
            else
            {
               false;
               false;
               true;
               true;
               if(_loc1_.type == FoodData.MEAT_BONELESS)
               {
                  _loc1_.shelfX = _loc1_.shelfSpots[2];
               }
               else if(_loc1_.type == FoodData.MEAT_STRIPS)
               {
                  _loc1_.shelfX = _loc1_.shelfSpots[3];
               }
            }
         }
         _loc1_.clip.x = _loc1_.shelfX;
         _loc1_.clip.y = _loc1_.shelfY;
         true;
         true;
         _loc1_.clip.buttonMode = true;
         _loc1_.clip.useHandCursor = true;
         _loc1_.clip.dial.visible = false;
         false;
         false;
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBin);
         _loc1_.clip.dial.dial_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDial);
         _loc1_.clip.dial.color.mask = _loc1_.clip.dial.masker;
      }
      
      public function clickBin(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MeatBin = this;
         true;
         true;
         if(!_loc2_.gameObj.var_14 || _loc2_.gameObj.var_12 == 11)
         {
            false;
            false;
            false;
            false;
            true;
            true;
            if(!_loc2_.isTweeningToLid && !_loc2_.isTweeningToPour && !_loc2_.isPouring && !_loc2_.isDragging && !_loc2_.isShowingLid && !_loc2_.isWaitingToDump)
            {
               _loc2_.isDragging = true;
               _loc2_.isReturning = false;
               _loc2_.resetDial();
               false;
               false;
               _loc2_.clip.startDrag();
               false;
               false;
               _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBin);
               true;
               true;
               _loc2_.gameObj.soundManager.playSound("grabtopping.wav");
            }
         }
      }
      
      public function releaseBin(param1:MouseEvent) : void
      {
         var _loc2_:MeatBin = this;
         false;
         false;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBin);
         _loc2_.clip.stopDrag();
         _loc2_.isDragging = false;
         var _loc3_:Number = Math.floor((_loc2_.clip.x + _loc2_.binCenterX - _loc2_.fryerBoundsStartX) / _loc2_.fryerBoundsSpacingX);
         var _loc4_:Number = Math.floor((_loc2_.clip.y + _loc2_.binCenterY - _loc2_.fryerBoundsStartY) / _loc2_.fryerBoundsSpacingY);
         var _loc5_:Boolean;
         if(_loc5_ = _loc2_.gameObj.var_16.isFryerFree(_loc3_,_loc4_))
         {
            false;
            false;
            _loc2_.pouringWhichFryerX = _loc3_;
            _loc2_.pouringWhichFryerY = _loc4_;
            _loc2_.isTweeningToLid = true;
            _loc2_.clip.gotoAndPlay("showlid");
            false;
            false;
            if(_loc2_.gameObj.var_14 && _loc2_.gameObj.var_12 == 11)
            {
               _loc2_.gameObj.method_29();
            }
         }
         else
         {
            _loc2_.isReturning = true;
         }
      }
      
      public function resetDial() : void
      {
         false;
         true;
         var _loc1_:MeatBin = this;
         true;
         true;
         _loc1_.clip.dial.visible = false;
         true;
         true;
         _loc1_.clip.dial.dial_btn.rotation = 0;
         _loc1_.pourHowMany = 0;
         _loc1_.lastPourHowMany = 0;
         false;
         false;
         _loc1_.clip.dial.color.graphics.clear();
      }
      
      public function showDial() : void
      {
         var _loc1_:MeatBin = this;
         _loc1_.clip.x = _loc1_.getFryerTargetX();
         _loc1_.clip.y = _loc1_.getFryerTargetY();
         _loc1_.isTweeningToLid = false;
         false;
         false;
         _loc1_.isShowingLid = true;
         true;
         true;
         _loc1_.clip.dial.visible = true;
         _loc1_.clip.dial.num_txt.text = "0";
      }
      
      public function startPouring() : void
      {
         false;
         true;
         var _loc1_:MeatBin = this;
         _loc1_.clip.dial.visible = false;
         _loc1_.clip.gotoAndPlay("pour");
         _loc1_.isShowingLid = false;
         _loc1_.isWaitingToDump = false;
         false;
         false;
         _loc1_.isPouring = true;
      }
      
      public function clickDial(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MeatBin = this;
         true;
         true;
         if(!_loc2_.isWaitingToDump)
         {
            false;
            false;
            _loc2_.isClickingDial = true;
            true;
            true;
            _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseDial);
            true;
            true;
            true;
            true;
            _loc2_.gameObj.stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseDial);
            false;
            false;
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         }
      }
      
      public function releaseDial(param1:Event) : void
      {
         false;
         true;
         var _loc2_:MeatBin = this;
         false;
         false;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseDial);
         _loc2_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseDial);
         false;
         false;
         _loc2_.isClickingDial = false;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("release_button.wav");
         false;
         false;
         true;
         true;
         false;
         false;
         true;
         true;
         false;
         false;
         if(_loc2_.gameObj.var_14 && _loc2_.pourHowMany == 4 || _loc2_.gameObj.var_14 == false && _loc2_.pourHowMany > 0)
         {
            _loc2_.isShowingLid = false;
            _loc2_.isWaitingToDump = true;
            if(_loc2_.gameObj.var_14 && _loc2_.gameObj.var_12 == 12)
            {
               _loc2_.gameObj.method_29();
            }
         }
         else if(!_loc2_.gameObj.var_14)
         {
            _loc2_.isShowingLid = false;
            _loc2_.pouringWhichFryerX = -1;
            true;
            true;
            _loc2_.pouringWhichFryerY = -1;
            _loc2_.clip.gotoAndStop("static");
            _loc2_.clip.dial.visible = false;
            _loc2_.isReturning = true;
         }
      }
      
      public function updateBin() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:MeatBin = this;
         false;
         false;
         if(_loc1_.isClickingDial || _loc1_.isWaitingToDump)
         {
            _loc1_.updateDial();
         }
         if(_loc1_.isDragging)
         {
            true;
            true;
            true;
            true;
            if(_loc1_.gameObj.mouseX < 0 || _loc1_.gameObj.mouseX > 640 || _loc1_.gameObj.mouseY < 0 || _loc1_.gameObj.mouseY > 480)
            {
               _loc1_.releaseBin(null);
            }
         }
         else if(_loc1_.isReturning)
         {
            _loc2_ = _loc1_.shelfX - _loc1_.clip.x;
            _loc3_ = _loc1_.shelfY - _loc1_.clip.y;
            _loc1_.clip.x += _loc2_ / _loc1_.tweenSpeed;
            false;
            false;
            §§push(!_loc1_.gameObj.var_16.isDraggingBasket);
            if(!_loc1_.gameObj.var_16.isDraggingBasket)
            {
               true;
               true;
               §§pop();
               false;
               false;
               §§push(!_loc1_.gameObj.var_16.isThrowingAway);
            }
            if(§§pop())
            {
               _loc1_.clip.y += _loc3_ / _loc1_.tweenSpeed;
            }
            false;
            false;
            true;
            true;
            if(Math.abs(_loc2_) <= 1 && Math.abs(_loc3_) <= 1)
            {
               _loc1_.clip.x = _loc1_.shelfX;
               false;
               false;
               false;
               false;
               if(!_loc1_.gameObj.var_16.isDraggingBasket && !_loc1_.gameObj.var_16.isThrowingAway)
               {
                  _loc1_.clip.y = _loc1_.shelfY;
               }
               _loc1_.isReturning = false;
            }
         }
         else
         {
            true;
            true;
            if(_loc1_.isPouring)
            {
               false;
               false;
               if(_loc1_.clip.currentFrame == _loc1_.clip.totalFrames)
               {
                  false;
                  false;
                  _loc1_.clip.gotoAndStop("static");
                  false;
                  false;
                  _loc1_.clip.x = -100;
                  _loc1_.clip.y = _loc1_.shelfY;
                  true;
                  true;
                  if(_loc1_.gameObj.var_16.isDraggingBasket || _loc1_.gameObj.var_16.isThrowingAway)
                  {
                     _loc1_.clip.y = 460;
                  }
                  _loc1_.isPouring = false;
                  _loc1_.pouringWhichFryerX = -1;
                  _loc1_.pouringWhichFryerY = -1;
                  _loc1_.isReturning = true;
               }
               else if(_loc1_.clip.currentFrame == _loc1_.finishedPouringFrame - 20)
               {
                  _loc1_.gameObj.soundManager.playSound("dump_wings_into_fryer.wav");
                  false;
                  false;
               }
               else if(_loc1_.clip.currentFrame == _loc1_.finishedPouringFrame)
               {
                  false;
                  false;
                  false;
                  false;
                  _loc1_.gameObj.var_16.addMeatToFryer(_loc1_.pouringWhichFryerX,_loc1_.pouringWhichFryerY,_loc1_.type,_loc1_.pourHowMany);
                  true;
                  true;
               }
            }
            else if(_loc1_.isTweeningToLid)
            {
               false;
               false;
               true;
               true;
               _loc4_ = _loc1_.getFryerTargetX() - _loc1_.clip.x;
               _loc5_ = _loc1_.getFryerTargetY() - _loc1_.clip.y;
               false;
               false;
               _loc1_.clip.x += _loc4_ / _loc1_.tweenSpeed;
               _loc1_.clip.y += _loc5_ / _loc1_.tweenSpeed;
               if(Math.abs(_loc4_) <= 1 && Math.abs(_loc5_) <= 1)
               {
                  true;
                  true;
                  _loc1_.clip.x = _loc1_.getFryerTargetX();
                  true;
                  true;
                  _loc1_.clip.y = _loc1_.getFryerTargetY();
               }
               if(_loc1_.clip.currentFrameLabel == "dialframe")
               {
                  _loc1_.showDial();
               }
            }
            else if(_loc1_.isShowingLid || _loc1_.isWaitingToDump)
            {
               true;
               true;
            }
            else if(_loc1_.gameObj.var_16.isDraggingBasket || _loc1_.gameObj.var_16.isThrowingAway)
            {
               false;
               false;
               if(_loc1_.clip.y < 450)
               {
                  true;
                  true;
                  _loc1_.clip.y += 50;
                  false;
                  false;
               }
               else
               {
                  _loc1_.clip.y = 450;
               }
            }
            else if(_loc1_.clip.y != _loc1_.shelfY)
            {
               _loc1_.clip.y += (_loc1_.shelfY - _loc1_.clip.y) / 1.3;
               true;
               true;
               if(Math.abs(_loc1_.shelfY - _loc1_.clip.y) <= 1)
               {
                  _loc1_.clip.y = _loc1_.shelfY;
               }
            }
         }
      }
      
      private function getFryerTargetX() : Number
      {
         var _loc1_:MeatBin = this;
         true;
         true;
         false;
         false;
         return _loc1_.fryerBoundsStartX + _loc1_.pouringWhichFryerX * _loc1_.fryerBoundsSpacingX - 10;
      }
      
      private function getFryerTargetY() : Number
      {
         var _loc1_:MeatBin = this;
         false;
         false;
         true;
         true;
         false;
         false;
         return _loc1_.fryerBoundsStartY + _loc1_.pouringWhichFryerY * _loc1_.fryerBoundsSpacingY - 5;
      }
      
      public function updateDial() : void
      {
         false;
         true;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc1_:MeatBin = this;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         true;
         true;
         if(_loc1_.isClickingDial)
         {
            _loc17_ = Number(_loc1_.clip.dial.mouseX);
            _loc18_ = Number(_loc1_.clip.dial.mouseY);
            _loc19_ = _loc17_ - _loc1_.clip.dial.dial_btn.x;
            false;
            false;
            _loc20_ = _loc18_ - _loc1_.clip.dial.dial_btn.y;
            false;
            false;
            _loc2_ = Math.atan2(_loc20_,_loc19_);
            _loc2_ += Math.PI / 2;
            false;
            false;
            _loc3_ = class_10.radsToDegrees(_loc2_);
         }
         else
         {
            true;
            true;
            if(_loc1_.isWaitingToDump)
            {
               _loc3_ = _loc1_.clip.dial.dial_btn.rotation - 1;
            }
         }
         _loc3_ %= 360;
         true;
         true;
         if(_loc3_ < 0)
         {
            _loc3_ += 360;
         }
         true;
         true;
         if(_loc1_.isWaitingToDump)
         {
            _loc3_ = Math.max(0,_loc3_ - 50);
         }
         var _loc4_:Boolean = false;
         if(!_loc1_.isWaitingToDump)
         {
            false;
            false;
            true;
            true;
            if(_loc3_ >= 180 && _loc1_.pourHowMany < 3)
            {
               _loc3_ = 0;
               false;
               false;
            }
            else
            {
               true;
               true;
               if(_loc3_ <= 180 && _loc1_.pourHowMany > 9)
               {
                  _loc3_ = 0;
                  _loc4_ = true;
               }
            }
         }
         var _loc5_:Number = Math.floor(_loc3_ / 360 * _loc1_.pourMax);
         false;
         false;
         if(_loc4_)
         {
            false;
            false;
            _loc5_ = _loc1_.pourMax;
         }
         if(_loc1_.isClickingDial)
         {
            _loc1_.pourHowMany = _loc5_;
         }
         _loc1_.clip.dial.num_txt.text = String(_loc1_.pourHowMany);
         true;
         true;
         _loc1_.clip.dial.dial_btn.rotation = _loc3_;
         false;
         false;
         if(_loc1_.pourHowMany != _loc1_.lastPourHowMany)
         {
            false;
            false;
            _loc21_ = Math.max(1,Math.min(_loc1_.pourHowMany,8));
            true;
            true;
            true;
            true;
            _loc1_.gameObj.soundManager.playSound("bindial_" + _loc21_ + ".wav");
         }
         _loc1_.lastPourHowMany = _loc1_.pourHowMany;
         false;
         false;
         var _loc6_:Number = _loc3_ / 360;
         if(_loc4_)
         {
            _loc6_ = 1;
         }
         true;
         true;
         false;
         false;
         var _loc7_:Number = _loc6_ * (2 * Math.PI);
         var _loc8_:MovieClip = _loc1_.clip.dial.color;
         127;
         true;
         true;
         false;
         false;
         0 + 127 / 2;
         false;
         false;
         false;
         false;
         0 + 127 / 2;
         true;
         true;
         false;
         false;
         127 / 2;
         var _loc13_:uint = 1883392;
         true;
         true;
         true;
         true;
         §§push(_loc1_.isWaitingToDump);
         if(_loc1_.isWaitingToDump)
         {
            true;
            true;
            §§pop();
            true;
            true;
            false;
            false;
            true;
            true;
            §§push(_loc1_.gameObj.var_28.gameplayTimer % 4 == 0);
            if(!(_loc1_.gameObj.var_28.gameplayTimer % 4 == 0))
            {
               false;
               false;
               §§pop();
               false;
               false;
               false;
               false;
               §§push(_loc1_.gameObj.var_28.gameplayTimer % 4 == 1);
            }
         }
         if(§§pop())
         {
            _loc13_ = 4063004;
         }
         _loc8_.graphics.clear();
         _loc8_.graphics.lineStyle(1,0,0);
         _loc8_.graphics.beginFill(1883392,1);
         _loc8_.graphics.beginFill(_loc13_,1);
         _loc8_.graphics.drawCircle(63.5,15,12);
         _loc8_.graphics.endFill();
         _loc8_.graphics.beginFill(_loc13_,1);
         _loc8_.graphics.moveTo(63.5,0);
         _loc8_.graphics.lineTo(63.5,63.5);
         false;
         false;
         var _loc14_:Number = _loc6_ * (2 * Math.PI) - Math.PI / 2;
         var _loc15_:Number = 63.5 * Math.cos(_loc14_) + 63.5;
         var _loc16_:Number = 63.5 * Math.sin(_loc14_) + 63.5;
         _loc1_.drawArc(63.5,63.5,63.5,0,_loc6_,20,_loc8_);
         _loc8_.graphics.lineTo(63.5,63.5);
         _loc8_.graphics.endFill();
         §§push(_loc3_ <= 0);
         if(_loc3_ <= 0)
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(_loc1_.isWaitingToDump);
         }
         if(§§pop())
         {
            false;
            false;
            _loc1_.startPouring();
         }
      }
      
      private function drawArc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:MovieClip) : void
      {
         false;
         true;
         var _loc13_:Number = NaN;
         false;
         false;
         param4 -= 0.25;
         false;
         false;
         var _loc8_:Number = 2 * Math.PI;
         true;
         true;
         false;
         false;
         var _loc9_:Number = param5 / param6;
         false;
         false;
         false;
         false;
         var _loc10_:Number = param1 + Math.cos(param4 * _loc8_) * param3;
         false;
         false;
         var _loc11_:Number = param2 + Math.sin(param4 * _loc8_) * param3;
         true;
         true;
         param7.graphics.moveTo(_loc10_,_loc11_);
         var _loc12_:int = 1;
         while(_loc12_ <= param6)
         {
            false;
            false;
            _loc13_ = param4 + _loc12_ * _loc9_;
            _loc10_ = param1 + Math.cos(_loc13_ * _loc8_) * param3;
            false;
            false;
            _loc11_ = param2 + Math.sin(_loc13_ * _loc8_) * param3;
            true;
            true;
            param7.graphics.lineTo(_loc10_,_loc11_);
            _loc12_++;
            true;
            true;
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:MeatBin = this;
         _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBin);
         true;
         true;
         _loc1_.clip.dial.dial_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDial);
         true;
         true;
         _loc1_.clip = null;
      }
   }
}
