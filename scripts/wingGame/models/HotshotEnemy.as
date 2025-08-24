package wingGame.models
{
   import flash.display.MovieClip;
   import flash.utils.getDefinitionByName;
   import wingGame.screens.*;
   
   public class HotshotEnemy
   {
      
      private static const _2PI:Number = Math.PI * 2;
      
      public static const ACTION_POPUP:String = "popup";
      
      public static const ACTION_WALK:String = "walk";
      
      public static const ACTION_FLY:String = "fly";
      
      public static const ACTION_JUMP:String = "jump";
      
      public static const TYPE_PEPPER:String = "habandito";
      
      public static const TYPE_GUAC:String = "guacamonster";
      
      public static const TYPE_PINTO:String = "pinto";
      
      public static const TYPE_FLYER:String = "chilifeather";
      
      {
         false;
         true;
         false;
         false;
      }
      
      public var popupdepth_habandito:Number = 120;
      
      public var popupdepth_guacamonster:Number = 200;
      
      public var popupdepth_pinto:Number = 130;
      
      public var popupdepth_chilifeather:Number = 120;
      
      public var minigame:MiniGameHotshot;
      
      public var clip:MovieClip;
      
      public var action:String;
      
      public var type:String;
      
      public var bg:Boolean = false;
      
      public var startTime:Number = 0;
      
      public var duration:Number = 30;
      
      public var startX:Number = 0;
      
      public var startY:Number = 0;
      
      public var endX:Number = 0;
      
      public var endY:Number = 0;
      
      public var useRotation:Number = 0;
      
      public var jumpHeight:Number = 100;
      
      public var jumpPeriod:Number = 20;
      
      public var jumpTimer:Number = 0;
      
      public var popupDuration:Number = 15;
      
      public var walkBounceRange:Number = 6;
      
      public var flyBounceRange:Number = 8;
      
      public var durationTimer:Number = 0;
      
      public var isActive:Boolean = false;
      
      public var canHit:Boolean = false;
      
      public var didHit:Boolean = false;
      
      public var hitAtTime:Number = 0;
      
      public var hitAtY:Number = 0;
      
      public function HotshotEnemy(param1:Number, param2:Number, param3:MiniGameHotshot, param4:String, param5:String, param6:Boolean, param7:Number, param8:Number, param9:Number = -1, param10:Number = -1, param11:Number = 0, param12:Number = 0, param13:Number = 0)
      {
         false;
         true;
         super();
         this.minigame = param3;
         this.type = param4;
         this.action = param5;
         this.duration = param2;
         false;
         false;
         this.startTime = param1;
         false;
         false;
         this.startX = param7;
         false;
         false;
         this.startY = param8;
         this.endX = param9;
         this.endY = param10;
         false;
         false;
         this.useRotation = param11;
         this.bg = param6;
         this.jumpHeight = param12;
         false;
         false;
         this.jumpPeriod = param13;
         false;
         false;
         false;
         false;
         §§push(this.action == HotshotEnemy.ACTION_POPUP && param9 == -1);
         if(this.action == HotshotEnemy.ACTION_POPUP && param9 == -1)
         {
            false;
            false;
            §§pop();
            §§push(param10 == -1);
         }
         if(§§pop())
         {
            this.endX = this.startX;
            this.endY = this.startY;
            this.startY = this.endY + this["popupdepth_" + this.type];
         }
      }
      
      public function clone(param1:MiniGameHotshot) : HotshotEnemy
      {
         var _loc2_:HotshotEnemy = this;
         return new HotshotEnemy(_loc2_.startTime,_loc2_.duration,param1,_loc2_.type,_loc2_.action,_loc2_.bg,_loc2_.startX,_loc2_.startY,_loc2_.endX,_loc2_.endY,_loc2_.useRotation,_loc2_.jumpHeight,_loc2_.jumpPeriod);
      }
      
      public function initEnemy() : void
      {
         var _loc1_:HotshotEnemy = this;
         var _loc2_:Class = getDefinitionByName("minigame_hotshot_" + _loc1_.type) as Class;
         _loc1_.clip = new _loc2_() as MovieClip;
         _loc1_.clip.x = _loc1_.startX;
         _loc1_.clip.y = _loc1_.startY;
         _loc1_.clip.rotation = _loc1_.useRotation;
         _loc1_.clip.mouseChildren = false;
         _loc1_.clip.splat.visible = false;
         true;
         true;
         if(_loc1_.action == HotshotEnemy.ACTION_POPUP)
         {
            if(Math.random() < 0.5)
            {
               _loc1_.clip.scaleX = -1;
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
            true;
            true;
            §§push(_loc1_.action == HotshotEnemy.ACTION_FLY || _loc1_.action == HotshotEnemy.ACTION_WALK);
            if(!(_loc1_.action == HotshotEnemy.ACTION_FLY || _loc1_.action == HotshotEnemy.ACTION_WALK))
            {
               false;
               false;
               §§pop();
               false;
               false;
               §§push(_loc1_.action == HotshotEnemy.ACTION_JUMP);
            }
            if(§§pop())
            {
               false;
               false;
               if(_loc1_.startX < _loc1_.endX)
               {
                  _loc1_.clip.scaleX = -1;
                  false;
                  false;
               }
            }
         }
         _loc1_.canHit = true;
         _loc1_.isActive = true;
         true;
         true;
         if(_loc1_.bg)
         {
            _loc1_.minigame.clip.bgenemyholder.addChild(_loc1_.clip);
            true;
            true;
         }
         else
         {
            _loc1_.minigame.clip.enemyholder.addChild(_loc1_.clip);
         }
      }
      
      public function updateEnemy() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:HotshotEnemy = this;
         false;
         false;
         true;
         true;
         §§push(_loc1_.isActive);
         if(_loc1_.isActive)
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(!_loc1_.didHit);
         }
         if(§§pop())
         {
            var _loc5_:*;
            var _loc6_:* = (_loc5_ = _loc1_).durationTimer + 1;
            true;
            true;
            _loc5_.durationTimer = _loc6_;
            false;
            false;
            false;
            false;
            true;
            true;
            false;
            false;
            if(_loc1_.action == HotshotEnemy.ACTION_POPUP && _loc1_.durationTimer <= _loc1_.popupDuration)
            {
               false;
               false;
               _loc2_ = _loc1_.durationTimer;
               _loc1_.clip.x = _loc1_.easeOut(_loc2_,_loc1_.startX,_loc1_.endX - _loc1_.startX,_loc1_.popupDuration);
               _loc1_.clip.y = _loc1_.easeOut(_loc2_,_loc1_.startY,_loc1_.endY - _loc1_.startY,_loc1_.popupDuration);
            }
            else
            {
               true;
               true;
               false;
               false;
               if(_loc1_.action == HotshotEnemy.ACTION_POPUP && _loc1_.durationTimer <= _loc1_.duration + _loc1_.popupDuration)
               {
                  true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  _loc2_ = _loc1_.durationTimer - _loc1_.duration;
                  _loc1_.clip.x = _loc1_.easeIn(_loc2_,_loc1_.endX,_loc1_.startX - _loc1_.endX,_loc1_.popupDuration);
                  _loc1_.clip.y = _loc1_.easeIn(_loc2_,_loc1_.endY,_loc1_.startY - _loc1_.endY,_loc1_.popupDuration);
               }
               else
               {
                  true;
                  true;
                  if(_loc1_.action == HotshotEnemy.ACTION_POPUP && _loc1_.durationTimer == _loc1_.duration + _loc1_.popupDuration + 1)
                  {
                     _loc1_.minigame.removeEnemy(_loc1_);
                  }
               }
            }
            false;
            false;
            if(_loc1_.action == HotshotEnemy.ACTION_WALK)
            {
               _loc2_ = _loc1_.durationTimer;
               _loc1_.clip.x = _loc1_.tween(_loc2_,_loc1_.startX,_loc1_.endX - _loc1_.startX,_loc1_.duration);
               true;
               true;
               _loc1_.clip.y = _loc1_.tween(_loc2_,_loc1_.startY,_loc1_.endY - _loc1_.startY,_loc1_.duration);
               _loc1_.clip.y += _loc1_.walkBounceRange * Math.sin(_loc1_.clip.x / 20 + _loc1_.startTime);
               if(_loc1_.durationTimer >= _loc1_.duration)
               {
                  false;
                  false;
                  _loc1_.minigame.removeEnemy(_loc1_);
               }
            }
            else
            {
               false;
               false;
               if(_loc1_.action == HotshotEnemy.ACTION_FLY)
               {
                  true;
                  true;
                  _loc2_ = _loc1_.durationTimer;
                  false;
                  false;
                  _loc1_.clip.x = _loc1_.tween(_loc2_,_loc1_.startX,_loc1_.endX - _loc1_.startX,_loc1_.duration);
                  _loc1_.clip.y = _loc1_.tween(_loc2_,_loc1_.startY,_loc1_.endY - _loc1_.startY,_loc1_.duration);
                  _loc1_.clip.y += _loc1_.flyBounceRange * Math.sin(_loc1_.clip.x / 100 + _loc1_.startTime);
                  _loc1_.clip.rotation = 5 * Math.sin(_loc1_.durationTimer / 8 + _loc1_.startTime);
                  true;
                  true;
                  if(_loc1_.durationTimer >= _loc1_.duration)
                  {
                     true;
                     true;
                     false;
                     false;
                     _loc1_.minigame.removeEnemy(_loc1_);
                  }
               }
               else if(_loc1_.action == HotshotEnemy.ACTION_JUMP)
               {
                  _loc2_ = _loc1_.durationTimer;
                  _loc1_.clip.x = _loc1_.tween(_loc2_,_loc1_.startX,_loc1_.endX - _loc1_.startX,_loc1_.duration);
                  true;
                  true;
                  _loc1_.clip.y = _loc1_.tween(_loc2_,_loc1_.startY,_loc1_.endY - _loc1_.startY,_loc1_.duration);
                  _loc6_ = (_loc5_ = _loc1_).jumpTimer + 1;
                  true;
                  true;
                  _loc5_.jumpTimer = _loc6_;
                  if(_loc1_.jumpTimer > _loc1_.jumpPeriod)
                  {
                     false;
                     false;
                     _loc1_.jumpTimer = 0;
                  }
                  if(_loc1_.jumpTimer <= _loc1_.jumpPeriod / 2)
                  {
                     _loc1_.clip.y -= _loc1_.quadEaseOut(_loc1_.jumpTimer,0,_loc1_.jumpHeight,_loc1_.jumpPeriod / 2);
                     true;
                     true;
                  }
                  else
                  {
                     _loc1_.clip.y -= _loc1_.quadEaseIn(_loc1_.jumpTimer - _loc1_.jumpPeriod / 2,_loc1_.jumpHeight,0 - _loc1_.jumpHeight,_loc1_.jumpPeriod / 2);
                  }
                  if(_loc1_.durationTimer >= _loc1_.duration)
                  {
                     false;
                     false;
                     _loc1_.minigame.removeEnemy(_loc1_);
                  }
               }
            }
         }
         else if(_loc1_.didHit)
         {
            if(_loc1_.clip.rotation < 0)
            {
               false;
               false;
               _loc1_.clip.rotation += 0.2;
               if(_loc1_.clip.rotation > 0)
               {
                  _loc1_.clip.rotation = 0;
               }
            }
            else if(_loc1_.clip.rotation > 0)
            {
               _loc1_.clip.rotation -= 0.2;
               if(_loc1_.clip.rotation < 0)
               {
                  _loc1_.clip.rotation = 0;
               }
            }
            _loc3_ = 10;
            _loc4_ = 20;
            false;
            false;
            true;
            true;
            ++_loc1_.durationTimer;
            false;
            false;
            _loc2_ = _loc1_.durationTimer - _loc1_.hitAtTime;
            true;
            true;
            if(_loc2_ <= _loc3_)
            {
               _loc1_.clip.rotationY = _loc1_.quadEaseOut(_loc2_,0,360,_loc3_);
            }
            else
            {
               _loc1_.clip.rotationY = 0;
            }
            true;
            true;
            if(_loc2_ < _loc3_ / 2)
            {
               _loc1_.clip.y = _loc1_.quadEaseOut(_loc2_,_loc1_.hitAtY,-40,_loc3_ / 2);
            }
            else if(_loc2_ <= _loc3_)
            {
               _loc1_.clip.y = _loc1_.quadEaseIn(_loc2_ - _loc3_ / 2,_loc1_.hitAtY - 40,40,_loc3_ / 2);
            }
            else
            {
               _loc1_.clip.y = _loc1_.tween(_loc2_ - _loc3_,_loc1_.hitAtY,700 - _loc1_.hitAtY,_loc4_);
            }
            if(_loc1_.durationTimer >= _loc1_.hitAtTime + _loc4_ + _loc3_)
            {
               true;
               true;
               false;
               false;
               _loc1_.minigame.removeEnemy(_loc1_);
            }
         }
         else if(_loc1_.minigame.gameTimer >= _loc1_.startTime && !_loc1_.isActive)
         {
            _loc1_.initEnemy();
         }
      }
      
      public function checkHittingEnemy(param1:Number, param2:Number) : Boolean
      {
         false;
         true;
         var _loc3_:HotshotEnemy = this;
         var _loc4_:Boolean = false;
         false;
         false;
         if(_loc3_.isActive && !_loc3_.didHit)
         {
            true;
            true;
            if(_loc3_.clip.hitTestPoint(param1,param2,true))
            {
               true;
               true;
               _loc3_.didHit = true;
               _loc3_.hitAtTime = _loc3_.durationTimer;
               _loc3_.hitAtY = _loc3_.clip.y;
               _loc4_ = true;
               _loc3_.clip.splat.visible = true;
            }
         }
         return _loc4_;
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:HotshotEnemy = this;
         true;
         true;
         if(_loc1_.clip != null)
         {
            try
            {
               _loc1_.clip.parent.removeChild(_loc1_.clip);
            }
            catch(err:Error)
            {
            }
         }
         _loc1_.clip = null;
      }
      
      public function easeIn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 15, param6:Number = 10) : Number
      {
         var _loc7_:Number = NaN;
         true;
         true;
         true;
         true;
         if(param1 == 0)
         {
            return param2;
         }
         true;
         true;
         true;
         true;
         true;
         true;
         true;
         true;
         true;
         true;
         if((param1 = param1 / param4) == 1)
         {
            return param2 + param3;
         }
         false;
         false;
         if(!param6)
         {
            false;
            false;
            param6 = param4 * 0.3;
         }
         false;
         false;
         false;
         false;
         if(!param5 || param3 > 0 && param5 < param3 || param3 < 0 && param5 < -param3)
         {
            false;
            false;
            param5 = param3;
            _loc7_ = param6 / 4;
         }
         else
         {
            _loc7_ = param6 / _2PI * Math.asin(param3 / param5);
         }
         return -(param5 * Math.pow(2,10 * (param1 = param1 - 1)) * Math.sin((param1 * param4 - _loc7_) * _2PI / param6)) + param2;
      }
      
      public function easeOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 15, param6:Number = 10) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            true;
            true;
            return param2;
         }
         true;
         true;
         false;
         false;
         true;
         true;
         if((param1 = param1 / param4) == 1)
         {
            true;
            true;
            return param2 + param3;
         }
         if(!param6)
         {
            true;
            true;
            true;
            true;
            false;
            false;
            param6 = param4 * 0.3;
         }
         true;
         true;
         false;
         false;
         §§push(!param5);
         if(!!param5)
         {
            §§pop();
            true;
            true;
            false;
            false;
            §§push(param3 > 0);
            if(param3 > 0)
            {
               false;
               false;
               §§pop();
               §§push(param5 < param3);
            }
         }
         if(!§§pop())
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(param3 < 0);
            if(param3 < 0)
            {
               false;
               false;
               §§pop();
               true;
               true;
               §§push(param5 < -param3);
            }
         }
         if(§§pop())
         {
            false;
            false;
            false;
            false;
            param5 = param3;
            _loc7_ = param6 / 4;
         }
         else
         {
            true;
            true;
            _loc7_ = param6 / _2PI * Math.asin(param3 / param5);
         }
         true;
         true;
         return param5 * Math.pow(2,-10 * param1) * Math.sin((param1 * param4 - _loc7_) * _2PI / param6) + param3 + param2;
      }
      
      public function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 15, param6:Number = 10) : Number
      {
         false;
         true;
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         true;
         true;
         true;
         true;
         if((param1 = param1 / (param4 * 0.5)) == 2)
         {
            false;
            false;
            return param2 + param3;
         }
         if(!param6)
         {
            true;
            true;
            true;
            true;
            true;
            true;
            param6 = param4 * (0.3 * 1.5);
         }
         false;
         false;
         if(!param5 || param3 > 0 && param5 < param3 || param3 < 0 && param5 < -param3)
         {
            false;
            false;
            param5 = param3;
            false;
            false;
            _loc7_ = param6 / 4;
         }
         else
         {
            true;
            true;
            _loc7_ = param6 / _2PI * Math.asin(param3 / param5);
         }
         if(param1 < 1)
         {
            true;
            true;
            return -0.5 * (param5 * Math.pow(2,10 * (param1 = param1 - 1)) * Math.sin((param1 * param4 - _loc7_) * _2PI / param6)) + param2;
         }
         true;
         true;
         true;
         true;
         return param5 * Math.pow(2,-10 * (param1 = param1 - 1)) * Math.sin((param1 * param4 - _loc7_) * _2PI / param6) * 0.5 + param3 + param2;
      }
      
      public function quadEaseIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         true;
         true;
         true;
         true;
         true;
         true;
         true;
         true;
         false;
         false;
         return param3 * (param1 = param1 / param4) * param1 + param2;
      }
      
      public function quadEaseOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         false;
         true;
         true;
         true;
         false;
         false;
         true;
         true;
         false;
         false;
         false;
         false;
         true;
         true;
         true;
         true;
         true;
         true;
         false;
         false;
         true;
         true;
         return -param3 * (param1 = param1 / param4) * (param1 - 2) + param2;
      }
      
      public function tween(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         false;
         true;
         true;
         true;
         false;
         false;
         return param3 * param1 / param4 + param2;
      }
   }
}
