package wingGame.models
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import package_2.*;
   import package_4.class_4;
   import wingGame.data.FoodData;
   import wingGame.screens.BuildScreen;
   
   public class FoodItem
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isOnPlate:Boolean = false;
      
      public var tweenSpeed:Number = 2;
      
      public var cookAmount:Number;
      
      public var sauceType:String;
      
      public var sauceAmountValue:Number;
      
      public var sauceSpinValue:Number;
      
      public var sauceTumbleValue:Number;
      
      public var orderMeatAmount:Number;
      
      public var wingOrderID:Number = 0;
      
      public var subMeatType:String = null;
      
      public var subSauceType:String = null;
      
      public var targetX:Number;
      
      public var targetY:Number;
      
      public var targetRotation:Number;
      
      public var binX:Number;
      
      public var binY:Number;
      
      public var binRotation:Number;
      
      public var plateCenterX:Number = 244;
      
      public var plateCenterY:Number = 220;
      
      public var plateRadius:Number = 133;
      
      public var lettuceRadius:Number = 55;
      
      public var didBumpLettuce:Boolean = false;
      
      public var itemRadius:Number = 0;
      
      public var extraDefaultRotation:Number = 0;
      
      public var defaultScale:Number = 1;
      
      public var grabScaleBoost:Number = 0.05;
      
      public function FoodItem(param1:class_4, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:String = null, param8:Number = 0, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0)
      {
         false;
         true;
         super();
         var _loc13_:FoodItem;
         (_loc13_ = this).gameObj = param1;
         _loc13_.type = param2;
         _loc13_.targetX = param3;
         _loc13_.targetY = param4;
         _loc13_.targetRotation = param5;
         _loc13_.binX = param3;
         _loc13_.binY = param4;
         _loc13_.binRotation = param5;
         _loc13_.cookAmount = param6;
         _loc13_.sauceType = param7;
         _loc13_.sauceAmountValue = param8;
         _loc13_.orderMeatAmount = param9;
         _loc13_.sauceSpinValue = param10;
         _loc13_.sauceTumbleValue = param11;
         _loc13_.wingOrderID = param12;
         false;
         false;
         if(_loc13_.isMeat())
         {
            true;
            true;
            _loc13_.setupMeat();
         }
         else
         {
            _loc13_.setupSide();
         }
         _loc13_.clickItem(null);
      }
      
      public function updateItem(param1:Event) : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:WingOrder = null;
         var _loc2_:FoodItem = this;
         _loc2_.updateRotation();
         if(_loc2_.isDragging)
         {
            _loc3_ = _loc2_.plateCenterX - _loc2_.gameObj.mouseX;
            _loc4_ = _loc2_.plateCenterY - _loc2_.gameObj.mouseY;
            true;
            true;
            if((_loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_)) > _loc2_.lettuceRadius + _loc2_.itemRadius)
            {
               _loc2_.clip.x = _loc2_.gameObj.mouseX;
               _loc2_.clip.y = _loc2_.gameObj.mouseY;
               if(_loc2_.didBumpLettuce)
               {
                  true;
                  true;
                  _loc2_.gameObj.var_11.currentPlate.resetLettuce();
                  _loc2_.didBumpLettuce = false;
               }
            }
            else
            {
               _loc6_ = Math.atan2(_loc4_,_loc3_);
               if(_loc5_ > _loc2_.lettuceRadius)
               {
                  _loc2_.clip.x = _loc2_.plateCenterX - Math.cos(_loc6_) * (_loc2_.lettuceRadius + _loc2_.itemRadius);
                  _loc2_.clip.y = _loc2_.plateCenterY - Math.sin(_loc6_) * (_loc2_.lettuceRadius + _loc2_.itemRadius);
                  if(_loc5_ < _loc2_.lettuceRadius + 15)
                  {
                     if(!_loc2_.didBumpLettuce)
                     {
                        true;
                        true;
                        _loc2_.gameObj.var_11.currentPlate.bumpLettuce();
                        _loc2_.didBumpLettuce = true;
                        false;
                        false;
                     }
                  }
                  else if(_loc2_.didBumpLettuce)
                  {
                     false;
                     false;
                     _loc2_.gameObj.var_11.currentPlate.resetLettuce();
                     _loc2_.didBumpLettuce = false;
                     false;
                     false;
                  }
               }
               else
               {
                  false;
                  false;
                  false;
                  false;
                  _loc7_ = _loc2_.plateCenterX - _loc2_.clip.x;
                  true;
                  true;
                  false;
                  false;
                  false;
                  false;
                  _loc8_ = _loc2_.plateCenterY - _loc2_.clip.y;
                  true;
                  true;
                  false;
                  false;
                  _loc6_ = _loc9_ = Math.atan2(_loc8_,_loc7_);
                  true;
                  true;
                  _loc2_.clip.x = _loc2_.plateCenterX - Math.cos(_loc6_) * (_loc2_.lettuceRadius + _loc2_.itemRadius);
                  _loc2_.clip.y = _loc2_.plateCenterY - Math.sin(_loc6_) * (_loc2_.lettuceRadius + _loc2_.itemRadius);
                  true;
                  true;
                  if(!_loc2_.didBumpLettuce)
                  {
                     false;
                     false;
                     _loc2_.gameObj.var_11.currentPlate.bumpLettuce();
                     _loc2_.didBumpLettuce = true;
                  }
               }
            }
         }
         else
         {
            _loc3_ = _loc2_.targetX - _loc2_.clip.x;
            true;
            true;
            true;
            true;
            _loc4_ = _loc2_.targetY - _loc2_.clip.y;
            true;
            true;
            _loc2_.clip.x += _loc3_ / _loc2_.tweenSpeed;
            _loc2_.clip.y += _loc4_ / _loc2_.tweenSpeed;
            true;
            true;
            true;
            true;
            §§push(Math.abs(_loc3_) <= 1);
            if(Math.abs(_loc3_) <= 1)
            {
               false;
               false;
               §§pop();
               §§push(Math.abs(_loc4_) <= 1);
            }
            if(§§pop())
            {
               if(_loc2_.isMeat())
               {
                  if((_loc11_ = _loc2_.gameObj.var_11.getWingOrderBowl(_loc2_.wingOrderID)) != null)
                  {
                     _loc11_.flipLid();
                  }
               }
               _loc10_ = _loc2_.gameObj.var_11.getMovingItemIndex(_loc2_);
               _loc2_.gameObj.var_11.removeFromMovingItems(_loc10_,true);
            }
         }
      }
      
      public function updateRotation() : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:FoodItem = this;
         var _loc2_:Number = _loc1_.clip.rotation;
         true;
         true;
         _loc2_ %= 360;
         true;
         true;
         if(_loc2_ < 0)
         {
            false;
            false;
            true;
            true;
            false;
            false;
            _loc2_ += 360;
         }
         if(_loc1_.isDragging)
         {
            _loc3_ = _loc1_.plateCenterX - _loc1_.clip.x;
            _loc4_ = _loc1_.plateCenterY - _loc1_.clip.y;
            false;
            false;
            _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
            true;
            true;
            true;
            true;
            _loc6_ = (_loc6_ = Math.atan2(_loc4_,_loc3_)) + Math.PI / 2;
            false;
            false;
            true;
            true;
            false;
            false;
            false;
            false;
            if((_loc7_ = (_loc7_ = (_loc7_ = class_10.radsToDegrees(_loc6_)) + _loc1_.extraDefaultRotation) % 360) < 0)
            {
               false;
               false;
               _loc7_ += 360;
            }
            _loc1_.targetRotation = _loc7_;
            true;
            true;
            false;
            false;
            if(_loc7_ < 90 && _loc2_ > 270)
            {
               false;
               false;
               false;
               false;
               _loc2_ -= 360;
            }
            else
            {
               false;
               false;
               §§push(_loc7_ > 270);
               if(_loc7_ > 270)
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  §§push(_loc2_ < 90);
               }
               if(§§pop())
               {
                  false;
                  false;
                  _loc2_ += 360;
               }
            }
            true;
            true;
            _loc8_ = _loc7_ - _loc2_;
            if(_loc5_ <= _loc1_.plateRadius)
            {
               false;
               false;
               _loc1_.clip.rotation = _loc2_ + _loc8_ / 2;
            }
            else
            {
               _loc1_.clip.rotation = _loc2_ + _loc8_ / 6;
               true;
               true;
            }
         }
         else if(_loc1_.isReturning)
         {
            false;
            false;
            _loc9_ = _loc1_.targetRotation - _loc2_;
            _loc1_.clip.rotation = _loc2_ + _loc9_ / _loc1_.tweenSpeed;
         }
      }
      
      public function clickItem(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:FoodItem = this;
         if(!_loc2_.isDragging && !_loc2_.isReturning)
         {
            false;
            false;
            false;
            false;
            if(!_loc2_.gameObj.var_11.currentPlate.isFinished)
            {
               _loc2_.isDragging = true;
               _loc2_.isReturning = false;
               _loc2_.gameObj.soundManager.playSound("grabtopping.wav");
               if(_loc2_.isMeat() && _loc2_.isOnPlate)
               {
                  _loc2_.gameObj.var_11.currentPlate.addSauceSplat(_loc2_.type,_loc2_.sauceType,_loc2_.clip.x,_loc2_.clip.y,_loc2_.clip.rotation,_loc2_.clip.scaleX,_loc2_.clip.scaleY);
               }
               _loc2_.clip.scaleX = _loc2_.defaultScale + _loc2_.grabScaleBoost;
               _loc2_.clip.scaleY = _loc2_.defaultScale + _loc2_.grabScaleBoost;
               if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  true;
                  true;
                  _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateItem);
               }
               if(_loc2_.isOnPlate)
               {
                  _loc2_.gameObj.var_11.addToMovingItems(_loc2_);
                  _loc2_.gameObj.var_11.currentPlate.removeItemFromPlate(_loc2_);
                  _loc2_.gameObj.var_11.clip.topholder.addChild(_loc2_.clip);
                  _loc2_.clip.x += _loc2_.gameObj.var_11.currentPlate.clip.x;
                  _loc2_.clip.y += _loc2_.gameObj.var_11.currentPlate.clip.y;
               }
               _loc2_.isOnPlate = false;
               _loc2_.didBumpLettuce = false;
               _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
               _loc2_.gameObj.stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
            }
         }
      }
      
      public function releaseItem(param1:Event) : void
      {
         false;
         true;
         var _loc2_:FoodItem = this;
         false;
         false;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
         true;
         true;
         _loc2_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
         _loc2_.clip.scaleX = _loc2_.defaultScale;
         _loc2_.clip.scaleY = _loc2_.defaultScale;
         _loc2_.isDragging = false;
         _loc2_.gameObj.var_11.currentPlate.resetLettuce();
         if(_loc2_.isWithinPlateBounds())
         {
            false;
            false;
            _loc2_.addToPlate();
         }
         else
         {
            _loc2_.startReturning();
         }
      }
      
      public function generateMeatForHand() : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc1_:FoodItem = this;
         var _loc3_:String = "meat_" + _loc1_.type;
         _loc2_ = class_9.method_26(_loc3_,false,false);
         9;
         var _loc5_:Number = _loc1_.cookAmount / FoodData.getMaxCookTime(_loc1_.type);
         var _loc6_:Number = Math.min(9,Math.floor(_loc5_ * (9 - 1)) + 1);
         false;
         false;
         _loc2_.meat.gotoAndStop(_loc6_);
         false;
         false;
         var _loc7_:Number = _loc1_.getSauceQualityFrame();
         5;
         false;
         false;
         true;
         true;
         false;
         false;
         var _loc9_:Number = (FoodData.getSauceFrame(_loc1_.sauceType) - 1) * 5 + _loc7_;
         _loc2_.sauce.gotoAndStop(_loc9_);
         _loc2_.scaleX = 0.6;
         _loc2_.scaleY = 0.6;
         if(_loc1_.type == FoodData.MEAT_SHRIMP)
         {
            _loc2_.scaleY *= -1;
         }
         return _loc2_;
      }
      
      public function setupMeat() : void
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         var _loc2_:String = "meat_" + _loc1_.type;
         _loc1_.clip = class_9.method_26(_loc2_,true,true);
         _loc1_.clip.x = _loc1_.gameObj.mouseX;
         false;
         false;
         _loc1_.clip.y = _loc1_.gameObj.mouseY;
         _loc1_.extraDefaultRotation = 180;
         true;
         true;
         _loc1_.clip.rotation = _loc1_.targetRotation + _loc1_.extraDefaultRotation;
         _loc1_.clip.mouseEnabled = true;
         _loc1_.clip.buttonMode = true;
         _loc1_.clip.useHandCursor = true;
         _loc1_.gameObj.var_11.clip.topholder.addChild(_loc1_.clip);
         9;
         true;
         true;
         var _loc4_:Number = _loc1_.cookAmount / FoodData.getMaxCookTime(_loc1_.type);
         var _loc5_:Number = Math.min(9,Math.floor(_loc4_ * (9 - 1)) + 1);
         _loc1_.clip.meat.gotoAndStop(_loc5_);
         false;
         false;
         var _loc6_:Number = _loc1_.getSauceQualityFrame();
         5;
         true;
         true;
         false;
         false;
         true;
         true;
         var _loc8_:Number = (FoodData.getSauceFrame(_loc1_.sauceType) - 1) * 5 + _loc6_;
         _loc1_.clip.sauce.gotoAndStop(_loc8_);
         _loc1_.clip.scaleX = 0.6;
         _loc1_.clip.scaleY = 0.6;
         true;
         true;
         _loc1_.defaultScale = 0.6;
         true;
         true;
         if(Math.random() < 0.5 && _loc1_.type != FoodData.MEAT_SHRIMP)
         {
            _loc1_.clip.scaleX *= -1;
         }
         _loc1_.itemRadius = _loc1_.clip.height / 2;
         if(_loc1_.type == FoodData.MEAT_STRIPS)
         {
            true;
            true;
            _loc1_.itemRadius = _loc1_.clip.height / 4;
         }
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
      }
      
      public function setupSide() : void
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         var _loc2_:String = "build_side_" + _loc1_.type;
         _loc1_.clip = class_9.method_26(_loc2_,true,true);
         if(_loc1_.type == FoodData.SIDE_CHEESECUBES)
         {
            _loc1_.clip.gotoAndStop(Math.ceil(Math.random() * _loc1_.clip.totalFrames));
         }
         _loc1_.clip.x = _loc1_.gameObj.mouseX;
         _loc1_.clip.y = _loc1_.gameObj.mouseY;
         _loc1_.itemRadius = _loc1_.clip.height / 2;
         _loc1_.clip.rotation = _loc1_.targetRotation;
         _loc1_.clip.mouseEnabled = true;
         true;
         true;
         _loc1_.clip.buttonMode = true;
         _loc1_.clip.useHandCursor = true;
         true;
         true;
         _loc1_.gameObj.var_11.clip.topholder.addChild(_loc1_.clip);
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
      }
      
      public function isMeat() : Boolean
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         true;
         true;
         true;
         true;
         false;
         false;
         §§push(_loc1_.type == FoodData.MEAT_BONELESS || _loc1_.type == FoodData.MEAT_SHRIMP || _loc1_.type == FoodData.MEAT_STRIPS);
         if(!(_loc1_.type == FoodData.MEAT_BONELESS || _loc1_.type == FoodData.MEAT_SHRIMP || _loc1_.type == FoodData.MEAT_STRIPS))
         {
            false;
            false;
            §§pop();
            §§push(_loc1_.type == FoodData.MEAT_WING);
         }
         if(§§pop())
         {
            true;
            true;
            return true;
         }
         return false;
      }
      
      public function startReturning() : void
      {
         false;
         true;
         var _loc3_:WingOrder = null;
         var _loc4_:Point = null;
         var _loc1_:FoodItem = this;
         var _loc2_:BuildScreen = _loc1_.gameObj.var_11;
         true;
         true;
         if(_loc1_.isMeat())
         {
            _loc3_ = _loc2_.getWingOrderBowl(_loc1_.wingOrderID);
            if(_loc3_ == null)
            {
               true;
               true;
               class_5.method_25("Bowl is gone, create a new one.");
               _loc3_ = new WingOrder(_loc1_.gameObj,_loc1_.type,_loc1_.orderMeatAmount,_loc1_.cookAmount);
               _loc3_.sauceType = _loc1_.sauceType;
               _loc3_.sauceAmountValue = _loc1_.sauceAmountValue;
               _loc3_.sauceSpinValue = _loc1_.sauceSpinValue;
               _loc3_.sauceTumbleValue = _loc1_.sauceTumbleValue;
               _loc3_.currentMeatAmount = 1;
               _loc3_.id = _loc1_.wingOrderID;
               _loc3_.createBowl();
               _loc2_.addToWingQueue(_loc3_);
               _loc2_.checkForBowlGaps();
               true;
               true;
               _loc1_.targetX = _loc3_.getReturnPoint().x;
               false;
               false;
               _loc1_.targetY = _loc3_.getReturnPoint().y;
               _loc1_.targetRotation = 90;
            }
            else
            {
               _loc4_ = _loc3_.getReturnPoint();
               false;
               false;
               _loc1_.targetX = _loc4_.x;
               _loc1_.targetY = _loc4_.y;
               _loc1_.targetRotation = 90;
               _loc3_.returnMeatToBowl();
            }
         }
         else
         {
            _loc1_.targetX = _loc1_.binX;
            true;
            true;
            _loc1_.targetY = _loc1_.binY;
            _loc1_.targetRotation = _loc1_.binRotation;
         }
         _loc1_.isReturning = true;
         true;
         true;
         _loc1_.isDragging = false;
         false;
         false;
         _loc1_.isOnPlate = false;
      }
      
      public function addToPlate() : void
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         var _loc2_:FoodPlate = _loc1_.gameObj.var_11.currentPlate;
         var _loc3_:BuildScreen = _loc1_.gameObj.var_11;
         true;
         true;
         var _loc4_:Number = _loc1_.plateCenterX - _loc1_.clip.x;
         true;
         true;
         var _loc5_:Number = _loc1_.plateCenterY - _loc1_.clip.y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         true;
         true;
         false;
         false;
         true;
         true;
         var _loc7_:Number = (_loc7_ = Math.atan2(_loc5_,_loc4_)) + Math.PI / 2;
         true;
         true;
         true;
         true;
         var _loc8_:Number;
         if((_loc8_ = (_loc8_ = (_loc8_ = class_10.radsToDegrees(_loc7_)) + _loc1_.extraDefaultRotation) % 360) < 0)
         {
            true;
            true;
            true;
            true;
            _loc8_ += 360;
         }
         _loc1_.targetRotation = _loc8_;
         true;
         true;
         _loc1_.clip.rotation = _loc8_;
         true;
         true;
         _loc2_.addItemToPlate(_loc1_);
         var _loc9_:Number = _loc3_.getMovingItemIndex(_loc1_);
         _loc3_.removeFromMovingItems(_loc9_);
         true;
         true;
         _loc1_.isOnPlate = true;
         true;
         true;
         _loc1_.clip.x -= _loc2_.clip.x;
         _loc1_.clip.y -= _loc2_.clip.y;
         if(_loc1_.clip.y > _loc1_.plateRadius)
         {
            _loc2_.clip.frontholder.addChild(_loc1_.clip);
         }
         else
         {
            _loc2_.clip.backholder.addChild(_loc1_.clip);
         }
         §§push(_loc1_.isMeat());
         if(_loc1_.isMeat())
         {
            true;
            true;
            §§pop();
            §§push(_loc1_.isOversauced());
         }
         if(§§pop())
         {
            false;
            false;
            true;
            true;
            true;
            true;
            _loc1_.gameObj.var_11.currentPlate.addSauceSplat(_loc1_.type,_loc1_.sauceType,_loc1_.clip.x,_loc1_.clip.y,_loc1_.clip.rotation + 15,_loc1_.clip.scaleX + 0.1,_loc1_.clip.scaleY + 0.1);
            false;
            false;
            _loc1_.gameObj.var_11.currentPlate.addSauceSplat(_loc1_.type,_loc1_.sauceType,_loc1_.clip.x,_loc1_.clip.y,_loc1_.clip.rotation - 15,_loc1_.clip.scaleX + 0.1,_loc1_.clip.scaleY + 0.1);
         }
         _loc1_.gameObj.soundManager.playSound("droptopping.wav");
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
      }
      
      public function adjustForGiveOrder() : void
      {
         var _loc3_:Number = NaN;
         var _loc1_:FoodItem = this;
         var _loc2_:Number = _loc1_.plateRadius * 2;
         false;
         false;
         if(_loc1_.clip.y > _loc1_.plateRadius)
         {
            false;
            false;
            true;
            true;
            _loc3_ = (_loc2_ - _loc1_.clip.y) / _loc2_ * 50;
            false;
            false;
            _loc1_.clip.y += _loc3_;
         }
         else
         {
            false;
            false;
            _loc3_ = (_loc1_.plateRadius - _loc1_.clip.y) / _loc1_.plateRadius * 50;
            _loc1_.clip.y += _loc3_;
         }
      }
      
      public function isWithinPlateBounds() : Boolean
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         var _loc2_:Boolean = false;
         true;
         true;
         if(_loc1_.getDistToCenter() <= _loc1_.plateRadius)
         {
            true;
            true;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function getDistToCenter() : Number
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         false;
         false;
         true;
         true;
         var _loc2_:Number = _loc1_.plateCenterX - _loc1_.clip.x;
         true;
         true;
         var _loc3_:Number = _loc1_.plateCenterY - _loc1_.clip.y;
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
      }
      
      public function isOversauced() : Boolean
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:FoodItem = this;
         var _loc2_:Boolean = false;
         true;
         true;
         false;
         false;
         if(_loc1_.isMeat())
         {
            true;
            true;
            _loc3_ = FoodData.getSauceNumberAmount(_loc1_.sauceAmountValue);
            true;
            true;
            false;
            false;
            _loc4_ = _loc1_.orderMeatAmount;
            true;
            true;
            true;
            true;
            if(_loc3_ - _loc4_ > 1)
            {
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      public function getSauceQualityFrame() : Number
      {
         var _loc1_:FoodItem = this;
         var _loc2_:Number = 1;
         var _loc3_:Number = 0;
         var _loc4_:Number = FoodData.getSauceNumberAmount(_loc1_.sauceAmountValue);
         true;
         true;
         var _loc5_:Number = _loc1_.orderMeatAmount;
         true;
         true;
         var _loc6_:Number;
         if((_loc6_ = Math.abs(_loc4_ - _loc5_)) == 11)
         {
            _loc6_ = 1;
         }
         false;
         false;
         if(_loc4_ > _loc5_)
         {
            false;
            false;
            _loc6_ = 0;
            true;
            true;
         }
         _loc3_ = 1 - _loc6_ / 12;
         false;
         false;
         true;
         true;
         var _loc7_:Number;
         if((_loc7_ = (_loc3_ + _loc1_.sauceSpinValue + _loc1_.sauceTumbleValue) * 100 / 3) >= 90)
         {
            true;
            true;
            _loc2_ = 5;
            false;
            false;
         }
         else
         {
            true;
            true;
            true;
            true;
            if(_loc7_ >= 80)
            {
               true;
               true;
               _loc2_ = 4;
            }
            else
            {
               true;
               true;
               if(_loc7_ >= 70)
               {
                  _loc2_ = 3;
               }
               else if(_loc7_ >= 60)
               {
                  false;
                  false;
                  false;
                  false;
                  true;
                  true;
                  _loc2_ = 2;
               }
               else
               {
                  _loc2_ = 1;
               }
            }
         }
         return _loc2_;
      }
      
      public function setMeatSubstitute(param1:String, param2:String) : void
      {
         var _loc3_:FoodItem = this;
         _loc3_.subMeatType = param1;
         _loc3_.subSauceType = param2;
      }
      
      public function getType() : String
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         if(_loc1_.subMeatType != null)
         {
            false;
            false;
            return _loc1_.subMeatType;
         }
         return _loc1_.type;
      }
      
      public function getSauce() : String
      {
         var _loc1_:FoodItem = this;
         true;
         true;
         if(_loc1_.subSauceType != null)
         {
            true;
            true;
            return _loc1_.subSauceType;
         }
         return _loc1_.sauceType;
      }
      
      public function getTypeString() : String
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         true;
         true;
         if(_loc1_.subMeatType != null && _loc1_.subSauceType != null)
         {
            true;
            true;
            true;
            true;
            false;
            false;
            return _loc1_.subMeatType + "_" + _loc1_.subSauceType;
         }
         if(_loc1_.isMeat())
         {
            false;
            false;
            false;
            false;
            return _loc1_.type + "_" + _loc1_.sauceType;
         }
         return _loc1_.type;
      }
      
      public function getRotationOnPlate() : Number
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         var _loc2_:Number = _loc1_.clip.rotation - _loc1_.extraDefaultRotation;
         false;
         false;
         _loc2_ %= 360;
         true;
         true;
         if(_loc2_ < 0)
         {
            true;
            true;
            true;
            true;
            true;
            true;
            _loc2_ += 360;
         }
         return _loc2_;
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:FoodItem = this;
         false;
         false;
         _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
         try
         {
            _loc1_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.releaseItem);
            true;
            true;
            _loc1_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc1_.releaseItem);
            false;
            false;
         }
         catch(err:Error)
         {
         }
         if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
         }
         try
         {
            _loc1_.clip.parent.removeChild(_loc1_.clip);
            true;
            true;
         }
         catch(err:Error)
         {
         }
         _loc1_.clip = null;
      }
   }
}
