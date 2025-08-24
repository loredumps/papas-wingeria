package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import package_2.*;
   import package_4.*;
   import wingGame.data.*;
   
   public class MiniGameCravings extends MiniGame
   {
       
      
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var randomSeed:Number = 1;
      
      public var whichDifficulty:Number = 1;
      
      public var whichRound:Number = 1;
      
      public var maxRounds:Number = 5;
      
      public var roundsWon:Number = 0;
      
      public var ticketTweenTimer:Number = 0;
      
      public var ticketTweenMax:Number = 30;
      
      public var ticketTweenOutMax:Number = 60;
      
      public var ticketPad:Number = 110;
      
      public var ticketOffscreenPad:Number = 640;
      
      public var currentCustomer:MovieClip = null;
      
      public var previousCustomer:MovieClip = null;
      
      public var customerLineup:Array;
      
      public var correctTicketDistToCenter:Number = 0;
      
      public var offScreenRight:Number = 690;
      
      public var offScreenLeft:Number = -90;
      
      public var centerScreen:Number = 280;
      
      public var walkSpeed:Number = 8;
      
      public var isCustomerCentered:Boolean = false;
      
      public var tickets:Array;
      
      public var ticketPositions:Array;
      
      public var ticketBitmaps:Array;
      
      public var ticketBMPs:Array;
      
      public var whichTicketIsCorrect:Number = -1;
      
      public var choseWhichTicket:Number = -1;
      
      public var canClick:Boolean = false;
      
      public var ticketsEntering:Boolean = false;
      
      public var ticketsLeaving:Boolean = false;
      
      public var lastTicketLeaving:Boolean = false;
      
      public var foodiniClip:MovieClip;
      
      private var panelTicketBottom:Number = 231;
      
      private var panelTicketTop:Number = -6;
      
      private var panelWingHeight:Number = 66;
      
      private var panelSideHeight:Number = 33;
      
      private var panelDipSize:Number = 33;
      
      private var panelTicketLeft:Number = -65;
      
      public function MiniGameCravings(param1:MiniGameScreen, param2:MovieClip)
      {
         this.prizeSKUs = ["poster_foodini","pants_09","furni_foodinitable_small","floor22","shirt_10","furni_foodinitable_medium","furni_foodini_balloon","bodyacc_03","belt_07","furni_velvet_rope_purple","hat17","wall35","jacket_08","furni_foodinitable_large"];
         this.prizeIsClothing = [false,true,false,false,true,false,false,true,true,false,true,false,true,false];
         this.prizeClothingMode = ["","gender","","","gender","","","gender","gender","","hat","","gender",""];
         this.allowedForRandom = [1,0,1,0,0,1,1,0,0,1,0,0,0,1];
         this.customerLineup = [1,2,3,4,5];
         this.tickets = [];
         this.ticketPositions = [];
         this.ticketBitmaps = [];
         this.ticketBMPs = [];
         super(param1,param2);
      }
      
      override public function setupScreen() : void
      {
         var _loc1_:MiniGameCravings = this;
         _loc1_.clip = new minigameCravingsMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Customer Cravings");
         _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
         _loc1_.decideDifficulty();
         true;
         true;
         _loc1_.foodiniClip = new minigame_foodini();
         true;
         true;
         _loc1_.foodiniClip.scaleX = -0.77;
         _loc1_.foodiniClip.scaleY = 0.77;
         false;
         false;
         _loc1_.foodiniClip.x = 95;
         _loc1_.foodiniClip.y = 277;
         _loc1_.clip.foodiniholder.addChild(_loc1_.foodiniClip);
         false;
         false;
         _loc1_.foodiniClip.gotoAndPlay("stand");
         false;
         false;
         _loc1_.clip.talktext.visible = false;
         var _loc2_:int = 1;
         while(_loc2_ <= _loc1_.maxRounds)
         {
            _loc1_.clip["light" + _loc2_].gotoAndStop(1);
            _loc2_++;
         }
         _loc1_.createNewCustomer();
      }
      
      public function decideDifficulty() : void
      {
         false;
         true;
         var _loc5_:Number = NaN;
         var _loc1_:MiniGameCravings = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         true;
         true;
         if(_loc2_ < this.prizeSKUs.length)
         {
            true;
            true;
            _loc1_.whichDifficulty = _loc2_ + 1;
         }
         else
         {
            _loc1_.whichDifficulty = this.prizeSKUs.length;
         }
         var _loc3_:Array = _loc1_.screen.gameObj.userData.getCustomerPool(5,true);
         _loc1_.customerLineup = [];
         var _loc4_:int = 0;
         while(_loc4_ < 5)
         {
            _loc5_ = Math.floor(Math.random() * _loc3_.length);
            true;
            true;
            _loc1_.customerLineup.push(_loc3_[_loc5_]);
            false;
            false;
            _loc3_.splice(_loc5_,1);
            _loc4_++;
            false;
            false;
         }
      }
      
      public function checkSuccess() : void
      {
         false;
         true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameCravings = this;
         true;
         true;
         if(_loc1_.roundsWon == 5)
         {
            false;
            false;
            if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
            {
               false;
               false;
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
                     false;
                     false;
                  }
                  _loc3_++;
               }
               _loc4_ = Math.floor(Math.random() * _loc2_.length);
               false;
               false;
               _loc1_.skuToWin = _loc2_[_loc4_];
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            _loc1_.amountToWin = 1;
         }
         else if(_loc1_.roundsWon == 4)
         {
            _loc1_.skuToWin = "tips";
            _loc1_.amountToWin = 150;
            true;
            true;
            _loc1_.skuIsClothing = false;
            false;
            false;
            _loc1_.skuClothingMode = "";
            true;
            true;
         }
         else
         {
            false;
            false;
            true;
            true;
            if(_loc1_.roundsWon == 3)
            {
               true;
               true;
               _loc1_.skuToWin = "tips";
               true;
               true;
               _loc1_.amountToWin = 100;
               false;
               false;
               _loc1_.skuIsClothing = false;
               _loc1_.skuClothingMode = "";
            }
            else
            {
               true;
               true;
               if(_loc1_.roundsWon == 2)
               {
                  _loc1_.skuToWin = "tips";
                  _loc1_.amountToWin = 75;
                  _loc1_.skuIsClothing = false;
                  _loc1_.skuClothingMode = "";
               }
               else if(_loc1_.roundsWon == 1)
               {
                  _loc1_.skuToWin = "tips";
                  _loc1_.amountToWin = 50;
                  false;
                  false;
                  _loc1_.skuIsClothing = false;
                  _loc1_.skuClothingMode = "";
               }
               else
               {
                  _loc1_.skuToWin = null;
                  _loc1_.amountToWin = 0;
                  _loc1_.skuIsClothing = false;
                  _loc1_.skuClothingMode = "";
               }
            }
         }
      }
      
      override public function updateScreen() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:MiniGameCravings = this;
         §§push(_loc1_.previousCustomer != null);
         if(_loc1_.previousCustomer != null)
         {
            false;
            false;
            §§pop();
            §§push(_loc1_.clip.previousholder.x > _loc1_.offScreenLeft);
         }
         if(§§pop())
         {
            false;
            false;
            _loc1_.clip.previousholder.x -= _loc1_.walkSpeed;
            true;
            true;
            if(_loc1_.clip.previousholder.x <= _loc1_.offScreenLeft)
            {
               true;
               true;
               _loc1_.previousCustomer.stop();
            }
         }
         if(_loc1_.currentCustomer != null && _loc1_.clip.customerholder.x > _loc1_.centerScreen)
         {
            _loc1_.clip.customerholder.x -= _loc1_.walkSpeed;
            if(_loc1_.clip.customerholder.x <= _loc1_.centerScreen)
            {
               _loc1_.clip.customerholder.x = _loc1_.centerScreen;
               _loc1_.currentCustomer.gotoAndPlay("stand");
               false;
               false;
               _loc1_.isCustomerCentered = true;
               _loc1_.createTickets();
               _loc1_.ticketsEntering = true;
               _loc1_.foodiniClip.gotoAndPlay("talk");
               _loc1_.clip.talktext.visible = true;
            }
         }
         if(_loc1_.ticketsEntering)
         {
            false;
            false;
            if(_loc1_.ticketTweenTimer < _loc1_.ticketTweenMax)
            {
               true;
               true;
               ++_loc1_.ticketTweenTimer;
               _loc2_ = 0;
               while(true)
               {
                  false;
                  false;
                  if(_loc2_ >= _loc1_.tickets.length)
                  {
                     break;
                  }
                  false;
                  false;
                  false;
                  false;
                  _loc1_.tickets[_loc2_].x = class_17.easeOut(_loc1_.ticketTweenTimer,_loc1_.ticketPositions[_loc2_],_loc1_.ticketOffscreenPad * -1,_loc1_.ticketTweenMax);
                  _loc2_++;
               }
               true;
               true;
               if(_loc1_.ticketTweenTimer == _loc1_.ticketTweenMax)
               {
                  _loc1_.canClick = true;
                  _loc1_.ticketsEntering = false;
               }
            }
         }
         else
         {
            false;
            false;
            if(_loc1_.ticketsLeaving)
            {
               if(_loc1_.ticketTweenTimer < _loc1_.ticketTweenOutMax)
               {
                  var _loc3_:*;
                  var _loc4_:* = (_loc3_ = _loc1_).ticketTweenTimer + 1;
                  true;
                  true;
                  _loc3_.ticketTweenTimer = _loc4_;
                  true;
                  true;
                  _loc2_ = 0;
                  while(_loc2_ < _loc1_.tickets.length)
                  {
                     false;
                     false;
                     true;
                     true;
                     if(_loc2_ != _loc1_.whichTicketIsCorrect)
                     {
                        false;
                        false;
                        true;
                        true;
                        _loc1_.tickets[_loc2_].x = class_17.easeOut(Math.min(_loc1_.ticketTweenTimer,_loc1_.ticketTweenMax),_loc1_.ticketPositions[_loc2_],_loc1_.ticketOffscreenPad * -1,_loc1_.ticketTweenMax);
                     }
                     else
                     {
                        _loc1_.tickets[_loc2_].x = class_17.easeOut(Math.min(_loc1_.ticketTweenTimer,_loc1_.ticketTweenMax / 2),_loc1_.ticketPositions[_loc2_],_loc1_.correctTicketDistToCenter,_loc1_.ticketTweenMax / 2);
                     }
                     true;
                     true;
                     _loc2_++;
                  }
                  true;
                  true;
                  if(_loc1_.ticketTweenTimer == _loc1_.ticketTweenOutMax)
                  {
                     _loc1_.ticketsLeaving = false;
                     false;
                     false;
                     true;
                     true;
                     _loc1_.ticketPositions[_loc1_.choseWhichTicket] = _loc1_.tickets[_loc1_.choseWhichTicket].x;
                     _loc1_.decideNextRound();
                     true;
                     true;
                  }
               }
            }
            else if(_loc1_.lastTicketLeaving)
            {
               false;
               false;
               true;
               true;
               if(_loc1_.ticketTweenTimer < _loc1_.ticketTweenMax)
               {
                  ++_loc1_.ticketTweenTimer;
                  true;
                  true;
                  _loc2_ = 0;
                  while(_loc2_ < _loc1_.tickets.length)
                  {
                     if(_loc2_ == _loc1_.choseWhichTicket)
                     {
                        _loc1_.tickets[_loc2_].x = class_17.easeOut(_loc1_.ticketTweenTimer,_loc1_.ticketPositions[_loc2_],_loc1_.ticketOffscreenPad * -1,_loc1_.ticketTweenMax);
                     }
                     false;
                     false;
                     _loc2_++;
                     false;
                     false;
                  }
                  false;
                  false;
                  if(_loc1_.ticketTweenTimer == _loc1_.ticketTweenMax)
                  {
                     _loc1_.lastTicketLeaving = false;
                  }
               }
            }
         }
      }
      
      public function decideNextRound() : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc1_:MiniGameCravings = this;
         var _loc2_:Boolean = true;
         §§push(_loc1_.choseWhichTicket == _loc1_.whichTicketIsCorrect);
         if(_loc1_.choseWhichTicket == _loc1_.whichTicketIsCorrect)
         {
            true;
            true;
            §§pop();
            §§push(_loc1_.whichRound < 5);
         }
         if(§§pop())
         {
            true;
            true;
            _loc2_ = true;
            false;
            false;
         }
         else
         {
            _loc2_ = false;
         }
         if(_loc2_)
         {
            var _loc4_:*;
            var _loc5_:* = (_loc4_ = _loc1_).whichRound + 1;
            false;
            false;
            _loc4_.whichRound = _loc5_;
            _loc1_.lastTicketLeaving = true;
            _loc1_.ticketTweenTimer = 0;
            false;
            false;
            _loc3_ = 1;
            while(_loc3_ <= _loc1_.maxRounds)
            {
               true;
               true;
               if(_loc1_.roundsWon >= _loc3_)
               {
                  false;
                  false;
                  _loc1_.clip["light" + _loc3_].gotoAndStop(2);
               }
               else
               {
                  _loc1_.clip["light" + _loc3_].gotoAndStop(1);
               }
               _loc3_++;
            }
            false;
            false;
            _loc1_.createNewCustomer();
            false;
            false;
         }
         else
         {
            _loc1_.checkSuccess();
            if(_loc1_.roundsWon == 5)
            {
               _loc1_.foodiniClip.gotoAndPlay("wintostand");
            }
            _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:MiniGameCravings = this;
         try
         {
            if(_loc1_.foodiniClip != null)
            {
               _loc1_.clip.foodiniholder.removechild(_loc1_.foodiniClip);
               true;
               true;
               _loc1_.foodiniClip = null;
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc1_.clearTickets();
         }
         catch(err:Error)
         {
         }
         if(_loc1_.currentCustomer != null)
         {
            true;
            true;
            try
            {
               _loc1_.clearCustomer(_loc1_.currentCustomer);
               _loc1_.currentCustomer.parent.removeChild(_loc1_.currentCustomer);
               _loc1_.currentCustomer = null;
            }
            catch(err:Error)
            {
            }
         }
         if(_loc1_.previousCustomer != null)
         {
            try
            {
               _loc1_.clearCustomer(_loc1_.previousCustomer);
               false;
               false;
               _loc1_.previousCustomer.parent.removeChild(_loc1_.previousCustomer);
               _loc1_.previousCustomer = null;
            }
            catch(err:Error)
            {
            }
         }
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function buildCustomer(param1:Number, param2:Boolean = false) : MovieClip
      {
         false;
         true;
         var _loc29_:Class = null;
         var _loc30_:MovieClip = null;
         var _loc31_:Class = null;
         var _loc32_:MovieClip = null;
         var _loc3_:MiniGameCravings = this;
         var _loc4_:MovieClip = new customerMC();
         var _loc5_:String = _loc3_.screen.gameObj.customerData.getCustomerClipName(param1);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = getDefinitionByName("customer_" + _loc5_ + "_body") as Class)()).name = "clip";
         _loc4_.body.addChild(_loc7_);
         var _loc9_:MovieClip;
         var _loc8_:Class;
         (_loc9_ = new (_loc8_ = getDefinitionByName("customer_" + _loc5_ + "_head") as Class)()).name = "clip";
         false;
         false;
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
         _loc4_.mouth.addChild(_loc13_);
         var _loc15_:MovieClip;
         var _loc14_:Class;
         (_loc15_ = new (_loc14_ = getDefinitionByName("customer_" + _loc5_ + "_neck") as Class)()).name = "clip";
         false;
         false;
         _loc4_.neck.addChild(_loc15_);
         try
         {
            (_loc30_ = new (_loc29_ = getDefinitionByName("customer_" + _loc5_ + "_hair") as Class)()).name = "clip";
            false;
            false;
            _loc4_.hair.addChild(_loc30_);
         }
         catch(err:Error)
         {
         }
         try
         {
            (_loc32_ = new (_loc31_ = getDefinitionByName("customer_" + _loc5_ + "_back_hair") as Class)()).name = "clip";
            _loc4_.back_hair.addChild(_loc32_);
         }
         catch(err:Error)
         {
         }
         var _loc17_:MovieClip;
         var _loc16_:Class;
         (_loc17_ = new (_loc16_ = getDefinitionByName("customer_" + _loc5_ + "_foot") as Class)()).name = "clip";
         true;
         true;
         _loc4_.front_shoe.addChild(_loc17_);
         var _loc18_:MovieClip;
         (_loc18_ = new _loc16_()).name = "clip";
         true;
         true;
         _loc4_.back_shoe.addChild(_loc18_);
         var _loc20_:MovieClip;
         var _loc19_:Class;
         (_loc20_ = new (_loc19_ = getDefinitionByName("customer_" + _loc5_ + "_hand") as Class)()).name = "clip";
         false;
         false;
         _loc4_.fronthand.addChild(_loc20_);
         var _loc22_:MovieClip;
         var _loc21_:Class;
         (_loc22_ = new (_loc21_ = getDefinitionByName("customer_" + _loc5_ + "_hand2") as Class)()).name = "clip";
         _loc4_.backhand.addChild(_loc22_);
         var _loc24_:MovieClip;
         var _loc23_:Class;
         (_loc24_ = new (_loc23_ = getDefinitionByName("customer_" + _loc5_ + "_upperarm") as Class)()).name = "clip";
         _loc4_.front_upperarm.addChild(_loc24_);
         var _loc25_:MovieClip;
         (_loc25_ = new _loc23_()).name = "clip";
         false;
         false;
         _loc4_.back_upperarm.addChild(_loc25_);
         var _loc27_:MovieClip;
         var _loc26_:Class;
         (_loc27_ = new (_loc26_ = getDefinitionByName("customer_" + _loc5_ + "_forearm") as Class)()).name = "clip";
         _loc4_.front_forearm.addChild(_loc27_);
         var _loc28_:MovieClip;
         (_loc28_ = new _loc26_()).name = "clip";
         _loc4_.back_forearm.addChild(_loc28_);
         false;
         false;
         if(param2)
         {
            _loc17_.visible = false;
            _loc18_.visible = false;
            false;
            false;
            _loc7_.visible = false;
            _loc20_.visible = false;
            _loc22_.visible = false;
            _loc24_.visible = false;
            _loc25_.visible = false;
            _loc27_.visible = false;
            false;
            false;
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
            param1.front_shoe.removeChildAt(0);
            param1.back_shoe.removeChildAt(0);
            param1.fronthand.removeChildAt(0);
            param1.backhand.removeChildAt(0);
            param1.front_upperarm.removeChildAt(0);
            false;
            false;
            param1.back_upperarm.removeChildAt(0);
            param1.front_forearm.removeChildAt(0);
            param1.back_forearm.removeChildAt(0);
            true;
            true;
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
      
      public function createNewCustomer() : void
      {
         false;
         true;
         var _loc1_:MiniGameCravings = this;
         false;
         false;
         var _loc2_:Number = Number(_loc1_.customerLineup[_loc1_.whichRound - 1]);
         if(_loc1_.previousCustomer != null)
         {
            _loc1_.clearCustomer(_loc1_.previousCustomer);
            true;
            true;
            _loc1_.clip.previousholder.removeChild(_loc1_.previousCustomer);
            _loc1_.previousCustomer = null;
            false;
            false;
         }
         if(_loc1_.currentCustomer != null)
         {
            _loc1_.previousCustomer = _loc1_.currentCustomer;
            true;
            true;
            _loc1_.clip.previousholder.addChild(_loc1_.previousCustomer);
            _loc1_.previousCustomer.gotoAndPlay("walk");
            true;
            true;
            _loc1_.clip.previousholder.x = _loc1_.centerScreen;
            _loc1_.currentCustomer = null;
         }
         _loc1_.currentCustomer = _loc1_.buildCustomer(_loc2_);
         _loc1_.clip.customerholder.addChild(_loc1_.currentCustomer);
         _loc1_.currentCustomer.gotoAndPlay("walk");
         _loc1_.clip.customerholder.x = _loc1_.offScreenRight;
         _loc1_.isCustomerCentered = false;
         _loc1_.clip.talktext.customername_txt.text = _loc1_.screen.gameObj.customerData.getCustomerName(_loc2_);
         _loc1_.clip.talktext.visible = false;
         _loc1_.foodiniClip.gotoAndPlay("okaytostand");
      }
      
      public function createTickets() : void
      {
         var _loc12_:Number = NaN;
         var _loc17_:MovieClip = null;
         var _loc18_:CustomerOrder = null;
         var _loc1_:MiniGameCravings = this;
         var _loc2_:Number = Number(_loc1_.customerLineup[_loc1_.whichRound - 1]);
         var _loc3_:CustomerOrder = _loc1_.getCorrectOrder(_loc2_);
         var _loc4_:CustomerOrder = _loc1_.getCompleteOrder(_loc2_);
         var _loc5_:Number = 0;
         §§push(_loc1_.whichDifficulty >= 2);
         if(_loc1_.whichDifficulty >= 2)
         {
            false;
            false;
            §§pop();
            false;
            false;
            false;
            false;
            §§push(_loc1_.whichDifficulty <= 4);
         }
         if(§§pop() && _loc1_.whichRound >= 3)
         {
            true;
            true;
            _loc5_ = 1;
         }
         else
         {
            true;
            true;
            §§push(_loc1_.whichDifficulty > 4 && _loc1_.whichDifficulty <= 8);
            if(_loc1_.whichDifficulty > 4 && _loc1_.whichDifficulty <= 8)
            {
               true;
               true;
               §§pop();
               false;
               false;
               §§push(_loc1_.whichRound == 2);
            }
            if(§§pop())
            {
               true;
               true;
               _loc5_ = 1;
            }
            else
            {
               false;
               false;
               false;
               false;
               true;
               true;
               if(_loc1_.whichDifficulty > 4 && _loc1_.whichDifficulty <= 8 && _loc1_.whichRound >= 3)
               {
                  false;
                  false;
                  _loc5_ = 2;
               }
               else if(_loc1_.whichDifficulty > 8 && _loc1_.whichRound >= 3)
               {
                  _loc5_ = 3;
               }
               else
               {
                  §§push(_loc1_.whichDifficulty > 8);
                  if(_loc1_.whichDifficulty > 8)
                  {
                     true;
                     true;
                     §§pop();
                     §§push(_loc1_.whichRound == 2);
                  }
                  if(§§pop())
                  {
                     _loc5_ = 2;
                  }
               }
            }
         }
         var _loc6_:CustomerOrder = _loc1_.createWrongOrder(_loc3_,_loc4_,1 + _loc5_,_loc2_);
         var _loc7_:CustomerOrder = _loc1_.createWrongOrder(_loc3_,_loc4_,2 + _loc5_,_loc2_);
         var _loc8_:CustomerOrder = _loc1_.createWrongOrder(_loc3_,_loc4_,3 + _loc5_,_loc2_);
         var _loc9_:CustomerOrder = _loc1_.createWrongOrder(_loc3_,_loc4_,4 + _loc5_,_loc2_);
         var _loc10_:Array = [_loc6_,_loc7_,_loc8_,_loc9_];
         var _loc11_:Number = 2;
         if(_loc1_.whichDifficulty < 5 && _loc1_.whichRound >= 3)
         {
            true;
            true;
            _loc11_ = 3;
         }
         else
         {
            true;
            true;
            if(_loc1_.whichDifficulty >= 3 && _loc1_.whichDifficulty <= 8 && _loc1_.whichRound < 3)
            {
               _loc11_ = 3;
            }
            else if(_loc1_.whichDifficulty >= 4 && _loc1_.whichDifficulty <= 8 && _loc1_.whichRound >= 3)
            {
               _loc11_ = 4;
            }
            else
            {
               false;
               false;
               if(_loc1_.whichDifficulty >= 9 && _loc1_.whichDifficulty <= 11 && _loc1_.whichRound < 3)
               {
                  _loc11_ = 4;
               }
               else
               {
                  false;
                  false;
                  §§push(_loc1_.whichDifficulty >= 9 && _loc1_.whichDifficulty <= 11);
                  if(_loc1_.whichDifficulty >= 9 && _loc1_.whichDifficulty <= 11)
                  {
                     false;
                     false;
                     §§pop();
                     §§push(_loc1_.whichRound >= 3);
                  }
                  if(§§pop())
                  {
                     _loc11_ = 5;
                  }
                  else if(_loc1_.whichDifficulty > 11)
                  {
                     false;
                     false;
                     false;
                     false;
                     _loc11_ = 5;
                  }
               }
            }
         }
         _loc1_.clearTickets();
         _loc1_.tickets = [];
         var _loc13_:int = 0;
         while(_loc13_ < _loc11_)
         {
            (_loc17_ = new ticketMC()).number_txt.text = "0" + _loc1_.whichRound;
            false;
            false;
            _loc17_.scaleX = 0.65;
            _loc17_.scaleY = 0.65;
            false;
            false;
            _loc17_.x = 0 + 100 * _loc13_;
            false;
            false;
            _loc17_.y = 90;
            _loc17_.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTicket);
            _loc17_.buttonMode = true;
            _loc17_.useHandCursor = true;
            true;
            true;
            _loc17_.mouseChildren = false;
            _loc18_ = _loc3_;
            if(_loc13_ > 0)
            {
               false;
               false;
               _loc18_ = _loc10_[_loc13_ - 1];
            }
            _loc1_.createOrderPanels(_loc18_,_loc17_);
            true;
            true;
            _loc13_++;
         }
         var _loc14_:MovieClip = _loc1_.tickets.shift();
         var _loc15_:Number = Math.floor(this.randomize() * (_loc1_.tickets.length + 1));
         _loc1_.tickets.splice(_loc15_,0,_loc14_);
         _loc1_.whichTicketIsCorrect = _loc15_;
         var _loc16_:Number = (640 - _loc1_.tickets.length * _loc1_.ticketPad) / 2 + _loc1_.ticketPad / 2;
         _loc12_ = 0;
         false;
         false;
         while(_loc12_ < _loc1_.tickets.length)
         {
            false;
            false;
            _loc1_.tickets[_loc12_].x = _loc16_ + _loc1_.ticketPad * _loc12_;
            false;
            false;
            _loc1_.tickets[_loc12_].x += _loc1_.ticketOffscreenPad;
            _loc1_.ticketPositions.push(_loc1_.tickets[_loc12_].x);
            _loc1_.clip.holder.addChild(_loc1_.tickets[_loc12_]);
            true;
            true;
            _loc12_++;
         }
         _loc1_.ticketTweenTimer = 0;
         _loc1_.canClick = false;
         _loc1_.screen.gameObj.soundManager.playSound("trayslide.wav");
      }
      
      public function doOrdersMatch(param1:CustomerOrder, param2:CustomerOrder) : Boolean
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         null;
         null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         this;
         var _loc4_:Boolean = true;
         if(param1.dips.length != param2.dips.length)
         {
            _loc4_ = false;
         }
         else
         {
            _loc7_ = [];
            _loc5_ = 0;
            while(true)
            {
               true;
               true;
               if(_loc5_ >= param1.dips.length)
               {
                  break;
               }
               _loc7_.push(param1.dips[_loc5_][0]);
               _loc5_++;
            }
            true;
            true;
            _loc5_ = 0;
            while(_loc5_ < param2.dips.length)
            {
               if(_loc7_.indexOf(param2.dips[_loc5_][0]) == -1)
               {
                  _loc4_ = false;
                  break;
               }
               _loc5_++;
            }
         }
         false;
         false;
         if(_loc4_ == false)
         {
            false;
            false;
         }
         else
         {
            false;
            false;
            if(param1.sides.length != param2.sides.length)
            {
               _loc4_ = false;
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < param1.sides.length)
               {
                  false;
                  false;
                  _loc10_ = false;
                  _loc6_ = 0;
                  while(true)
                  {
                     if(_loc6_ >= param1.sides.length)
                     {
                        false;
                        false;
                        break;
                     }
                     false;
                     false;
                     if(param1.sides[_loc6_][0] == param2.sides[_loc5_][0] && param1.sides[_loc6_][1] == param2.sides[_loc5_][1] && param1.sides[_loc6_][2] == param2.sides[_loc5_][2])
                     {
                        false;
                        false;
                        _loc10_ = true;
                        break;
                     }
                     _loc6_++;
                  }
                  if(!_loc10_)
                  {
                     true;
                     true;
                     _loc4_ = false;
                     true;
                     true;
                     break;
                  }
                  _loc5_++;
               }
            }
         }
         if(_loc4_ != false)
         {
            if(param1.wings.length != param2.wings.length)
            {
               false;
               false;
               _loc4_ = false;
            }
            else
            {
               true;
               true;
               _loc5_ = 0;
               while(_loc5_ < param1.wings.length)
               {
                  _loc11_ = false;
                  false;
                  false;
                  _loc6_ = 0;
                  while(_loc6_ < param1.wings.length)
                  {
                     true;
                     true;
                     true;
                     true;
                     §§push(param1.wings[_loc6_][0] == param2.wings[_loc5_][0] && param1.wings[_loc6_][1] == param2.wings[_loc5_][1]);
                     if(param1.wings[_loc6_][0] == param2.wings[_loc5_][0] && param1.wings[_loc6_][1] == param2.wings[_loc5_][1])
                     {
                        true;
                        true;
                        §§pop();
                        false;
                        false;
                        §§push(param1.wings[_loc6_][2] == param2.wings[_loc5_][2]);
                     }
                     if(§§pop() && param1.wings[_loc6_][3] == param2.wings[_loc5_][3])
                     {
                        _loc11_ = true;
                        true;
                        true;
                        break;
                     }
                     _loc6_++;
                     false;
                     false;
                  }
                  if(!_loc11_)
                  {
                     false;
                     false;
                     _loc4_ = false;
                     false;
                     false;
                     break;
                  }
                  _loc5_++;
                  true;
                  true;
               }
            }
         }
         return _loc4_;
      }
      
      public function createOrderPanels(param1:CustomerOrder, param2:MovieClip) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc15_:MovieClip = null;
         var _loc16_:String = null;
         var _loc17_:MovieClip = null;
         var _loc3_:MiniGameCravings = this;
         var _loc4_:MovieClip = new MovieClip();
         var _loc5_:Vector.<MovieClip> = new Vector.<MovieClip>();
         false;
         false;
         _loc6_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc6_ >= param1.wings.length)
            {
               break;
            }
            true;
            true;
            _loc7_ = String(param1.wings[_loc6_][0]);
            false;
            false;
            _loc8_ = String(param1.wings[_loc6_][3]);
            true;
            true;
            true;
            true;
            true;
            true;
            _loc9_ = Number(param1.wings[_loc6_][1]);
            true;
            true;
            true;
            true;
            true;
            true;
            _loc10_ = String(param1.wings[_loc6_][2]);
            false;
            false;
            (_loc11_ = new ticket_panel_wings()).gotoAndStop(_loc7_);
            _loc11_.num_txt.text = String(_loc9_);
            _loc11_.distro.gotoAndStop(_loc10_);
            _loc11_.sauce.gotoAndStop(_loc8_);
            _loc11_.x = _loc3_.panelTicketLeft;
            true;
            true;
            _loc11_.y = _loc3_.panelTicketBottom - _loc3_.panelWingHeight * (_loc6_ + 1);
            true;
            true;
            _loc5_.push(_loc11_);
            true;
            true;
            _loc5_.push(_loc11_.sauce);
            true;
            true;
            _loc4_.addChild(_loc11_);
            true;
            true;
            _loc6_++;
         }
         true;
         true;
         _loc6_ = 0;
         while(true)
         {
            false;
            false;
            false;
            false;
            if(_loc6_ >= param1.sides.length)
            {
               break;
            }
            true;
            true;
            _loc12_ = String(param1.sides[_loc6_][0]);
            false;
            false;
            true;
            true;
            _loc13_ = Number(param1.sides[_loc6_][1]);
            false;
            false;
            _loc14_ = String(param1.sides[_loc6_][2]);
            (_loc15_ = new ticket_panel_side()).gotoAndStop(_loc12_);
            false;
            false;
            _loc15_.num_txt.text = String(_loc13_);
            _loc15_.distro.gotoAndStop(_loc14_);
            _loc15_.x = _loc3_.panelTicketLeft;
            _loc15_.y = _loc3_.panelTicketTop + _loc3_.panelSideHeight * (param1.sides.length - 1) - _loc6_ * _loc3_.panelSideHeight;
            true;
            true;
            if(param1.dips.length > 0)
            {
               _loc15_.y += _loc3_.panelDipSize;
            }
            _loc5_.push(_loc15_);
            true;
            true;
            _loc4_.addChild(_loc15_);
            _loc6_++;
         }
         true;
         true;
         true;
         true;
         _loc6_ = 0;
         while(_loc6_ < param1.dips.length)
         {
            _loc16_ = String(param1.dips[_loc6_][0]);
            (_loc17_ = new ticket_panel_dip()).gotoAndStop(_loc16_);
            true;
            true;
            _loc17_.y = _loc3_.panelTicketTop;
            _loc17_.x = 0 - param1.dips.length * _loc3_.panelDipSize / 2 + _loc6_ * _loc3_.panelDipSize;
            _loc5_.push(_loc17_);
            true;
            true;
            _loc4_.addChild(_loc17_);
            _loc6_++;
         }
         param2.addChild(_loc4_);
         _loc3_.tickets.push(param2);
      }
      
      public function clearTickets() : void
      {
         var _loc1_:MiniGameCravings = this;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.tickets.length)
         {
            true;
            true;
            _loc1_.tickets[_loc2_].removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTicket);
            _loc1_.clip.holder.removeChild(_loc1_.tickets[_loc2_]);
            false;
            false;
            _loc1_.tickets[_loc2_] = null;
            _loc2_++;
         }
         _loc1_.tickets = null;
         _loc1_.tickets = [];
         _loc1_.ticketPositions = [];
      }
      
      public function clickTicket(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:MiniGameCravings = this;
         false;
         false;
         if(_loc2_.canClick)
         {
            true;
            true;
            _loc3_ = -1;
            true;
            true;
            _loc4_ = 0;
            while(true)
            {
               true;
               true;
               if(_loc4_ >= _loc2_.tickets.length)
               {
                  false;
                  false;
                  break;
               }
               if(MovieClip(param1.currentTarget) == _loc2_.tickets[_loc4_])
               {
                  false;
                  false;
                  true;
                  true;
                  _loc3_ = _loc4_;
                  break;
               }
               _loc4_++;
            }
            _loc2_.choseWhichTicket = _loc3_;
            _loc2_.clip.talktext.visible = false;
            _loc2_.screen.gameObj.soundManager.playSound("grabticket.wav");
            if(_loc3_ == _loc2_.whichTicketIsCorrect)
            {
               _loc2_.clip["light" + _loc2_.whichRound].gotoAndStop(2);
               _loc2_.currentCustomer.gotoAndPlay("happy");
               false;
               false;
               if(_loc2_.whichRound == 5)
               {
                  _loc2_.foodiniClip.gotoAndPlay("win");
               }
               else
               {
                  _loc2_.foodiniClip.gotoAndPlay("okay");
                  false;
                  false;
               }
               ++_loc2_.roundsWon;
               if(_loc2_.roundsWon == 5)
               {
                  _loc2_.screen.gameObj.soundManager.playSound("customer_happy.wav");
               }
               else
               {
                  _loc2_.screen.gameObj.soundManager.playSound("getstar.wav");
                  false;
                  false;
               }
            }
            else
            {
               _loc2_.clip["light" + _loc2_.whichRound].gotoAndStop(3);
               true;
               true;
               _loc2_.currentCustomer.gotoAndPlay("pissed");
               _loc2_.foodiniClip.gotoAndPlay("lose");
               _loc2_.screen.gameObj.soundManager.playSound("customer_pissed.wav");
            }
            _loc2_.clip.holder.setChildIndex(_loc2_.tickets[_loc2_.whichTicketIsCorrect],_loc2_.clip.holder.numChildren - 1);
            true;
            true;
            _loc5_ = 0;
            false;
            false;
            while(_loc5_ < _loc2_.tickets.length)
            {
               _loc2_.ticketPositions[_loc5_] = _loc2_.tickets[_loc5_].x;
               true;
               true;
               true;
               true;
               if(_loc5_ == _loc2_.whichTicketIsCorrect)
               {
                  _loc2_.correctTicketDistToCenter = 320 - _loc2_.tickets[_loc5_].x;
               }
               _loc5_++;
               true;
               true;
            }
            _loc2_.ticketTweenTimer = 0;
            _loc2_.ticketsLeaving = true;
            _loc2_.ticketsEntering = false;
            _loc2_.canClick = false;
         }
      }
      
      public function createWrongOrder(param1:CustomerOrder, param2:CustomerOrder, param3:Number, param4:Number) : CustomerOrder
      {
         var _loc6_:int = 0;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:String = null;
         var _loc18_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc5_:MiniGameCravings;
         var _loc7_:UserData = (_loc5_ = this).screen.gameObj.userData;
         var _loc8_:CustomerData = _loc5_.screen.gameObj.customerData;
         false;
         false;
         true;
         true;
         false;
         false;
         _loc5_.setRandomSeed(param3 + _loc5_.whichDifficulty + param4);
         var _loc9_:Number = 0;
         7;
         var _loc11_:Array = [];
         var _loc12_:Array = [];
         var _loc13_:CustomerOrder = new CustomerOrder();
         var _loc19_:Array = param1.getOrderAsArray();
         var _loc20_:Array = param2.getOrderAsArray();
         _loc6_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc6_ >= _loc19_.length)
            {
               break;
            }
            _loc11_.push(_loc19_[_loc6_][0]);
            true;
            true;
            _loc6_++;
         }
         false;
         false;
         _loc6_ = 0;
         while(_loc6_ < _loc20_.length)
         {
            if(_loc11_.indexOf(_loc20_[_loc6_][0]) == -1)
            {
               _loc12_.push(_loc20_[_loc6_][0]);
            }
            _loc6_++;
            false;
            false;
         }
         var _loc21_:Array = _loc5_.getMeatsAvailable(_loc11_.concat(_loc12_));
         var _loc22_:Array = _loc5_.getSaucesAvailable(_loc11_.concat(_loc12_));
         var _loc23_:Array = _loc5_.getSidesAvailable(_loc11_.concat(_loc12_));
         var _loc24_:Array = _loc5_.getDipsAvailable(_loc11_.concat(_loc12_));
         false;
         false;
         true;
         true;
         §§push(param3 == 1);
         if(!(param3 == 1))
         {
            false;
            false;
            §§pop();
            false;
            false;
            §§push(param3 == 2);
         }
         if(§§pop())
         {
            _loc13_ = _loc8_.getFoodCriticOrder(param3 + _loc5_.whichDifficulty + param4);
            true;
            true;
         }
         else if(param3 == 3)
         {
            _loc6_ = 0;
            while(true)
            {
               true;
               true;
               true;
               true;
               if(_loc6_ >= param1.wings.length)
               {
                  break;
               }
               _loc14_ = String(_loc21_[Math.floor(_loc5_.randomize() * _loc21_.length)]);
               false;
               false;
               _loc15_ = String(_loc22_[Math.floor(_loc5_.randomize() * _loc22_.length)]);
               _loc13_.addWings(_loc14_,_loc15_,param1.wings[_loc6_][1],param1.wings[_loc6_][2]);
               _loc6_++;
            }
            false;
            false;
            _loc6_ = 0;
            while(_loc6_ < param1.sides.length)
            {
               _loc14_ = String(_loc23_[Math.floor(_loc5_.randomize() * _loc23_.length)]);
               false;
               false;
               _loc13_.addSide(_loc14_,param1.sides[_loc6_][1],param1.sides[_loc6_][2]);
               _loc6_++;
               false;
               false;
            }
            true;
            true;
            _loc6_ = 0;
            while(_loc6_ < param1.dips.length)
            {
               _loc14_ = String(_loc24_[Math.floor(_loc5_.randomize() * _loc24_.length)]);
               _loc13_.addDip(_loc14_);
               _loc6_++;
               false;
               false;
            }
            true;
            true;
         }
         else if(param3 == 4)
         {
            true;
            true;
            _loc13_ = param1.clone();
            false;
            false;
            _loc6_ = 0;
            false;
            false;
            while(true)
            {
               false;
               false;
               true;
               true;
               if(_loc6_ >= _loc13_.wings.length)
               {
                  break;
               }
               _loc9_ += 2;
               _loc6_++;
            }
            true;
            true;
            _loc6_ = 0;
            false;
            false;
            while(_loc6_ < _loc13_.sides.length)
            {
               true;
               true;
               _loc9_ += 1;
               _loc6_++;
               false;
               false;
            }
            if(_loc13_.dips.length > 0)
            {
               true;
               true;
               _loc9_ += 1;
            }
            true;
            true;
            §§push((_loc18_ = _loc5_.randomize()) < 0.5);
            if((_loc18_ = _loc5_.randomize()) < 0.5)
            {
               false;
               false;
               §§pop();
               true;
               true;
               §§push(7 - _loc9_ >= 2);
            }
            if(§§pop())
            {
               false;
               false;
               true;
               true;
               _loc16_ = Number(param1.wings[0][1]);
               true;
               true;
               false;
               false;
               _loc17_ = String(param1.wings[0][2]);
               true;
               true;
               true;
               true;
               _loc14_ = String(_loc21_[Math.floor(_loc5_.randomize() * _loc21_.length)]);
               _loc15_ = String(_loc22_[Math.floor(_loc5_.randomize() * _loc22_.length)]);
               false;
               false;
               _loc13_.addWings(_loc14_,_loc15_,_loc16_,_loc17_);
               true;
               true;
            }
            else if(_loc9_ < 7)
            {
               if(param1.sides.length > 0)
               {
                  false;
                  false;
                  _loc16_ = Number(param1.sides[0][1]);
                  true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  _loc17_ = String(param1.sides[0][2]);
               }
               else
               {
                  true;
                  true;
                  _loc16_ = Number(param1.wings[0][1]);
                  true;
                  true;
                  _loc17_ = String(param1.wings[0][2]);
               }
               _loc14_ = String(_loc23_[Math.floor(_loc5_.randomize() * _loc23_.length)]);
               _loc13_.addSide(_loc14_,_loc16_,_loc17_);
            }
            else
            {
               true;
               true;
               _loc13_ = _loc8_.getFoodCriticOrder(param3 + _loc5_.whichDifficulty + param4);
            }
         }
         else
         {
            true;
            true;
            if(param3 == 5 || param3 == 7)
            {
               false;
               false;
               true;
               true;
               _loc13_ = param1.clone();
               _loc14_ = String(_loc21_[Math.floor(_loc5_.randomize() * _loc21_.length)]);
               _loc15_ = String(_loc22_[Math.floor(_loc5_.randomize() * _loc22_.length)]);
               true;
               true;
               _loc25_ = Math.floor(Math.random() * _loc13_.wings.length);
               if(param3 == 5)
               {
                  true;
                  true;
                  _loc13_.wings[_loc25_][0] = _loc14_;
               }
               _loc13_.wings[_loc25_][3] = _loc15_;
            }
            else if(param3 == 6)
            {
               _loc13_ = param1.clone();
               _loc6_ = 0;
               while(true)
               {
                  true;
                  true;
                  if(_loc6_ >= _loc13_.wings.length)
                  {
                     break;
                  }
                  true;
                  true;
                  _loc18_ = _loc5_.randomize();
                  if(_loc13_.wings[_loc6_][2] == FoodData.DISTRO_LEFT)
                  {
                     false;
                     false;
                     if(_loc18_ < 0.5)
                     {
                        _loc13_.wings[_loc6_][2] = FoodData.DISTRO_RIGHT;
                     }
                     else
                     {
                        _loc13_.wings[_loc6_][2] = FoodData.DISTRO_ALL;
                        true;
                        true;
                     }
                  }
                  else if(_loc13_.wings[_loc6_][2] == FoodData.DISTRO_RIGHT)
                  {
                     true;
                     true;
                     true;
                     true;
                     if(_loc18_ < 0.5)
                     {
                        false;
                        false;
                        _loc13_.wings[_loc6_][2] = FoodData.DISTRO_LEFT;
                     }
                     else
                     {
                        _loc13_.wings[_loc6_][2] = FoodData.DISTRO_ALL;
                     }
                  }
                  else if(_loc13_.wings[_loc6_][2] == FoodData.DISTRO_ALL)
                  {
                     if(_loc18_ < 0.5)
                     {
                        false;
                        false;
                        _loc13_.wings[_loc6_][2] = FoodData.DISTRO_RIGHT;
                     }
                     else
                     {
                        _loc13_.wings[_loc6_][2] = FoodData.DISTRO_LEFT;
                     }
                  }
                  _loc6_++;
                  true;
                  true;
               }
               false;
               false;
               _loc6_ = 0;
               true;
               true;
               while(_loc6_ < _loc13_.sides.length)
               {
                  false;
                  false;
                  _loc18_ = _loc5_.randomize();
                  if(_loc13_.sides[_loc6_][2] == FoodData.DISTRO_LEFT)
                  {
                     true;
                     true;
                     if(_loc18_ < 0.5)
                     {
                        _loc13_.sides[_loc6_][2] = FoodData.DISTRO_RIGHT;
                     }
                     else
                     {
                        true;
                        true;
                        _loc13_.sides[_loc6_][2] = FoodData.DISTRO_ALL;
                     }
                  }
                  else
                  {
                     true;
                     true;
                     if(_loc13_.sides[_loc6_][2] == FoodData.DISTRO_RIGHT)
                     {
                        if(_loc18_ < 0.5)
                        {
                           _loc13_.sides[_loc6_][2] = FoodData.DISTRO_LEFT;
                        }
                        else
                        {
                           _loc13_.sides[_loc6_][2] = FoodData.DISTRO_ALL;
                        }
                     }
                     else
                     {
                        true;
                        true;
                        if(_loc13_.sides[_loc6_][2] == FoodData.DISTRO_ALL)
                        {
                           false;
                           false;
                           if(_loc18_ < 0.5)
                           {
                              false;
                              false;
                              _loc13_.sides[_loc6_][2] = FoodData.DISTRO_RIGHT;
                              true;
                              true;
                           }
                           else
                           {
                              _loc13_.sides[_loc6_][2] = FoodData.DISTRO_LEFT;
                           }
                        }
                     }
                  }
                  _loc6_++;
                  true;
                  true;
               }
            }
         }
         while(_loc5_.doOrdersMatch(_loc13_,param1))
         {
            class_5.method_25("The orders matched!  Generate a new one to get around this..");
            _loc13_ = _loc8_.getFoodCriticOrder(Math.floor(_loc5_.randomize() * 1000));
         }
         true;
         true;
         false;
         false;
         false;
         false;
         false;
         false;
         class_5.method_25("Create Wrong Order " + param3 + ": " + _loc13_.wings.length + " Wings + " + _loc13_.sides.length + " Sides + " + _loc13_.dips.length + " Dips.");
         return _loc13_;
      }
      
      public function getMeatsAvailable(param1:Array = null) : Array
      {
         false;
         true;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc2_:MiniGameCravings = this;
         var _loc3_:Array = [];
         var _loc4_:UserData = _loc2_.screen.gameObj.userData;
         true;
         true;
         if(param1 == null)
         {
            param1 = [];
         }
         true;
         true;
         if(_loc4_.hasTopping(FoodData.MEAT_WING))
         {
            _loc3_.push(FoodData.MEAT_WING);
         }
         if(_loc4_.hasTopping(FoodData.MEAT_BONELESS))
         {
            _loc3_.push(FoodData.MEAT_BONELESS);
         }
         if(_loc4_.hasTopping(FoodData.MEAT_STRIPS))
         {
            true;
            true;
            _loc3_.push(FoodData.MEAT_STRIPS);
         }
         if(_loc4_.hasTopping(FoodData.MEAT_SHRIMP))
         {
            _loc3_.push(FoodData.MEAT_SHRIMP);
         }
         if(param1.length > 0)
         {
            false;
            false;
            _loc5_ = 0;
            while(_loc5_ < param1.length)
            {
               true;
               true;
               if((_loc6_ = _loc3_.indexOf(param1[_loc5_])) > -1)
               {
                  _loc3_.splice(_loc6_,1);
               }
               _loc5_++;
            }
            false;
            false;
         }
         if(_loc3_.length == 0)
         {
            _loc3_.push(FoodData.MEAT_WING);
         }
         return _loc3_;
      }
      
      public function getSaucesAvailable(param1:Array = null) : Array
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc2_:MiniGameCravings = this;
         var _loc3_:Array = [];
         var _loc4_:UserData = _loc2_.screen.gameObj.userData;
         true;
         true;
         if(param1 == null)
         {
            param1 = [];
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_ATOMIC))
         {
            _loc3_.push(FoodData.SAUCE_ATOMIC);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_BBQ))
         {
            _loc3_.push(FoodData.SAUCE_BBQ);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_BUFFALO))
         {
            true;
            true;
            _loc3_.push(FoodData.SAUCE_BUFFALO);
         }
         true;
         true;
         if(_loc4_.hasTopping(FoodData.SAUCE_CALYPSO))
         {
            false;
            false;
            _loc3_.push(FoodData.SAUCE_CALYPSO);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_HONEYMUSTARD))
         {
            _loc3_.push(FoodData.SAUCE_HONEYMUSTARD);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_MEDIUM))
         {
            _loc3_.push(FoodData.SAUCE_MEDIUM);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_PARMESAN))
         {
            _loc3_.push(FoodData.SAUCE_PARMESAN);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_SPICYGARLIC))
         {
            _loc3_.push(FoodData.SAUCE_SPICYGARLIC);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_TERIYAKI))
         {
            _loc3_.push(FoodData.SAUCE_TERIYAKI);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_WASABI))
         {
            _loc3_.push(FoodData.SAUCE_WASABI);
         }
         if(_loc4_.hasTopping(FoodData.SAUCE_WILDONION))
         {
            _loc3_.push(FoodData.SAUCE_WILDONION);
         }
         if(param1.length > 0)
         {
            true;
            true;
            _loc5_ = 0;
            while(_loc5_ < param1.length)
            {
               false;
               false;
               if((_loc6_ = _loc3_.indexOf(param1[_loc5_])) > -1)
               {
                  _loc3_.splice(_loc6_,1);
                  true;
                  true;
               }
               _loc5_++;
               true;
               true;
            }
         }
         if(_loc3_.length == 0)
         {
            _loc3_.push(FoodData.SAUCE_BBQ);
         }
         return _loc3_;
      }
      
      public function getSidesAvailable(param1:Array = null) : Array
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc2_:MiniGameCravings = this;
         var _loc3_:Array = [];
         var _loc4_:UserData = _loc2_.screen.gameObj.userData;
         true;
         true;
         if(param1 == null)
         {
            param1 = [];
         }
         true;
         true;
         if(_loc4_.hasTopping(FoodData.SIDE_CARROT))
         {
            _loc3_.push(FoodData.SIDE_CARROT);
         }
         false;
         false;
         if(_loc4_.hasTopping(FoodData.SIDE_CELERY))
         {
            _loc3_.push(FoodData.SIDE_CELERY);
         }
         if(_loc4_.hasTopping(FoodData.SIDE_CHEESECUBES))
         {
            _loc3_.push(FoodData.SIDE_CHEESECUBES);
         }
         false;
         false;
         if(_loc4_.hasTopping(FoodData.SIDE_FRY))
         {
            _loc3_.push(FoodData.SIDE_FRY);
         }
         true;
         true;
         if(_loc4_.hasTopping(FoodData.SIDE_GREENPEPPER))
         {
            _loc3_.push(FoodData.SIDE_GREENPEPPER);
         }
         if(_loc4_.hasTopping(FoodData.SIDE_REDPEPPER))
         {
            _loc3_.push(FoodData.SIDE_REDPEPPER);
         }
         if(param1.length > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < param1.length)
            {
               if((_loc6_ = _loc3_.indexOf(param1[_loc5_])) > -1)
               {
                  false;
                  false;
                  _loc3_.splice(_loc6_,1);
                  true;
                  true;
               }
               _loc5_++;
            }
            true;
            true;
         }
         if(_loc3_.length == 0)
         {
            false;
            false;
            _loc3_.push(FoodData.SIDE_CELERY);
         }
         return _loc3_;
      }
      
      public function getDipsAvailable(param1:Array = null) : Array
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc2_:MiniGameCravings = this;
         var _loc3_:Array = [];
         var _loc4_:UserData = _loc2_.screen.gameObj.userData;
         false;
         false;
         if(param1 == null)
         {
            param1 = [];
         }
         true;
         true;
         if(_loc4_.hasTopping(FoodData.DIP_AWESOMESAUCE))
         {
            false;
            false;
            _loc3_.push(FoodData.DIP_AWESOMESAUCE);
         }
         true;
         true;
         if(_loc4_.hasTopping(FoodData.DIP_BLUECHEESE))
         {
            _loc3_.push(FoodData.DIP_BLUECHEESE);
            true;
            true;
         }
         if(_loc4_.hasTopping(FoodData.DIP_MANGOCHILI))
         {
            _loc3_.push(FoodData.DIP_MANGOCHILI);
            true;
            true;
         }
         if(_loc4_.hasTopping(FoodData.DIP_RANCH))
         {
            _loc3_.push(FoodData.DIP_RANCH);
         }
         if(_loc4_.hasTopping(FoodData.DIP_KUNGPAO))
         {
            _loc3_.push(FoodData.DIP_KUNGPAO);
         }
         if(_loc4_.hasTopping(FoodData.DIP_ZESTYPESTO))
         {
            _loc3_.push(FoodData.DIP_ZESTYPESTO);
         }
         if(param1.length > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < param1.length)
            {
               false;
               false;
               if((_loc6_ = _loc3_.indexOf(param1[_loc5_])) > -1)
               {
                  _loc3_.splice(_loc6_,1);
                  false;
                  false;
               }
               _loc5_++;
            }
            true;
            true;
         }
         if(_loc3_.length == 0)
         {
            _loc3_.push(FoodData.DIP_RANCH);
         }
         return _loc3_;
      }
      
      public function getCorrectOrder(param1:Number) : CustomerOrder
      {
         var _loc2_:MiniGameCravings = this;
         return _loc2_.screen.gameObj.customerData.getCustomerOrderData(param1);
      }
      
      public function getCompleteOrder(param1:Number) : CustomerOrder
      {
         var _loc2_:MiniGameCravings = this;
         return _loc2_.screen.gameObj.customerData.getCustomerCompleteOrderData(param1);
      }
      
      public function randomize(param1:Boolean = true) : Number
      {
         var _loc2_:MiniGameCravings = this;
         true;
         true;
         if(param1)
         {
            false;
            false;
            false;
            false;
            return (_loc2_.randomSeed = _loc2_.randomSeed * 16807 % 2147483647) / 2147483647 + 2.33e-10;
         }
         return Math.random();
      }
      
      public function setRandomSeed(param1:Number) : void
      {
         var _loc2_:MiniGameCravings = this;
         false;
         false;
         _loc2_.randomSeed = param1;
      }
   }
}
