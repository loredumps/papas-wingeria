package wingGame.models
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import package_2.*;
   import package_4.class_4;
   import wingGame.screens.BuildScreen;
   
   public class Napkin
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var tweenSpeed:Number = 4;
      
      public var targetEndX:Number = -400;
      
      public var targetX:Number;
      
      public var targetY:Number;
      
      public var targetRotation:Number;
      
      public var plateCenterX:Number = 244;
      
      public var plateCenterY:Number = 220;
      
      public var plateRadius:Number = 133;
      
      public var itemRadius:Number = 50;
      
      public var extraDefaultRotation:Number = 0;
      
      public var defaultScale:Number = 1;
      
      public var lastX:Number = 0;
      
      public var lastY:Number = 0;
      
      public function Napkin(param1:class_4, param2:Number, param3:Number)
      {
         super();
         var _loc4_:Napkin;
         (_loc4_ = this).gameObj = param1;
         _loc4_.targetX = param2;
         _loc4_.targetY = param3;
         false;
         false;
         _loc4_.lastX = param2;
         _loc4_.lastY = param3;
         _loc4_.targetRotation = 0;
         _loc4_.setupNapkin();
         false;
         false;
         _loc4_.clickItem(null);
      }
      
      public function updateItem(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Napkin = this;
         _loc2_.updateRotation();
         true;
         true;
         if(_loc2_.isDragging)
         {
            true;
            true;
            _loc3_ = _loc2_.plateCenterX - _loc2_.gameObj.mouseX;
            false;
            false;
            false;
            false;
            _loc4_ = _loc2_.plateCenterY - _loc2_.gameObj.mouseY;
            _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
            _loc2_.clip.x = _loc2_.gameObj.mouseX;
            _loc2_.clip.y = _loc2_.gameObj.mouseY;
            true;
            true;
            _loc6_ = Math.sqrt((_loc2_.clip.x - _loc2_.lastX) * (_loc2_.clip.x - _loc2_.lastX) + (_loc2_.clip.y - _loc2_.lastY) * (_loc2_.clip.y - _loc2_.lastY));
            false;
            false;
            if(_loc5_ < _loc2_.plateRadius + 35 && _loc6_ > 0)
            {
               false;
               false;
               _loc2_.gameObj.var_11.currentPlate.eraseSplats(_loc2_.clip.x,_loc2_.clip.y);
            }
            _loc2_.lastX = _loc2_.clip.x;
            _loc2_.lastY = _loc2_.clip.y;
         }
         else
         {
            _loc3_ = _loc2_.targetX - _loc2_.clip.x;
            false;
            false;
            _loc4_ = _loc2_.targetY - _loc2_.clip.y;
            _loc2_.clip.x += _loc3_ / _loc2_.tweenSpeed;
            _loc2_.clip.y += _loc4_ / _loc2_.tweenSpeed;
            if(Math.abs(_loc3_) <= 1 && Math.abs(_loc4_) <= 1)
            {
               _loc2_.gameObj.var_11.removeNapkin();
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
         var _loc1_:Napkin = this;
         var _loc2_:Number = _loc1_.clip.rotation;
         false;
         false;
         false;
         false;
         _loc2_ %= 360;
         false;
         false;
         if(_loc2_ < 0)
         {
            _loc2_ += 360;
         }
         if(_loc1_.isDragging)
         {
            true;
            true;
            _loc3_ = _loc1_.plateCenterX - _loc1_.clip.x;
            false;
            false;
            _loc4_ = _loc1_.plateCenterY - _loc1_.clip.y;
            true;
            true;
            _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
            true;
            true;
            _loc6_ = (_loc6_ = Math.atan2(_loc4_,_loc3_)) + Math.PI / 2;
            false;
            false;
            false;
            false;
            if((_loc7_ = (_loc7_ = (_loc7_ = class_10.radsToDegrees(_loc6_)) + _loc1_.extraDefaultRotation) % 360) < 0)
            {
               true;
               true;
               _loc7_ += 360;
            }
            _loc1_.targetRotation = _loc7_;
            true;
            true;
            if(_loc7_ < 90 && _loc2_ > 270)
            {
               false;
               false;
               true;
               true;
               _loc2_ -= 360;
            }
            else if(_loc7_ > 270 && _loc2_ < 90)
            {
               _loc2_ += 360;
               true;
               true;
            }
            _loc8_ = _loc7_ - _loc2_;
            if(_loc5_ <= _loc1_.plateRadius)
            {
               _loc1_.clip.rotation = _loc2_ + _loc8_ / 2;
            }
            else
            {
               _loc1_.clip.rotation = _loc2_ + _loc8_ / 6;
            }
         }
         else if(_loc1_.isReturning)
         {
            true;
            true;
            _loc9_ = _loc1_.targetRotation - _loc2_;
            false;
            false;
            _loc1_.clip.rotation = _loc2_ + _loc9_ / _loc1_.tweenSpeed;
         }
      }
      
      public function clickItem(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:Napkin = this;
         false;
         false;
         §§push(!_loc2_.isDragging);
         if(!_loc2_.isDragging)
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(!_loc2_.isReturning);
         }
         if(§§pop())
         {
            true;
            true;
            if(!_loc2_.gameObj.var_11.currentPlate.isFinished)
            {
               _loc2_.isDragging = true;
               true;
               true;
               _loc2_.isReturning = false;
               false;
               false;
               if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateItem);
               }
               false;
               false;
               _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
               _loc2_.gameObj.stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
            }
         }
      }
      
      public function releaseItem(param1:Event) : void
      {
         false;
         true;
         var _loc2_:Napkin = this;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
         true;
         true;
         _loc2_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
         _loc2_.clip.scaleX = _loc2_.defaultScale;
         _loc2_.clip.scaleY = _loc2_.defaultScale;
         _loc2_.isDragging = false;
         false;
         false;
         class_5.method_25("Splats remaining: " + _loc2_.gameObj.var_11.currentPlate.splatsAdded);
         _loc2_.gameObj.soundManager.playSound("lidslide.wav");
         true;
         true;
         _loc2_.startReturning();
      }
      
      public function setupNapkin() : void
      {
         var _loc1_:Napkin = this;
         _loc1_.clip = new build_napkin();
         _loc1_.clip.x = _loc1_.gameObj.mouseX;
         _loc1_.clip.y = _loc1_.gameObj.mouseY;
         false;
         false;
         _loc1_.clip.rotation = _loc1_.targetRotation;
         true;
         true;
         _loc1_.clip.mouseEnabled = true;
         _loc1_.clip.buttonMode = true;
         _loc1_.clip.useHandCursor = true;
         _loc1_.gameObj.var_11.clip.topholder.addChild(_loc1_.clip);
      }
      
      public function startReturning() : void
      {
         false;
         true;
         var _loc1_:Napkin = this;
         var _loc2_:BuildScreen = _loc1_.gameObj.var_11;
         _loc1_.targetX = _loc1_.targetEndX;
         _loc1_.targetY = _loc1_.clip.y;
         _loc1_.targetRotation = _loc1_.clip.rotation;
         _loc1_.isReturning = true;
         false;
         false;
         _loc1_.isDragging = false;
      }
      
      public function destroy() : void
      {
         var _loc1_:Napkin = this;
         try
         {
            false;
            false;
            _loc1_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.releaseItem);
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
