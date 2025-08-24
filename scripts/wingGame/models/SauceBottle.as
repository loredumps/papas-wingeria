package wingGame.models
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import package_2.class_9;
   import package_4.class_4;
   
   public class SauceBottle
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var shelfX:Number = 0;
      
      public var shelfY:Number = 0;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isSquirting:Boolean = false;
      
      public var boundsLeft:Number = 140;
      
      public var boundsRight:Number = 350;
      
      public var boundsTop:Number = 0;
      
      public var boundsBottom:Number = 235;
      
      public var tweenSpeed:Number = 2;
      
      public var rotationSpeed:Number = 1.33333;
      
      public var isRotating:Boolean = false;
      
      public var timeToSquirt:Number = 10;
      
      public var squirtTimer:Number = 0;
      
      public var container:MovieClip;
      
      public function SauceBottle(param1:class_4, param2:String, param3:MovieClip, param4:Number, param5:Number)
      {
         super();
         this.gameObj = param1;
         this.container = param3;
         true;
         true;
         this.type = param2;
         true;
         true;
         this.shelfX = param4;
         this.shelfY = param5;
         false;
         false;
         this.setupBottle();
      }
      
      public function setupBottle() : void
      {
         false;
         true;
         var _loc1_:SauceBottle = this;
         true;
         true;
         _loc1_.clip = class_9.method_26("sauce_" + _loc1_.type);
         _loc1_.clip.x = _loc1_.shelfX;
         _loc1_.clip.y = _loc1_.shelfY;
         _loc1_.clip.scaleX = 1.27;
         _loc1_.clip.scaleY = 1.27;
         _loc1_.container.addChild(_loc1_.clip);
         false;
         false;
         _loc1_.clip.buttonMode = true;
         false;
         false;
         _loc1_.clip.useHandCursor = true;
         _loc1_.clip.gotoAndStop(1);
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBottle);
         _loc1_.clip.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBottle);
         _loc1_.clip.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBottle);
      }
      
      public function canClick() : Boolean
      {
         var _loc1_:SauceBottle = this;
         false;
         false;
         if(_loc1_.gameObj.var_30.currentWingOrder != null && !_loc1_.isDragging && !_loc1_.isReturning && !_loc1_.isSquirting && !_loc1_.gameObj.var_30.hasBeenSauced && !_loc1_.gameObj.var_30.isSaucing)
         {
            true;
            true;
            return true;
         }
         return false;
      }
      
      public function clickBottle(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:SauceBottle = this;
         if(_loc2_.canClick())
         {
            _loc2_.gameObj.var_30.clip.topholder.addChildAt(_loc2_.clip,_loc2_.gameObj.var_30.clip.topholder.numChildren - 1);
            true;
            true;
            if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
            {
               _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateBottle);
            }
            _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBottle);
            _loc2_.gameObj.stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseBottle);
            true;
            true;
            _loc2_.isDragging = true;
            true;
            true;
            _loc2_.gameObj.soundManager.playSound("grabtopping.wav");
         }
      }
      
      public function releaseBottle(param1:Event) : void
      {
         false;
         true;
         var _loc2_:SauceBottle = this;
         true;
         true;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBottle);
         false;
         false;
         false;
         false;
         _loc2_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseBottle);
         true;
         true;
         _loc2_.isDragging = false;
         false;
         false;
         §§push(_loc2_.clip.x >= _loc2_.boundsLeft && _loc2_.clip.x <= _loc2_.boundsRight);
         if(_loc2_.clip.x >= _loc2_.boundsLeft && _loc2_.clip.x <= _loc2_.boundsRight)
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(_loc2_.clip.y >= _loc2_.boundsTop);
         }
         if(§§pop() && _loc2_.clip.y <= _loc2_.boundsBottom)
         {
            _loc2_.squirtTimer = 0;
            _loc2_.gameObj.var_30.squirtSauce(_loc2_.type,_loc2_.clip.x,_loc2_.clip.y);
            true;
            true;
            _loc2_.isSquirting = true;
            true;
            true;
         }
         else
         {
            _loc2_.isReturning = true;
         }
      }
      
      public function rolloverBottle(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:SauceBottle = this;
         if(_loc2_.canClick())
         {
            _loc2_.clip.y = _loc2_.shelfY - 2;
         }
      }
      
      public function rolloutBottle(param1:MouseEvent) : void
      {
         var _loc2_:SauceBottle = this;
         if(_loc2_.canClick())
         {
            true;
            true;
            _loc2_.clip.y = _loc2_.shelfY;
         }
      }
      
      public function updateBottle(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:SauceBottle = this;
         _loc2_.rotateBottle();
         false;
         false;
         if(_loc2_.isDragging)
         {
            _loc2_.clip.x = _loc2_.gameObj.var_30.clip.mouseX;
            _loc2_.clip.y = _loc2_.gameObj.var_30.clip.mouseY;
         }
         true;
         true;
         §§push(_loc2_.isDragging && _loc2_.clip.x >= _loc2_.boundsLeft && _loc2_.clip.x <= _loc2_.boundsRight && _loc2_.clip.y >= _loc2_.boundsTop);
         if(_loc2_.isDragging && _loc2_.clip.x >= _loc2_.boundsLeft && _loc2_.clip.x <= _loc2_.boundsRight && _loc2_.clip.y >= _loc2_.boundsTop)
         {
            true;
            true;
            §§pop();
            §§push(_loc2_.clip.y <= _loc2_.boundsBottom);
         }
         if(§§pop())
         {
            true;
            true;
            false;
            false;
            if(!_loc2_.gameObj.var_30.isMeterSaucing)
            {
               true;
               true;
               _loc2_.gameObj.var_30.startSauceMeter();
            }
         }
         else
         {
            false;
            false;
            false;
            false;
            §§push(_loc2_.isDragging);
            if(_loc2_.isDragging)
            {
               false;
               false;
               §§pop();
               true;
               true;
               §§push(_loc2_.gameObj.var_30.isMeterSaucing);
            }
            if(§§pop())
            {
               false;
               false;
               _loc2_.gameObj.var_30.stopSauceMeter();
               true;
               true;
            }
            else if(_loc2_.isSquirting)
            {
               _loc2_.clip.gotoAndStop(2);
               _loc2_.clip.y += 2;
               ++_loc2_.squirtTimer;
               false;
               false;
               true;
               true;
               if(_loc2_.squirtTimer >= _loc2_.timeToSquirt)
               {
                  _loc2_.clip.gotoAndStop(1);
                  _loc2_.isSquirting = false;
                  _loc2_.isReturning = true;
               }
            }
            else if(_loc2_.isReturning)
            {
               _loc3_ = _loc2_.shelfX - _loc2_.clip.x;
               false;
               false;
               _loc4_ = _loc2_.shelfY - _loc2_.clip.y;
               _loc2_.clip.x += _loc3_ / _loc2_.tweenSpeed;
               _loc2_.clip.y += _loc4_ / _loc2_.tweenSpeed;
               true;
               true;
               true;
               true;
               if(Math.abs(_loc3_) <= 1 && Math.abs(_loc4_) <= 1 && !_loc2_.isRotating)
               {
                  _loc2_.clip.x = _loc2_.shelfX;
                  false;
                  false;
                  _loc2_.clip.y = _loc2_.shelfY;
                  _loc2_.clip.rotation = 0;
                  _loc2_.isReturning = false;
                  false;
                  false;
                  _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.updateBottle);
               }
            }
         }
      }
      
      public function rotateBottle() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc1_:SauceBottle = this;
         false;
         false;
         §§push(_loc1_.isDragging);
         if(!_loc1_.isDragging)
         {
            false;
            false;
            §§pop();
            §§push(_loc1_.isSquirting);
         }
         if(§§pop())
         {
            if(_loc1_.clip.rotation < 180)
            {
               true;
               true;
               _loc2_ = 180 - _loc1_.clip.rotation;
               _loc1_.clip.rotation += _loc2_ / _loc1_.rotationSpeed;
               true;
               true;
               if(_loc2_ <= 1)
               {
                  _loc1_.clip.rotation = 180;
                  false;
                  false;
                  _loc1_.isRotating = false;
                  true;
                  true;
               }
               else
               {
                  _loc1_.isRotating = true;
                  false;
                  false;
               }
            }
            else
            {
               _loc1_.isRotating = false;
            }
         }
         else if(_loc1_.clip.rotation > 0)
         {
            _loc2_ = _loc1_.clip.rotation;
            _loc1_.clip.rotation -= _loc2_ / _loc1_.tweenSpeed;
            if(_loc2_ <= 1)
            {
               _loc1_.clip.rotation = 0;
               _loc1_.isRotating = false;
            }
            else
            {
               _loc1_.isRotating = true;
               true;
               true;
            }
         }
         else
         {
            _loc1_.isRotating = false;
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:SauceBottle = this;
         true;
         true;
         _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBottle);
         _loc1_.clip.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBottle);
         true;
         true;
         _loc1_.clip.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBottle);
         try
         {
            false;
            false;
            _loc1_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.releaseBottle);
            true;
            true;
            _loc1_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc1_.releaseBottle);
         }
         catch(err:Error)
         {
         }
         if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateBottle);
         }
         try
         {
            _loc1_.clip.parent.removeChild(_loc1_.clip);
         }
         catch(err:Error)
         {
         }
         _loc1_.container = null;
         _loc1_.clip = null;
      }
   }
}
