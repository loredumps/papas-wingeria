package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.ui.Mouse;
   import flash.utils.getDefinitionByName;
   import package_2.*;
   import package_4.*;
   import wingGame.data.*;
   import wingGame.models.Worker;
   
   public class MiniGameBurgerzilla extends MiniGame
   {
       
      
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var whichDifficulty:Number = 1;
      
      public var shouldFollow:Boolean = true;
      
      public var isDropping:Boolean = true;
      
      public var stackedParts:Vector.<MovieClip>;
      
      public var fallingParts:Vector.<MovieClip>;
      
      public var currentStackHeight:Number = 0;
      
      public var toppingOptions:Array;
      
      public var toppingHeights:Array;
      
      public var minDropX:Number = 75;
      
      public var maxDropX:Number = 565;
      
      public var dropSpeed:Number = 10;
      
      public var rotateSpeed:Number = 25;
      
      public var edgeBuffer:Number = 15;
      
      public var toppingWidth:Number = 35;
      
      public var holderY:Number = 115;
      
      public var dropTimer:Number = 0;
      
      public var dropTimerInterval:Number = 45;
      
      public var dropTimerMax:Number = 60;
      
      public var lastDropX:Number = 320;
      
      public var workerSpeed:Number = 8;
      
      public var workerMaxSpeed:Number = 30;
      
      public var minWorkerX:Number = 35;
      
      public var maxWorkerX:Number = 595;
      
      public var displacementRange:Number = 5;
      
      public var workerNormalY:Number = 280;
      
      public var targetHeight:Number = 260;
      
      public var allowedMisses:Number = 5;
      
      public var currentMisses:Number = 0;
      
      public var isDroppingPlate:Boolean = false;
      
      public var isRaisingPlate:Boolean = false;
      
      public var raiseTimer:Number = 0;
      
      public var raiseTimerMax:Number = 40;
      
      public var isIntro:Boolean = true;
      
      public var introTimer:Number = 0;
      
      public var introTimerMax:Number = 30;
      
      public var worker:Worker;
      
      public function MiniGameBurgerzilla(param1:MiniGameScreen, param2:MovieClip)
      {
         false;
         true;
         this.prizeSKUs = ["poster_burgeria","shirt_09","furni_burgertable_small","pants_14","furni_burgertable_medium","wall33","jacket_11","furni_burgertable_large","hat03","furni_burger_burger","belt_09","floor26","glasses07","furni_burger_hangingplant"];
         this.prizeIsClothing = [false,true,false,true,false,false,true,false,true,false,true,false,true,false];
         this.prizeClothingMode = ["","gender","","gender","","","gender","","hat","","gender","","",""];
         this.allowedForRandom = [1,0,1,0,1,0,0,1,0,1,0,0,0,1];
         this.toppingOptions = ["bun_heel","cheese","pepperjack","swiss","lettuce","tomato","patty","onion","onionring","pickle","bun_top"];
         this.toppingHeights = [7,5,5,5,8,8,9,8,9,8,1];
         super(param1,param2);
      }
      
      override public function setupScreen() : void
      {
         var _loc1_:MiniGameBurgerzilla = this;
         _loc1_.clip = new minigameBurgerzillaMC();
         false;
         false;
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Burgerzilla");
         _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
         _loc1_.stackedParts = new Vector.<MovieClip>();
         _loc1_.fallingParts = new Vector.<MovieClip>();
         true;
         true;
         _loc1_.worker = new Worker(_loc1_.screen.gameObj,_loc1_.clip.worker.inside,_loc1_.screen.gameObj.workerData,0,0,0.7);
         _loc1_.worker.playAnimation("burgerzilla_stand");
         _loc1_.reset();
      }
      
      public function reset(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc2_:MiniGameBurgerzilla = this;
         false;
         false;
         _loc2_.decideDifficulty();
         _loc3_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc3_ >= _loc2_.fallingParts.length)
            {
               break;
            }
            _loc2_.fallingParts[_loc3_].parent.removeChild(_loc2_.fallingParts[_loc3_]);
            _loc3_++;
         }
         _loc2_.fallingParts = null;
         _loc2_.fallingParts = new Vector.<MovieClip>();
         _loc3_ = 0;
         true;
         true;
         while(_loc3_ < _loc2_.stackedParts.length)
         {
            _loc2_.stackedParts[_loc3_].parent.removeChild(_loc2_.stackedParts[_loc3_]);
            _loc3_++;
         }
         _loc2_.stackedParts = null;
         _loc2_.stackedParts = new Vector.<MovieClip>();
         _loc3_ = 0;
         while(_loc3_ < 5)
         {
            if(_loc3_ < _loc2_.allowedMisses)
            {
               false;
               false;
               _loc2_.clip["drop_" + _loc3_].visible = true;
               _loc2_.clip["drop_" + _loc3_].gotoAndStop(1);
            }
            else
            {
               _loc2_.clip["drop_" + _loc3_].visible = false;
            }
            _loc3_++;
         }
         _loc2_.currentMisses = 0;
         _loc2_.clip.misses_txt.text = "Missed 0";
         true;
         true;
         _loc2_.currentStackHeight = 0;
         _loc2_.dropTimer = 0;
         _loc2_.clip.line.y = _loc2_.targetHeight;
         _loc2_.shouldFollow = true;
         _loc2_.isDropping = true;
         _loc2_.clip.worker.stackholder.y = 0;
         _loc2_.isDroppingPlate = false;
         _loc2_.isRaisingPlate = false;
         _loc2_.raiseTimer = 0;
         _loc2_.clip.worker.x = 640;
         _loc2_.isIntro = true;
         _loc2_.introTimer = 0;
      }
      
      public function decideDifficulty() : void
      {
         var _loc1_:MiniGameBurgerzilla = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(_loc2_ < this.prizeSKUs.length)
         {
            true;
            true;
            false;
            false;
            _loc1_.whichDifficulty = _loc2_ + 1;
            true;
            true;
         }
         else
         {
            _loc1_.whichDifficulty = Math.ceil(Math.random() * 14);
         }
         true;
         true;
         if(_loc1_.whichDifficulty == 1)
         {
            _loc1_.dropTimerInterval = 35;
            _loc1_.dropTimerMax = 40;
            _loc1_.targetHeight = 280;
            _loc1_.allowedMisses = 4;
         }
         else if(_loc1_.whichDifficulty == 2)
         {
            _loc1_.dropTimerInterval = 30;
            _loc1_.dropTimerMax = 40;
            _loc1_.targetHeight = 260;
            true;
            true;
            _loc1_.allowedMisses = 4;
         }
         else
         {
            false;
            false;
            if(_loc1_.whichDifficulty == 3)
            {
               _loc1_.dropTimerInterval = 25;
               _loc1_.dropTimerMax = 35;
               _loc1_.targetHeight = 250;
               _loc1_.allowedMisses = 3;
            }
            else if(_loc1_.whichDifficulty == 4)
            {
               _loc1_.dropTimerInterval = 25;
               _loc1_.dropTimerMax = 30;
               _loc1_.targetHeight = 240;
               _loc1_.allowedMisses = 3;
            }
            else if(_loc1_.whichDifficulty == 5)
            {
               _loc1_.dropTimerInterval = 20;
               _loc1_.dropTimerMax = 28;
               _loc1_.targetHeight = 220;
               true;
               true;
               _loc1_.allowedMisses = 3;
            }
            else
            {
               true;
               true;
               if(_loc1_.whichDifficulty <= 8)
               {
                  _loc1_.dropTimerInterval = 20;
                  _loc1_.dropTimerMax = 25;
                  true;
                  true;
                  _loc1_.targetHeight = 200;
                  false;
                  false;
                  _loc1_.allowedMisses = 3;
               }
               else if(_loc1_.whichDifficulty <= 11)
               {
                  _loc1_.dropTimerInterval = 15;
                  _loc1_.dropTimerMax = 20;
                  _loc1_.targetHeight = 170;
                  _loc1_.allowedMisses = 2;
               }
               else if(_loc1_.whichDifficulty <= 13)
               {
                  _loc1_.dropTimerInterval = 14;
                  _loc1_.dropTimerMax = 16;
                  _loc1_.targetHeight = 150;
                  _loc1_.allowedMisses = 2;
               }
               else if(_loc1_.whichDifficulty == 14)
               {
                  _loc1_.dropTimerInterval = 13;
                  _loc1_.dropTimerMax = 15;
                  _loc1_.targetHeight = 150;
                  true;
                  true;
                  _loc1_.allowedMisses = 1;
                  true;
                  true;
               }
               else
               {
                  _loc1_.dropTimerInterval = 45;
                  true;
                  true;
                  _loc1_.dropTimerMax = 60;
                  _loc1_.targetHeight = 250;
                  true;
                  true;
                  _loc1_.allowedMisses = 5;
               }
            }
         }
      }
      
      public function dropNewTopping(param1:String = "any", param2:Number = -1) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:MiniGameBurgerzilla = this;
         var _loc4_:String = String(_loc3_.toppingOptions[Math.floor(Math.random() * (_loc3_.toppingOptions.length - 1))]);
         false;
         false;
         if(param1 != "any")
         {
            true;
            true;
            true;
            true;
            _loc4_ = param1;
         }
         var _loc5_:String = "minigame_burgerzilla_" + _loc4_;
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = getDefinitionByName(_loc5_) as Class)() as MovieClip).mouseEnabled = false;
         _loc7_.mouseChildren = false;
         true;
         true;
         if(param2 > -1)
         {
            _loc7_.x = param2;
            true;
            true;
         }
         else
         {
            true;
            true;
            _loc8_ = _loc3_.minDropX;
            _loc9_ = _loc3_.maxDropX;
            false;
            false;
            _loc10_ = _loc8_ + Math.round(Math.random() * (_loc9_ - _loc8_));
            _loc11_ = 200 - Math.min(_loc3_.currentStackHeight / 100,1) * 100;
            false;
            false;
            if(_loc10_ - _loc3_.lastDropX > _loc11_)
            {
               _loc10_ = _loc3_.lastDropX + _loc11_;
               false;
               false;
            }
            else
            {
               true;
               true;
               if(_loc10_ - _loc3_.lastDropX < _loc11_ * -1)
               {
                  false;
                  false;
                  false;
                  false;
                  _loc10_ = _loc3_.lastDropX - _loc11_;
               }
            }
            true;
            true;
            if(_loc10_ < _loc8_)
            {
               false;
               false;
               true;
               true;
               _loc10_ = _loc8_;
            }
            else
            {
               true;
               true;
               if(_loc10_ > _loc9_)
               {
                  _loc10_ = _loc9_;
               }
            }
            _loc7_.x = _loc10_;
         }
         _loc7_.y = -40;
         _loc7_.myHeight = _loc3_.toppingHeights[_loc3_.toppingOptions.indexOf(_loc4_)];
         true;
         true;
         _loc7_.shouldRotateDir = 0;
         false;
         false;
         _loc3_.fallingParts.push(_loc7_);
         _loc3_.clip.holder.addChild(_loc7_);
         _loc3_.lastDropX = _loc7_.x;
      }
      
      public function checkSuccess() : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameBurgerzilla = this;
         false;
         false;
         if(!_loc1_.isDroppingPlate)
         {
            if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
            {
               _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            else
            {
               _loc2_ = [];
               _loc3_ = 0;
               while(_loc3_ < _loc1_.prizeSKUs.length)
               {
                  if(_loc1_.allowedForRandom[_loc3_] == 1)
                  {
                     _loc2_.push(_loc1_.prizeSKUs[_loc3_]);
                  }
                  _loc3_++;
               }
               _loc4_ = Math.floor(Math.random() * _loc2_.length);
               _loc1_.skuToWin = _loc2_[_loc4_];
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            _loc1_.amountToWin = 1;
            _loc1_.screen.gameObj.soundManager.playSound("customer_happy.wav");
            true;
            true;
         }
         else
         {
            _loc1_.skuToWin = null;
            true;
            true;
            _loc1_.amountToWin = 0;
            true;
            true;
            _loc1_.skuIsClothing = false;
            false;
            false;
            _loc1_.skuClothingMode = "";
         }
      }
      
      override public function updateScreen() : void
      {
         false;
         true;
         var _loc2_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:MovieClip = null;
         var _loc8_:Number = NaN;
         var _loc1_:MiniGameBurgerzilla = this;
         var _loc3_:Number = _loc1_.clip.mouseX;
         _loc1_.clip.dot.x = _loc1_.clip.mouseX;
         false;
         false;
         if(_loc1_.isIntro)
         {
            false;
            false;
            false;
            false;
            ++_loc1_.introTimer;
            false;
            false;
            _loc3_ = 320;
            false;
            false;
            if(_loc1_.introTimer >= _loc1_.introTimerMax)
            {
               _loc1_.isIntro = false;
               _loc1_.isDropping = true;
               _loc1_.shouldFollow = true;
               _loc1_.dropNewTopping("bun_heel",320);
            }
         }
         false;
         false;
         if(!_loc1_.isIntro && _loc1_.isDropping)
         {
            true;
            true;
            ++_loc1_.dropTimer;
            §§push(_loc1_.dropTimer >= _loc1_.dropTimerInterval && Math.random() < 0.2);
            if(!(_loc1_.dropTimer >= _loc1_.dropTimerInterval && Math.random() < 0.2))
            {
               false;
               false;
               §§pop();
               false;
               false;
               §§push(_loc1_.dropTimer >= _loc1_.dropTimerMax);
            }
            if(§§pop())
            {
               _loc1_.dropNewTopping();
               _loc1_.dropTimer = 0;
            }
         }
         if(_loc1_.shouldFollow)
         {
            false;
            false;
            true;
            true;
            if((_loc6_ = (_loc5_ = (_loc4_ = Math.min(Math.max(_loc1_.minWorkerX,_loc3_),_loc1_.maxWorkerX)) - _loc1_.clip.worker.x) / _loc1_.workerSpeed) > _loc1_.workerMaxSpeed)
            {
               false;
               false;
               _loc6_ = _loc1_.workerMaxSpeed;
            }
            else
            {
               true;
               true;
               false;
               false;
               if(_loc6_ < _loc1_.workerMaxSpeed * -1)
               {
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  _loc6_ = _loc1_.workerMaxSpeed * -1;
               }
            }
            _loc1_.clip.worker.x += _loc6_;
         }
         false;
         false;
         if(!_loc1_.isDroppingPlate && !_loc1_.isRaisingPlate)
         {
            _loc1_.clip.worker.y = _loc1_.workerNormalY + _loc1_.displacementRange * Math.sin(_loc1_.clip.worker.x / 20);
            _loc1_.clip.worker.stackholder.y = 0 - _loc1_.displacementRange / 2 * Math.sin(_loc1_.clip.worker.x / 20);
         }
         _loc2_ = int(_loc1_.fallingParts.length - 1);
         while(_loc2_ >= 0)
         {
            _loc7_ = _loc1_.fallingParts[_loc2_];
            _loc7_.y += _loc1_.dropSpeed;
            false;
            false;
            if(_loc7_.y > 480)
            {
               true;
               true;
               _loc1_.fallingParts.splice(_loc2_,1);
               if(_loc1_.isDropping)
               {
                  ++_loc1_.currentMisses;
                  if(_loc1_.currentMisses <= 5)
                  {
                     _loc1_.clip["drop_" + (_loc1_.currentMisses - 1)].gotoAndStop(2);
                  }
                  _loc1_.clip.misses_txt.text = String("Missed " + _loc1_.currentMisses);
                  _loc1_.screen.gameObj.soundManager.playSound("dropticket.wav");
                  true;
                  true;
                  true;
                  true;
                  if(_loc1_.currentMisses >= _loc1_.allowedMisses)
                  {
                     _loc1_.shouldFollow = false;
                     _loc1_.isDropping = false;
                     _loc1_.worker.playAnimation("score_sad");
                     _loc1_.isDroppingPlate = true;
                     true;
                     true;
                     _loc1_.checkSuccess();
                     _loc1_.screen.gameObj.soundManager.playSound("minigame_burger_dropplate.wav");
                  }
               }
            }
            else if(_loc7_.shouldRotateDir != 0)
            {
               _loc7_.rotation += _loc1_.rotateSpeed * _loc7_.shouldRotateDir;
            }
            else
            {
               false;
               false;
               _loc8_ = _loc1_.clip.worker.y + _loc1_.holderY - _loc1_.currentStackHeight;
               false;
               false;
               if(_loc7_.y >= _loc8_ && _loc7_.x > _loc1_.clip.worker.x - _loc1_.toppingWidth - _loc1_.edgeBuffer && _loc7_.x < _loc1_.clip.worker.x + _loc1_.toppingWidth + _loc1_.edgeBuffer)
               {
                  if(_loc7_.y < _loc8_ + 24)
                  {
                     if(_loc7_.x < _loc1_.clip.worker.x - _loc1_.toppingWidth)
                     {
                        _loc7_.x = _loc1_.clip.worker.x - _loc1_.toppingWidth;
                     }
                     else if(_loc7_.x > _loc1_.clip.worker.x + _loc1_.toppingWidth)
                     {
                        true;
                        true;
                        _loc7_.x = _loc1_.clip.worker.x + _loc1_.toppingWidth;
                     }
                     _loc7_.x -= _loc1_.clip.worker.x;
                     _loc7_.y = _loc8_ - _loc1_.clip.worker.y;
                     _loc1_.clip.worker.stackholder.addChild(_loc7_);
                     _loc1_.currentStackHeight += _loc7_.myHeight;
                     _loc1_.stackedParts.push(_loc7_);
                     _loc1_.fallingParts.splice(_loc2_,1);
                     _loc1_.screen.gameObj.soundManager.playSound("droptopping.wav");
                     if(_loc1_.clip.worker.y + _loc1_.holderY - _loc1_.currentStackHeight <= _loc1_.targetHeight)
                     {
                        _loc1_.shouldFollow = false;
                        if(_loc1_.isDropping)
                        {
                           _loc1_.dropNewTopping("bun_top",_loc1_.clip.worker.x);
                           _loc1_.isDropping = false;
                           _loc1_.checkSuccess();
                        }
                     }
                  }
                  else
                  {
                     if(_loc7_.x < _loc1_.clip.worker.x)
                     {
                        _loc7_.shouldRotateDir = -1;
                        false;
                        false;
                     }
                     else
                     {
                        _loc7_.shouldRotateDir = 1;
                     }
                     _loc1_.screen.gameObj.soundManager.playSound("boing.wav");
                  }
               }
               else
               {
                  true;
                  true;
                  false;
                  false;
                  if(_loc7_.y >= _loc8_ && (Boolean(_loc1_.clip.worker.stackholder.hitTestPoint(_loc7_.x + _loc7_.width / 2,_loc7_.y,true)) || Boolean(_loc1_.clip.worker.stackholder.hitTestPoint(_loc7_.x - _loc7_.width / 2,_loc7_.y,true)) || Boolean(_loc1_.clip.worker.stackholder.hitTestPoint(_loc7_.x,_loc7_.y,true))))
                  {
                     if(_loc7_.x < _loc1_.clip.worker.x)
                     {
                        true;
                        true;
                        _loc7_.shouldRotateDir = -1;
                     }
                     else
                     {
                        _loc7_.shouldRotateDir = 1;
                     }
                     _loc1_.screen.gameObj.soundManager.playSound("boing.wav");
                  }
               }
            }
            _loc2_--;
         }
         false;
         false;
         if(_loc1_.isDropping == false && _loc1_.fallingParts.length == 0 && !_loc1_.isRaisingPlate && !_loc1_.isDroppingPlate)
         {
            _loc1_.isRaisingPlate = true;
            false;
            false;
            _loc1_.worker.playAnimation("burgerzilla_lift");
         }
         if(_loc1_.isRaisingPlate)
         {
            true;
            true;
            var _loc9_:*;
            var _loc10_:* = (_loc9_ = _loc1_).raiseTimer + 1;
            true;
            true;
            _loc9_.raiseTimer = _loc10_;
            false;
            false;
            if(_loc1_.raiseTimer < 5)
            {
               _loc1_.clip.worker.stackholder.y -= 10;
               true;
               true;
            }
            else
            {
               false;
               false;
               if(_loc1_.raiseTimer == 5)
               {
                  _loc1_.clip.worker.stackholder.y -= 8;
                  true;
                  true;
               }
               else if(_loc1_.raiseTimer == 6)
               {
                  _loc1_.clip.worker.stackholder.y -= 5;
               }
               else
               {
                  true;
                  true;
                  true;
                  true;
                  if(_loc1_.raiseTimer == 7)
                  {
                     _loc1_.clip.worker.stackholder.y -= 2;
                  }
               }
            }
         }
         else if(_loc1_.isDroppingPlate)
         {
            ++_loc1_.raiseTimer;
            _loc1_.clip.worker.stackholder.y += 2 * _loc1_.raiseTimer;
         }
         _loc1_.worker.animateModel();
         true;
         true;
         if(_loc1_.raiseTimer == _loc1_.raiseTimerMax)
         {
            Mouse.show();
            false;
            false;
            if(_loc1_.currentMisses == 0)
            {
               _loc1_.screen.gameObj.challengeManager.recordTagged("burgerzilla");
            }
            _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
         }
      }
      
      override public function destroy() : void
      {
         false;
         true;
         var _loc2_:int = 0;
         var _loc1_:MiniGameBurgerzilla = this;
         _loc1_.worker.destroy();
         _loc1_.worker = null;
         false;
         false;
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc2_ >= _loc1_.fallingParts.length)
            {
               break;
            }
            _loc1_.fallingParts[_loc2_].parent.removeChild(_loc1_.fallingParts[_loc2_]);
            _loc2_++;
            false;
            false;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc1_.stackedParts.length)
         {
            _loc1_.stackedParts[_loc2_].parent.removeChild(_loc1_.stackedParts[_loc2_]);
            _loc2_++;
         }
         _loc1_.fallingParts = null;
         false;
         false;
         _loc1_.stackedParts = null;
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
   }
}
