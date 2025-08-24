package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import package_2.*;
   import package_4.*;
   import wingGame.data.*;
   
   public class MiniGameHallway extends MiniGame
   {
       
      
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var lookForWhichCustomer:Number = -1;
      
      public var choseWhichDoor:Number = -1;
      
      public var whichDifficulty:Number = 1;
      
      public var doorX:Array;
      
      public var doorY:Number = 232;
      
      public var doorMaxY:Number = 300;
      
      public var doorBackY:Number = 180;
      
      public var outsideCustomers:Array;
      
      public var outsideCustomerNumbers:Array;
      
      public var insideCustomers:Array;
      
      public var insideCustomerNumbers:Array;
      
      public var eyeballDirections:Array;
      
      public var eyeballDirY:Array;
      
      public var eyeballYspeeds:Array;
      
      public var eyeballSpeeds:Array;
      
      public var eyeballDurations:Array;
      
      public var eyeballReturning:Array;
      
      public var maxDuration:Number = 60;
      
      public var minDuration:Number = 15;
      
      public var extraEyeDirections:Array;
      
      public var extraEyeDirY:Array;
      
      public var extraEyeDurations:Array;
      
      public var extraEyeSpeeds:Array;
      
      public var extraEyeYspeeds:Array;
      
      public var extraEyesToUse:Number = 0;
      
      public var headshot:MovieClip;
      
      public var gameTimer:Number = 0;
      
      public var timeBeforeBlack:Number = 100;
      
      public var timeBlack:Number = 180;
      
      public var delayBeforeMoving:Number = 15;
      
      public var fadeUpSpeed:Number = 0.05;
      
      public var isDoneHiding:Boolean = false;
      
      public var isHiding:Boolean = false;
      
      public var isOpened:Boolean = false;
      
      public var openedTimer:Number = 0;
      
      public var wrongDelayTimerMax:Number = 40;
      
      public var openedTimerMax:Number = 80;
      
      public var amountToUse:Number = 4;
      
      public function MiniGameHallway(param1:MiniGameScreen, param2:MovieClip)
      {
         false;
         true;
         this.prizeSKUs = ["poster_papalouie","floor19","belt_05","furni_gilded_small","shirt_11","furni_gilded_medium","wall31","pants_08","furni_gilded_large","jacket_06","furni_velvet_rope","hat12","glasses12","furni_papalouie_bust"];
         this.prizeIsClothing = [false,false,true,false,true,false,false,true,false,true,false,true,true,false];
         true;
         true;
         this.prizeClothingMode = ["","","gender","","gender","","","gender","","gender","","hat","",""];
         this.allowedForRandom = [1,0,0,1,0,1,0,0,1,0,1,0,0,1];
         this.doorX = [0,243,397,88,552];
         this.outsideCustomers = [];
         this.outsideCustomerNumbers = [];
         this.insideCustomers = [];
         this.insideCustomerNumbers = [];
         this.eyeballDirections = [1,0,1,-1];
         this.eyeballDirY = [0,0,0,0];
         this.eyeballYspeeds = [2,2,2,2];
         this.eyeballSpeeds = [5,4,5,4];
         this.eyeballDurations = [0,0,0,0];
         this.eyeballReturning = [false,false,false,false];
         this.extraEyeDirections = [1,-1,1,-1];
         this.extraEyeDirY = [1,0,1,-1];
         true;
         true;
         this.extraEyeDurations = [0,0,0,0];
         this.extraEyeSpeeds = [9,8,9,8];
         this.extraEyeYspeeds = [4,3,4,3];
         super(param1,param2);
      }
      
      override public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:MiniGameHallway = this;
         _loc1_.clip = new minigameHallwayMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Hallway Hunt");
         _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
         _loc1_.decideDifficulty();
         _loc1_.setupCustomers();
         _loc1_.clip.bg.gotoAndStop(Math.ceil(Math.random() * _loc1_.clip.bg.totalFrames));
         _loc1_.clip.behind.mask = _loc1_.clip.doormask;
         _loc1_.clip.btn_1.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         _loc1_.clip.btn_2.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         true;
         true;
         _loc1_.clip.btn_3.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         _loc1_.clip.btn_4.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         _loc1_.clip.btn_1.visible = false;
         true;
         true;
         _loc1_.clip.btn_2.visible = false;
         _loc1_.clip.btn_3.visible = false;
         _loc1_.clip.btn_4.visible = false;
         _loc1_.clip.darkcover.alpha = 0;
         _loc1_.clip.darkcover.mouseEnabled = false;
         _loc1_.clip.eyes_1.visible = false;
         _loc1_.clip.eyes_2.visible = false;
         _loc1_.clip.eyes_3.visible = false;
         _loc1_.clip.eyes_4.visible = false;
      }
      
      public function clickDoor(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MiniGameHallway = this;
         var _loc3_:Number = Number(String(param1.currentTarget.name).split("_")[1]);
         false;
         false;
         _loc2_.choseWhichDoor = _loc3_;
         _loc2_.clip.btn_1.visible = false;
         true;
         true;
         _loc2_.clip.btn_2.visible = false;
         _loc2_.clip.btn_3.visible = false;
         false;
         false;
         _loc2_.clip.btn_4.visible = false;
         true;
         true;
         _loc2_.isOpened = true;
         _loc2_.clip["door_" + _loc2_.choseWhichDoor].gotoAndPlay("open");
         true;
         true;
         false;
         false;
         if(_loc2_.insideCustomerNumbers[_loc3_ - 1] == _loc2_.lookForWhichCustomer)
         {
            _loc2_.insideCustomers[_loc3_ - 1].gotoAndPlay("overjoyed");
            _loc2_.screen.gameObj.soundManager.playSound("customer_overjoyed.wav");
            true;
            true;
         }
         else
         {
            _loc2_.screen.gameObj.soundManager.playSound("customer_decent.wav");
         }
         _loc2_.screen.gameObj.soundManager.playSound("opendoor.wav");
         _loc2_.checkSuccess();
      }
      
      public function decideDifficulty() : void
      {
         var _loc2_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:MiniGameHallway = this;
         var _loc3_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(_loc3_ < this.prizeSKUs.length)
         {
            false;
            false;
            _loc1_.whichDifficulty = _loc3_ + 1;
            false;
            false;
         }
         else
         {
            _loc1_.whichDifficulty = this.prizeSKUs.length;
         }
         var _loc4_:Array = _loc1_.screen.gameObj.userData.getCustomerPool(4,true);
         false;
         false;
         if(_loc1_.screen.gameObj.userData.getDay() > 2)
         {
            _loc4_.push(2);
         }
         if(_loc1_.screen.gameObj.userData.getDay() > 3)
         {
            false;
            false;
            _loc4_.push(3);
            false;
            false;
         }
         if(_loc1_.screen.gameObj.userData.getDay() > 4)
         {
            _loc4_.push(4);
         }
         if(_loc1_.screen.gameObj.userData.getDay() > 5)
         {
            _loc4_.push(5);
         }
         if(_loc1_.screen.gameObj.userData.getDay() > 6)
         {
            _loc4_.push(6);
         }
         if(_loc1_.screen.gameObj.userData.getDay() > 7)
         {
            _loc4_.push(7);
         }
         if(_loc1_.screen.gameObj.userData.getDay() > 8)
         {
            _loc4_.push(1);
            true;
            true;
         }
         _loc1_.amountToUse = 4;
         _loc1_.extraEyesToUse = 0;
         if(_loc1_.whichDifficulty == 1)
         {
            _loc1_.amountToUse = 2;
            _loc1_.timeBlack = 120;
            _loc1_.eyeballSpeeds = [4,3,4,3];
            _loc1_.eyeballYspeeds = [2,2,2,2];
            false;
            false;
         }
         else if(_loc1_.whichDifficulty == 2)
         {
            _loc1_.amountToUse = 4;
            _loc1_.timeBlack = 150;
            _loc1_.eyeballSpeeds = [6,5,6,5];
            false;
            false;
            _loc1_.eyeballYspeeds = [3,3,3,3];
         }
         else
         {
            true;
            true;
            if(_loc1_.whichDifficulty == 3)
            {
               _loc1_.amountToUse = 4;
               false;
               false;
               _loc1_.timeBlack = 180;
               _loc1_.eyeballSpeeds = [7,6,7,6];
               _loc1_.eyeballYspeeds = [3,3,3,3];
               false;
               false;
            }
            else
            {
               _loc1_.amountToUse = 4;
               _loc1_.timeBlack = 180;
               _loc1_.eyeballSpeeds = [9,8,9,8];
               _loc1_.eyeballYspeeds = [4,3,4,3];
               if(_loc1_.whichDifficulty == 4)
               {
                  _loc1_.extraEyesToUse = 0;
                  false;
                  false;
               }
               else if(_loc1_.whichDifficulty == 5)
               {
                  _loc1_.extraEyesToUse = 1;
               }
               else
               {
                  false;
                  false;
                  if(_loc1_.whichDifficulty == 6)
                  {
                     _loc1_.extraEyesToUse = 2;
                  }
                  else if(_loc1_.whichDifficulty == 7)
                  {
                     _loc1_.extraEyesToUse = 3;
                  }
                  else
                  {
                     _loc1_.extraEyesToUse = 4;
                  }
               }
            }
         }
         var _loc5_:Array = [];
         _loc2_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc2_ >= 4)
            {
               break;
            }
            _loc6_ = Math.floor(Math.random() * _loc4_.length);
            _loc5_.push(_loc4_[_loc6_]);
            true;
            true;
            _loc4_.splice(_loc6_,1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc5_.length)
         {
            if(Math.random() > 0.5)
            {
               _loc1_.outsideCustomerNumbers.push(_loc5_[_loc2_]);
            }
            else
            {
               _loc1_.outsideCustomerNumbers.unshift(_loc5_[_loc2_]);
            }
            if(Math.random() > 0.5)
            {
               true;
               true;
               _loc1_.insideCustomerNumbers.push(_loc5_[_loc2_]);
            }
            else
            {
               _loc1_.insideCustomerNumbers.unshift(_loc5_[_loc2_]);
            }
            true;
            true;
            _loc2_++;
         }
         true;
         true;
         _loc1_.lookForWhichCustomer = _loc1_.outsideCustomerNumbers[Math.floor(Math.random() * _loc1_.amountToUse)];
      }
      
      public function clearCustomers() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:MiniGameHallway = this;
         true;
         true;
         class_5.method_25("Clear customers.");
         false;
         false;
         _loc2_ = 0;
         while(true)
         {
            false;
            false;
            false;
            false;
            if(_loc2_ >= _loc1_.outsideCustomers.length)
            {
               break;
            }
            _loc1_.clearCustomer(_loc1_.outsideCustomers[_loc2_]);
            try
            {
               false;
               false;
               _loc1_.outsideCustomers[_loc2_].parent.removeChild(_loc1_.outsideCustomers[_loc2_]);
            }
            catch(err:Error)
            {
            }
            _loc1_.outsideCustomers[_loc2_] = null;
            true;
            true;
            true;
            true;
            _loc2_++;
            true;
            true;
         }
         _loc1_.outsideCustomers = null;
         true;
         true;
         _loc1_.outsideCustomerNumbers = null;
         _loc1_.outsideCustomers = [];
         true;
         true;
         _loc1_.outsideCustomerNumbers = [];
         _loc2_ = 0;
         while(_loc2_ < _loc1_.insideCustomers.length)
         {
            _loc1_.clearCustomer(_loc1_.insideCustomers[_loc2_]);
            true;
            true;
            try
            {
               false;
               false;
               _loc1_.insideCustomers[_loc2_].parent.removeChild(_loc1_.insideCustomers[_loc2_]);
               false;
               false;
            }
            catch(err:Error)
            {
            }
            _loc1_.insideCustomers[_loc2_] = null;
            _loc2_++;
         }
         _loc1_.insideCustomers = null;
         _loc1_.insideCustomerNumbers = null;
         _loc1_.insideCustomers = [];
         _loc1_.insideCustomerNumbers = [];
         true;
         true;
         if(_loc1_.headshot != null)
         {
            _loc1_.clearCustomer(_loc1_.headshot);
            _loc1_.clip.headshotholder.removeChild(_loc1_.headshot);
            _loc1_.headshot = null;
         }
      }
      
      public function setupCustomers() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc1_:MiniGameHallway = this;
         _loc2_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc2_ >= _loc1_.outsideCustomerNumbers.length)
            {
               break;
            }
            _loc3_ = _loc1_.buildCustomer(_loc1_.outsideCustomerNumbers[_loc2_]);
            _loc1_.clip["front_" + (_loc2_ + 1)].addChild(_loc3_);
            false;
            false;
            if(_loc1_.amountToUse > _loc2_)
            {
               true;
               true;
               _loc1_.clip["front_" + (_loc2_ + 1)].visible = true;
            }
            else
            {
               _loc1_.clip["front_" + (_loc2_ + 1)].visible = false;
            }
            _loc1_.outsideCustomers.push(_loc3_);
            true;
            true;
            true;
            true;
            true;
            true;
            §§push(_loc2_ == 0);
            if(!(_loc2_ == 0))
            {
               true;
               true;
               §§pop();
               §§push(_loc2_ == 2);
            }
            if(§§pop())
            {
               true;
               true;
               _loc3_.gotoAndPlay("portrait");
            }
            else
            {
               _loc3_.gotoAndPlay("stand");
            }
            true;
            true;
            _loc2_++;
         }
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.insideCustomerNumbers.length)
         {
            _loc4_ = _loc1_.buildCustomer(_loc1_.insideCustomerNumbers[_loc2_]);
            false;
            false;
            _loc1_.insideCustomers.push(_loc4_);
            if(_loc1_.insideCustomerNumbers[_loc2_] != _loc1_.lookForWhichCustomer)
            {
               if(Math.random() > 0.7)
               {
                  _loc4_.gotoAndPlay("readpaper1");
                  _loc4_.book.gotoAndStop("newspaper");
                  true;
                  true;
               }
               else if(Math.random() > 0.4)
               {
                  _loc4_.gotoAndPlay("drinkcoffee1");
                  _loc4_.mug.gotoAndStop("coffee");
               }
               else
               {
                  _loc4_.gotoAndPlay("dance1");
               }
            }
            else
            {
               _loc4_.gotoAndPlay("stand");
            }
            false;
            false;
            _loc2_++;
         }
         _loc1_.headshot = _loc1_.buildCustomer(_loc1_.lookForWhichCustomer,true);
         _loc1_.clip.headshotholder.addChild(_loc1_.headshot);
         _loc1_.clip.customername_txt.text = _loc1_.screen.gameObj.customerData.getCustomerName(_loc1_.lookForWhichCustomer) + "?";
         _loc1_.clip.arrow.x = _loc1_.doorX[_loc1_.outsideCustomerNumbers.indexOf(_loc1_.lookForWhichCustomer) + 1];
         _loc1_.clip.arrow.visible = true;
      }
      
      public function checkSuccess() : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameHallway = this;
         true;
         true;
         if(_loc1_.insideCustomerNumbers[_loc1_.choseWhichDoor - 1] == _loc1_.lookForWhichCustomer)
         {
            if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
            {
               false;
               false;
               _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
               true;
               true;
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               true;
               true;
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
                  true;
                  true;
               }
               false;
               false;
               _loc4_ = Math.floor(Math.random() * _loc2_.length);
               _loc1_.skuToWin = _loc2_[_loc4_];
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            _loc1_.amountToWin = 1;
            false;
            false;
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
            _loc1_.skuClothingMode = "";
         }
      }
      
      override public function updateScreen() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc1_:MiniGameHallway = this;
         true;
         true;
         ++_loc1_.gameTimer;
         if(_loc1_.gameTimer == _loc1_.timeBeforeBlack)
         {
            _loc1_.startWalking();
            true;
            true;
         }
         else if(_loc1_.isDoneHiding)
         {
            false;
            false;
            if(_loc1_.clip.darkcover.alpha == 1)
            {
               false;
               false;
               _loc1_.clip.eyes_1.visible = false;
               _loc1_.clip.eyes_2.visible = false;
               false;
               false;
               _loc1_.clip.eyes_3.visible = false;
               _loc1_.clip.eyes_4.visible = false;
               false;
               false;
               _loc1_.clip.extraeyes_1.visible = false;
               false;
               false;
               _loc1_.clip.extraeyes_2.visible = false;
               _loc1_.clip.extraeyes_3.visible = false;
               _loc1_.clip.extraeyes_4.visible = false;
               _loc1_.clip.btn_1.visible = true;
               _loc1_.clip.btn_2.visible = true;
               _loc1_.clip.btn_3.visible = true;
               _loc1_.clip.btn_4.visible = true;
               false;
               false;
               _loc2_ = 0;
               while(true)
               {
                  true;
                  true;
                  if(_loc2_ >= 4)
                  {
                     break;
                  }
                  _loc1_.clip.behind["back_" + (_loc2_ + 1)].addChild(_loc1_.insideCustomers[_loc2_]);
                  _loc2_++;
               }
            }
            if(_loc1_.clip.darkcover.alpha > 0)
            {
               _loc1_.clip.darkcover.alpha -= _loc1_.fadeUpSpeed;
               false;
               false;
            }
         }
         else
         {
            §§push(_loc1_.isHiding);
            if(_loc1_.isHiding)
            {
               true;
               true;
               §§pop();
               true;
               true;
               §§push(_loc1_.gameTimer > _loc1_.timeBeforeBlack + _loc1_.delayBeforeMoving);
            }
            if(§§pop())
            {
               false;
               false;
               _loc3_ = 0;
               _loc4_ = false;
               false;
               false;
               if(_loc1_.gameTimer > _loc1_.timeBeforeBlack + _loc1_.timeBlack)
               {
                  _loc4_ = true;
               }
               _loc5_ = 0;
               while(_loc5_ < 4)
               {
                  _loc6_ = _loc1_.insideCustomerNumbers.indexOf(_loc1_.outsideCustomerNumbers[_loc5_]) + 1;
                  false;
                  false;
                  _loc7_ = _loc1_.clip["eyes_" + (_loc5_ + 1)];
                  _loc7_.x += _loc1_.eyeballDirections[_loc5_] * _loc1_.eyeballSpeeds[_loc5_];
                  _loc7_.y += _loc1_.eyeballDirY[_loc5_] * _loc1_.eyeballYspeeds[_loc5_];
                  ++_loc1_.eyeballDurations[_loc5_];
                  if(_loc7_.x < 10 && _loc1_.eyeballDirections[_loc5_] == -1)
                  {
                     _loc7_.x = 10;
                     true;
                     true;
                     false;
                     false;
                     _loc1_.eyeballDirections[_loc5_] = 1;
                  }
                  else
                  {
                     false;
                     false;
                     if(_loc7_.x > 630 && _loc1_.eyeballDirections[_loc5_] == 1)
                     {
                        _loc7_.x = 630;
                        false;
                        false;
                        _loc1_.eyeballDirections[_loc5_] = -1;
                     }
                  }
                  if(_loc7_.y < _loc1_.doorY && (_loc1_.eyeballReturning[_loc5_] == false || _loc7_.x != _loc1_.doorX[_loc6_]))
                  {
                     _loc7_.y = _loc1_.doorY;
                     _loc1_.eyeballDirY[_loc5_] = 0;
                     false;
                     false;
                     if(_loc1_.eyeballDirections[_loc5_] == 0)
                     {
                        _loc7_.inside.stop();
                     }
                  }
                  else if(_loc7_.y > _loc1_.doorMaxY)
                  {
                     _loc7_.y = _loc1_.doorMaxY;
                     false;
                     false;
                     _loc1_.eyeballDirY[_loc5_] = 0;
                     if(_loc1_.eyeballDirections[_loc5_] == 0)
                     {
                        _loc7_.inside.stop();
                     }
                  }
                  §§push(_loc1_.eyeballReturning[_loc5_] == false && _loc1_.eyeballDurations[_loc5_] > _loc1_.maxDuration || §§pop() && Math.random() > 0.9);
                  if(!(_loc1_.eyeballReturning[_loc5_] == false && _loc1_.eyeballDurations[_loc5_] > _loc1_.maxDuration || §§pop() && Math.random() > 0.9))
                  {
                     true;
                     true;
                     §§pop();
                     §§push(_loc4_ && _loc1_.eyeballReturning[_loc5_] == false);
                  }
                  if(§§pop())
                  {
                     false;
                     false;
                     _loc1_.eyeballDirections[_loc5_] = Math.round(Math.random() * 2) - 1;
                     _loc1_.eyeballDirY[_loc5_] = Math.round(Math.random() * 2) - 1;
                     true;
                     true;
                     if(_loc1_.whichDifficulty >= 4 && _loc1_.eyeballDirections[_loc5_] == 0)
                     {
                        if(Math.random() > 0.5)
                        {
                           true;
                           true;
                           true;
                           true;
                           _loc1_.eyeballDirections[_loc5_] = -1;
                        }
                        else
                        {
                           false;
                           false;
                           true;
                           true;
                           true;
                           true;
                           _loc1_.eyeballDirections[_loc5_] = 1;
                        }
                     }
                     _loc1_.eyeballDurations[_loc5_] = 0;
                     if(_loc4_)
                     {
                        false;
                        false;
                        _loc1_.eyeballReturning[_loc5_] = true;
                        true;
                        true;
                        _loc1_.eyeballDirY[_loc5_] = -1;
                        if(_loc1_.doorX[_loc6_] > _loc7_.x)
                        {
                           _loc1_.eyeballDirections[_loc5_] = 1;
                        }
                        else if(_loc1_.doorX[_loc6_] < _loc7_.x)
                        {
                           false;
                           false;
                           false;
                           false;
                           _loc1_.eyeballDirections[_loc5_] = -1;
                        }
                        else
                        {
                           _loc1_.eyeballDirections[_loc5_] = 0;
                        }
                        if(_loc5_ >= _loc1_.amountToUse)
                        {
                           _loc7_.x = _loc1_.doorX[_loc6_];
                        }
                     }
                  }
                  else
                  {
                     true;
                     true;
                     if(_loc1_.eyeballReturning[_loc5_] == true)
                     {
                        true;
                        true;
                        false;
                        false;
                        §§push(_loc1_.eyeballDirections[_loc5_] == 1);
                        if(_loc1_.eyeballDirections[_loc5_] == 1)
                        {
                           false;
                           false;
                           §§pop();
                           §§push(_loc7_.x > _loc1_.doorX[_loc6_]);
                        }
                        if(§§pop())
                        {
                           _loc7_.x = _loc1_.doorX[_loc6_];
                           _loc1_.eyeballDirections[_loc5_] = 0;
                        }
                        else if(_loc1_.eyeballDirections[_loc5_] == -1 && _loc7_.x < _loc1_.doorX[_loc6_])
                        {
                           false;
                           false;
                           _loc7_.x = _loc1_.doorX[_loc6_];
                           false;
                           false;
                           _loc1_.eyeballDirections[_loc5_] = 0;
                        }
                        else if(_loc7_.x == _loc1_.doorX[_loc6_])
                        {
                           true;
                           true;
                           true;
                           true;
                           _loc1_.eyeballDirections[_loc5_] = 0;
                           if(_loc7_.y > _loc1_.doorBackY)
                           {
                              _loc7_.y -= _loc1_.eyeballSpeeds[_loc5_];
                           }
                           else
                           {
                              §§push(_loc5_ < _loc1_.amountToUse);
                              if(_loc5_ < _loc1_.amountToUse)
                              {
                                 true;
                                 true;
                                 §§pop();
                                 true;
                                 true;
                                 §§push(_loc7_.visible == true);
                              }
                              if(§§pop())
                              {
                                 _loc1_.screen.gameObj.soundManager.playSound("closedoor.wav");
                              }
                              _loc7_.visible = false;
                              _loc7_.inside.stop();
                              true;
                              true;
                              _loc3_++;
                           }
                        }
                     }
                  }
                  true;
                  true;
                  if(_loc1_.eyeballDirections[_loc5_] == 0 && _loc1_.eyeballDirY[_loc5_] == 0)
                  {
                     _loc7_.inside.stop();
                  }
                  else
                  {
                     _loc7_.inside.play();
                  }
                  _loc8_ = _loc1_.clip["extraeyes_" + (_loc5_ + 1)];
                  _loc8_.x += _loc1_.extraEyeDirections[_loc5_] * _loc1_.extraEyeSpeeds[_loc5_];
                  _loc8_.y += _loc1_.extraEyeDirY[_loc5_] * _loc1_.extraEyeYspeeds[_loc5_];
                  true;
                  true;
                  ++_loc1_.extraEyeDurations[_loc5_];
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  false;
                  false;
                  if(_loc1_.gameTimer < _loc1_.timeBeforeBlack + _loc1_.timeBlack)
                  {
                     if(_loc8_.x < 10 && _loc1_.extraEyeDirections[_loc5_] == -1)
                     {
                        false;
                        false;
                        _loc8_.x = 10;
                        false;
                        false;
                        false;
                        false;
                        _loc1_.extraEyeDirections[_loc5_] = 1;
                     }
                     else
                     {
                        false;
                        false;
                        true;
                        true;
                        if(_loc7_.x > 630 && _loc1_.extraEyeDirections[_loc5_] == 1)
                        {
                           _loc8_.x = 630;
                           false;
                           false;
                           _loc1_.extraEyeDirections[_loc5_] = -1;
                        }
                     }
                  }
                  if(_loc8_.y < _loc1_.doorY)
                  {
                     _loc8_.y = _loc1_.doorY;
                     _loc1_.extraEyeDirY[_loc5_] = 0;
                     if(_loc1_.extraEyeDirections[_loc5_] == 0)
                     {
                        _loc8_.inside.stop();
                     }
                  }
                  else if(_loc8_.y > _loc1_.doorMaxY)
                  {
                     _loc8_.y = _loc1_.doorMaxY;
                     _loc1_.extraEyeDirY[_loc5_] = 0;
                     false;
                     false;
                     if(_loc1_.extraEyeDirections[_loc5_] == 0)
                     {
                        _loc8_.inside.stop();
                     }
                  }
                  false;
                  false;
                  §§push(_loc8_.x > 10 && _loc8_.x < 630 && _loc1_.gameTimer < _loc1_.timeBeforeBlack + _loc1_.timeBlack);
                  if(_loc8_.x > 10 && _loc8_.x < 630 && _loc1_.gameTimer < _loc1_.timeBeforeBlack + _loc1_.timeBlack)
                  {
                     §§pop();
                     §§push(_loc1_.extraEyeDurations[_loc5_] > _loc1_.maxDuration);
                     if(!(_loc1_.extraEyeDurations[_loc5_] > _loc1_.maxDuration))
                     {
                        false;
                        false;
                        §§pop();
                        true;
                        true;
                        false;
                        false;
                        §§push(_loc1_.extraEyeDurations[_loc5_] > _loc1_.minDuration && Math.random() > 0.9);
                     }
                  }
                  if(§§pop())
                  {
                     false;
                     false;
                     _loc1_.extraEyeDirY[_loc5_] = Math.round(Math.random() * 2) - 1;
                     if(Math.random() > 0.5)
                     {
                        false;
                        false;
                        true;
                        true;
                        _loc1_.extraEyeDirections[_loc5_] = -1;
                     }
                     else
                     {
                        false;
                        false;
                        _loc1_.extraEyeDirections[_loc5_] = 1;
                     }
                     _loc1_.extraEyeDurations[_loc5_] = 0;
                  }
                  if(_loc4_)
                  {
                     false;
                     false;
                     if(_loc8_.visible && (_loc8_.x < 0 || _loc8_.x > 640))
                     {
                        true;
                        true;
                        _loc3_++;
                     }
                  }
                  _loc5_++;
               }
               if(_loc3_ == 4 + _loc1_.extraEyesToUse)
               {
                  _loc1_.isHiding = false;
                  true;
                  true;
                  _loc1_.isDoneHiding = true;
               }
            }
         }
         if(_loc1_.isOpened)
         {
            false;
            false;
            var _loc9_:*;
            var _loc10_:* = (_loc9_ = _loc1_).openedTimer + 1;
            false;
            false;
            _loc9_.openedTimer = _loc10_;
            true;
            true;
            if(_loc1_.openedTimer == _loc1_.wrongDelayTimerMax && _loc1_.choseWhichDoor != _loc1_.insideCustomerNumbers.indexOf(_loc1_.lookForWhichCustomer) + 1)
            {
               _loc1_.clip["door_" + (_loc1_.insideCustomerNumbers.indexOf(_loc1_.lookForWhichCustomer) + 1)].gotoAndPlay("open");
               _loc1_.insideCustomers[_loc1_.insideCustomerNumbers.indexOf(_loc1_.lookForWhichCustomer)].gotoAndPlay("decent");
               false;
               false;
            }
            else if(_loc1_.openedTimer == _loc1_.openedTimerMax)
            {
               _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
               true;
               true;
               _loc10_ = (_loc9_ = _loc1_).openedTimer + 1;
               true;
               true;
               _loc9_.openedTimer = _loc10_;
            }
         }
      }
      
      public function startWalking() : void
      {
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameHallway = this;
         _loc1_.isHiding = true;
         _loc1_.clip.darkcover.alpha = 1;
         _loc1_.clip.arrow.visible = false;
         _loc1_.clip.front_1.visible = false;
         true;
         true;
         _loc1_.clip.front_2.visible = false;
         _loc1_.clip.front_3.visible = false;
         _loc1_.clip.front_4.visible = false;
         true;
         true;
         _loc1_.clip.eyes_1.visible = true;
         _loc1_.clip.eyes_1.inside.stop();
         _loc1_.clip.eyes_1.x = _loc1_.doorX[1];
         _loc1_.clip.eyes_1.y = _loc1_.doorY;
         true;
         true;
         false;
         false;
         if(_loc1_.amountToUse >= 2)
         {
            false;
            false;
            _loc1_.clip.eyes_2.visible = true;
         }
         _loc1_.clip.eyes_2.inside.stop();
         _loc1_.clip.eyes_2.x = _loc1_.doorX[2];
         _loc1_.clip.eyes_2.y = _loc1_.doorY;
         true;
         true;
         false;
         false;
         if(_loc1_.amountToUse >= 3)
         {
            true;
            true;
            _loc1_.clip.eyes_3.visible = true;
         }
         _loc1_.clip.eyes_3.inside.stop();
         _loc1_.clip.eyes_3.x = _loc1_.doorX[3];
         _loc1_.clip.eyes_3.y = _loc1_.doorY;
         if(_loc1_.amountToUse >= 4)
         {
            _loc1_.clip.eyes_4.visible = true;
         }
         _loc1_.clip.eyes_4.inside.stop();
         _loc1_.clip.eyes_4.x = _loc1_.doorX[4];
         false;
         false;
         _loc1_.clip.eyes_4.y = _loc1_.doorY;
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            _loc4_ = Math.round(Math.random() * 2) - 1;
            false;
            false;
            false;
            false;
            _loc1_.eyeballDirections[_loc2_] = _loc4_;
            _loc1_.eyeballReturning[_loc2_] = false;
            _loc1_.eyeballDirY[_loc2_] = Math.round(Math.random() * 1);
            _loc1_.clip["eyes_" + (_loc2_ + 1)].inside.stop();
            _loc2_++;
         }
         true;
         true;
         false;
         false;
         §§push(_loc1_.whichDifficulty > 3);
         if(_loc1_.whichDifficulty > 3)
         {
            false;
            false;
            §§pop();
            §§push(_loc1_.whichDifficulty % 2 == 0);
         }
         if(§§pop())
         {
            _loc1_.eyeballDirections = [-1,1,1,-1];
            false;
            false;
         }
         else if(_loc1_.whichDifficulty > 3)
         {
            _loc1_.eyeballDirections = [1,-1,1,-1];
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 4)
         {
            if(_loc1_.extraEyesToUse >= _loc3_)
            {
               _loc1_.clip["extraeyes_" + _loc3_].visible = true;
            }
            else
            {
               _loc1_.clip["extraeyes_" + _loc3_].visible = false;
            }
            _loc3_++;
         }
         true;
         true;
         _loc1_.screen.gameObj.soundManager.playSound("minigame_noammo.wav");
      }
      
      public function buildCustomer(param1:Number, param2:Boolean = false) : MovieClip
      {
         var _loc29_:Class = null;
         var _loc30_:MovieClip = null;
         var _loc31_:Class = null;
         var _loc32_:MovieClip = null;
         var _loc3_:MiniGameHallway = this;
         var _loc4_:MovieClip = new customerMC();
         var _loc5_:String = _loc3_.screen.gameObj.customerData.getCustomerClipName(param1);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = getDefinitionByName("customer_" + _loc5_ + "_body") as Class)()).name = "clip";
         _loc4_.body.addChild(_loc7_);
         var _loc9_:MovieClip;
         var _loc8_:Class;
         (_loc9_ = new (_loc8_ = getDefinitionByName("customer_" + _loc5_ + "_head") as Class)()).name = "clip";
         _loc4_.head.addChild(_loc9_);
         var _loc11_:MovieClip;
         var _loc10_:Class;
         (_loc11_ = new (_loc10_ = getDefinitionByName("customer_" + _loc5_ + "_eyes") as Class)()).name = "clip";
         true;
         true;
         _loc4_.eyes.addChild(_loc11_);
         var _loc13_:MovieClip;
         var _loc12_:Class;
         (_loc13_ = new (_loc12_ = getDefinitionByName("customer_" + _loc5_ + "_mouth") as Class)()).name = "clip";
         true;
         true;
         _loc4_.mouth.addChild(_loc13_);
         var _loc15_:MovieClip;
         var _loc14_:Class;
         (_loc15_ = new (_loc14_ = getDefinitionByName("customer_" + _loc5_ + "_neck") as Class)()).name = "clip";
         _loc4_.neck.addChild(_loc15_);
         try
         {
            (_loc30_ = new (_loc29_ = getDefinitionByName("customer_" + _loc5_ + "_hair") as Class)()).name = "clip";
            _loc4_.hair.addChild(_loc30_);
         }
         catch(err:Error)
         {
         }
         try
         {
            (_loc32_ = new (_loc31_ = getDefinitionByName("customer_" + _loc5_ + "_back_hair") as Class)()).name = "clip";
            true;
            true;
            _loc4_.back_hair.addChild(_loc32_);
         }
         catch(err:Error)
         {
         }
         var _loc17_:MovieClip;
         var _loc16_:Class;
         (_loc17_ = new (_loc16_ = getDefinitionByName("customer_" + _loc5_ + "_foot") as Class)()).name = "clip";
         _loc4_.front_shoe.addChild(_loc17_);
         var _loc18_:MovieClip;
         (_loc18_ = new _loc16_()).name = "clip";
         _loc4_.back_shoe.addChild(_loc18_);
         var _loc20_:MovieClip;
         var _loc19_:Class;
         (_loc20_ = new (_loc19_ = getDefinitionByName("customer_" + _loc5_ + "_hand") as Class)()).name = "clip";
         _loc4_.fronthand.addChild(_loc20_);
         var _loc22_:MovieClip;
         var _loc21_:Class;
         (_loc22_ = new (_loc21_ = getDefinitionByName("customer_" + _loc5_ + "_hand2") as Class)()).name = "clip";
         false;
         false;
         _loc4_.backhand.addChild(_loc22_);
         var _loc24_:MovieClip;
         var _loc23_:Class;
         (_loc24_ = new (_loc23_ = getDefinitionByName("customer_" + _loc5_ + "_upperarm") as Class)()).name = "clip";
         _loc4_.front_upperarm.addChild(_loc24_);
         var _loc25_:MovieClip;
         (_loc25_ = new _loc23_()).name = "clip";
         _loc4_.back_upperarm.addChild(_loc25_);
         var _loc27_:MovieClip;
         var _loc26_:Class;
         (_loc27_ = new (_loc26_ = getDefinitionByName("customer_" + _loc5_ + "_forearm") as Class)()).name = "clip";
         false;
         false;
         _loc4_.front_forearm.addChild(_loc27_);
         var _loc28_:MovieClip;
         (_loc28_ = new _loc26_()).name = "clip";
         _loc4_.back_forearm.addChild(_loc28_);
         if(param2)
         {
            _loc17_.visible = false;
            _loc18_.visible = false;
            true;
            true;
            _loc7_.visible = false;
            _loc20_.visible = false;
            _loc22_.visible = false;
            _loc24_.visible = false;
            _loc25_.visible = false;
            _loc27_.visible = false;
            _loc28_.visible = false;
            _loc15_.visible = false;
            _loc4_.gotoAndStop("stand");
         }
         else
         {
            _loc4_.gotoAndPlay("stand");
         }
         return _loc4_;
      }
      
      public function clearCustomer(param1:MovieClip) : void
      {
         false;
         true;
         this;
         try
         {
            param1.stop();
            param1.head.removeChildAt(0);
            param1.eyes.removeChildAt(0);
            param1.mouth.removeChildAt(0);
         }
         catch(err:Error)
         {
         }
         try
         {
            param1.body.removeChildAt(0);
            param1.neck.removeChildAt(0);
            true;
            true;
            param1.front_shoe.removeChildAt(0);
            true;
            true;
            param1.back_shoe.removeChildAt(0);
            param1.fronthand.removeChildAt(0);
            true;
            true;
            param1.backhand.removeChildAt(0);
            param1.front_upperarm.removeChildAt(0);
            param1.back_upperarm.removeChildAt(0);
            param1.front_forearm.removeChildAt(0);
            param1.back_forearm.removeChildAt(0);
            false;
            false;
         }
         catch(err:Error)
         {
         }
         try
         {
            param1.hair.removeChildAt(0);
         }
         catch(err:Error)
         {
         }
         try
         {
            param1.back_hair.removeChildAt(0);
         }
         catch(err:Error)
         {
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:MiniGameHallway = this;
         _loc1_.clearCustomers();
         false;
         false;
         _loc1_.clip.btn_1.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         false;
         false;
         _loc1_.clip.btn_2.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         _loc1_.clip.btn_3.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         _loc1_.clip.btn_4.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
   }
}
