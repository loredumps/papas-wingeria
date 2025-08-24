package wingGame.models
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.FoodData;
   import wingGame.screens.BuildScreen;
   
   public class WingOrder
   {
      
      private static var wingOrderCount:Number = 0;
      
      {
         false;
         true;
         true;
         true;
      }
      
      public var gameObj:class_4;
      
      public var id:Number;
      
      public var meatType:String;
      
      public var meatAmount:Number;
      
      public var cookAmount:Number;
      
      public var currentMeatAmount:Number;
      
      public var sauceType:String;
      
      public var sauceAmountValue:Number;
      
      public var sauceSpinValue:Number;
      
      public var sauceTumbleValue:Number;
      
      public var clip:MovieClip;
      
      public var isAttached:Boolean = false;
      
      private var meatClip:MovieClip;
      
      private var lidStickerClip:MovieClip;
      
      private var clipTargetX:Number = 0;
      
      private var isRollingOver:Boolean = false;
      
      private var isFinishing:Boolean = false;
      
      private var lidTweenSpeed:Number = 2;
      
      private var lidMaxY:Number = 50;
      
      private var emptyMaxY:Number = 120;
      
      private var emptyTweenSpeed:Number = 2;
      
      public function WingOrder(param1:class_4, param2:String, param3:Number, param4:Number)
      {
         super();
         true;
         true;
         this.gameObj = param1;
         true;
         true;
         this.meatType = param2;
         this.meatAmount = param3;
         this.cookAmount = param4;
         true;
         true;
         this.currentMeatAmount = param3;
         false;
         false;
         WingOrder.wingOrderCount += 1;
         this.id = WingOrder.wingOrderCount;
         class_5.method_25("New Order ID = " + this.id);
      }
      
      public function getSauceQualityFrame() : Number
      {
         var _loc1_:WingOrder = this;
         var _loc2_:Number = 1;
         var _loc3_:Number = _loc1_.getSaucePercent() * 100;
         true;
         true;
         var _loc4_:Number = this.sauceSpinValue * 100;
         false;
         false;
         var _loc5_:Number = this.sauceTumbleValue * 100;
         false;
         false;
         true;
         true;
         false;
         false;
         false;
         false;
         var _loc6_:Number;
         if((_loc6_ = (_loc3_ + _loc4_ + _loc5_) / 3) >= 90)
         {
            true;
            true;
            _loc2_ = 5;
         }
         else if(_loc6_ >= 80)
         {
            _loc2_ = 4;
         }
         else
         {
            true;
            true;
            if(_loc6_ >= 70)
            {
               false;
               false;
               false;
               false;
               _loc2_ = 3;
            }
            else if(_loc6_ >= 60)
            {
               true;
               true;
               _loc2_ = 2;
            }
            else
            {
               _loc2_ = 1;
            }
         }
         return _loc2_;
      }
      
      public function getSaucePercent() : Number
      {
         false;
         true;
         var _loc1_:WingOrder = this;
         var _loc2_:Number = 0;
         var _loc3_:Number = FoodData.getSauceNumberAmount(_loc1_.sauceAmountValue);
         var _loc4_:Number = _loc1_.meatAmount;
         true;
         true;
         var _loc5_:Number;
         if((_loc5_ = Math.abs(_loc3_ - _loc4_)) == 11)
         {
            false;
            false;
            true;
            true;
            _loc5_ = 1;
         }
         if(_loc3_ > _loc4_)
         {
            true;
            true;
            false;
            false;
            _loc5_ = 0;
         }
         false;
         false;
         true;
         true;
         return 1 - _loc5_ / 12;
      }
      
      public function getSauceMessage() : String
      {
         var _loc1_:WingOrder = this;
         var _loc2_:String = "";
         false;
         false;
         var _loc3_:Number = FoodData.getSauceNumberAmount(_loc1_.sauceAmountValue);
         var _loc4_:Number = _loc1_.meatAmount;
         false;
         false;
         false;
         false;
         if(_loc3_ == _loc4_)
         {
            true;
            true;
            _loc2_ = "great";
         }
         else if(Math.abs(_loc3_ - _loc4_) == 1)
         {
            true;
            true;
            _loc2_ = "good";
         }
         else
         {
            true;
            true;
            if(_loc3_ < _loc4_)
            {
               false;
               false;
               _loc2_ = "early";
            }
            else if(_loc3_ > _loc4_)
            {
               _loc2_ = "late";
            }
         }
         return _loc2_;
      }
      
      public function createBowl() : void
      {
         false;
         true;
         var _loc10_:MovieClip = null;
         var _loc1_:WingOrder = this;
         _loc1_.clip = new build_meat_bowl();
         _loc1_.clip.gotoAndStop(FoodData.getSauceFrame(_loc1_.sauceType));
         false;
         false;
         _loc1_.clip.lid.gotoAndStop(FoodData.getSauceFrame(_loc1_.sauceType));
         _loc1_.clip.lid.num_txt.text = String(_loc1_.currentMeatAmount);
         false;
         false;
         if(_loc1_.meatType == FoodData.MEAT_WING)
         {
            _loc1_.meatClip = new buildbowl_meat_wing();
            _loc1_.lidStickerClip = new meat_wing();
         }
         else
         {
            true;
            true;
            if(_loc1_.meatType == FoodData.MEAT_BONELESS)
            {
               _loc1_.meatClip = new buildbowl_meat_boneless();
               true;
               true;
               _loc1_.lidStickerClip = new meat_boneless();
            }
            else if(_loc1_.meatType == FoodData.MEAT_STRIPS)
            {
               _loc1_.meatClip = new buildbowl_meat_strips();
               _loc1_.lidStickerClip = new meat_strips();
               true;
               true;
            }
            else if(_loc1_.meatType == FoodData.MEAT_SHRIMP)
            {
               _loc1_.meatClip = new buildbowl_meat_shrimp();
               false;
               false;
               _loc1_.lidStickerClip = new meat_shrimp();
            }
         }
         9;
         true;
         true;
         var _loc3_:Number = _loc1_.cookAmount / FoodData.getMaxCookTime(_loc1_.meatType);
         var _loc4_:Number = Math.min(9,Math.floor(_loc3_ * (9 - 1)) + 1);
         false;
         false;
         var _loc5_:Number = _loc1_.getSauceQualityFrame();
         5;
         false;
         false;
         false;
         false;
         true;
         true;
         var _loc7_:Number = (FoodData.getSauceFrame(_loc1_.sauceType) - 1) * 5 + _loc5_;
         var _loc8_:int = 1;
         while(_loc8_ <= 3)
         {
            (_loc10_ = _loc1_.meatClip["meat" + _loc8_]).meat.gotoAndStop(_loc4_);
            _loc10_.sauce.gotoAndStop(_loc7_);
            true;
            true;
            _loc8_++;
         }
         _loc1_.clip.holder.addChild(_loc1_.meatClip);
         false;
         false;
         _loc1_.updateMeatVisibility();
         _loc1_.meatClip.visible = false;
         _loc1_.lidStickerClip.sauce.gotoAndStop(1);
         true;
         true;
         _loc1_.lidStickerClip.sauce.visible = false;
         _loc1_.lidStickerClip.meat.gotoAndStop(_loc4_);
         _loc1_.lidStickerClip.scaleX = 0.3;
         _loc1_.lidStickerClip.scaleY = 0.3;
         _loc1_.lidStickerClip.x = 69;
         _loc1_.lidStickerClip.y = 45;
         _loc1_.clip.lid.addChild(_loc1_.lidStickerClip);
         var _loc9_:GlowFilter = new GlowFilter(16777215,1,5,5,10);
         _loc1_.lidStickerClip.filters = [_loc9_];
         true;
         true;
         _loc1_.clip.buttonMode = true;
         _loc1_.clip.useHandCursor = true;
         _loc1_.clip.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBowl);
         false;
         false;
         _loc1_.clip.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBowl);
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBowl);
      }
      
      private function rolloverBowl(param1:MouseEvent) : void
      {
         var _loc2_:WingOrder = this;
         false;
         false;
         true;
         true;
         if(Boolean(_loc2_.gameObj.var_11.currentPlate) && _loc2_.gameObj.var_11.currentPlate.isFinished == false)
         {
            if(!_loc2_.isFinishing && Math.abs(_loc2_.gameObj.var_11.clip.bowlholder.x) <= 20)
            {
               _loc2_.isRollingOver = true;
               _loc2_.meatClip.visible = true;
               if(_loc2_.clip.lid.y == 0)
               {
                  _loc2_.gameObj.soundManager.playSound("lidslide.wav");
               }
            }
         }
      }
      
      private function rolloutBowl(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:WingOrder = this;
         false;
         false;
         _loc2_.isRollingOver = false;
      }
      
      private function clickBowl(param1:MouseEvent) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:FoodItem = null;
         var _loc2_:WingOrder = this;
         false;
         false;
         false;
         false;
         §§push(Boolean(_loc2_.gameObj.var_11.currentPlate));
         if(Boolean(_loc2_.gameObj.var_11.currentPlate))
         {
            false;
            false;
            §§pop();
            §§push(_loc2_.gameObj.var_11.currentPlate.isFinished == false);
         }
         if(§§pop())
         {
            false;
            false;
            if(_loc2_.currentMeatAmount > 0)
            {
               true;
               true;
               true;
               true;
               _loc3_ = _loc2_.clip.x + _loc2_.gameObj.var_11.clip.bowlholder.x + _loc2_.clip.width / 2;
               true;
               true;
               _loc4_ = _loc2_.clip.y + _loc2_.gameObj.var_11.clip.bowlholder.y + _loc2_.clip.height / 2;
               true;
               true;
               _loc5_ = 0;
               _loc6_ = new FoodItem(_loc2_.gameObj,_loc2_.meatType,_loc3_,_loc4_,_loc5_,_loc2_.cookAmount,_loc2_.sauceType,_loc2_.sauceAmountValue,_loc2_.meatAmount,_loc2_.sauceSpinValue,_loc2_.sauceTumbleValue,_loc2_.id);
               _loc2_.gameObj.var_11.addToMovingItems(_loc6_);
               false;
               false;
               var _loc7_:*;
               var _loc8_:* = (_loc7_ = _loc2_).currentMeatAmount - 1;
               false;
               false;
               _loc7_.currentMeatAmount = _loc8_;
               _loc2_.updateMeatVisibility();
               if(_loc2_.currentMeatAmount <= 0)
               {
                  _loc2_.isRollingOver = false;
                  _loc2_.isFinishing = true;
               }
            }
         }
      }
      
      public function trashEmptyBowl() : void
      {
         false;
         true;
         var _loc1_:WingOrder = this;
         true;
         true;
         if(_loc1_.currentMeatAmount <= 0)
         {
            true;
            true;
            _loc1_.gameObj.var_11.removeWingOrderBowl(_loc1_.id);
         }
         else
         {
            _loc1_.clip.y = 0;
            _loc1_.isFinishing = false;
            true;
            true;
            _loc1_.updateMeatVisibility();
         }
      }
      
      public function attachBowl(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:WingOrder = this;
         _loc3_.gameObj.var_11.clip.bowlholder.addChild(_loc3_.clip);
         _loc3_.clip.x = param1;
         false;
         false;
         _loc3_.clip.y = 0;
         false;
         false;
         _loc3_.isAttached = true;
         false;
         false;
         _loc3_.clipTargetX = param1;
         if(param2)
         {
            _loc3_.clip.x += 640;
         }
      }
      
      public function detachBowl() : void
      {
         var _loc1_:WingOrder = this;
         true;
         true;
         _loc1_.isAttached = false;
         false;
         false;
         if(_loc1_.clip.parent)
         {
            try
            {
               _loc1_.clip.parent.removeChild(_loc1_.clip);
            }
            catch(err:Error)
            {
            }
         }
         if(_loc1_.isFinishing)
         {
            _loc1_.trashEmptyBowl();
         }
      }
      
      public function updateBowl() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:WingOrder = this;
         if(_loc1_.clip.x != _loc1_.clipTargetX)
         {
            false;
            false;
            _loc3_ = _loc1_.clipTargetX - _loc1_.clip.x;
            _loc1_.clip.x += _loc3_ / _loc1_.lidTweenSpeed;
            if(Math.abs(_loc3_) <= 1)
            {
               false;
               false;
               _loc1_.clip.x = _loc1_.clipTargetX;
            }
         }
         if(_loc1_.isFinishing)
         {
            if(_loc1_.clip.y < _loc1_.emptyMaxY)
            {
               _loc4_ = _loc1_.emptyMaxY - _loc1_.clip.y;
               _loc1_.clip.y += _loc4_ / _loc1_.emptyTweenSpeed;
               if(Math.abs(_loc4_) <= 1)
               {
                  _loc1_.trashEmptyBowl();
                  false;
                  false;
               }
            }
         }
         else if(_loc1_.isRollingOver)
         {
            if(_loc1_.clip.lid.y < _loc1_.lidMaxY)
            {
               _loc2_ = _loc1_.lidMaxY - _loc1_.clip.lid.y;
               _loc1_.clip.lid.y += _loc2_ / _loc1_.lidTweenSpeed;
               if(Math.abs(_loc2_) <= 1)
               {
                  false;
                  false;
                  _loc1_.clip.lid.y = _loc1_.lidMaxY;
               }
            }
         }
         else if(_loc1_.clip.lid.y > 0)
         {
            false;
            false;
            _loc2_ = 0 - _loc1_.clip.lid.y;
            _loc1_.clip.lid.y += _loc2_ / _loc1_.lidTweenSpeed;
            if(Math.abs(_loc2_) <= 1)
            {
               _loc1_.clip.lid.y = 0;
               false;
               false;
               _loc1_.meatClip.visible = false;
            }
         }
      }
      
      private function updateMeatVisibility() : void
      {
         false;
         true;
         var _loc1_:WingOrder = this;
         if(_loc1_.meatClip != null)
         {
            false;
            false;
            false;
            false;
            if(_loc1_.currentMeatAmount < 3)
            {
               false;
               false;
               _loc1_.meatClip.meat3.visible = false;
            }
            else
            {
               _loc1_.meatClip.meat3.visible = true;
            }
            false;
            false;
            if(_loc1_.currentMeatAmount < 2)
            {
               _loc1_.meatClip.meat2.visible = false;
            }
            else
            {
               _loc1_.meatClip.meat2.visible = true;
               true;
               true;
            }
            if(_loc1_.currentMeatAmount == 0)
            {
               _loc1_.meatClip.meat1.visible = false;
            }
            else
            {
               _loc1_.meatClip.meat1.visible = true;
            }
         }
         _loc1_.clip.lid.num_txt.text = String(_loc1_.currentMeatAmount);
      }
      
      public function getReturnPoint() : Point
      {
         false;
         true;
         var _loc1_:WingOrder = this;
         var _loc2_:BuildScreen = _loc1_.gameObj.var_11;
         var _loc3_:Point = new Point(0,_loc2_.clip.bowlholder.y + 30);
         var _loc4_:Number = _loc2_.wingQueue.indexOf(_loc1_);
         true;
         true;
         var _loc5_:Number = _loc2_.currentBowlSet * _loc2_.bowlsPerScreen;
         true;
         true;
         false;
         false;
         §§push(_loc4_ >= _loc5_);
         if(_loc4_ >= _loc5_)
         {
            true;
            true;
            §§pop();
            §§push(_loc4_ < _loc5_ + _loc2_.bowlsPerScreen);
         }
         if(§§pop())
         {
            _loc3_.x = _loc2_.clip.bowlholder.x + _loc2_.startBowlX + (_loc4_ - _loc5_) * _loc2_.bowlPadding + _loc1_.clip.width / 2;
         }
         else
         {
            false;
            false;
            if(_loc4_ < _loc2_.currentBowlSet * _loc2_.bowlsPerScreen)
            {
               false;
               false;
               _loc3_.x = -100;
            }
            else
            {
               _loc3_.x = 740;
            }
         }
         return _loc3_;
      }
      
      public function setTargetX(param1:Number) : void
      {
         false;
         true;
         var _loc2_:WingOrder = this;
         false;
         false;
         _loc2_.clipTargetX = param1;
      }
      
      public function flipLid() : void
      {
         var _loc1_:WingOrder = this;
         var _loc2_:Number = _loc1_.getReturnPoint().x;
         true;
         true;
         §§push(_loc2_ > 0);
         if(_loc2_ > 0)
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(_loc2_ < 640);
         }
         if(§§pop())
         {
            false;
            false;
            _loc1_.clip.lid.y = _loc1_.lidMaxY;
         }
      }
      
      public function returnMeatToBowl() : void
      {
         false;
         true;
         var _loc1_:WingOrder = this;
         false;
         false;
         var _loc2_:*;
         var _loc3_:* = (_loc2_ = _loc1_).currentMeatAmount + 1;
         false;
         false;
         _loc2_.currentMeatAmount = _loc3_;
         _loc1_.updateMeatVisibility();
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:WingOrder = this;
         if(_loc1_.clip)
         {
            false;
            false;
            _loc1_.clip.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBowl);
            false;
            false;
            _loc1_.clip.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBowl);
            _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBowl);
         }
         §§push(Boolean(_loc1_.lidStickerClip));
         if(Boolean(_loc1_.lidStickerClip))
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(Boolean(_loc1_.lidStickerClip.parent));
         }
         if(§§pop())
         {
            _loc1_.lidStickerClip.parent.removeChild(_loc1_.lidStickerClip);
            false;
            false;
         }
         _loc1_.lidStickerClip = null;
         true;
         true;
         true;
         true;
         if(Boolean(_loc1_.meatClip) && Boolean(_loc1_.meatClip.parent))
         {
            false;
            false;
            _loc1_.meatClip.parent.removeChild(_loc1_.meatClip);
         }
         _loc1_.meatClip = null;
         false;
         false;
         if(Boolean(_loc1_.clip) && Boolean(_loc1_.clip.parent))
         {
            _loc1_.clip.parent.removeChild(_loc1_.clip);
         }
         _loc1_.clip = null;
      }
   }
}
