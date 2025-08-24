package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.ui.Mouse;
   import package_2.*;
   import package_4.*;
   import wingGame.data.*;
   
   public class MiniGameBlast extends MiniGame
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
      
      public var gameTimer:Number = 0;
      
      public var delayStartTimer:Number = 90;
      
      public var revealStartTimer:Number = 30;
      
      public var revealPadding:Number = 5;
      
      public var introRevealed:Number = 0;
      
      public var whichBread:String = "pancake";
      
      public var needToHit:Number = 5;
      
      public var totalHit:Number = 0;
      
      public var maxToHit:Number = 10;
      
      public var maxShots:Number = 5;
      
      public var shotsPerRound:Number = 3;
      
      public var shotsRemaining:Number = 5;
      
      public var whichRound:Number = 1;
      
      public var maxRounds:Number = 5;
      
      public var isIntro:Boolean = true;
      
      public var isOutro:Boolean = false;
      
      public var isBetweenRounds:Boolean = false;
      
      public var delayBetweenRounds:Number = 30;
      
      public var delayBetweenTimer:Number = 0;
      
      public var isFinished:Boolean = false;
      
      public var hasFiredBread:Boolean = false;
      
      public var missedOne:Boolean = false;
      
      public var totalBreads:Number = 2;
      
      public var breads:Array;
      
      public var shadows:Array;
      
      public var speeds:Array;
      
      public var jumpspeeds:Array;
      
      public var sidewayspeeds:Array;
      
      public var finished:Array;
      
      public var delayBeforeFiring:Array;
      
      public var delayTimers:Array;
      
      public var maxDelayBeforeFiring:Number = 60;
      
      public var minDelayBeforeFiring:Number = 20;
      
      public var gravity:Number = 1.5;
      
      public var baseSpeed:Number = 50;
      
      public var baseJumpSpeed:Number = 20;
      
      public var baseJumpRandomizer:Number = 15;
      
      public var tiltAmount:Number = 1.2;
      
      public var baseSidewaySpeed:Number = 30;
      
      public var speedBoostRange:Number = 10;
      
      public var groundLevel:Number = 406;
      
      public var switchContainerZ:Number = 2700;
      
      public var mouseIsHidden:Boolean = false;
      
      public var crosshairSpeed:Number = 1;
      
      public var foodiniClip:MovieClip;
      
      public function MiniGameBlast(param1:MiniGameScreen, param2:MovieClip)
      {
         false;
         true;
         this.prizeSKUs = ["poster_pancakeria","furni_cabin2_small","belt_04","shirt_03","furni_cabin2_fence","jacket_09","furni_cabin2_medium","pants_05","floor29","body_backbag01","wall22","furni_cabin2_large","hat19","furni_cabin2_fireplace"];
         this.prizeIsClothing = [false,false,true,true,false,true,false,true,false,true,false,false,true,false];
         true;
         true;
         this.prizeClothingMode = ["","","gender","gender","","gender","","gender","","","","","hat",""];
         this.allowedForRandom = [1,1,0,0,1,0,1,0,0,0,0,1,0,1];
         this.breads = [];
         this.shadows = [];
         this.speeds = [];
         this.jumpspeeds = [];
         this.sidewayspeeds = [];
         true;
         true;
         this.finished = [];
         this.delayBeforeFiring = [];
         false;
         false;
         this.delayTimers = [];
         true;
         true;
         super(param1,param2);
      }
      
      override public function setupScreen() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc1_:MiniGameBlast = this;
         _loc1_.clip = new minigameBlastMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Breakfast Blast");
         true;
         true;
         _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
         _loc1_.decideDifficulty();
         _loc2_ = 0;
         while(_loc2_ < _loc1_.totalBreads)
         {
            true;
            true;
            _loc1_.breads.push(_loc1_.clip["bread" + (_loc2_ + 1)]);
            _loc1_.shadows.push(_loc1_.clip["shadow" + (_loc2_ + 1)]);
            _loc1_.clip.shadowholder.addChild(_loc1_.shadows[_loc2_]);
            _loc1_.clip.topholder.addChild(_loc1_.breads[_loc2_]);
            true;
            true;
            true;
            true;
            _loc2_++;
         }
         _loc1_.foodiniClip = new minigame_foodini();
         true;
         true;
         _loc1_.clip.popup.inside.addChild(_loc1_.foodiniClip);
         _loc1_.foodiniClip.gotoAndStop(1);
         _loc1_.clip.shadowholder.mask = _loc1_.clip.shadowmask;
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
         _loc1_.startIntro();
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:MovieClip = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc2_:MiniGameBlast = this;
         false;
         false;
         false;
         false;
         §§push(!_loc2_.isIntro && !_loc2_.isOutro);
         if(!_loc2_.isIntro && !_loc2_.isOutro)
         {
            false;
            false;
            §§pop();
            §§push(!_loc2_.isBetweenRounds);
         }
         false;
         false;
         if(§§pop() && _loc2_.hasFiredBread && _loc2_.shotsRemaining > 0)
         {
            false;
            false;
            var _loc11_:*;
            var _loc12_:* = (_loc11_ = _loc2_).shotsRemaining - 1;
            false;
            false;
            _loc11_.shotsRemaining = _loc12_;
            _loc2_.clip.flasher.gotoAndPlay("flash");
            _loc2_.screen.gameObj.soundManager.playSound("minigame_shootgun.wav");
            _loc2_.clip.shots_txt.text = _loc2_.shotsRemaining + " shots";
            true;
            true;
            true;
            true;
            if(_loc2_.shotsRemaining == 1)
            {
               _loc2_.clip.shots_txt.text = "1 shot";
               true;
               true;
            }
            _loc3_ = 0;
            while(true)
            {
               true;
               true;
               if(_loc3_ >= _loc2_.shotsPerRound)
               {
                  break;
               }
               true;
               true;
               if(_loc3_ < _loc2_.shotsRemaining)
               {
                  _loc2_.clip["shot_" + _loc3_].visible = true;
               }
               else
               {
                  _loc2_.clip["shot_" + _loc3_].visible = false;
               }
               true;
               true;
               _loc3_++;
            }
            false;
            false;
            _loc3_ = 0;
            true;
            true;
            while(true)
            {
               false;
               false;
               if(_loc3_ >= _loc2_.totalBreads)
               {
                  break;
               }
               _loc5_ = (_loc4_ = _loc2_.breads[_loc3_]).parent.local3DToGlobal(new Vector3D(_loc4_.x,_loc4_.y,_loc4_.z));
               _loc6_ = _loc2_.clip.reticule.x - _loc5_.x;
               _loc7_ = _loc2_.clip.reticule.y - _loc5_.y;
               false;
               false;
               _loc8_ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
               false;
               false;
               false;
               false;
               true;
               true;
               if((_loc9_ = 5 + 15 * (5800 - _loc4_.z) / 5800) > 20)
               {
                  _loc9_ = 20;
               }
               else if(_loc9_ < 5)
               {
                  false;
                  false;
                  false;
                  false;
                  _loc9_ = 5;
               }
               _loc10_ = false;
               if(_loc8_ <= _loc9_)
               {
                  _loc10_ = true;
               }
               if(_loc10_)
               {
                  _loc2_.clip["break" + (_loc3_ + 1)].x = _loc5_.x;
                  _loc2_.clip["break" + (_loc3_ + 1)].y = _loc5_.y;
                  _loc2_.clip["break" + (_loc3_ + 1)].scaleX = Math.min(1,_loc9_ / 10);
                  _loc2_.clip["break" + (_loc3_ + 1)].scaleY = Math.min(1,_loc9_ / 10);
                  true;
                  true;
                  _loc2_.clip["break" + (_loc3_ + 1)].gotoAndPlay(1);
                  true;
                  true;
                  ++_loc2_.totalHit;
                  true;
                  true;
                  _loc2_.finished[_loc3_] = true;
                  _loc4_.y = _loc2_.groundLevel;
                  _loc4_.z = -200;
                  _loc4_.x = 1000;
                  _loc2_.shadows[_loc3_].z = _loc4_.z;
                  _loc2_.shadows[_loc3_].x = _loc4_.x;
                  _loc2_.updateBreadIcons();
                  _loc2_.screen.gameObj.soundManager.playSound("landburger2.wav");
               }
               _loc3_++;
            }
         }
         else
         {
            true;
            true;
            §§push(!_loc2_.isIntro);
            if(!_loc2_.isIntro)
            {
               false;
               false;
               §§pop();
               §§push(!_loc2_.isOutro);
            }
            if(§§pop() && _loc2_.shotsRemaining == 0)
            {
               true;
               true;
               _loc2_.screen.gameObj.soundManager.playSound("minigame_noammo.wav");
            }
         }
      }
      
      public function updateBreadIcons() : void
      {
         false;
         true;
         var _loc1_:MiniGameBlast = this;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.needToHit)
         {
            if(_loc1_.totalHit > _loc2_)
            {
               _loc1_.clip["icon_" + _loc2_].gotoAndStop(_loc1_.whichBread + "_earned");
            }
            _loc2_++;
            true;
            true;
         }
         true;
         true;
         _loc1_.clip.hit_txt.text = "Hit " + _loc1_.totalHit;
      }
      
      public function startIntro() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:MiniGameBlast = this;
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc2_ >= _loc1_.maxToHit)
            {
               break;
            }
            _loc1_.clip["icon_" + _loc2_].gotoAndStop(_loc1_.whichBread + "_unearned");
            _loc1_.clip["icon_" + _loc2_].visible = false;
            _loc2_++;
         }
         false;
         false;
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc2_ >= _loc1_.maxShots)
            {
               break;
            }
            _loc1_.clip["shot_" + _loc2_].visible = false;
            false;
            false;
            false;
            false;
            _loc2_++;
         }
         false;
         false;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.totalBreads)
         {
            true;
            true;
            _loc1_.breads[_loc2_].top.gotoAndStop(_loc1_.whichBread);
            false;
            false;
            _loc1_.breads[_loc2_].bottom.gotoAndStop(_loc1_.whichBread);
            _loc1_.shadows[_loc2_].gotoAndStop(_loc1_.whichBread);
            _loc2_++;
         }
         true;
         true;
         _loc1_.clip.shots_txt.text = _loc1_.shotsPerRound + " shots";
         _loc1_.clip.round_txt.text = "Round 1 of " + _loc1_.maxRounds;
         _loc1_.clip.hit_txt.text = "Hit 0";
         true;
         true;
         _loc1_.isIntro = true;
         _loc1_.gameTimer = 0;
         _loc1_.clip.panel.inside.gotoAndStop(_loc1_.whichBread);
         _loc1_.clip.panel.inside.amount_txt.text = String(_loc1_.needToHit);
         _loc1_.clip.panel.gotoAndPlay("show");
         _loc1_.resetBreads();
      }
      
      public function startRound() : void
      {
         var _loc1_:MiniGameBlast = this;
         var _loc2_:Number = 0;
         false;
         false;
         _loc1_.hasFiredBread = false;
         true;
         true;
         _loc1_.missedOne = false;
         false;
         false;
         _loc1_.shotsRemaining = _loc1_.shotsPerRound;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.shotsPerRound)
         {
            _loc1_.clip["shot_" + _loc2_].visible = true;
            true;
            true;
            false;
            false;
            _loc2_++;
         }
         _loc1_.clip.shots_txt.text = _loc1_.shotsPerRound + " shots";
         _loc1_.clip.round_txt.text = "Round " + _loc1_.whichRound + " of " + _loc1_.maxRounds;
         _loc1_.screen.gameObj.soundManager.playSound("minigame_reloadgun.wav");
         false;
         false;
         _loc1_.resetBreads();
      }
      
      public function decideDifficulty() : void
      {
         false;
         true;
         var _loc1_:MiniGameBlast = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(_loc2_ < this.prizeSKUs.length)
         {
            false;
            false;
            true;
            true;
            _loc1_.whichDifficulty = _loc2_ + 1;
         }
         else
         {
            _loc1_.whichDifficulty = this.prizeSKUs.length;
         }
         var _loc3_:Array = ["pancake","frenchtoast","waffle"];
         if(_loc1_.whichDifficulty == 1)
         {
            true;
            true;
            _loc1_.baseSpeed = 100;
            _loc1_.baseJumpSpeed = 40;
            _loc1_.baseJumpRandomizer = 15;
            _loc1_.baseSidewaySpeed = 5;
            _loc1_.speedBoostRange = 0;
         }
         else
         {
            true;
            true;
            if(_loc1_.whichDifficulty <= 4)
            {
               _loc1_.baseSpeed = 100;
               _loc1_.baseJumpSpeed = 40;
               _loc1_.baseJumpRandomizer = 15;
               _loc1_.baseSidewaySpeed = 30;
               _loc1_.speedBoostRange = 0;
            }
            else if(_loc1_.whichDifficulty <= 7)
            {
               _loc1_.baseSpeed = 150;
               _loc1_.baseJumpSpeed = 45;
               _loc1_.baseJumpRandomizer = 15;
               _loc1_.baseSidewaySpeed = 40;
               false;
               false;
               _loc1_.speedBoostRange = 10;
            }
            else if(_loc1_.whichDifficulty <= 10)
            {
               _loc1_.baseSpeed = 200;
               false;
               false;
               _loc1_.baseJumpSpeed = 50;
               false;
               false;
               _loc1_.baseJumpRandomizer = 15;
               _loc1_.baseSidewaySpeed = 60;
               _loc1_.speedBoostRange = 20;
               true;
               true;
            }
            else
            {
               _loc1_.baseSpeed = 150;
               _loc1_.speedBoostRange = 80;
               _loc1_.baseJumpSpeed = 60;
               _loc1_.baseJumpRandomizer = 30;
               _loc1_.baseSidewaySpeed = 65;
            }
         }
         if(_loc1_.whichDifficulty == 1)
         {
            _loc1_.shotsPerRound = 5;
            true;
            true;
            _loc1_.needToHit = 5;
            _loc1_.whichBread = "waffle";
            true;
            true;
         }
         else
         {
            false;
            false;
            if(_loc1_.whichDifficulty == 2)
            {
               _loc1_.shotsPerRound = 4;
               _loc1_.needToHit = 6;
               true;
               true;
               _loc1_.whichBread = "frenchtoast";
            }
            else if(_loc1_.whichDifficulty == 3)
            {
               _loc1_.shotsPerRound = 4;
               _loc1_.needToHit = 6;
               false;
               false;
               _loc1_.whichBread = "pancake";
            }
            else if(_loc1_.whichDifficulty == 4)
            {
               false;
               false;
               _loc1_.shotsPerRound = 4;
               _loc1_.needToHit = 6;
               _loc1_.whichBread = "waffle";
               false;
               false;
            }
            else if(_loc1_.whichDifficulty == 5)
            {
               _loc1_.shotsPerRound = 4;
               _loc1_.needToHit = 6;
               _loc1_.whichBread = "pancake";
            }
            else
            {
               true;
               true;
               if(_loc1_.whichDifficulty == 6)
               {
                  _loc1_.shotsPerRound = 4;
                  _loc1_.needToHit = 7;
                  _loc1_.whichBread = "frenchtoast";
               }
               else if(_loc1_.whichDifficulty == 7)
               {
                  _loc1_.shotsPerRound = 4;
                  false;
                  false;
                  _loc1_.needToHit = 7;
                  false;
                  false;
                  _loc1_.whichBread = "waffle";
                  true;
                  true;
               }
               else if(_loc1_.whichDifficulty == 8)
               {
                  _loc1_.shotsPerRound = 4;
                  _loc1_.needToHit = 8;
                  _loc1_.whichBread = "frenchtoast";
               }
               else if(_loc1_.whichDifficulty == 9)
               {
                  _loc1_.shotsPerRound = 4;
                  _loc1_.needToHit = 8;
                  _loc1_.whichBread = "pancake";
               }
               else
               {
                  false;
                  false;
                  if(_loc1_.whichDifficulty == 10)
                  {
                     _loc1_.shotsPerRound = 4;
                     _loc1_.needToHit = 9;
                     _loc1_.whichBread = "waffle";
                     false;
                     false;
                  }
                  else if(_loc1_.whichDifficulty > 10)
                  {
                     _loc1_.shotsPerRound = 4;
                     _loc1_.needToHit = 10;
                     _loc1_.whichBread = _loc3_[Math.floor(Math.random() * _loc3_.length)];
                  }
               }
            }
         }
      }
      
      public function checkSuccess() : void
      {
         false;
         true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameBlast = this;
         false;
         false;
         if(_loc1_.totalHit >= _loc1_.needToHit)
         {
            false;
            false;
            if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
            {
               _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
               false;
               false;
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
                  false;
                  false;
               }
               _loc4_ = Math.floor(Math.random() * _loc2_.length);
               _loc1_.skuToWin = _loc2_[_loc4_];
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            _loc1_.amountToWin = 1;
         }
         else if(_loc1_.totalHit == 0)
         {
            false;
            false;
            _loc1_.skuToWin = null;
            _loc1_.amountToWin = 0;
            _loc1_.skuIsClothing = false;
            _loc1_.skuClothingMode = "";
            false;
            false;
         }
         else
         {
            _loc1_.skuToWin = "tips";
            _loc1_.amountToWin = _loc1_.totalHit * 25;
            false;
            false;
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
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameBlast = this;
         var _loc5_:*;
         var _loc6_:* = (_loc5_ = _loc1_).gameTimer + 1;
         true;
         true;
         _loc5_.gameTimer = _loc6_;
         false;
         false;
         if(_loc1_.isIntro && _loc1_.gameTimer >= _loc1_.delayStartTimer)
         {
            _loc1_.isIntro = false;
            _loc1_.startRound();
         }
         else
         {
            true;
            true;
            §§push(_loc1_.isIntro);
            if(_loc1_.isIntro)
            {
               false;
               false;
               §§pop();
               §§push(_loc1_.gameTimer >= _loc1_.revealStartTimer);
            }
            if(§§pop())
            {
               true;
               true;
               _loc4_ = Math.ceil((_loc1_.gameTimer - _loc1_.revealStartTimer) / _loc1_.revealPadding);
               false;
               false;
               true;
               true;
               if(_loc1_.introRevealed < _loc4_ && _loc4_ <= _loc1_.needToHit)
               {
                  false;
                  false;
                  _loc1_.clip["icon_" + (_loc4_ - 1)].visible = true;
                  true;
                  true;
               }
            }
            else if(!_loc1_.isIntro && !_loc1_.isOutro)
            {
               _loc1_.updateBreads();
               true;
               true;
            }
            else if(_loc1_.isOutro)
            {
               if(!_loc1_.isFinished)
               {
                  Mouse.show();
                  _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
                  _loc1_.isFinished = true;
               }
            }
         }
         var _loc2_:Number = _loc1_.clip.mouseX - _loc1_.clip.reticule.x;
         true;
         true;
         var _loc3_:Number = _loc1_.clip.mouseY - _loc1_.clip.reticule.y;
         _loc1_.clip.reticule.x += _loc2_ / _loc1_.crosshairSpeed;
         _loc1_.clip.reticule.y += _loc3_ / _loc1_.crosshairSpeed;
         if(!_loc1_.isOutro)
         {
            false;
            false;
            if(_loc1_.clip.mouseY < 430 && !_loc1_.mouseIsHidden)
            {
               Mouse.hide();
               true;
               true;
               _loc1_.mouseIsHidden = true;
            }
            else if(_loc1_.clip.mouseY >= 430 && _loc1_.mouseIsHidden)
            {
               Mouse.show();
               _loc1_.mouseIsHidden = false;
            }
         }
      }
      
      public function resetBreads(param1:Number = -1) : void
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc2_:MiniGameBlast = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.totalBreads)
         {
            true;
            true;
            §§push(param1 == -1);
            if(!(param1 == -1))
            {
               true;
               true;
               §§pop();
               §§push(param1 == _loc3_);
            }
            if(§§pop())
            {
               false;
               false;
               _loc2_.speeds[_loc3_] = _loc2_.baseSpeed + Math.ceil(Math.random() * _loc2_.speedBoostRange);
               false;
               false;
               true;
               true;
               true;
               true;
               _loc2_.jumpspeeds[_loc3_] = (_loc2_.baseJumpSpeed + Math.ceil(Math.random() * _loc2_.baseJumpRandomizer)) * -1;
               _loc2_.finished[_loc3_] = false;
               true;
               true;
               _loc2_.breads[_loc3_].y = _loc2_.groundLevel;
               _loc2_.breads[_loc3_].z = -200;
               _loc2_.breads[_loc3_].x = Math.ceil(Math.random() * 640);
               _loc4_ = Math.abs(_loc2_.breads[_loc3_].x - 320) / 320;
               false;
               false;
               _loc2_.sidewayspeeds[_loc3_] = Math.round(_loc4_ * _loc2_.baseSidewaySpeed);
               false;
               false;
               if(_loc2_.breads[_loc3_].x > 320)
               {
                  true;
                  true;
                  true;
                  true;
                  _loc2_.sidewayspeeds[_loc3_] *= -1;
                  true;
                  true;
               }
               _loc2_.breads[_loc3_].rotationZ = 45 - 90 * (_loc2_.breads[_loc3_].x / 640);
               false;
               false;
               false;
               false;
               _loc2_.breads[_loc3_].rotationX = -90;
               _loc2_.shadows[_loc3_].z = _loc2_.breads[_loc3_].z;
               _loc2_.shadows[_loc3_].x = _loc2_.breads[_loc3_].x;
               _loc2_.clip.topholder.addChild(_loc2_.breads[_loc3_]);
               _loc2_.delayBeforeFiring[_loc3_] = _loc2_.minDelayBeforeFiring + Math.ceil(Math.random() * (_loc2_.maxDelayBeforeFiring - _loc2_.minDelayBeforeFiring));
               _loc2_.delayTimers[_loc3_] = 0;
            }
            _loc3_++;
         }
      }
      
      public function updateBreads() : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:MiniGameBlast = this;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.totalBreads)
         {
            false;
            false;
            ++_loc1_.delayTimers[_loc2_];
            false;
            false;
            false;
            false;
            if(_loc1_.finished[_loc2_] == false && _loc1_.delayTimers[_loc2_] >= _loc1_.delayBeforeFiring[_loc2_])
            {
               _loc1_.hasFiredBread = true;
               false;
               false;
               true;
               true;
               if(_loc1_.delayTimers[_loc2_] == _loc1_.delayBeforeFiring[_loc2_])
               {
                  _loc1_.screen.gameObj.soundManager.playSound("minigame_launchbread.wav");
               }
               _loc4_ = _loc1_.breads[_loc2_];
               _loc5_ = _loc1_.shadows[_loc2_];
               false;
               false;
               true;
               true;
               _loc1_.jumpspeeds[_loc2_] += _loc1_.gravity;
               _loc4_.y += _loc1_.jumpspeeds[_loc2_];
               _loc4_.z += _loc1_.speeds[_loc2_];
               _loc4_.x += _loc1_.sidewayspeeds[_loc2_];
               _loc4_.rotationX += _loc1_.tiltAmount;
               false;
               false;
               if(_loc4_.rotationX > -40)
               {
                  true;
                  true;
                  _loc4_.rotationX = -40;
               }
               _loc5_.z = _loc4_.z / 3;
               _loc5_.x = _loc4_.x;
               false;
               false;
               _loc5_.scaleX = Math.max(0.5,Math.min(1,_loc4_.y / _loc1_.groundLevel));
               _loc5_.scaleY = Math.max(0.5,Math.min(1,_loc4_.y / _loc1_.groundLevel));
               true;
               true;
               if(_loc4_.z >= _loc1_.switchContainerZ && Boolean(_loc1_.clip.topholder.contains(_loc4_)))
               {
                  _loc1_.clip.backholder.addChild(_loc4_);
               }
               if(_loc4_.y > _loc1_.groundLevel)
               {
                  false;
                  false;
                  _loc1_.finished[_loc2_] = true;
                  true;
                  true;
                  _loc4_.y = _loc1_.groundLevel;
                  _loc4_.z = -200;
                  _loc4_.x = 1000;
                  _loc5_.z = _loc4_.z;
                  _loc5_.x = _loc4_.x;
                  _loc1_.missedOne = true;
               }
            }
            _loc2_++;
         }
         var _loc3_:Boolean = true;
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.totalBreads)
         {
            if(_loc1_.finished[_loc2_] == false)
            {
               true;
               true;
               _loc3_ = false;
            }
            _loc2_++;
         }
         true;
         true;
         if(_loc3_ == true)
         {
            false;
            false;
            if(!_loc1_.isBetweenRounds)
            {
               _loc1_.isBetweenRounds = true;
               _loc1_.delayBetweenTimer = 0;
               true;
               true;
               if(_loc1_.missedOne)
               {
                  _loc1_.clip.popup.gotoAndPlay("popup");
                  _loc1_.foodiniClip.gotoAndPlay("lose");
               }
            }
            else
            {
               false;
               false;
               ++_loc1_.delayBetweenTimer;
               true;
               true;
               if(_loc1_.delayBetweenTimer >= _loc1_.delayBetweenRounds)
               {
                  true;
                  true;
                  if(_loc1_.totalHit >= _loc1_.needToHit)
                  {
                     _loc1_.checkSuccess();
                     _loc1_.isOutro = true;
                  }
                  else if(_loc1_.whichRound < _loc1_.maxRounds)
                  {
                     true;
                     true;
                     var _loc6_:*;
                     var _loc7_:* = (_loc6_ = _loc1_).whichRound + 1;
                     false;
                     false;
                     _loc6_.whichRound = _loc7_;
                     _loc1_.startRound();
                     true;
                     true;
                  }
                  else
                  {
                     _loc1_.checkSuccess();
                     _loc1_.isOutro = true;
                  }
                  _loc1_.isBetweenRounds = false;
               }
            }
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:MiniGameBlast = this;
         _loc1_.foodiniClip.parent.removeChild(_loc1_.foodiniClip);
         _loc1_.foodiniClip = null;
         _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
   }
}
