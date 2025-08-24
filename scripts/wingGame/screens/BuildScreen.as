package wingGame.screens
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.*;
   import package_4.*;
   import wingGame.data.*;
   import wingGame.models.*;
   
   public class BuildScreen
   {
       
      
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var gameObj:class_4;
      
      public var napkin:Napkin;
      
      public var wingQueue:Vector.<WingOrder>;
      
      public var currentPlate:FoodPlate;
      
      public var trashBMP:BitmapData = null;
      
      public var trashBitmap:Bitmap = null;
      
      public var trashTweenSpeed:Number = 4;
      
      public var trashMinY:Number = -300;
      
      public var sides:Array;
      
      public var dips:Array;
      
      public var movingItems:Vector.<FoodItem>;
      
      public var movingDips:Vector.<DipItem>;
      
      public var bowlsPerScreen:Number = 4;
      
      public var currentBowlSet:Number = 0;
      
      public var startBowlX:Number = 33;
      
      public var bowlPadding:Number = 144;
      
      public var bowlTweenSpeed:Number = 4;
      
      public var transitionLids:Vector.<MovieClip>;
      
      public var isPatternTraining:Boolean = false;
      
      public var lastPattern:Number = 0;
      
      public function BuildScreen(param1:class_4)
      {
         false;
         true;
         true;
         true;
         this.sides = [FoodData.SIDE_CARROT,FoodData.SIDE_CELERY,FoodData.SIDE_CHEESECUBES,FoodData.SIDE_FRY,FoodData.SIDE_GREENPEPPER,FoodData.SIDE_REDPEPPER];
         this.dips = [FoodData.DIP_AWESOMESAUCE,FoodData.DIP_BLUECHEESE,FoodData.DIP_KUNGPAO,FoodData.DIP_MANGOCHILI,FoodData.DIP_RANCH,FoodData.DIP_ZESTYPESTO];
         super();
         var _loc2_:BuildScreen = this;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:BuildScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         _loc1_.clip = new buildScreenMC();
         _loc1_.clip.mouseEnabled = false;
         _loc1_.clip.mouseChildren = true;
         _loc1_.clip.plateholder.mouseEnabled = false;
         _loc1_.clip.plateholder.mouseChildren = true;
         _loc1_.wingQueue = new Vector.<WingOrder>();
         false;
         false;
         _loc1_.movingItems = new Vector.<FoodItem>();
         _loc1_.movingDips = new Vector.<DipItem>();
         false;
         false;
         _loc1_.transitionLids = new Vector.<MovieClip>();
         _loc3_ = 0;
         while(_loc3_ < _loc1_.sides.length)
         {
            (_loc4_ = _loc1_.clip["bin_" + _loc1_.sides[_loc3_]]).mouseEnabled = true;
            _loc4_.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
            _loc4_.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
            _loc4_.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSide);
            if(_loc2_.hasTopping(_loc1_.sides[_loc3_]) == false)
            {
               _loc4_.gotoAndStop(5);
               _loc4_.buttonMode = false;
               true;
               true;
               _loc4_.mouseEnabled = false;
               _loc4_.useHandCursor = false;
            }
            else
            {
               _loc4_.gotoAndStop(1);
               _loc4_.buttonMode = true;
               false;
               false;
               _loc4_.mouseEnabled = true;
               _loc4_.useHandCursor = true;
               true;
               true;
            }
            _loc3_++;
         }
         _loc1_.clip.bin_napkin.num_txt.text = String(_loc1_.gameObj.userData.numNapkins);
         _loc1_.clip.bin_napkin.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
         _loc1_.clip.bin_napkin.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
         _loc1_.clip.bin_napkin.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickNapkin);
         true;
         true;
         _loc1_.clip.bin_napkin.gotoAndStop(1);
         _loc1_.clip.bin_napkin.buttonMode = true;
         _loc1_.clip.bin_napkin.mouseEnabled = true;
         _loc1_.clip.bin_napkin.useHandCursor = true;
         if(_loc1_.gameObj.userData.hasBonus("napkinholder") == false)
         {
            false;
            false;
            _loc1_.clip.bin_napkin.visible = false;
         }
         else if(_loc1_.gameObj.userData.numNapkins <= 0)
         {
            _loc1_.clip.bin_napkin.gotoAndPlay("close");
            true;
            true;
            _loc1_.clip.bin_napkin.buttonMode = false;
            _loc1_.clip.bin_napkin.mouseEnabled = false;
            _loc1_.clip.bin_napkin.useHandCursor = false;
         }
         _loc3_ = 0;
         true;
         true;
         while(_loc3_ < _loc1_.dips.length)
         {
            (_loc5_ = _loc1_.clip["bin_" + _loc1_.dips[_loc3_]]).mouseEnabled = true;
            _loc5_.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
            _loc5_.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
            _loc5_.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSide);
            if(_loc2_.hasTopping(_loc1_.dips[_loc3_]) == false)
            {
               _loc5_.gotoAndStop(5);
               _loc5_.buttonMode = false;
               _loc5_.mouseEnabled = false;
               _loc5_.useHandCursor = false;
            }
            else
            {
               _loc5_.gotoAndStop(1);
               _loc5_.buttonMode = true;
               _loc5_.mouseEnabled = true;
               _loc5_.useHandCursor = true;
            }
            _loc3_++;
         }
         true;
         true;
         _loc1_.clip.trash_btn.mouseEnabled = true;
         _loc1_.clip.trash_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTrash);
         true;
         true;
         _loc1_.clip.done_btn.mouseEnabled = true;
         _loc1_.clip.done_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickFinish);
         false;
         false;
         _loc1_.clip.next_btn.mouseEnabled = true;
         _loc1_.clip.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickNextBowls);
         true;
         true;
         _loc1_.clip.prev_btn.mouseEnabled = true;
         _loc1_.clip.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPrevBowls);
         _loc1_.clip.bowlholder.mouseEnabled = true;
         _loc1_.clip.bowlholder.mouseChildren = true;
         _loc1_.clip.trash_btn.visible = false;
         _loc1_.clip.done_btn.visible = false;
      }
      
      public function clickFinish(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:BuildScreen = this;
         false;
         false;
         if(!_loc2_.gameObj.var_14 || _loc2_.gameObj.var_14 && _loc2_.gameObj.var_12 == 25)
         {
            true;
            true;
            true;
            true;
            if(_loc2_.currentPlate != null)
            {
               _loc2_.currentPlate.finishPlate();
               true;
               true;
               _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            }
            _loc2_.clip.done_btn.visible = false;
            false;
            false;
            _loc2_.hideBins();
            true;
            true;
            if(_loc2_.gameObj.var_14)
            {
               true;
               true;
               _loc2_.gameObj.method_29();
            }
            if(_loc2_.gameObj.hud.whichContextTraining.indexOf("pattern") > -1)
            {
               _loc2_.gameObj.hud.removeContextTraining();
            }
         }
      }
      
      public function clickTrash(param1:MouseEvent) : void
      {
         var _loc2_:BuildScreen = this;
         true;
         true;
         if(_loc2_.gameObj.var_14 == false && _loc2_.currentPlate != null)
         {
            true;
            true;
            _loc2_.createTrashStandin(_loc2_.currentPlate.clip);
            _loc2_.gameObj.soundManager.playSound("press_machine_button.wav");
            _loc2_.currentPlate.destroy();
            _loc2_.currentPlate = null;
            false;
            false;
         }
         _loc2_.checkForPlate();
      }
      
      public function clickNextBowls(param1:MouseEvent) : void
      {
         var _loc2_:BuildScreen = this;
         var _loc3_:Number = Math.ceil(_loc2_.wingQueue.length / _loc2_.bowlsPerScreen);
         if(_loc2_.currentBowlSet < _loc3_ - 1)
         {
            false;
            false;
            ++_loc2_.currentBowlSet;
            _loc2_.populateBowls(true,1);
         }
      }
      
      public function clickPrevBowls(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:BuildScreen = this;
         true;
         true;
         if(_loc2_.currentBowlSet > 0)
         {
            var _loc3_:*;
            var _loc4_:* = (_loc3_ = _loc2_).currentBowlSet - 1;
            false;
            false;
            _loc3_.currentBowlSet = _loc4_;
            false;
            false;
            _loc2_.populateBowls(true,-1);
         }
      }
      
      public function populateBowls(param1:Boolean = true, param2:Number = 0) : void
      {
         var _loc4_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:MovieClip = null;
         var _loc9_:Number = NaN;
         var _loc3_:BuildScreen = this;
         false;
         false;
         _loc4_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc4_ >= _loc3_.wingQueue.length)
            {
               break;
            }
            _loc3_.wingQueue[_loc4_].detachBowl();
            _loc4_++;
         }
         if(param1)
         {
            false;
            false;
            false;
            false;
            if(param2 == 1)
            {
               _loc7_ = (_loc3_.currentBowlSet - 1) * _loc3_.bowlsPerScreen;
               _loc3_.clip.bowlholder.x = 640;
            }
            else
            {
               true;
               true;
               if(param2 == -1)
               {
                  false;
                  false;
                  _loc7_ = (_loc3_.currentBowlSet + 1) * _loc3_.bowlsPerScreen;
                  _loc3_.clip.bowlholder.x = -640;
                  false;
                  false;
               }
            }
            _loc4_ = _loc7_;
            while(_loc4_ < _loc7_ + _loc3_.bowlsPerScreen)
            {
               false;
               false;
               true;
               true;
               if(_loc4_ >= 0 && _loc4_ < _loc3_.wingQueue.length)
               {
                  (_loc8_ = new build_meat_lid()).gotoAndStop(FoodData.getSauceFrame(_loc3_.wingQueue[_loc4_].sauceType));
                  _loc8_.num_txt.text = String(_loc3_.wingQueue[_loc4_].currentMeatAmount);
                  _loc8_.x = _loc3_.startBowlX + (_loc4_ - _loc7_) * _loc3_.bowlPadding;
                  true;
                  true;
                  false;
                  false;
                  if(param2 == 1)
                  {
                     _loc8_.x -= 640;
                     false;
                     false;
                  }
                  else if(param2 == -1)
                  {
                     _loc8_.x += 640;
                  }
                  _loc8_.y = 0;
                  false;
                  false;
                  _loc3_.clip.bowlholder.addChild(_loc8_);
                  _loc3_.transitionLids.push(_loc8_);
               }
               _loc4_++;
            }
         }
         else
         {
            _loc3_.clip.bowlholder.x = 0;
         }
         true;
         true;
         false;
         false;
         true;
         true;
         var _loc5_:Number;
         _loc4_ = _loc5_ = _loc3_.currentBowlSet * _loc3_.bowlsPerScreen;
         while(true)
         {
            false;
            false;
            if(_loc4_ >= _loc5_ + _loc3_.bowlsPerScreen)
            {
               break;
            }
            false;
            false;
            true;
            true;
            if(_loc4_ >= 0 && _loc4_ < _loc3_.wingQueue.length)
            {
               false;
               false;
               true;
               true;
               _loc9_ = _loc3_.startBowlX + (_loc4_ - _loc5_) * _loc3_.bowlPadding;
               _loc3_.wingQueue[_loc4_].attachBowl(_loc9_);
            }
            _loc4_++;
            false;
            false;
         }
         false;
         false;
         false;
         false;
         if(_loc3_.currentBowlSet > 0)
         {
            false;
            false;
            _loc3_.clip.prev_btn.visible = true;
         }
         else
         {
            _loc3_.clip.prev_btn.visible = false;
         }
         var _loc6_:Number = Math.ceil(_loc3_.wingQueue.length / _loc3_.bowlsPerScreen);
         true;
         true;
         if(_loc3_.currentBowlSet < _loc6_ - 1)
         {
            _loc3_.clip.next_btn.visible = true;
            false;
            false;
         }
         else
         {
            _loc3_.clip.next_btn.visible = false;
         }
      }
      
      public function rolloverSide(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:BuildScreen = this;
         false;
         false;
         false;
         false;
         §§push(Boolean(_loc2_.currentPlate));
         if(Boolean(_loc2_.currentPlate))
         {
            true;
            true;
            §§pop();
            §§push(_loc2_.currentPlate.isFinished == false);
         }
         if(§§pop())
         {
            false;
            false;
            if(MovieClip(param1.currentTarget).currentFrame == 1)
            {
               MovieClip(param1.currentTarget).gotoAndStop(2);
            }
         }
      }
      
      public function rolloutSide(param1:MouseEvent) : void
      {
         false;
         true;
         this;
         if(MovieClip(param1.currentTarget).currentFrame == 2)
         {
            true;
            true;
            MovieClip(param1.currentTarget).gotoAndStop(1);
         }
      }
      
      public function clickSide(param1:MouseEvent) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:FoodItem = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:DipItem = null;
         var _loc2_:BuildScreen = this;
         true;
         true;
         false;
         false;
         §§push(Boolean(_loc2_.currentPlate));
         if(Boolean(_loc2_.currentPlate))
         {
            true;
            true;
            §§pop();
            §§push(_loc2_.currentPlate.isFinished == false);
         }
         if(§§pop())
         {
            _loc3_ = MovieClip(param1.currentTarget);
            true;
            true;
            false;
            false;
            _loc4_ = String(String(param1.currentTarget.name).split("_")[1]);
            if(_loc2_.sides.indexOf(_loc4_) > -1)
            {
               _loc5_ = _loc3_.x + _loc3_.width / 2;
               _loc6_ = _loc3_.y + _loc3_.height / 2;
               _loc7_ = 90;
               false;
               false;
               §§push(_loc4_ == FoodData.SIDE_CHEESECUBES || _loc4_ == FoodData.SIDE_CELERY);
               if(!(_loc4_ == FoodData.SIDE_CHEESECUBES || _loc4_ == FoodData.SIDE_CELERY))
               {
                  false;
                  false;
                  §§pop();
                  §§push(_loc4_ == FoodData.SIDE_REDPEPPER);
               }
               if(§§pop())
               {
                  _loc7_ = 270;
               }
               _loc8_ = new FoodItem(_loc2_.gameObj,_loc4_,_loc5_,_loc6_,_loc7_);
               _loc2_.addToMovingItems(_loc8_);
               _loc3_.gotoAndStop(1);
            }
            else
            {
               false;
               false;
               if(!_loc2_.gameObj.var_14 || _loc2_.gameObj.var_12 == 24)
               {
                  _loc9_ = _loc3_.x;
                  _loc10_ = _loc3_.y;
                  _loc11_ = new DipItem(_loc2_.gameObj,_loc4_,_loc9_,_loc10_);
                  _loc2_.currentPlate.addDipToPlate(_loc11_);
                  _loc3_.gotoAndStop(1);
               }
            }
         }
      }
      
      public function clickNapkin(param1:MouseEvent) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:BuildScreen = this;
         false;
         false;
         false;
         false;
         if(_loc2_.currentPlate && _loc2_.currentPlate.isFinished == false && _loc2_.gameObj.userData.numNapkins > 0)
         {
            _loc3_ = _loc2_.clip.bin_napkin;
            _loc4_ = _loc3_.x + _loc3_.width / 2;
            _loc5_ = _loc3_.y + _loc3_.height / 2;
            false;
            false;
            _loc2_.createNapkin(_loc4_,_loc5_);
            false;
            false;
            _loc3_.gotoAndStop(1);
            true;
            true;
            true;
            true;
            --_loc2_.gameObj.userData.numNapkins;
            true;
            true;
            _loc2_.clip.bin_napkin.num_txt.text = String(_loc2_.gameObj.userData.numNapkins);
            false;
            false;
            _loc2_.gameObj.soundManager.playSound("lidslide.wav");
            true;
            true;
            if(_loc2_.gameObj.userData.numNapkins <= 0)
            {
               _loc2_.gameObj.userData.numNapkins = 0;
               _loc2_.clip.bin_napkin.gotoAndPlay("close");
               _loc2_.clip.bin_napkin.buttonMode = false;
               _loc2_.clip.bin_napkin.mouseEnabled = false;
               _loc2_.clip.bin_napkin.useHandCursor = false;
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc1_:BuildScreen = this;
         _loc1_.clearTrashStandin();
         false;
         false;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.sides.length)
         {
            _loc3_ = _loc1_.clip["bin_" + _loc1_.sides[_loc2_]];
            false;
            false;
            _loc3_.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
            _loc3_.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
            _loc3_.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSide);
            true;
            true;
            _loc2_++;
         }
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.dips.length)
         {
            (_loc4_ = _loc1_.clip["bin_" + _loc1_.dips[_loc2_]]).removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
            true;
            true;
            _loc4_.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
            _loc4_.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSide);
            true;
            true;
            true;
            true;
            _loc2_++;
         }
         true;
         true;
         _loc1_.clip.trash_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTrash);
         _loc1_.clip.done_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickFinish);
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.clip = null;
      }
      
      public function activateScreen() : void
      {
         false;
         true;
         var _loc1_:BuildScreen = this;
         false;
         false;
         if(!_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            false;
            false;
            _loc1_.gameObj.var_15.addChild(_loc1_.clip);
         }
         _loc1_.checkForPlate();
         _loc1_.populateBowls(false);
         _loc1_.gameObj.soundManager.switchMusic("build");
         _loc1_.isActive = true;
         _loc1_.checkForPatternTraining();
      }
      
      public function deactivateScreen() : void
      {
         false;
         true;
         var _loc1_:BuildScreen = this;
         true;
         true;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            true;
            true;
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
            true;
            true;
         }
         if(_loc1_.isPatternTraining)
         {
            _loc1_.gameObj.hud.removeContextTraining();
            false;
            false;
         }
         _loc1_.isActive = false;
      }
      
      public function checkForPlate() : void
      {
         false;
         true;
         var _loc1_:BuildScreen = this;
         false;
         false;
         if(_loc1_.currentPlate == null)
         {
            false;
            false;
            _loc1_.currentPlate = new FoodPlate(_loc1_.gameObj);
            true;
            true;
            _loc1_.showBins();
         }
      }
      
      public function updateScreen() : void
      {
         false;
         true;
         var _loc2_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:BuildScreen = this;
         false;
         false;
         if(_loc1_.clip.bowlholder.x != 0)
         {
            true;
            true;
            _loc4_ = 0 - _loc1_.clip.bowlholder.x;
            false;
            false;
            _loc1_.clip.bowlholder.x += _loc4_ / _loc1_.bowlTweenSpeed;
            if(Math.abs(_loc4_) <= 1)
            {
               _loc1_.clip.bowlholder.x = 0;
               _loc2_ = 0;
               while(_loc2_ < _loc1_.transitionLids.length)
               {
                  _loc1_.transitionLids[_loc2_].parent.removeChild(_loc1_.transitionLids[_loc2_]);
                  _loc1_.transitionLids[_loc2_] = null;
                  _loc2_++;
               }
               _loc1_.transitionLids = null;
               true;
               true;
               _loc1_.transitionLids = new Vector.<MovieClip>();
            }
         }
         true;
         true;
         var _loc3_:Number = _loc1_.currentBowlSet * _loc1_.bowlsPerScreen;
         false;
         false;
         _loc2_ = _loc3_;
         while(_loc2_ < _loc3_ + _loc1_.bowlsPerScreen)
         {
            false;
            false;
            false;
            false;
            if(_loc2_ >= 0 && _loc2_ < _loc1_.wingQueue.length)
            {
               _loc1_.wingQueue[_loc2_].updateBowl();
            }
            _loc2_++;
         }
         if(_loc1_.trashBitmap != null)
         {
            false;
            false;
            _loc5_ = _loc1_.trashMinY - _loc1_.trashBitmap.y;
            _loc1_.trashBitmap.y += _loc5_ / _loc1_.trashTweenSpeed;
            if(Math.abs(_loc5_) <= 1)
            {
               _loc1_.clearTrashStandin();
            }
         }
      }
      
      public function restoreAfterServing() : void
      {
         var _loc1_:BuildScreen = this;
         false;
         false;
         if(_loc1_.currentPlate != null)
         {
            _loc1_.currentPlate.destroy();
            _loc1_.currentPlate = null;
         }
         _loc1_.checkForPlate();
      }
      
      public function showBins() : void
      {
         var _loc3_:int = 0;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:BuildScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         false;
         false;
         §§push(_loc2_.hasBonus("napkinholder"));
         if(_loc2_.hasBonus("napkinholder"))
         {
            false;
            false;
            §§pop();
            §§push(_loc2_.numNapkins > 0);
         }
         if(§§pop())
         {
            _loc1_.clip.bin_napkin.gotoAndPlay("open");
            _loc1_.clip.bin_napkin.buttonMode = true;
            _loc1_.clip.bin_napkin.mouseEnabled = true;
            _loc1_.clip.bin_napkin.useHandCursor = true;
         }
         _loc3_ = 0;
         while(true)
         {
            true;
            true;
            true;
            true;
            if(_loc3_ >= _loc1_.sides.length)
            {
               break;
            }
            _loc4_ = _loc1_.clip["bin_" + _loc1_.sides[_loc3_]];
            true;
            true;
            if(_loc2_.hasTopping(_loc1_.sides[_loc3_]) == false)
            {
               _loc4_.gotoAndStop(5);
               false;
               false;
               _loc4_.buttonMode = false;
               false;
               false;
               _loc4_.mouseEnabled = false;
               false;
               false;
               _loc4_.useHandCursor = false;
            }
            else
            {
               _loc4_.gotoAndPlay("open");
               _loc4_.buttonMode = true;
               _loc4_.mouseEnabled = true;
               _loc4_.useHandCursor = true;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc1_.dips.length)
         {
            _loc5_ = _loc1_.clip["bin_" + _loc1_.dips[_loc3_]];
            if(_loc2_.hasTopping(_loc1_.dips[_loc3_]) == false)
            {
               true;
               true;
               _loc5_.gotoAndStop(5);
               _loc5_.buttonMode = false;
               _loc5_.mouseEnabled = false;
               _loc5_.useHandCursor = false;
            }
            else
            {
               _loc5_.gotoAndPlay("open");
               _loc5_.buttonMode = true;
               _loc5_.mouseEnabled = true;
               true;
               true;
               _loc5_.useHandCursor = true;
            }
            _loc3_++;
         }
      }
      
      public function hideBins() : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:BuildScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc2_.hasBonus("napkinholder"))
         {
            _loc1_.clip.bin_napkin.gotoAndPlay("close");
            _loc1_.clip.bin_napkin.buttonMode = false;
            _loc1_.clip.bin_napkin.mouseEnabled = false;
            _loc1_.clip.bin_napkin.useHandCursor = false;
         }
         _loc3_ = 0;
         while(true)
         {
            true;
            true;
            true;
            true;
            if(_loc3_ >= _loc1_.sides.length)
            {
               break;
            }
            _loc4_ = _loc1_.clip["bin_" + _loc1_.sides[_loc3_]];
            if(_loc2_.hasTopping(_loc1_.sides[_loc3_]) == false)
            {
               _loc4_.gotoAndStop(5);
               true;
               true;
               _loc4_.buttonMode = false;
               _loc4_.mouseEnabled = false;
               _loc4_.useHandCursor = false;
            }
            else
            {
               _loc4_.gotoAndPlay("close");
               true;
               true;
               _loc4_.buttonMode = false;
               _loc4_.mouseEnabled = false;
               _loc4_.useHandCursor = false;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc1_.dips.length)
         {
            _loc5_ = _loc1_.clip["bin_" + _loc1_.dips[_loc3_]];
            true;
            true;
            if(_loc2_.hasTopping(_loc1_.dips[_loc3_]) == false)
            {
               _loc5_.gotoAndStop(5);
               _loc5_.buttonMode = false;
               _loc5_.mouseEnabled = false;
               _loc5_.useHandCursor = false;
            }
            else
            {
               _loc5_.gotoAndPlay("close");
               _loc5_.buttonMode = false;
               _loc5_.mouseEnabled = false;
               _loc5_.useHandCursor = false;
            }
            _loc3_++;
         }
      }
      
      public function addToWingQueue(param1:WingOrder) : void
      {
         var _loc2_:BuildScreen = this;
         false;
         false;
         _loc2_.wingQueue.push(param1);
      }
      
      public function removeFromWingQueue(param1:Number) : void
      {
         false;
         true;
         var _loc2_:BuildScreen = this;
         false;
         false;
         if(param1 < _loc2_.wingQueue.length)
         {
            true;
            true;
            _loc2_.wingQueue.splice(param1,1);
         }
      }
      
      public function getWingOrderBowl(param1:Number) : WingOrder
      {
         false;
         true;
         var _loc2_:BuildScreen = this;
         var _loc3_:WingOrder = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.wingQueue.length)
         {
            if(_loc2_.wingQueue[_loc4_].id == param1)
            {
               _loc3_ = _loc2_.wingQueue[_loc4_];
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function removeWingOrderBowl(param1:Number) : void
      {
         var _loc2_:BuildScreen = this;
         var _loc3_:Number = -1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.wingQueue.length)
         {
            if(_loc2_.wingQueue[_loc4_].id == param1)
            {
               false;
               false;
               false;
               false;
               true;
               true;
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
            false;
            false;
         }
         if(_loc3_ > -1)
         {
            _loc2_.wingQueue.splice(_loc3_,1);
            _loc2_.checkForBowlGaps();
         }
      }
      
      public function checkForBowlGaps() : void
      {
         var _loc5_:Number = NaN;
         var _loc1_:BuildScreen = this;
         var _loc2_:Number = _loc1_.currentBowlSet * _loc1_.bowlsPerScreen;
         var _loc3_:int = _loc2_;
         while(true)
         {
            false;
            false;
            if(_loc3_ >= _loc2_ + _loc1_.bowlsPerScreen)
            {
               break;
            }
            true;
            true;
            if(_loc3_ >= 0 && _loc3_ < _loc1_.wingQueue.length)
            {
               false;
               false;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               _loc5_ = _loc1_.startBowlX + (_loc3_ - _loc2_) * _loc1_.bowlPadding;
               if(_loc1_.wingQueue[_loc3_].isAttached == false)
               {
                  _loc1_.wingQueue[_loc3_].attachBowl(_loc5_,true);
               }
               else
               {
                  _loc1_.wingQueue[_loc3_].setTargetX(_loc5_);
                  false;
                  false;
               }
            }
            _loc3_++;
            false;
            false;
         }
         false;
         false;
         if(_loc1_.currentBowlSet > 0)
         {
            _loc1_.clip.prev_btn.visible = true;
         }
         else
         {
            _loc1_.clip.prev_btn.visible = false;
         }
         var _loc4_:Number = Math.ceil(_loc1_.wingQueue.length / _loc1_.bowlsPerScreen);
         true;
         true;
         false;
         false;
         if(_loc1_.currentBowlSet < _loc4_ - 1)
         {
            true;
            true;
            _loc1_.clip.next_btn.visible = true;
         }
         else
         {
            _loc1_.clip.next_btn.visible = false;
            true;
            true;
         }
         _loc1_.checkForPatternTraining();
      }
      
      public function checkForPatternTraining() : void
      {
         false;
         true;
         var _loc1_:BuildScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         _loc1_.isPatternTraining = false;
         true;
         true;
         if(!_loc1_.gameObj.var_14 && _loc1_.isActive)
         {
            true;
            true;
            true;
            true;
            true;
            true;
            §§push(_loc2_.currentDay == 1 && !_loc2_.hasTrainedPattern2 && (_loc1_.wingQueue.length >= 1 || _loc1_.currentPlate.getMeatItems().length > 0) && _loc1_.gameObj.var_18.hangerTicket != null);
            if(_loc2_.currentDay == 1 && !_loc2_.hasTrainedPattern2 && (_loc1_.wingQueue.length >= 1 || _loc1_.currentPlate.getMeatItems().length > 0) && _loc1_.gameObj.var_18.hangerTicket != null)
            {
               true;
               true;
               §§pop();
               false;
               false;
               §§push(_loc1_.gameObj.var_18.hangerTicket.ticketNumber == 2);
            }
            if(§§pop())
            {
               false;
               false;
               _loc1_.gameObj.hud.showContextTraining("pattern2");
               _loc1_.lastPattern = 2;
               false;
               false;
            }
            §§push(_loc2_.hasTrainedPattern3 == false && _loc2_.getRank() == 2 && _loc2_.hasTopping(FoodData.SAUCE_CALYPSO) && _loc1_.gameObj.var_18.tickets.length >= 1);
            if(_loc2_.hasTrainedPattern3 == false && _loc2_.getRank() == 2 && _loc2_.hasTopping(FoodData.SAUCE_CALYPSO) && _loc1_.gameObj.var_18.tickets.length >= 1)
            {
               §§pop();
               false;
               false;
               §§push(_loc1_.wingQueue.length >= 1);
               if(!(_loc1_.wingQueue.length >= 1))
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  §§push(_loc1_.currentPlate.getMeatItems().length > 0);
               }
            }
            §§push(§§pop() && _loc1_.gameObj.var_18.hangerTicket != null);
            if(§§pop() && _loc1_.gameObj.var_18.hangerTicket != null)
            {
               false;
               false;
               §§pop();
               false;
               false;
               false;
               false;
               §§push(_loc1_.gameObj.var_18.hangerTicket.customerType == 20);
            }
            if(§§pop())
            {
               false;
               false;
               _loc1_.gameObj.hud.showContextTraining("pattern3");
               _loc1_.lastPattern = 3;
            }
            if(_loc2_.hasTrainedPattern4 == false && _loc2_.getRank() == 3 && _loc2_.hasTopping(FoodData.SIDE_REDPEPPER) && _loc1_.gameObj.var_18.tickets.length >= 1 && (_loc1_.wingQueue.length >= 1 || _loc1_.currentPlate.getMeatItems().length > 0) && _loc1_.gameObj.var_18.hangerTicket != null && _loc1_.gameObj.var_18.hangerTicket.customerType == 13)
            {
               _loc1_.gameObj.hud.showContextTraining("pattern4");
               _loc1_.lastPattern = 4;
            }
            §§push(_loc2_.hasTrainedPattern5 == false && _loc2_.getRank() == 6 && _loc2_.hasTopping(FoodData.SAUCE_ATOMIC) && _loc1_.gameObj.var_18.tickets.length >= 1 && (_loc1_.wingQueue.length >= 1 || _loc1_.currentPlate.getMeatItems().length > 0));
            if(_loc2_.hasTrainedPattern5 == false && _loc2_.getRank() == 6 && _loc2_.hasTopping(FoodData.SAUCE_ATOMIC) && _loc1_.gameObj.var_18.tickets.length >= 1 && (_loc1_.wingQueue.length >= 1 || _loc1_.currentPlate.getMeatItems().length > 0))
            {
               false;
               false;
               §§pop();
               §§push(_loc1_.gameObj.var_18.hangerTicket != null);
            }
            if(§§pop() && _loc1_.gameObj.var_18.hangerTicket.customerType == 22)
            {
               false;
               false;
               _loc1_.gameObj.hud.showContextTraining("pattern5");
               _loc1_.lastPattern = 5;
            }
            §§push(_loc2_.hasTrainedPattern6 == false && _loc2_.getRank() == 8 && _loc2_.hasTopping(FoodData.SAUCE_HONEYMUSTARD) && _loc1_.gameObj.var_18.tickets.length >= 1);
            if(_loc2_.hasTrainedPattern6 == false && _loc2_.getRank() == 8 && _loc2_.hasTopping(FoodData.SAUCE_HONEYMUSTARD) && _loc1_.gameObj.var_18.tickets.length >= 1)
            {
               §§pop();
               false;
               false;
               §§push(_loc1_.wingQueue.length >= 1);
               if(!(_loc1_.wingQueue.length >= 1))
               {
                  false;
                  false;
                  §§pop();
                  §§push(_loc1_.currentPlate.getMeatItems().length > 0);
               }
            }
            if(§§pop() && _loc1_.gameObj.var_18.hangerTicket != null && _loc1_.gameObj.var_18.hangerTicket.customerType == 23)
            {
               false;
               false;
               true;
               true;
               _loc1_.gameObj.hud.showContextTraining("pattern6");
               _loc1_.lastPattern = 6;
            }
            false;
            false;
            §§push(_loc2_.hasTrainedPattern7 == false && _loc2_.getRank() == 11);
            if(_loc2_.hasTrainedPattern7 == false && _loc2_.getRank() == 11)
            {
               false;
               false;
               §§pop();
               §§push(_loc2_.hasTopping(FoodData.SAUCE_TERIYAKI));
            }
            if(§§pop())
            {
               true;
               true;
               §§pop();
               false;
               false;
               true;
               true;
               §§push(_loc1_.gameObj.var_18.tickets.length >= 1);
            }
            if(§§pop())
            {
               §§pop();
               false;
               false;
               §§push(_loc1_.wingQueue.length >= 1);
               if(!(_loc1_.wingQueue.length >= 1))
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  §§push(_loc1_.currentPlate.getMeatItems().length > 0);
               }
            }
            true;
            true;
            if(§§pop() && _loc1_.gameObj.var_18.hangerTicket != null && _loc1_.gameObj.var_18.hangerTicket.customerType == 25)
            {
               _loc1_.gameObj.hud.showContextTraining("pattern7");
               true;
               true;
               _loc1_.lastPattern = 7;
            }
            true;
            true;
            §§push(_loc2_.hasTrainedPattern8 == false && _loc2_.getRank() == 14 && _loc2_.hasTopping(FoodData.SAUCE_MEDIUM) && _loc1_.gameObj.var_18.tickets.length >= 1);
            if(_loc2_.hasTrainedPattern8 == false && _loc2_.getRank() == 14 && _loc2_.hasTopping(FoodData.SAUCE_MEDIUM) && _loc1_.gameObj.var_18.tickets.length >= 1)
            {
               §§pop();
               §§push(_loc1_.wingQueue.length >= 1);
               if(!(_loc1_.wingQueue.length >= 1))
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  §§push(_loc1_.currentPlate.getMeatItems().length > 0);
               }
            }
            §§push(§§pop() && _loc1_.gameObj.var_18.hangerTicket != null);
            if(§§pop() && _loc1_.gameObj.var_18.hangerTicket != null)
            {
               true;
               true;
               §§pop();
               §§push(_loc1_.gameObj.var_18.hangerTicket.customerType == 27);
            }
            if(§§pop())
            {
               _loc1_.gameObj.hud.showContextTraining("pattern8");
               _loc1_.lastPattern = 8;
            }
         }
      }
      
      public function addToMovingItems(param1:FoodItem) : void
      {
         false;
         true;
         var _loc2_:BuildScreen = this;
         true;
         true;
         _loc2_.movingItems.push(param1);
      }
      
      public function removeFromMovingItems(param1:Number, param2:Boolean = false) : void
      {
         false;
         true;
         var _loc3_:BuildScreen = this;
         true;
         true;
         §§push(param1 > -1);
         if(param1 > -1)
         {
            true;
            true;
            §§pop();
            true;
            true;
            §§push(param1 < _loc3_.movingItems.length);
         }
         if(§§pop())
         {
            if(param2)
            {
               false;
               false;
               _loc3_.movingItems[param1].destroy();
               false;
               false;
               _loc3_.movingItems[param1] = null;
               false;
               false;
            }
            _loc3_.movingItems.splice(param1,1);
         }
      }
      
      public function getMovingItemIndex(param1:FoodItem) : Number
      {
         var _loc2_:BuildScreen = this;
         var _loc3_:Number = -1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.movingItems.length)
         {
            if(_loc2_.movingItems[_loc4_] == param1)
            {
               false;
               false;
               _loc3_ = _loc4_;
               true;
               true;
               break;
            }
            _loc4_++;
            true;
            true;
         }
         return _loc3_;
      }
      
      public function addToMovingDips(param1:DipItem) : void
      {
         var _loc2_:BuildScreen = this;
         _loc2_.movingDips.push(param1);
      }
      
      public function removeFromMovingDips(param1:Number, param2:Boolean = false) : void
      {
         false;
         true;
         var _loc3_:BuildScreen = this;
         §§push(param1 > -1);
         if(param1 > -1)
         {
            true;
            true;
            §§pop();
            true;
            true;
            §§push(param1 < _loc3_.movingDips.length);
         }
         if(§§pop())
         {
            if(param2)
            {
               true;
               true;
               _loc3_.movingDips[param1].destroy();
               true;
               true;
               _loc3_.movingDips[param1] = null;
               false;
               false;
            }
            _loc3_.movingDips.splice(param1,1);
         }
      }
      
      public function getMovingDipIndex(param1:DipItem) : Number
      {
         false;
         true;
         var _loc2_:BuildScreen = this;
         var _loc3_:Number = -1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.movingDips.length)
         {
            if(_loc2_.movingDips[_loc4_] == param1)
            {
               true;
               true;
               false;
               false;
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function clearTrashStandin() : void
      {
         false;
         true;
         var _loc1_:BuildScreen = this;
         if(_loc1_.trashBitmap)
         {
            _loc1_.trashBitmap.parent.removeChild(_loc1_.trashBitmap);
            if(_loc1_.trashBMP)
            {
               _loc1_.trashBMP.dispose();
               _loc1_.trashBMP = null;
            }
            _loc1_.trashBitmap = null;
         }
      }
      
      public function createTrashStandin(param1:MovieClip) : void
      {
         false;
         true;
         var _loc2_:BuildScreen = this;
         _loc2_.clearTrashStandin();
         _loc2_.trashBMP = new BitmapData(param1.width,param1.height,true,0);
         true;
         true;
         _loc2_.trashBMP.draw(param1);
         _loc2_.trashBitmap = new Bitmap(_loc2_.trashBMP);
         _loc2_.clip.addChild(_loc2_.trashBitmap);
         false;
         false;
         _loc2_.trashBitmap.x = param1.x;
         _loc2_.trashBitmap.y = param1.y;
      }
      
      public function createNapkin(param1:Number, param2:Number) : void
      {
         var _loc3_:BuildScreen = this;
         _loc3_.removeNapkin();
         _loc3_.napkin = new Napkin(_loc3_.gameObj,param1,param2);
      }
      
      public function removeNapkin() : void
      {
         false;
         true;
         var _loc1_:BuildScreen = this;
         false;
         false;
         true;
         true;
         if(_loc1_.napkin != null)
         {
            _loc1_.napkin.destroy();
            _loc1_.napkin = null;
         }
      }
      
      public function initStationUpgrades() : void
      {
         false;
         true;
         var _loc1_:BuildScreen = this;
         if(_loc1_.gameObj.userData.hasBonus("napkinholder"))
         {
            false;
            false;
            _loc1_.clip.bin_napkin.visible = true;
            _loc1_.clip.bin_napkin.num_txt.text = String(_loc1_.gameObj.userData.numNapkins);
            if(_loc1_.gameObj.userData.numNapkins <= 0)
            {
               _loc1_.clip.bin_napkin.gotoAndPlay("close");
               _loc1_.clip.bin_napkin.buttonMode = false;
               _loc1_.clip.bin_napkin.mouseEnabled = false;
               _loc1_.clip.bin_napkin.useHandCursor = false;
            }
         }
         else
         {
            _loc1_.clip.bin_napkin.visible = false;
         }
      }
      
      public function restoreSoundAfterAd() : void
      {
      }
   }
}
