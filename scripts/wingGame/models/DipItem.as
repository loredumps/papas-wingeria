package wingGame.models
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import package_2.*;
   import package_4.class_4;
   import wingGame.screens.BuildScreen;
   
   public class DipItem
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var targetX:Number = 0;
      
      public var targetY:Number = 0;
      
      public var binX:Number = 0;
      
      public var binY:Number = 0;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isOnPlate:Boolean = false;
      
      public var isBumpingOtherDip:Boolean = false;
      
      public var lastBumpedAt:Number = 0;
      
      public var tweenSpeed:Number = 2;
      
      public var plateCenterX:Number = 133;
      
      public var plateCenterY:Number = 133;
      
      public var plateRadius:Number = 133;
      
      public var lettuceRadius:Number = 60;
      
      public var centerPaddingX:Number = 23.25;
      
      public var centerPaddingY:Number = 33;
      
      public var mouseOffsetX:Number = 0;
      
      public var mouseOffsetY:Number = 0;
      
      public var collisionLevels:Number = 10;
      
      public var radius:Number = 24;
      
      public function DipItem(param1:class_4, param2:String, param3:Number, param4:Number)
      {
         super();
         var _loc5_:DipItem;
         (_loc5_ = this).gameObj = param1;
         false;
         false;
         _loc5_.type = param2;
         _loc5_.targetX = param3;
         _loc5_.targetY = param4;
         _loc5_.binX = param3 + this.centerPaddingX;
         _loc5_.binY = param4 + this.centerPaddingY;
         true;
         true;
         _loc5_.setupItem();
         true;
         true;
         _loc5_.clickItem(null);
      }
      
      public function setupItem() : void
      {
         false;
         true;
         var _loc1_:DipItem = this;
         var _loc2_:BuildScreen = _loc1_.gameObj.var_11;
         var _loc3_:String = "build_side_" + _loc1_.type;
         _loc1_.clip = class_9.method_26(_loc3_,true,true);
         false;
         false;
         _loc1_.clip.x = _loc1_.gameObj.mouseX - _loc2_.currentPlate.clip.x;
         _loc1_.clip.y = _loc1_.gameObj.mouseY - _loc2_.currentPlate.clip.y;
         _loc1_.clip.mouseEnabled = true;
         true;
         true;
         _loc1_.clip.buttonMode = true;
         _loc1_.clip.useHandCursor = true;
         false;
         false;
         _loc1_.clip.gotoAndStop(3);
         _loc1_.gameObj.var_11.currentPlate.clip.dipholder.addChild(_loc1_.clip);
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
      }
      
      public function clickItem(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:DipItem = this;
         if(!_loc2_.gameObj.var_11.currentPlate.isFinished)
         {
            false;
            false;
            true;
            true;
            true;
            true;
            if(!_loc2_.isDragging && !_loc2_.isReturning)
            {
               _loc2_.isDragging = true;
               _loc2_.isReturning = false;
               _loc2_.isBumpingOtherDip = false;
               false;
               false;
               false;
               false;
               _loc2_.gameObj.soundManager.playSound("grabtopping.wav");
               if(param1 != null)
               {
                  _loc2_.mouseOffsetX = 0 - _loc2_.clip.mouseX;
                  _loc2_.mouseOffsetY = 0 - _loc2_.clip.mouseY;
               }
               else
               {
                  _loc2_.mouseOffsetX = 0;
                  true;
                  true;
                  _loc2_.mouseOffsetY = 0;
               }
               if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateItem);
               }
               _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
               _loc2_.gameObj.stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
            }
         }
      }
      
      public function releaseItem(param1:Event) : void
      {
         var _loc2_:DipItem = this;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
         _loc2_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
         true;
         true;
         _loc2_.isDragging = false;
         _loc2_.gameObj.var_11.currentPlate.resetLettuce();
         if(_loc2_.isWithinPlateBounds())
         {
            _loc2_.addToPlate();
         }
         else
         {
            _loc2_.startReturning();
         }
      }
      
      public function updateItem(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:DipItem = this;
         var _loc3_:FoodPlate = _loc2_.gameObj.var_11.currentPlate;
         true;
         true;
         if(_loc2_.isDragging)
         {
            true;
            true;
            _loc4_ = _loc3_.clip.mouseX + _loc2_.mouseOffsetX;
            _loc5_ = _loc3_.clip.mouseY + _loc2_.mouseOffsetY;
            _loc2_.moveDip(_loc4_,_loc5_,0);
            _loc3_.sortDips();
            _loc6_ = _loc2_.clip.x - _loc3_.clip.mouseX;
            false;
            false;
            _loc7_ = _loc2_.clip.y - _loc3_.clip.mouseY;
            true;
            true;
            if((_loc8_ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_)) < _loc2_.radius)
            {
               _loc2_.mouseOffsetX = _loc6_;
               _loc2_.mouseOffsetY = _loc7_;
            }
            else
            {
               _loc9_ = Math.atan2(_loc7_,_loc6_);
               true;
               true;
               _loc2_.mouseOffsetX = Math.cos(_loc9_) * _loc2_.radius;
               _loc2_.mouseOffsetY = Math.sin(_loc9_) * _loc2_.radius;
            }
         }
         else
         {
            true;
            true;
            false;
            false;
            _loc10_ = _loc2_.targetX - _loc2_.clip.x;
            _loc11_ = _loc2_.targetY - _loc2_.clip.y;
            _loc2_.clip.x += _loc10_ / _loc2_.tweenSpeed;
            _loc2_.clip.y += _loc11_ / _loc2_.tweenSpeed;
            true;
            true;
            if(Math.abs(_loc10_) <= 1 && Math.abs(_loc11_) <= 1)
            {
               false;
               false;
               true;
               true;
               true;
               true;
               _loc12_ = _loc2_.gameObj.var_11.getMovingDipIndex(_loc2_);
               _loc2_.gameObj.var_11.removeFromMovingDips(_loc12_,true);
            }
         }
      }
      
      public function moveDip(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc4_:DipItem;
         var _loc5_:FoodPlate = (_loc4_ = this).gameObj.var_11.currentPlate;
         true;
         true;
         false;
         false;
         true;
         true;
         if(param3 < _loc4_.collisionLevels)
         {
            false;
            false;
            _loc6_ = false;
            true;
            true;
            if(!_loc4_.isDragging)
            {
               _loc8_ = _loc4_.plateCenterX - param1;
               false;
               false;
               false;
               false;
               false;
               false;
               _loc9_ = _loc4_.plateCenterY - param2;
               true;
               true;
               false;
               false;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) > _loc4_.lettuceRadius - _loc4_.radius)
               {
                  true;
                  true;
                  false;
                  false;
                  _loc11_ = (_loc11_ = Math.atan2(_loc9_,_loc8_)) + Math.PI;
                  _loc12_ = _loc4_.plateCenterX + Math.cos(_loc11_) * (_loc4_.lettuceRadius - _loc4_.radius);
                  _loc13_ = _loc4_.plateCenterY + Math.sin(_loc11_) * (_loc4_.lettuceRadius - _loc4_.radius);
                  _loc4_.clip.x = _loc12_;
                  _loc4_.clip.y = _loc13_;
                  true;
                  true;
                  param1 = _loc12_;
                  false;
                  false;
                  param2 = _loc13_;
                  _loc6_ = true;
                  true;
                  true;
               }
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_.dipItems.length)
            {
               if(_loc5_.dipItems[_loc7_] != _loc4_)
               {
                  _loc14_ = param1 - _loc5_.dipItems[_loc7_].getCenterX();
                  true;
                  true;
                  _loc15_ = param2 - _loc5_.dipItems[_loc7_].getCenterY();
                  if((_loc16_ = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_)) < this.radius * 2)
                  {
                     _loc4_.clip.x = param1;
                     _loc4_.clip.y = param2;
                     _loc17_ = (_loc17_ = Math.atan2(_loc15_,_loc14_)) + Math.PI;
                     _loc18_ = param1 + Math.cos(_loc17_) * (this.radius * 2 + 0);
                     false;
                     false;
                     _loc19_ = param2 + Math.sin(_loc17_) * (this.radius * 2 + 0);
                     _loc5_.dipItems[_loc7_].moveDip(_loc18_,_loc19_,param3 + 1);
                     true;
                     true;
                     param1 = _loc4_.clip.x;
                     param2 = _loc4_.clip.y;
                     false;
                     false;
                     _loc6_ = true;
                     true;
                     true;
                     §§push(!_loc4_.isBumpingOtherDip);
                     if(!_loc4_.isBumpingOtherDip)
                     {
                        false;
                        false;
                        §§pop();
                        true;
                        true;
                        false;
                        false;
                        true;
                        true;
                        §§push(param3 == 0);
                     }
                     if(§§pop())
                     {
                        false;
                        false;
                        _loc4_.gameObj.soundManager.playSound("dip_hit.wav");
                     }
                     _loc4_.lastBumpedAt = _loc4_.gameObj.var_28.gameplayTimer;
                     _loc4_.isBumpingOtherDip = true;
                  }
               }
               _loc7_++;
            }
            if(!_loc6_)
            {
               _loc4_.clip.x = param1;
               _loc4_.clip.y = param2;
               false;
               false;
               if(_loc4_.gameObj.var_28.gameplayTimer - _loc4_.lastBumpedAt > 20)
               {
                  true;
                  true;
                  _loc4_.isBumpingOtherDip = false;
               }
            }
         }
      }
      
      public function getCenterX() : Number
      {
         var _loc1_:DipItem = this;
         return _loc1_.clip.x;
      }
      
      public function getCenterY() : Number
      {
         var _loc1_:DipItem = this;
         return _loc1_.clip.y;
      }
      
      public function startReturning() : void
      {
         false;
         true;
         var _loc1_:DipItem = this;
         false;
         false;
         class_5.method_25("Return to bin.");
         false;
         false;
         false;
         false;
         false;
         false;
         _loc1_.gameObj.var_11.addToMovingDips(_loc1_);
         false;
         false;
         true;
         true;
         _loc1_.gameObj.var_11.currentPlate.removeDipFromPlate(_loc1_);
         _loc1_.gameObj.var_11.clip.topholder.addChild(_loc1_.clip);
         _loc1_.clip.x += _loc1_.gameObj.var_11.currentPlate.clip.x;
         _loc1_.clip.y += _loc1_.gameObj.var_11.currentPlate.clip.y;
         _loc1_.targetX = _loc1_.binX;
         _loc1_.targetY = _loc1_.binY;
         false;
         false;
         _loc1_.isReturning = true;
         _loc1_.isDragging = false;
         true;
         true;
         _loc1_.isOnPlate = false;
      }
      
      public function addToPlate() : void
      {
         false;
         true;
         var _loc1_:DipItem = this;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
         false;
         false;
         true;
         true;
         _loc1_.gameObj.soundManager.playSound("droptopping.wav");
         true;
         true;
         §§push(_loc1_.gameObj.var_14);
         if(_loc1_.gameObj.var_14)
         {
            true;
            true;
            §§pop();
            false;
            false;
            true;
            true;
            §§push(_loc1_.gameObj.var_12 == 24);
         }
         if(§§pop())
         {
            false;
            false;
            §§pop();
            §§push(_loc1_.gameObj.var_11.currentPlate.dipItems.length >= 2);
         }
         if(§§pop())
         {
            _loc1_.gameObj.method_29();
         }
      }
      
      public function isWithinPlateBounds() : Boolean
      {
         false;
         true;
         var _loc1_:DipItem = this;
         var _loc2_:Boolean = false;
         true;
         true;
         false;
         false;
         if(_loc1_.getDistToCenter() <= _loc1_.lettuceRadius - _loc1_.radius)
         {
            false;
            false;
            false;
            false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function getDistToCenter() : Number
      {
         false;
         true;
         var _loc1_:DipItem = this;
         false;
         false;
         true;
         true;
         var _loc2_:Number = _loc1_.plateCenterX - _loc1_.clip.x;
         false;
         false;
         var _loc3_:Number = _loc1_.plateCenterY - _loc1_.clip.y;
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
      }
      
      public function destroy() : void
      {
         var _loc1_:DipItem = this;
         true;
         true;
         _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
         try
         {
            _loc1_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.releaseItem);
            true;
            true;
            _loc1_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc1_.releaseItem);
         }
         catch(err:Error)
         {
         }
         if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            false;
            false;
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
            true;
            true;
         }
         try
         {
            _loc1_.clip.parent.removeChild(_loc1_.clip);
            false;
            false;
         }
         catch(err:Error)
         {
         }
         _loc1_.clip = null;
      }
   }
}
