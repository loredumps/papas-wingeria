package wingGame.screens
{
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import package_2.class_10;
   import package_2.class_5;
   import package_4.*;
   import wingGame.data.CustomerData;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   import wingGame.managers.*;
   import wingGame.models.*;
   
   public class GiveOrderScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var customerScale:Number = 1;
      
      public var customerX:Number = 245;
      
      public var customerY:Number = 109;
      
      public var trayScale:Number = 0.6;
      
      public var trayX:Number = 140;
      
      public var trayY:Number = 319;
      
      public var trayStartX:Number = -400;
      
      public var whichStep:Number = -1;
      
      public var stepTimer:Number = 0;
      
      public var lastStepTime:Number = 0;
      
      public var shorterTimingSpacing:Number = 20;
      
      public var timingSpacing:Number = 60;
      
      public var useTimingSpacing:Number = 120;
      
      public var isPresentingOrder:Boolean = false;
      
      public var currentTicket:Ticket;
      
      public var currentCustomer:Customer;
      
      public var customerReaction:String;
      
      public var currentStep:String = "look";
      
      public var waitTimer:Number = 0;
      
      public var currentWaitMax:Number = 90;
      
      public var waitLookMax:Number = 70;
      
      public var waitBubblesMax:Number = 30;
      
      public var waitReactMax:Number = 45;
      
      public var waitTipMax:Number = 30;
      
      public var waitTipTotalMax:Number = 60;
      
      public var waitEndingMax:Number = 60;
      
      public var seal0WaitPercent:Number = 1;
      
      public var seal1WaitPercent:Number = 0.8;
      
      public var seal2WaitPercent:Number = 0.6;
      
      public var seal3WaitPercent:Number = 0.4;
      
      public var useWaitPercent:Number = 1;
      
      public var waitScore:Number = 0;
      
      public var buildScore:Number = 0;
      
      public var grillScore:Number = 0;
      
      public var sauceScore:Number = 0;
      
      public var totalScore:Number = 0;
      
      public var closerCutoff:Number = 60;
      
      public var maxTip:Number = 300;
      
      public var extraTipPerBadge:Number = 100;
      
      public var extraTipForRibbon:Number = 200;
      
      public var extraPercentagePerBadge:Number = 0.333;
      
      public var earnStarNumber:Number = 0;
      
      public var loseStarNumber:Number = 0;
      
      public var coinFrame:Number = 0;
      
      public var earnTicketAmount:Number = 0;
      
      public var idealWaitBeforeOrder:Number = 750;
      
      public var idealWaitForOrderBuffer:Number = 1800;
      
      public var timeDivisions:Number = 8;
      
      public var drumrollSound:SoundChannel;
      
      public var backdropBitmap:Bitmap = null;
      
      public var countertopMC:MovieClip = null;
      
      public var prizeTicketSpeed:Number = 18;
      
      public var prizeTickets:Array;
      
      public var shouldAnimateTickets:Boolean = false;
      
      public var ticketsEarned:Number = 0;
      
      public var maxTicketsToEarn:Number = 3;
      
      public var targetMeterPercent:Number = 0;
      
      public var meterSpeed:Number = 0.025;
      
      public var shouldAnimateMeter:Boolean = false;
      
      public var chickenPiece:MovieClip = null;
      
      public var worker:Worker = null;
      
      public function GiveOrderScreen(param1:class_4)
      {
         this.prizeTickets = [];
         super();
         var _loc2_:GiveOrderScreen = this;
         _loc2_.gameObj = param1;
         true;
         true;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:GiveOrderScreen = this;
         _loc1_.clip = new giveOrderMC();
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip,_loc1_.gameObj.workerData,-40,192,1.14,true);
         _loc1_.clip.ticketmeter.bar.mask = _loc1_.clip.ticketmeter.masker;
         _loc1_.clip.ticketmeter.bar.scaleX = 0;
         _loc1_.clip.ticketmeter.ball1.gotoAndStop(1);
         _loc1_.clip.ticketmeter.ball2.gotoAndStop(1);
         _loc1_.clip.ticketmeter.ball3.gotoAndStop(1);
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc2_:int = 0;
         var _loc1_:GiveOrderScreen = this;
         _loc1_.worker.destroy();
         _loc1_.worker = null;
         true;
         true;
         if(_loc1_.countertopMC != null)
         {
            _loc1_.clip.countertop.removeChild(_loc1_.countertopMC);
            _loc1_.countertopMC = null;
            false;
            false;
         }
         if(_loc1_.prizeTickets.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_.prizeTickets.length)
            {
               try
               {
                  _loc1_.clip.gameticketholder.removeChild(_loc1_.prizeTickets[_loc2_]);
                  true;
                  true;
                  _loc1_.prizeTickets[_loc2_] = null;
                  true;
                  true;
               }
               catch(err:Error)
               {
               }
               _loc2_++;
            }
            _loc1_.prizeTickets = null;
         }
         if(_loc1_.backdropBitmap != null)
         {
            _loc1_.backdropBitmap.bitmapData.dispose();
            try
            {
               _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
            }
            catch(err:Error)
            {
            }
            _loc1_.backdropBitmap = null;
            true;
            true;
         }
         if(_loc1_.drumrollSound)
         {
            true;
            true;
            _loc1_.drumrollSound.stop();
            _loc1_.drumrollSound = null;
         }
         false;
         false;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.clip = null;
      }
      
      public function addPrizeTickets(param1:Number = 1) : void
      {
         var _loc3_:int = 0;
         var _loc4_:MovieClip = null;
         var _loc2_:GiveOrderScreen = this;
         true;
         true;
         if(param1 > 0)
         {
            true;
            true;
            _loc3_ = 0;
            while(_loc3_ < param1)
            {
               (_loc4_ = new game_ticket_counter()).x = -3 + Math.floor(Math.random() * 7);
               _loc4_.y = -366 - _loc3_ * 50;
               true;
               true;
               _loc2_.prizeTickets.push(_loc4_);
               false;
               false;
               _loc2_.clip.gameticketholder.addChild(_loc4_);
               _loc3_++;
            }
            _loc2_.shouldAnimateTickets = true;
         }
      }
      
      public function activateScreen() : void
      {
         var _loc1_:GiveOrderScreen = this;
         true;
         true;
         false;
         false;
         if(!_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            true;
            true;
            _loc1_.gameObj.var_15.addChild(_loc1_.clip);
         }
         var _loc2_:FoodPlate = _loc1_.gameObj.var_11.currentPlate;
         true;
         true;
         _loc1_.currentCustomer = _loc1_.gameObj.var_13.getWaitingCustomer(_loc2_.attachedTicket.customerType);
         true;
         true;
         _loc1_.currentCustomer.moveToReceiveOrder();
         _loc2_.moveToGiveOrder();
         _loc1_.shouldAnimateMeter = false;
         _loc1_.clip.tipjar.gotoAndStop(1);
         _loc1_.clip.tips.gotoAndStop(1);
         _loc1_.clip.starburst.gotoAndStop(1);
         _loc1_.adjustJarCoins();
         _loc1_.startPresentation();
         _loc1_.gameObj.soundManager.switchMusic("none");
         _loc1_.drumrollSound = _loc1_.gameObj.soundManager.playSound("giveorder_drumroll.wav");
         _loc1_.isActive = true;
      }
      
      public function deactivateScreen() : void
      {
         var _loc1_:GiveOrderScreen = this;
         false;
         false;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            true;
            true;
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.gameObj.var_11.restoreAfterServing();
         true;
         true;
         _loc1_.gameObj.var_13.deleteCustomer(_loc1_.currentCustomer);
         _loc1_.currentCustomer = null;
         false;
         false;
         _loc1_.isActive = false;
      }
      
      public function startPresentation() : void
      {
         var screen:GiveOrderScreen;
         var sauceName:String;
         var isOversauced:Boolean;
         var howmanystars:Number;
         var whichseal:Number;
         var i:int;
         var glowFilter:GlowFilter;
         var percentThroughDay:Number;
         var mouthSauceClip:MovieClip;
         var bounds:Rectangle;
         false;
         true;
         mouthSauceClip = null;
         bounds = null;
         screen = this;
         true;
         true;
         false;
         false;
         screen.isPresentingOrder = true;
         true;
         true;
         screen.currentStep = "look";
         false;
         false;
         screen.waitTimer = 0;
         true;
         true;
         false;
         false;
         screen.earnStarNumber = 0;
         screen.loseStarNumber = 0;
         screen.earnTicketAmount = 0;
         false;
         false;
         false;
         false;
         screen.worker.playAnimation("turnaround");
         screen.currentCustomer.clip.gotoAndPlay("look");
         if(screen.chickenPiece != null)
         {
            try
            {
               false;
               false;
               true;
               true;
               screen.chickenPiece.parent.removeChild(screen.chickenPiece);
            }
            catch(err:Error)
            {
            }
            screen.chickenPiece = null;
         }
         true;
         true;
         screen.chickenPiece = screen.gameObj.var_11.currentPlate.getFoodForCustomer();
         true;
         true;
         false;
         false;
         sauceName = screen.gameObj.var_11.currentPlate.getSauceForCustomer();
         false;
         false;
         false;
         false;
         isOversauced = screen.gameObj.var_11.currentPlate.getIsOversaucedForCustomer();
         if(isOversauced && sauceName != "" && sauceName != FoodData.SAUCE_PARMESAN)
         {
            true;
            true;
            try
            {
               mouthSauceClip = new mouth_sauce();
               false;
               false;
               mouthSauceClip.gotoAndStop(FoodData.getSauceFrame(sauceName));
               true;
               true;
               screen.currentCustomer.clip.head.addChild(mouthSauceClip);
               true;
               true;
               bounds = screen.currentCustomer.clip.head.getChildAt(0).getBounds(screen.currentCustomer.clip.head.getChildAt(0));
               mouthSauceClip.x = bounds.x + 26 + (screen.currentCustomer.clip.mouth.x - screen.currentCustomer.clip.head.x);
               mouthSauceClip.y = bounds.y - 16 + screen.currentCustomer.clip.head.height + (screen.currentCustomer.clip.mouth.y - screen.currentCustomer.clip.head.y);
            }
            catch(err:Error)
            {
               false;
               false;
               class_5.method_25("Error adding sauce to customer\'s mouth.");
            }
         }
         try
         {
            true;
            true;
            screen.currentCustomer.clip.chickenholder.addChild(screen.chickenPiece);
         }
         catch(err:Error)
         {
            true;
            true;
            class_5.method_25("Error adding food to the customer\'s hand!");
         }
         screen.clip.customername_txt.text = String(screen.currentCustomer.customerName);
         false;
         false;
         true;
         true;
         false;
         false;
         false;
         false;
         false;
         false;
         howmanystars = screen.gameObj.userData.getCustomerStars(screen.currentCustomer.customerType);
         false;
         false;
         whichseal = screen.gameObj.userData.getCustomerSeal(screen.currentCustomer.customerType);
         i = 1;
         while(i <= 5)
         {
            true;
            true;
            if(howmanystars >= i)
            {
               screen.clip.stars["star" + i].gotoAndStop(2);
               true;
               true;
            }
            else
            {
               true;
               true;
               false;
               false;
               screen.clip.stars["star" + i].gotoAndStop(1);
            }
            i++;
            true;
            true;
         }
         true;
         true;
         if(whichseal == 0)
         {
            true;
            true;
            true;
            true;
            true;
            true;
            screen.clip.stars.currentseal.visible = false;
         }
         else
         {
            screen.clip.stars.currentseal.visible = true;
            true;
            true;
            screen.clip.stars.currentseal.gotoAndStop(whichseal);
         }
         screen.clip.stars.award.gotoAndStop(1);
         screen.clip.stars.ribbon.gotoAndStop(1);
         true;
         true;
         false;
         false;
         false;
         false;
         glowFilter = screen.clip.customername_txt.filters[0];
         false;
         false;
         if(screen.currentCustomer.isCloser)
         {
            false;
            false;
            glowFilter.color = 13830400;
         }
         else
         {
            glowFilter.color = 3365915;
         }
         screen.clip.customername_txt.filters = [glowFilter];
         percentThroughDay = screen.gameObj.var_28.gameplayTimer / screen.gameObj.var_78;
         true;
         true;
         if(percentThroughDay > 0.98)
         {
            true;
            true;
            screen.clip.bg.gotoAndStop(7);
         }
         else
         {
            false;
            false;
            if(percentThroughDay > 0.8)
            {
               false;
               false;
               screen.clip.bg.gotoAndStop(6);
               true;
               true;
            }
            else
            {
               true;
               true;
               true;
               true;
               true;
               true;
               if(percentThroughDay > 0.65)
               {
                  screen.clip.bg.gotoAndStop(5);
                  false;
                  false;
               }
               else
               {
                  false;
                  false;
                  true;
                  true;
                  if(percentThroughDay > 0.5)
                  {
                     false;
                     false;
                     screen.clip.bg.gotoAndStop(4);
                  }
                  else
                  {
                     false;
                     false;
                     if(percentThroughDay > 0.35)
                     {
                        false;
                        false;
                        screen.clip.bg.gotoAndStop(3);
                     }
                     else if(percentThroughDay > 0.2)
                     {
                        screen.clip.bg.gotoAndStop(2);
                     }
                     else
                     {
                        screen.clip.bg.gotoAndStop(1);
                     }
                  }
               }
            }
         }
         if(whichseal == 0)
         {
            true;
            true;
            screen.useWaitPercent = screen.seal0WaitPercent;
         }
         else
         {
            false;
            false;
            if(whichseal == 1)
            {
               false;
               false;
               true;
               true;
               false;
               false;
               screen.useWaitPercent = screen.seal1WaitPercent;
               false;
               false;
            }
            else
            {
               false;
               false;
               false;
               false;
               if(whichseal == 2)
               {
                  false;
                  false;
                  screen.useWaitPercent = screen.seal2WaitPercent;
               }
               else if(whichseal == 3)
               {
                  false;
                  false;
                  screen.useWaitPercent = screen.seal3WaitPercent;
               }
            }
         }
         false;
         false;
         screen.currentWaitMax = Math.floor(screen.waitLookMax * screen.useWaitPercent);
         screen.determineAccuracy();
         true;
         true;
         screen.gameObj.userData.recordCustomerVisit(screen.currentCustomer.customerType);
         screen.gameObj.var_10.api.method_27("Order_Served","Events");
      }
      
      public function updateScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:FoodPlate = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc1_:GiveOrderScreen = this;
         false;
         false;
         if(_loc1_.shouldAnimateTickets)
         {
            _loc2_ = false;
            true;
            true;
            _loc3_ = 4;
            _loc4_ = 0;
            while(_loc4_ < _loc1_.prizeTickets.length)
            {
               _loc5_ = _loc1_.prizeTickets[_loc4_];
               _loc6_ = 0 - _loc4_ * _loc3_;
               if(_loc5_.y < _loc6_)
               {
                  _loc5_.y += _loc1_.prizeTicketSpeed;
                  if(_loc5_.y >= _loc6_)
                  {
                     true;
                     true;
                     _loc5_.y = _loc6_;
                  }
                  else
                  {
                     _loc2_ = true;
                  }
               }
               _loc4_++;
            }
            if(!_loc2_)
            {
               _loc1_.shouldAnimateTickets = false;
               true;
               true;
            }
         }
         if(_loc1_.shouldAnimateMeter)
         {
            false;
            false;
            if(_loc1_.clip.ticketmeter.bar.scaleX < _loc1_.targetMeterPercent / 100)
            {
               false;
               false;
               _loc1_.clip.ticketmeter.bar.scaleX += _loc1_.meterSpeed;
               if(_loc1_.clip.ticketmeter.bar.scaleX > _loc1_.targetMeterPercent / 100)
               {
                  _loc1_.clip.ticketmeter.bar.scaleX = _loc1_.targetMeterPercent / 100;
               }
            }
            false;
            false;
            if(_loc1_.clip.ticketmeter.bar.scaleX >= 0.3 && _loc1_.ticketsEarned < 1)
            {
               true;
               true;
               var _loc11_:*;
               var _loc12_:* = (_loc11_ = _loc1_).ticketsEarned + 1;
               true;
               true;
               _loc11_.ticketsEarned = _loc12_;
               false;
               false;
               _loc1_.addPrizeTickets(1);
               false;
               false;
               _loc1_.gameObj.userData.earnExtraDailyTicket(1);
               _loc1_.clip.ticketmeter.ball1.gotoAndPlay("earn");
            }
            else
            {
               false;
               false;
               if(_loc1_.clip.ticketmeter.bar.scaleX >= 0.6 && _loc1_.ticketsEarned < 2)
               {
                  _loc12_ = (_loc11_ = _loc1_).ticketsEarned + 1;
                  true;
                  true;
                  _loc11_.ticketsEarned = _loc12_;
                  _loc1_.addPrizeTickets(1);
                  false;
                  false;
                  false;
                  false;
                  _loc1_.gameObj.userData.earnExtraDailyTicket(1);
                  _loc1_.clip.ticketmeter.ball2.gotoAndPlay("earn");
               }
               else if(_loc1_.clip.ticketmeter.bar.scaleX >= 0.9 && _loc1_.ticketsEarned < 3)
               {
                  _loc12_ = (_loc11_ = _loc1_).ticketsEarned + 1;
                  true;
                  true;
                  _loc11_.ticketsEarned = _loc12_;
                  _loc1_.addPrizeTickets(1);
                  false;
                  false;
                  false;
                  false;
                  _loc1_.gameObj.userData.earnExtraDailyTicket(1);
                  _loc1_.clip.ticketmeter.ball3.gotoAndPlay("earn");
               }
            }
         }
         false;
         false;
         if(_loc1_.isPresentingOrder && !_loc1_.gameObj.var_56)
         {
            false;
            false;
            _loc1_.worker.animateModel();
            false;
            false;
            false;
            false;
            _loc12_ = (_loc11_ = _loc1_).waitTimer + 1;
            false;
            false;
            _loc11_.waitTimer = _loc12_;
            true;
            true;
            if(_loc1_.waitTimer > _loc1_.currentWaitMax)
            {
               if(_loc1_.currentStep == "look")
               {
                  _loc1_.clip.bubbles.gotoAndPlay("reveal");
                  _loc1_.currentStep = "bubbles";
                  false;
                  false;
                  _loc1_.waitTimer = 0;
                  _loc1_.currentWaitMax = Math.floor(_loc1_.waitBubblesMax * _loc1_.useWaitPercent);
               }
               else if(_loc1_.currentStep == "bubbles")
               {
                  if(_loc1_.chickenPiece != null)
                  {
                     try
                     {
                        _loc1_.chickenPiece.parent.removeChild(_loc1_.chickenPiece);
                        true;
                        true;
                     }
                     catch(err:Error)
                     {
                     }
                     _loc1_.chickenPiece = null;
                  }
                  true;
                  true;
                  _loc1_.currentCustomer.clip.gotoAndPlay("look" + _loc1_.customerReaction);
                  false;
                  false;
                  if(_loc1_.earnStarNumber > 0)
                  {
                     false;
                     false;
                     _loc1_.clip.stars["star" + _loc1_.earnStarNumber].gotoAndStop(3);
                     true;
                     true;
                     true;
                     true;
                     false;
                     false;
                     _loc1_.gameObj.soundManager.playSound("getstar.wav");
                     true;
                     true;
                     _loc1_.gameObj.userData.earnCustomerStar(_loc1_.currentCustomer.customerType,_loc1_.earnStarNumber);
                     false;
                     false;
                     _loc8_ = _loc1_.gameObj.userData.getCustomerSeal(_loc1_.currentCustomer.customerType);
                     true;
                     true;
                     if(_loc1_.earnStarNumber == 5 && _loc8_ < 3)
                     {
                        _loc9_ = _loc8_ + 1;
                        true;
                        true;
                        false;
                        false;
                        _loc1_.gameObj.userData.earnCustomerSeal(_loc1_.currentCustomer.customerType,_loc9_);
                        _loc1_.gameObj.userData.earnCustomerStar(_loc1_.currentCustomer.customerType,0);
                        _loc1_.clip.stars.fireworks.gotoAndPlay(2);
                        _loc1_.clip.stars.award.seal.gotoAndStop(_loc9_);
                        _loc1_.clip.stars.award.gotoAndPlay(2);
                     }
                     else
                     {
                        §§push(_loc1_.earnStarNumber == 5);
                        if(_loc1_.earnStarNumber == 5)
                        {
                           true;
                           true;
                           §§pop();
                           §§push(_loc8_ == 3);
                        }
                        if(§§pop())
                        {
                           false;
                           false;
                           false;
                           false;
                           false;
                           false;
                           _loc1_.gameObj.userData.earnCustomerStar(_loc1_.currentCustomer.customerType,0);
                           _loc1_.clip.stars.fireworks.gotoAndPlay(2);
                        }
                     }
                  }
                  else if(_loc1_.loseStarNumber > 0)
                  {
                     false;
                     false;
                     _loc10_ = 1;
                     while(_loc10_ <= _loc1_.loseStarNumber)
                     {
                        _loc1_.clip.stars["star" + _loc10_].gotoAndStop(4);
                        _loc10_++;
                     }
                     false;
                     false;
                     _loc1_.gameObj.soundManager.playSound("grabtopping.wav");
                     true;
                     true;
                     _loc1_.gameObj.userData.earnCustomerStar(_loc1_.currentCustomer.customerType,0);
                  }
                  §§push(_loc1_.currentCustomer.customerType == 1);
                  if(_loc1_.currentCustomer.customerType == 1)
                  {
                     true;
                     true;
                     §§pop();
                     true;
                     true;
                     §§push(_loc1_.earnStarNumber > 0);
                  }
                  if(§§pop())
                  {
                     true;
                     true;
                     _loc1_.gameObj.userData.earnBlueRibbon();
                     false;
                     false;
                     _loc1_.gameObj.var_10.api.method_27("Earned_Blue_Ribbon","Events");
                     _loc1_.clip.stars.fireworks.gotoAndPlay(2);
                     _loc1_.clip.stars.ribbon.gotoAndPlay(2);
                  }
                  else if(_loc1_.currentCustomer.customerType == 1)
                  {
                     _loc1_.gameObj.var_10.api.method_27("Missed_Blue_Ribbon","Events");
                  }
                  _loc7_ = _loc1_.gameObj.var_11.currentPlate;
                  _loc1_.gameObj.challengeManager.recordServeOrder(_loc1_.currentCustomer.customerName,_loc1_.waitScore,_loc1_.grillScore,_loc1_.buildScore,_loc1_.sauceScore,_loc1_.totalScore,_loc7_.getToppingNames(_loc1_.currentCustomer.order),"");
                  false;
                  false;
                  _loc1_.gameObj.soundManager.playSound("customer_" + _loc1_.customerReaction + ".wav");
                  false;
                  false;
                  if(_loc1_.drumrollSound)
                  {
                     _loc1_.drumrollSound.stop();
                  }
                  _loc1_.drumrollSound = null;
                  _loc1_.shouldAnimateMeter = true;
                  true;
                  true;
                  _loc1_.currentStep = "react";
                  _loc1_.waitTimer = 0;
                  _loc1_.currentWaitMax = Math.floor(_loc1_.waitReactMax * _loc1_.useWaitPercent);
               }
               else
               {
                  false;
                  false;
                  if(_loc1_.currentStep == "react")
                  {
                     false;
                     false;
                     _loc1_.clip.tips.gotoAndStop(_loc1_.coinFrame);
                     false;
                     false;
                     if(_loc1_.coinFrame > 1)
                     {
                        if(_loc1_.coinFrame < 4)
                        {
                           true;
                           true;
                           _loc1_.gameObj.soundManager.playSound("singlecoin.wav");
                        }
                        else
                        {
                           false;
                           false;
                           _loc1_.gameObj.soundManager.playSound("multicoin.wav");
                        }
                     }
                     _loc1_.currentStep = "tip";
                     _loc1_.waitTimer = 0;
                     false;
                     false;
                     _loc1_.currentWaitMax = Math.floor(_loc1_.waitTipMax * _loc1_.useWaitPercent);
                     false;
                     false;
                  }
                  else if(_loc1_.currentStep == "tip")
                  {
                     _loc1_.adjustJarCoins();
                     _loc1_.clip.tipjar.gotoAndPlay(2);
                     _loc1_.clip.starburst.gotoAndPlay(2);
                     true;
                     true;
                     _loc1_.gameObj.soundManager.playSound("boing.wav");
                     _loc1_.currentStep = "tipTotal";
                     _loc1_.waitTimer = 0;
                     _loc1_.currentWaitMax = _loc1_.waitTipTotalMax;
                  }
                  else if(_loc1_.currentStep == "tipTotal")
                  {
                     if(_loc1_.gameObj.var_13.outOfCustomers())
                     {
                        _loc1_.currentStep = "ending";
                        _loc1_.waitTimer = 0;
                        _loc1_.currentWaitMax = _loc1_.waitEndingMax;
                        _loc1_.currentStep = "returning";
                        _loc1_.waitTimer = 0;
                        _loc1_.currentWaitMax = int.MAX_VALUE;
                        _loc1_.finishGivingOrder(true);
                     }
                     else
                     {
                        _loc1_.currentStep = "returning";
                        _loc1_.waitTimer = 0;
                        _loc1_.currentWaitMax = int.MAX_VALUE;
                        true;
                        true;
                        _loc1_.finishGivingOrder();
                     }
                  }
                  else if(_loc1_.currentStep == "ending")
                  {
                     _loc1_.gameObj.var_103 = true;
                     _loc1_.isPresentingOrder = false;
                     _loc1_.currentStep = "closeending";
                     _loc1_.waitTimer = 0;
                     true;
                     true;
                     _loc1_.currentWaitMax = int.MAX_VALUE;
                     _loc1_.gameObj.hud.startTransition("ending");
                  }
               }
            }
         }
      }
      
      public function adjustJarCoins() : void
      {
         var _loc1_:GiveOrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Number = _loc2_.getTipsToday();
         3000;
         var _loc5_:Number = Math.min(1,_loc3_ / 3000);
         true;
         true;
         false;
         false;
         var _loc6_:Number;
         §§push((_loc6_ = Math.ceil(_loc5_ * 10)) < 2);
         if((_loc6_ = Math.ceil(_loc5_ * 10)) < 2)
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(_loc3_ > 0);
         }
         if(§§pop())
         {
            true;
            true;
            _loc6_ = 2;
            false;
            false;
         }
         else if(_loc6_ > 10)
         {
            true;
            true;
            _loc6_ = 10;
            false;
            false;
         }
         _loc1_.clip.tipjar.clip.coins.gotoAndStop(_loc6_);
      }
      
      public function determineAccuracy() : void
      {
         false;
         true;
         var _loc1_:GiveOrderScreen = this;
         class_5.method_25(">>> ---------------------------------------------------------------------------");
         true;
         true;
         true;
         true;
         class_5.method_25("Scoring order for " + _loc1_.currentCustomer.customerName + ":\n");
         true;
         true;
         _loc1_.gradeBuilding();
         _loc1_.gradeWaiting();
         _loc1_.gradeGrilling();
         _loc1_.gradeSaucing();
         _loc1_.totalScore = Math.floor((_loc1_.buildScore + _loc1_.grillScore + _loc1_.waitScore + _loc1_.sauceScore) / 4);
         false;
         false;
         true;
         true;
         if(_loc1_.currentCustomer.isCloser)
         {
            true;
            true;
            if(_loc1_.totalScore <= _loc1_.closerCutoff)
            {
               _loc1_.totalScore = 0;
            }
            else
            {
               _loc1_.totalScore = Math.floor((_loc1_.totalScore - _loc1_.closerCutoff) / (100 - _loc1_.closerCutoff) * 100);
            }
         }
         true;
         true;
         if(_loc1_.currentCustomer.customerName == "Jojo" && _loc1_.gameObj.userData.hasBonusFurniture("customer","jojo"))
         {
            true;
            true;
            _loc1_.totalScore += 5;
            true;
            true;
            if(_loc1_.totalScore > 100)
            {
               _loc1_.totalScore = 100;
            }
            class_5.method_25(">> Boost Score +5% for Jojo because you have the Food Critic poster.");
         }
         false;
         false;
         var _loc2_:Number = _loc1_.totalScore;
         false;
         false;
         if(this.totalScore >= 90)
         {
            _loc1_.customerReaction = "overjoyed";
         }
         else if(this.totalScore >= 80)
         {
            _loc1_.customerReaction = "happy";
         }
         else
         {
            true;
            true;
            false;
            false;
            if(this.totalScore >= 70)
            {
               _loc1_.customerReaction = "decent";
            }
            else
            {
               false;
               false;
               if(this.totalScore >= 60)
               {
                  _loc1_.customerReaction = "worried";
               }
               else
               {
                  false;
                  false;
                  if(this.totalScore >= 50)
                  {
                     _loc1_.customerReaction = "upset";
                  }
                  else if(this.totalScore < 50)
                  {
                     _loc1_.customerReaction = "pissed";
                  }
                  else
                  {
                     _loc1_.customerReaction = "decent";
                  }
               }
            }
         }
         var _loc3_:Number = _loc1_.gameObj.userData.getCustomerStars(_loc1_.currentCustomer.customerType);
         false;
         false;
         if(this.totalScore >= 80)
         {
            false;
            false;
            true;
            true;
            if(_loc3_ < 5)
            {
               true;
               true;
               _loc1_.earnStarNumber = _loc3_ + 1;
            }
         }
         else
         {
            true;
            true;
            if(this.totalScore < 60)
            {
               false;
               false;
               if(_loc3_ > 0)
               {
                  true;
                  true;
                  _loc1_.loseStarNumber = _loc3_;
               }
            }
         }
         var _loc4_:Number = _loc1_.maxTip;
         false;
         false;
         var _loc5_:Number;
         var _loc6_:Number = (_loc5_ = _loc1_.gameObj.userData.getCustomerSeal(_loc1_.currentCustomer.customerType)) * _loc1_.extraPercentagePerBadge;
         true;
         true;
         if(_loc1_.earnStarNumber == 5)
         {
            _loc6_ = 2;
         }
         _loc1_.totalScore = Math.round(_loc1_.totalScore * (1 + _loc6_));
         true;
         true;
         class_5.method_25("Previous Stars: " + _loc3_ + ", Which Seal: " + _loc5_ + ", Point Bonus: " + _loc6_ + ", Total Score: " + this.totalScore);
         if(isNaN(_loc1_.totalScore))
         {
            true;
            true;
            _loc1_.totalScore = 0;
         }
         false;
         false;
         var _loc7_:Number = _loc5_ * _loc1_.extraTipPerBadge;
         true;
         true;
         _loc4_ += _loc7_;
         true;
         true;
         true;
         true;
         if(_loc1_.gameObj.userData.hasRibbon())
         {
            false;
            false;
            _loc4_ += _loc1_.extraTipForRibbon;
         }
         false;
         false;
         if(_loc1_.gameObj.userData.hasBonusFurniture("customer","romano") && (_loc1_.currentCustomer.customerName == "Bruna Romano" || _loc1_.currentCustomer.customerName == "Carlo Romano" || _loc1_.currentCustomer.customerName == "Gino Romano" || _loc1_.currentCustomer.customerName == "Little Edoardo"))
         {
            class_5.method_25("Bonus tip for Romanos!");
            _loc4_ += 300;
         }
         true;
         true;
         var _loc8_:Number;
         if((_loc8_ = Math.round(_loc2_ / 100 * _loc4_ - (100 - _loc2_) / 100 * _loc4_)) < 0)
         {
            false;
            false;
            false;
            false;
            _loc8_ = 0;
         }
         false;
         false;
         true;
         true;
         if(_loc1_.earnStarNumber == 5)
         {
            true;
            true;
            _loc8_ = 900;
            true;
            true;
         }
         if(isNaN(_loc8_))
         {
            _loc8_ = 0;
         }
         var _loc9_:Number = _loc8_ / 100;
         false;
         false;
         if(_loc2_ < 50)
         {
            false;
            false;
            _loc1_.coinFrame = 1;
         }
         else if(_loc2_ < 60)
         {
            _loc1_.coinFrame = 2;
            false;
            false;
         }
         else if(_loc2_ < 70)
         {
            _loc1_.coinFrame = 3;
            false;
            false;
         }
         else
         {
            false;
            false;
            if(_loc2_ < 80)
            {
               _loc1_.coinFrame = 4;
            }
            else if(_loc2_ < 90)
            {
               _loc1_.coinFrame = 5;
               false;
               false;
            }
            else
            {
               true;
               true;
               if(_loc2_ < 100)
               {
                  _loc1_.coinFrame = 6;
                  true;
                  true;
               }
               else if(_loc2_ >= 100)
               {
                  true;
                  true;
                  _loc1_.coinFrame = 6;
               }
            }
         }
         var _loc10_:Number = Math.floor(_loc9_);
         true;
         true;
         var _loc11_:*;
         var _loc12_:* = (_loc11_ = _loc8_ - _loc10_ * 100) / 100;
         false;
         false;
         if(_loc11_ < 10)
         {
            _loc11_ = "0" + _loc11_;
         }
         else if(_loc11_ == 0)
         {
            _loc11_ = "00";
         }
         true;
         true;
         var _loc13_:String = "$" + _loc10_ + "." + _loc11_;
         false;
         false;
         false;
         false;
         if(_loc8_ <= 0)
         {
            _loc8_ = 0;
            _loc13_ = " $0.00 ";
         }
         false;
         false;
         _loc1_.gameObj.userData.addToDailyScore(_loc1_.waitScore,_loc1_.grillScore,_loc1_.buildScore,_loc1_.sauceScore,_loc1_.totalScore,_loc8_,_loc1_.earnTicketAmount);
         _loc1_.targetMeterPercent = _loc1_.gameObj.userData.getCurrentPercentQuality(_loc1_.gameObj.var_13.customerLineup.length);
         true;
         true;
         true;
         true;
         class_5.method_25("Current Meter Percent: " + _loc1_.targetMeterPercent + "% (for " + _loc1_.gameObj.var_13.customerLineup.length + " Customers today)");
         _loc1_.clip.bubbles.order_score.score_txt.text = _loc1_.waitScore + "%";
         _loc1_.clip.bubbles.grill_score.score_txt.text = _loc1_.grillScore + "%";
         _loc1_.clip.bubbles.build_score.score_txt.text = _loc1_.buildScore + "%";
         _loc1_.clip.bubbles.sauce_score.score_txt.text = _loc1_.sauceScore + "%";
         false;
         false;
         _loc1_.clip.bubbles.total_score.score_txt.text = _loc1_.totalScore + " POINTS";
         _loc1_.clip.bubbles.gotoAndStop(1);
         true;
         true;
         §§push(_loc1_.waitScore == 100 && _loc1_.grillScore == 100 && _loc1_.buildScore == 100);
         if(_loc1_.waitScore == 100 && _loc1_.grillScore == 100 && _loc1_.buildScore == 100)
         {
            false;
            false;
            §§pop();
            §§push(_loc1_.sauceScore == 100);
         }
         if(§§pop())
         {
            true;
            true;
            _loc1_.clip.bubbles.perfect.visible = true;
            false;
            false;
            _loc1_.gameObj.var_10.api.method_27("Order_100Percent_Perfect","Events");
         }
         else
         {
            _loc1_.clip.bubbles.perfect.visible = false;
            false;
            false;
         }
         _loc1_.clip.starburst.burst.money.text = _loc13_;
         class_5.method_25(">>> ---------------------------------------------------------------------------");
      }
      
      public function gradeWaiting() : void
      {
         false;
         true;
         var _loc2_:int = 0;
         var _loc1_:GiveOrderScreen = this;
         true;
         true;
         true;
         true;
         var _loc3_:Number = _loc1_.gameObj.userData.getBonusWaitOffset() * 30;
         false;
         false;
         if(_loc1_.currentCustomer.customersAlreadyWaiting >= 2)
         {
            true;
            true;
            _loc3_ += 600;
            false;
            false;
         }
         else if(_loc1_.currentCustomer.customersAlreadyWaiting == 1)
         {
            false;
            false;
            _loc3_ += 300;
         }
         var _loc4_:Number = _loc1_.gameObj.var_28.gameplayTimer;
         var _loc5_:Number = _loc1_.currentCustomer.timeOrderTaken - _loc1_.currentCustomer.timeEntered;
         var _loc6_:Number = _loc4_ - _loc1_.currentCustomer.timeOrderTaken;
         var _loc7_:Number = _loc5_ - (_loc1_.idealWaitBeforeOrder + _loc3_);
         var _loc8_:Number = 0;
         true;
         true;
         0.3;
         false;
         false;
         false;
         false;
         if(_loc7_ > 0)
         {
            true;
            true;
            _loc8_ = _loc7_ / 30 * 0.3;
         }
         true;
         true;
         var _loc10_:Number = _loc1_.currentCustomer.getOkayWaitingTime();
         var _loc11_:Number = 0;
         var _loc12_:CustomerOrder = _loc1_.gameObj.customerData.getCustomerOrderData(_loc1_.currentCustomer.customerType);
         _loc2_ = 0;
         while(_loc2_ < _loc12_.wings.length)
         {
            false;
            false;
            _loc11_ += 90 * _loc12_.wings[_loc2_][1];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc12_.sides.length)
         {
            false;
            false;
            true;
            true;
            true;
            true;
            _loc11_ += 90 * _loc12_.sides[_loc2_][1];
            false;
            false;
            _loc2_++;
         }
         true;
         true;
         true;
         true;
         true;
         true;
         _loc11_ = (_loc11_ += 90 * _loc12_.dips.length) + 900;
         true;
         true;
         var _loc13_:Number = _loc10_ + _loc11_ + _loc3_;
         var _loc14_:Number = _loc6_ - _loc13_;
         var _loc15_:Number = 0;
         0.3;
         true;
         true;
         false;
         false;
         if(_loc14_ > 0)
         {
            true;
            true;
            _loc15_ = _loc14_ / 30 * 0.3;
            false;
            false;
         }
         _loc1_.waitScore = Math.max(0,Math.floor(100 - _loc15_ - _loc8_));
         true;
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
         false;
         false;
         var _loc17_:* = (_loc17_ = (_loc17_ = (_loc17_ = (_loc17_ = (_loc17_ = (_loc17_ = (_loc17_ = "") + "\nWAITING SCORE -----------------------------------------------\n") + ("Before-Order Time Off = " + _loc7_ + ". " + 0.3 + "% Off for each second.\n")) + ("Prep Time Off = " + _loc14_ + ". " + 0.3 + "% Off for each second.\n")) + ("(Customer would wait " + _loc10_ + " for cooking)\n")) + ("(Customer would wait " + _loc11_ + " for layout)\n")) + ("(There were " + _loc1_.currentCustomer.customersAlreadyWaiting + " others waiting in line)\n")) + ("FINAL WAITING SCORE: " + _loc1_.waitScore + " \n");
         class_5.method_25(_loc17_);
         if(isNaN(_loc1_.waitScore))
         {
            _loc1_.waitScore = 0;
         }
      }
      
      public function gradeGrilling() : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc1_:GiveOrderScreen = this;
         var _loc2_:CustomerData = _loc1_.gameObj.customerData;
         true;
         true;
         _loc1_.grillScore = 100;
         var _loc5_:CustomerOrder = _loc2_.getCustomerOrderData(_loc1_.currentCustomer.customerType);
         var _loc6_:FoodPlate = _loc1_.gameObj.var_11.currentPlate;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         0;
         var _loc11_:Array = [];
         false;
         false;
         _loc3_ = 0;
         while(_loc3_ < _loc5_.wings.length)
         {
            _loc11_.push(0);
            false;
            false;
            _loc3_++;
            true;
            true;
         }
         var _loc12_:Vector.<FoodItem> = _loc6_.getMeatItems();
         _loc3_ = 0;
         while(_loc3_ < _loc12_.length)
         {
            _loc14_ = false;
            _loc4_ = 0;
            while(true)
            {
               true;
               true;
               if(_loc4_ >= _loc5_.wings.length)
               {
                  break;
               }
               §§push(_loc12_[_loc3_].getType() == _loc5_.wings[_loc4_][0]);
               if(_loc12_[_loc3_].getType() == _loc5_.wings[_loc4_][0])
               {
                  true;
                  true;
                  §§pop();
                  §§push(_loc12_[_loc3_].getSauce() == _loc5_.wings[_loc4_][3]);
               }
               if(§§pop())
               {
                  false;
                  false;
                  _loc15_ = 100;
                  false;
                  false;
                  true;
                  true;
                  _loc16_ = FoodData.getTargetCookTime(_loc12_[_loc3_].type);
                  false;
                  false;
                  true;
                  true;
                  _loc17_ = _loc12_[_loc3_].cookAmount;
                  true;
                  true;
                  true;
                  true;
                  if((_loc18_ = (_loc18_ = Math.abs(_loc16_ - _loc17_)) - 150) > 0)
                  {
                     true;
                     true;
                     _loc19_ = 1;
                     if((_loc15_ -= _loc19_ * (_loc18_ / 30)) < 0)
                     {
                        false;
                        false;
                        _loc15_ = 0;
                     }
                  }
                  false;
                  false;
                  true;
                  true;
                  true;
                  true;
                  class_5.method_25(">> Wing: Time = " + _loc17_ + ", Target = " + _loc16_ + ".  Wing Score = " + _loc15_);
                  true;
                  true;
                  if(_loc1_.gameObj.userData.hasBonusFurniture("build",_loc12_[_loc3_].type))
                  {
                     true;
                     true;
                     true;
                     true;
                     if((_loc15_ += 3) > 100)
                     {
                        false;
                        false;
                        _loc15_ = 100;
                     }
                  }
                  if(_loc12_[_loc3_].type != _loc5_.wings[_loc4_][0])
                  {
                     true;
                     true;
                     false;
                     false;
                     _loc15_ -= 50;
                     false;
                     false;
                     _loc9_++;
                  }
                  _loc7_ += _loc15_;
                  false;
                  false;
                  true;
                  true;
                  true;
                  true;
                  _loc8_++;
                  ++_loc11_[_loc4_];
                  false;
                  false;
                  false;
                  false;
                  class_5.method_25(">>>> Wing Matched order# " + _loc4_ + ": (" + _loc5_.wings[_loc4_][0] + ", " + _loc5_.wings[_loc4_][3] + "). Total for this = " + _loc11_[_loc4_]);
                  _loc14_ = true;
                  break;
               }
               _loc4_++;
               true;
               true;
            }
            if(!_loc14_)
            {
               true;
               true;
            }
            _loc3_++;
         }
         var _loc13_:Number = 0;
         true;
         true;
         _loc3_ = 0;
         while(_loc3_ < _loc5_.wings.length)
         {
            false;
            false;
            _loc20_ = Math.abs(_loc5_.wings[_loc3_][1] - _loc11_[_loc3_]);
            false;
            false;
            false;
            false;
            _loc13_ += _loc20_;
            true;
            true;
            false;
            false;
            class_5.method_25("Looking for " + _loc5_.wings[_loc3_][1] + " for #" + _loc3_ + ".  Found " + _loc11_[_loc3_]);
            _loc3_++;
         }
         true;
         true;
         if(_loc8_ == 0)
         {
            _loc1_.grillScore = 0;
         }
         else
         {
            _loc1_.grillScore = Math.round(_loc7_ / (_loc8_ + _loc13_));
            false;
            false;
            class_5.method_25("Found " + _loc8_ + " ordered meats, " + _loc13_ + " were missing.");
            false;
            false;
         }
         true;
         true;
         if(_loc1_.grillScore < 0 || isNaN(_loc1_.grillScore))
         {
            _loc1_.grillScore = 0;
         }
         _loc1_.grillScore = Math.ceil(_loc1_.grillScore);
         false;
         false;
         class_5.method_25("Grilling Score: " + _loc1_.grillScore + "% ----------------------------------------------------\n");
      }
      
      public function gradeBuilding() : void
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc23_:Number = NaN;
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = false;
         var _loc48_:Boolean = false;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:String = null;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc59_:Number = NaN;
         var _loc60_:Array = null;
         var _loc61_:Number = NaN;
         var _loc62_:Number = NaN;
         var _loc63_:Number = NaN;
         var _loc64_:String = null;
         var _loc65_:Number = NaN;
         var _loc66_:Number = NaN;
         var _loc67_:String = null;
         var _loc68_:Vector.<FoodItem> = null;
         var _loc69_:Number = NaN;
         var _loc70_:Array = null;
         var _loc71_:Array = null;
         var _loc72_:Number = NaN;
         var _loc73_:Number = NaN;
         var _loc74_:Number = NaN;
         var _loc75_:Vector.<FoodItem> = null;
         var _loc76_:Number = NaN;
         var _loc77_:Number = NaN;
         var _loc78_:Number = NaN;
         var _loc79_:Number = NaN;
         var _loc80_:Number = NaN;
         var _loc81_:Number = NaN;
         var _loc82_:Number = NaN;
         var _loc83_:Number = NaN;
         var _loc84_:String = null;
         var _loc85_:Number = NaN;
         var _loc86_:Number = NaN;
         var _loc87_:Number = NaN;
         var _loc88_:Number = NaN;
         var _loc89_:Number = NaN;
         var _loc90_:Array = null;
         var _loc91_:Number = NaN;
         var _loc92_:Number = NaN;
         var _loc93_:Number = NaN;
         var _loc94_:String = null;
         var _loc95_:Number = NaN;
         var _loc96_:Number = NaN;
         var _loc1_:GiveOrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         false;
         false;
         _loc1_.buildScore = 100;
         class_5.method_25("Grade Building ---------------------------------------------------------");
         var _loc7_:CustomerOrder = _loc3_.getCustomerOrderData(_loc1_.currentCustomer.customerType);
         var _loc8_:FoodPlate = _loc1_.gameObj.var_11.currentPlate;
         var _loc9_:Number = 100;
         var _loc10_:Array = [];
         var _loc11_:Array = [];
         var _loc12_:Array = [];
         var _loc13_:Array = [];
         var _loc14_:Array = [];
         var _loc15_:Array = [];
         var _loc16_:Array = [];
         var _loc17_:Array = [];
         var _loc18_:Array = [];
         var _loc19_:Array = [];
         _loc4_ = 0;
         while(_loc4_ < _loc7_.wings.length)
         {
            _loc10_.push(0);
            _loc4_++;
         }
         false;
         false;
         _loc4_ = 0;
         true;
         true;
         while(true)
         {
            false;
            false;
            if(_loc4_ >= _loc7_.sides.length)
            {
               break;
            }
            _loc11_.push(0);
            _loc4_++;
         }
         _loc4_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc4_ >= _loc7_.dips.length)
            {
               break;
            }
            _loc12_.push(0);
            true;
            true;
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc8_.foodItems.length)
         {
            _loc46_ = false;
            if(FoodData.isMeat(_loc8_.foodItems[_loc4_].type))
            {
               _loc5_ = 0;
               while(true)
               {
                  false;
                  false;
                  true;
                  true;
                  if(_loc5_ < _loc7_.wings.length)
                  {
                     false;
                     false;
                     if(!(_loc8_.foodItems[_loc4_].type == _loc7_.wings[_loc5_][0] && _loc8_.foodItems[_loc4_].sauceType == _loc7_.wings[_loc5_][3]))
                     {
                        continue;
                     }
                     false;
                     false;
                     var _loc97_:*;
                     var _loc98_:*;
                     var _loc99_:* = (_loc97_ = _loc10_)[_loc98_ = _loc5_] + 1;
                     true;
                     true;
                     _loc97_[_loc98_] = _loc99_;
                     true;
                     true;
                     _loc46_ = true;
                  }
               }
            }
            else if(FoodData.isSide(_loc8_.foodItems[_loc4_].type))
            {
               false;
               false;
               _loc5_ = 0;
               while(true)
               {
                  if(_loc5_ >= _loc7_.sides.length)
                  {
                     true;
                     true;
                     break;
                  }
                  if(_loc8_.foodItems[_loc4_].type == _loc7_.sides[_loc5_][0])
                  {
                     true;
                     true;
                     ++_loc11_[_loc5_];
                     _loc46_ = true;
                     true;
                     true;
                     break;
                  }
                  _loc5_++;
               }
            }
            if(!_loc46_)
            {
               _loc47_ = false;
               if(FoodData.isMeat(_loc8_.foodItems[_loc4_].type))
               {
                  _loc5_ = 0;
                  false;
                  false;
                  while(true)
                  {
                     false;
                     false;
                     if(_loc5_ >= _loc13_.length)
                     {
                        break;
                     }
                     false;
                     false;
                     if(_loc13_[_loc5_][0] == _loc8_.foodItems[_loc4_].type && _loc13_[_loc5_][3] == _loc8_.foodItems[_loc4_].sauceType)
                     {
                        ++_loc14_[_loc5_];
                        false;
                        false;
                        _loc47_ = true;
                        false;
                        false;
                        break;
                     }
                     _loc5_++;
                  }
                  if(!_loc47_)
                  {
                     _loc13_.push([_loc8_.foodItems[_loc4_].type,1,FoodData.DISTRO_ALL,_loc8_.foodItems[_loc4_].sauceType]);
                     _loc14_.push(1);
                     _loc15_.push(false);
                  }
               }
               else if(FoodData.isSide(_loc8_.foodItems[_loc4_].type))
               {
                  true;
                  true;
                  _loc5_ = 0;
                  while(_loc5_ < _loc16_.length)
                  {
                     if(_loc16_[_loc5_] == _loc8_.foodItems[_loc4_].type)
                     {
                        _loc99_ = (_loc97_ = _loc17_)[_loc98_ = _loc5_] + 1;
                        false;
                        false;
                        _loc97_[_loc98_] = _loc99_;
                        true;
                        true;
                        _loc47_ = true;
                        break;
                     }
                     _loc5_++;
                  }
                  if(!_loc47_)
                  {
                     _loc16_.push(_loc8_.foodItems[_loc4_].type);
                     _loc17_.push(1);
                  }
               }
            }
            _loc4_++;
         }
         true;
         true;
         _loc4_ = 0;
         while(_loc4_ < _loc8_.dipItems.length)
         {
            _loc48_ = false;
            _loc5_ = 0;
            while(_loc5_ < _loc7_.dips.length)
            {
               if(_loc8_.dipItems[_loc4_].type == _loc7_.dips[_loc5_][0])
               {
                  if(_loc12_[_loc5_] == 0)
                  {
                     false;
                     false;
                     _loc12_[_loc5_] = 1;
                     _loc48_ = true;
                     break;
                  }
               }
               _loc5_++;
            }
            if(!_loc48_)
            {
               _loc18_.push(_loc8_.dipItems[_loc4_].type);
               _loc19_.push(1);
               true;
               true;
            }
            _loc4_++;
         }
         var _loc20_:Boolean = true;
         var _loc21_:Number = 0;
         var _loc22_:Number = 0;
         _loc4_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc4_ >= _loc7_.wings.length)
            {
               break;
            }
            false;
            false;
            false;
            false;
            if((_loc23_ = _loc7_.wings[_loc4_][1] - _loc10_[_loc4_]) != 0)
            {
               true;
               true;
               _loc20_ = false;
               _loc21_ += Math.abs(_loc23_);
               true;
               true;
               class_5.method_25("Looking for " + _loc7_.wings[_loc4_][1] + " " + _loc7_.wings[_loc4_][3] + " " + _loc7_.wings[_loc4_][0] + ", you have " + _loc10_[_loc4_] + ".");
            }
            true;
            true;
            if(_loc10_[_loc4_] == 0 && _loc14_.length > 0)
            {
               class_5.method_25("...Attempt to find a substitute");
               _loc5_ = 0;
               false;
               false;
               while(_loc5_ < _loc13_.length)
               {
                  if(_loc15_[_loc5_] == false && (_loc13_[_loc5_][0] == _loc7_.wings[_loc4_][0] || _loc13_[_loc5_][3] == _loc7_.wings[_loc4_][3]))
                  {
                     true;
                     true;
                     _loc6_ = 0;
                     while(_loc6_ < _loc8_.foodItems.length)
                     {
                        §§push(_loc8_.foodItems[_loc6_].type == _loc13_[_loc5_][0]);
                        if(_loc8_.foodItems[_loc6_].type == _loc13_[_loc5_][0])
                        {
                           true;
                           true;
                           §§pop();
                           false;
                           false;
                           §§push(_loc8_.foodItems[_loc6_].sauceType == _loc13_[_loc5_][3]);
                        }
                        if(§§pop())
                        {
                           true;
                           true;
                           _loc8_.foodItems[_loc6_].setMeatSubstitute(_loc7_.wings[_loc4_][0],_loc7_.wings[_loc4_][3]);
                           false;
                           false;
                           _loc22_++;
                           true;
                           true;
                        }
                        _loc6_++;
                     }
                     true;
                     true;
                     false;
                     false;
                     class_5.method_25("...Substituting " + _loc13_[_loc5_][3] + " " + _loc13_[_loc5_][0] + " for this.");
                     _loc15_[_loc5_] = true;
                     true;
                     true;
                     break;
                  }
                  _loc5_++;
                  true;
                  true;
               }
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc7_.sides.length)
         {
            if((_loc23_ = _loc7_.sides[_loc4_][1] - _loc11_[_loc4_]) != 0)
            {
               _loc20_ = false;
               _loc21_ += Math.abs(_loc23_);
               false;
               false;
               false;
               false;
               class_5.method_25("Looking for " + _loc7_.sides[_loc4_][1] + " " + _loc7_.sides[_loc4_][0] + ", you have " + _loc11_[_loc4_] + ".");
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc4_ >= _loc7_.dips.length)
            {
               break;
            }
            if(_loc12_[_loc4_] == 0)
            {
               false;
               false;
               _loc20_ = false;
               _loc21_ += 1;
               false;
               false;
               class_5.method_25("Looking for " + _loc7_.dips[_loc4_][0] + ", you don\'t have it.");
            }
            _loc4_++;
         }
         10;
         false;
         false;
         true;
         true;
         _loc9_ -= _loc21_ * 10;
         var _loc25_:Number = 0;
         false;
         false;
         _loc4_ = 0;
         false;
         false;
         while(_loc4_ < _loc14_.length)
         {
            _loc25_ += _loc14_[_loc4_];
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
            true;
            true;
            class_5.method_25("You have extra wings: " + _loc14_[_loc4_] + " " + _loc13_[_loc4_][3] + " " + _loc13_[_loc4_][0] + ".");
            _loc4_++;
            true;
            true;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc17_.length)
         {
            _loc25_ += _loc17_[_loc4_];
            false;
            false;
            false;
            false;
            class_5.method_25("You have extra sides: " + _loc17_[_loc4_] + " " + _loc16_[_loc4_] + ".");
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc19_.length)
         {
            _loc25_ += _loc19_[_loc4_];
            class_5.method_25("You have an extra dip: " + _loc18_[_loc4_] + ".");
            false;
            false;
            _loc4_++;
         }
         5;
         true;
         true;
         true;
         true;
         _loc9_ -= _loc25_ * 5;
         5;
         true;
         true;
         if(_loc22_ > 0)
         {
            class_5.method_25("Add partial credit for substituted meats (" + _loc22_ + ")");
            _loc9_ += _loc22_ * 5;
         }
         true;
         true;
         §§push(_loc20_ == true);
         if(_loc20_ == true)
         {
            false;
            false;
            §§pop();
            §§push(_loc25_ == 0);
         }
         if(§§pop())
         {
            class_5.method_25("---- You have the correct items and the correct amount of items.");
         }
         else if(_loc20_ == true && _loc25_ > 0)
         {
            class_5.method_25("---- You have the correct items, BUT ALSO extra items...");
         }
         else
         {
            true;
            true;
            true;
            true;
            false;
            false;
            if(_loc20_ == false && _loc25_ > 0)
            {
               class_5.method_25("---- You don\'t have the right items, and also extra items...");
            }
            else
            {
               false;
               false;
               false;
               false;
               if(_loc20_ == false && _loc25_ == 0)
               {
                  class_5.method_25("---- You don\'t have all of the items ordered.");
               }
            }
         }
         §§push(_loc9_ < 0);
         if(!(_loc9_ < 0))
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(isNaN(_loc9_));
         }
         if(§§pop())
         {
            false;
            false;
            _loc9_ = 0;
         }
         _loc9_ = Math.round(_loc9_);
         class_5.method_25("---- Amount/Type Score: " + _loc9_ + "%");
         var _loc28_:Number = 100;
         var _loc29_:Vector.<FoodItem> = _loc8_.getItemsOfDistro(_loc7_,FoodData.DISTRO_ALL);
         var _loc30_:Number = _loc7_.getAmountForDistro(FoodData.DISTRO_ALL);
         true;
         true;
         var _loc31_:Number = _loc7_.getTypeAmountForDistro(FoodData.DISTRO_ALL);
         var _loc32_:Number = 360 / _loc30_;
         var _loc33_:Number = 0;
         true;
         true;
         false;
         false;
         false;
         false;
         class_5.method_25("How many all-over items on the plate: " + _loc29_.length + ".  Looking for " + _loc30_ + ". Target Angle = " + _loc32_ + "*");
         false;
         false;
         class_5.method_25("");
         var _loc34_:String = "";
         _loc4_ = 0;
         while(_loc4_ < _loc29_.length)
         {
            _loc34_ += _loc29_[_loc4_].getTypeString() + ", ";
            _loc4_++;
         }
         class_5.method_25(_loc34_);
         class_5.method_25("");
         _loc4_ = 0;
         while(_loc4_ < _loc29_.length)
         {
            _loc49_ = 0;
            true;
            true;
            _loc50_ = 0;
            if(_loc29_.length > 1)
            {
               if(_loc4_ == 0)
               {
                  _loc49_ = _loc29_[_loc4_].getRotationOnPlate() - _loc29_[_loc29_.length - 1].getRotationOnPlate();
               }
               else
               {
                  _loc49_ = _loc29_[_loc4_].getRotationOnPlate() - _loc29_[_loc4_ - 1].getRotationOnPlate();
               }
               false;
               false;
               if(_loc4_ == _loc29_.length - 1)
               {
                  true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  _loc50_ = _loc29_[0].getRotationOnPlate() - _loc29_[_loc4_].getRotationOnPlate();
               }
               else
               {
                  false;
                  false;
                  _loc50_ = _loc29_[_loc4_ + 1].getRotationOnPlate() - _loc29_[_loc4_].getRotationOnPlate();
                  true;
                  true;
               }
            }
            if(_loc49_ < 0)
            {
               false;
               false;
               _loc49_ += 360;
            }
            false;
            false;
            if(_loc50_ < 0)
            {
               false;
               false;
               _loc50_ += 360;
            }
            _loc51_ = (_loc49_ + _loc50_) / 2;
            true;
            true;
            _loc52_ = (_loc52_ = Math.abs(Math.round(_loc51_ - _loc32_))) - 3;
            if(_loc2_.hasBonusFurniture("build",_loc29_[_loc4_].type))
            {
               false;
               false;
               _loc52_ -= 2;
            }
            if(_loc52_ > 0)
            {
               false;
               false;
               _loc33_ += _loc52_;
            }
            _loc4_++;
            true;
            true;
         }
         0.5;
         true;
         true;
         true;
         true;
         true;
         true;
         _loc28_ -= 0.5 * _loc33_;
         false;
         false;
         true;
         true;
         true;
         true;
         false;
         false;
         true;
         true;
         class_5.method_25("Overall Angle Amount Off: " + _loc33_ + "*. Deduct " + 0.5 * _loc33_ + ", Distro Score = " + _loc28_ + "%");
         var _loc36_:Array = [];
         var _loc37_:Array = [];
         true;
         true;
         true;
         true;
         _loc4_ = 0;
         true;
         true;
         while(true)
         {
            false;
            false;
            if(_loc4_ >= _loc29_.length)
            {
               break;
            }
            if((_loc53_ = _loc36_.indexOf(_loc29_[_loc4_].getTypeString())) == -1)
            {
               _loc36_.push(_loc29_[_loc4_].getTypeString());
               _loc37_.push(1);
               true;
               true;
            }
            else
            {
               _loc99_ = (_loc97_ = _loc37_)[_loc98_ = _loc53_] + 1;
               false;
               false;
               _loc97_[_loc98_] = _loc99_;
               false;
               false;
            }
            _loc4_++;
         }
         true;
         true;
         true;
         true;
         class_5.method_25("Distro Sets: " + _loc36_.toString() + ", (" + _loc37_.toString() + ")");
         var _loc38_:Number = 0;
         _loc4_ = 0;
         while(_loc4_ < _loc36_.length)
         {
            _loc54_ = String(_loc36_[_loc4_]);
            _loc55_ = Number(_loc37_[_loc4_]);
            false;
            false;
            false;
            false;
            _loc56_ = (_loc29_.length - _loc55_) / _loc55_;
            _loc57_ = Math.floor(_loc56_);
            _loc58_ = 0;
            false;
            false;
            false;
            false;
            if(_loc56_ != _loc57_)
            {
               _loc58_ = Math.round(1 / (_loc56_ - _loc57_));
            }
            false;
            false;
            _loc59_ = 0;
            _loc60_ = [];
            _loc5_ = 0;
            while(_loc5_ < _loc58_)
            {
               _loc60_[_loc5_] = _loc57_;
               false;
               false;
               true;
               true;
               if(_loc5_ == 0)
               {
                  _loc99_ = (_loc97_ = _loc60_)[_loc98_ = _loc5_] + 1;
                  true;
                  true;
                  _loc97_[_loc98_] = _loc99_;
               }
               _loc5_++;
            }
            false;
            false;
            if(_loc58_ == 0)
            {
               _loc60_ = [_loc57_];
            }
            false;
            false;
            class_5.method_25(">> " + _loc54_ + ", " + _loc57_ + " between each, extra every " + _loc58_ + ": " + _loc60_.toString());
            false;
            false;
            _loc61_ = -1;
            true;
            true;
            _loc62_ = -1;
            _loc63_ = 0;
            true;
            true;
            _loc5_ = 0;
            while(_loc5_ < _loc29_.length)
            {
               if(_loc29_[_loc5_].getTypeString() == _loc54_)
               {
                  true;
                  true;
                  §§push(_loc63_ == _loc60_[0]);
                  if(_loc63_ == _loc60_[0])
                  {
                     false;
                     false;
                     §§pop();
                     §§push(_loc62_ != -1);
                  }
                  if(§§pop())
                  {
                     _loc61_ = _loc62_;
                     break;
                  }
                  true;
                  true;
                  _loc62_ = _loc5_;
                  _loc63_ = 0;
               }
               else if(_loc62_ != -1)
               {
                  true;
                  true;
                  true;
                  true;
                  false;
                  false;
                  _loc63_++;
               }
               _loc5_++;
            }
            false;
            false;
            _loc63_ = 0;
            _loc64_ = "";
            _loc5_ = 0;
            true;
            true;
            while(_loc5_ < _loc29_.length)
            {
               true;
               true;
               if((_loc65_ = _loc61_ + _loc5_) >= _loc29_.length)
               {
                  _loc65_ -= _loc29_.length;
               }
               if(_loc5_ != 0)
               {
                  if(_loc29_[_loc65_].getTypeString() == _loc54_)
                  {
                     if(_loc63_ != _loc60_[_loc59_])
                     {
                        true;
                        true;
                        false;
                        false;
                        true;
                        true;
                        false;
                        false;
                        true;
                        true;
                        false;
                        false;
                        class_5.method_25(">> BAD PATTERN " + _loc59_ + ": (on " + _loc65_ + "(" + _loc5_ + "), starting at " + _loc61_ + ") Was looking for " + _loc60_[_loc59_] + ", found " + _loc63_ + " instead.");
                        true;
                        true;
                        class_5.method_25(">> (Found Between: " + _loc64_ + ")");
                        true;
                        true;
                        _loc38_++;
                        break;
                     }
                     false;
                     false;
                     _loc63_ = 0;
                     _loc64_ = "";
                     if(++_loc59_ >= _loc60_.length)
                     {
                        false;
                        false;
                        true;
                        true;
                        _loc59_ -= _loc60_.length;
                     }
                  }
                  else
                  {
                     _loc63_++;
                     true;
                     true;
                     _loc64_ += _loc29_[_loc65_].getTypeString() + ", ";
                     true;
                     true;
                  }
               }
               _loc5_++;
               true;
               true;
            }
            _loc4_++;
         }
         if(_loc31_ > _loc36_.length)
         {
            _loc66_ = _loc31_ - _loc36_.length;
            true;
            true;
            _loc38_ += _loc66_;
            class_5.method_25("MISSING ALL-OVER ITEMS TO GRADE. " + _loc66_ + ".");
         }
         40;
         var _loc40_:Number;
         if((_loc40_ = _loc38_ / Math.max(_loc38_,_loc36_.length)) > 0)
         {
            true;
            true;
            true;
            true;
            false;
            false;
            false;
            false;
            _loc28_ -= _loc40_ * 40;
            true;
            true;
            false;
            false;
            class_5.method_25("WRONG PATTERNS: " + _loc38_ + "/" + _loc36_.length + ". Distro Score = " + _loc28_ + "%");
         }
         var _loc41_:Array = [FoodData.DISTRO_LEFT,FoodData.DISTRO_RIGHT];
         var _loc42_:int = 0;
         true;
         true;
         while(_loc42_ < _loc41_.length)
         {
            _loc67_ = String(_loc41_[_loc42_]);
            _loc68_ = _loc8_.getItemsOfDistro(_loc7_,_loc67_);
            false;
            false;
            _loc69_ = _loc7_.getTypeAmountForDistro(_loc67_);
            class_5.method_25("Things ordered on this side: " + _loc68_.length);
            if(_loc68_.length > 0)
            {
               _loc75_ = _loc8_.getItemsOnHalf(_loc7_,_loc67_);
               class_5.method_25("Everything on this side: " + _loc75_.length);
               true;
               true;
               false;
               false;
               _loc76_ = 180 / _loc7_.getAmountForDistro(_loc67_,true);
               _loc77_ = 0;
               true;
               true;
               class_5.method_25(_loc67_ + " >>> Looking for Side Angle: " + _loc76_ + "*");
               false;
               false;
               _loc4_ = 0;
               while(_loc4_ < _loc75_.length)
               {
                  _loc79_ = 0;
                  _loc80_ = 0;
                  if(_loc75_.length > 1)
                  {
                     if(_loc4_ == 0)
                     {
                        false;
                        false;
                        _loc79_ = _loc75_[_loc4_ + 1].getRotationOnPlate() - _loc75_[_loc4_].getRotationOnPlate();
                     }
                     else
                     {
                        _loc79_ = _loc75_[_loc4_].getRotationOnPlate() - _loc75_[_loc4_ - 1].getRotationOnPlate();
                        false;
                        false;
                     }
                     if(_loc4_ == _loc75_.length - 1)
                     {
                        _loc80_ = _loc75_[_loc4_].getRotationOnPlate() - _loc75_[_loc4_ - 1].getRotationOnPlate();
                     }
                     else
                     {
                        _loc80_ = _loc75_[_loc4_ + 1].getRotationOnPlate() - _loc75_[_loc4_].getRotationOnPlate();
                     }
                  }
                  false;
                  false;
                  if(_loc79_ < 0)
                  {
                     _loc79_ += 360;
                  }
                  if(_loc80_ < 0)
                  {
                     _loc80_ += 360;
                     false;
                     false;
                  }
                  _loc81_ = (_loc79_ + _loc80_) / 2;
                  false;
                  false;
                  _loc82_ = (_loc82_ = Math.abs(Math.round(_loc81_ - _loc76_))) - 3;
                  if(_loc2_.hasBonusFurniture("build",_loc75_[_loc4_].type))
                  {
                     _loc82_ -= 2;
                  }
                  if(_loc82_ > 0)
                  {
                     false;
                     false;
                     _loc77_ += _loc82_;
                     false;
                     false;
                  }
                  _loc4_++;
                  false;
                  false;
               }
               _loc78_ = 0.5;
               true;
               true;
               _loc28_ -= _loc78_ * _loc77_;
               false;
               false;
               false;
               false;
               true;
               true;
               false;
               false;
               false;
               false;
               class_5.method_25(_loc67_ + ": Overall Side Angle Amount Off: " + _loc77_ + "*. Deduct " + _loc78_ * _loc77_ + ", Distro Score = " + _loc28_ + "%");
            }
            _loc70_ = [];
            _loc71_ = [];
            _loc4_ = 0;
            while(true)
            {
               false;
               false;
               if(_loc4_ >= _loc68_.length)
               {
                  break;
               }
               false;
               false;
               if((_loc83_ = _loc70_.indexOf(_loc68_[_loc4_].getTypeString())) == -1)
               {
                  _loc70_.push(_loc68_[_loc4_].getTypeString());
                  false;
                  false;
                  _loc71_.push(1);
                  true;
                  true;
               }
               else
               {
                  ++_loc71_[_loc83_];
                  false;
                  false;
               }
               _loc4_++;
            }
            true;
            true;
            class_5.method_25(_loc67_ + " >>> Distro Sets: " + _loc70_.toString() + ", (" + _loc71_.toString() + ")");
            _loc72_ = 0;
            true;
            true;
            _loc4_ = 0;
            while(_loc4_ < _loc70_.length)
            {
               _loc84_ = String(_loc70_[_loc4_]);
               false;
               false;
               _loc85_ = Number(_loc71_[_loc4_]);
               true;
               true;
               false;
               false;
               _loc86_ = (_loc7_.getAmountForDistro(_loc67_,true) - _loc85_) / _loc85_;
               _loc87_ = Math.floor(_loc86_);
               false;
               false;
               _loc88_ = 0;
               false;
               false;
               if(_loc86_ != _loc87_)
               {
                  false;
                  false;
                  _loc88_ = Math.round(1 / (_loc86_ - _loc87_));
                  true;
                  true;
               }
               _loc89_ = 0;
               _loc90_ = [];
               false;
               false;
               _loc5_ = 0;
               while(_loc5_ < _loc88_)
               {
                  _loc90_[_loc5_] = _loc87_;
                  true;
                  true;
                  if(_loc5_ == 0)
                  {
                     _loc99_ = (_loc97_ = _loc90_)[_loc98_ = _loc5_] + 1;
                     true;
                     true;
                     _loc97_[_loc98_] = _loc99_;
                  }
                  _loc5_++;
               }
               if(_loc88_ == 0)
               {
                  _loc90_ = [_loc87_];
               }
               false;
               false;
               true;
               true;
               true;
               true;
               class_5.method_25(_loc67_ + " >> " + _loc84_ + ", " + _loc87_ + " between each, extra every " + _loc88_ + ": " + _loc90_.toString());
               true;
               true;
               _loc91_ = -1;
               _loc92_ = -1;
               _loc93_ = 0;
               false;
               false;
               _loc5_ = 0;
               while(true)
               {
                  if(_loc5_ >= _loc75_.length)
                  {
                     false;
                     false;
                     break;
                  }
                  if(_loc75_[_loc5_].getTypeString() == _loc84_)
                  {
                     if(_loc93_ == _loc90_[0] && _loc92_ != -1)
                     {
                        _loc91_ = _loc92_;
                        break;
                     }
                     false;
                     false;
                     _loc92_ = _loc5_;
                     _loc93_ = 0;
                  }
                  else
                  {
                     true;
                     true;
                     if(_loc92_ != -1)
                     {
                        _loc93_++;
                     }
                  }
                  _loc5_++;
               }
               _loc93_ = 0;
               false;
               false;
               true;
               true;
               _loc94_ = "";
               false;
               false;
               if(_loc91_ == -1)
               {
                  class_5.method_25(">> SIDE MISSING PATTERN -- COULD NOT FIND " + _loc84_ + ".");
                  true;
                  true;
                  _loc72_++;
               }
               else
               {
                  _loc5_ = 0;
                  true;
                  true;
                  while(_loc5_ < _loc75_.length)
                  {
                     true;
                     true;
                     false;
                     false;
                     if((_loc95_ = _loc91_ + _loc5_) < _loc75_.length)
                     {
                        if(_loc5_ != 0)
                        {
                           if(_loc75_[_loc95_].getTypeString() == _loc84_)
                           {
                              if(_loc93_ != _loc90_[_loc89_])
                              {
                                 true;
                                 true;
                                 true;
                                 true;
                                 class_5.method_25(">> SIDE BAD PATTERN " + _loc89_ + ": (on " + _loc95_ + "(" + _loc5_ + "), starting at " + _loc91_ + ") Was looking for " + _loc90_[_loc89_] + ", found " + _loc93_ + " instead.");
                                 class_5.method_25(">> (Found Between: " + _loc94_ + ")");
                                 true;
                                 true;
                                 _loc72_++;
                                 false;
                                 false;
                                 break;
                              }
                              _loc93_ = 0;
                              _loc94_ = "";
                              if(++_loc89_ >= _loc90_.length)
                              {
                                 _loc89_ -= _loc90_.length;
                                 false;
                                 false;
                              }
                           }
                           else
                           {
                              _loc93_++;
                              _loc94_ += _loc75_[_loc95_].getTypeString() + ", ";
                              false;
                              false;
                           }
                        }
                     }
                     _loc5_++;
                  }
               }
               _loc4_++;
            }
            if(_loc69_ > _loc70_.length)
            {
               _loc96_ = _loc69_ - _loc70_.length;
               false;
               false;
               true;
               true;
               _loc72_ += _loc96_;
               false;
               false;
               false;
               false;
               class_5.method_25("MISSING SIDE ITEMS TO GRADE. " + _loc96_ + ".");
               false;
               false;
            }
            _loc73_ = 30;
            if((_loc74_ = _loc72_ / Math.max(_loc72_,_loc70_.length)) > 0)
            {
               _loc28_ -= _loc74_ * _loc73_;
               true;
               true;
               class_5.method_25(_loc67_ + ": WRONG SIDE PATTERNS: " + _loc72_ + "/" + _loc70_.length + ". Distro Score = " + _loc28_ + "%");
            }
            _loc42_++;
         }
         false;
         false;
         var _loc43_:Number = _loc1_.getDipDistroScore();
         var _loc44_:Number = 100 - _loc43_;
         15;
         true;
         true;
         false;
         false;
         _loc28_ -= _loc44_ / 100 * 15;
         false;
         false;
         false;
         false;
         class_5.method_25(">> Dip Distro Score: " + _loc43_ + ". Distro Score = " + _loc28_ + "%");
         true;
         true;
         false;
         false;
         if(_loc28_ < 0 || isNaN(_loc28_))
         {
            _loc28_ = 0;
            true;
            true;
         }
         _loc28_ = Math.round(_loc28_);
         true;
         true;
         class_5.method_25("---- Distro Score: " + _loc28_ + "%");
         true;
         true;
         false;
         false;
         true;
         true;
         true;
         true;
         false;
         false;
         _loc1_.buildScore = _loc9_ * 0.5 + _loc28_ * 0.5;
         if(_loc9_ <= 20)
         {
            _loc1_.buildScore = _loc9_;
         }
         if(_loc8_.splatsAdded != 0)
         {
            false;
            false;
            if(_loc8_.splatsAdded <= 2)
            {
               true;
               true;
               true;
               true;
               --_loc1_.buildScore;
            }
            else
            {
               true;
               true;
               if(_loc8_.splatsAdded <= 4)
               {
                  false;
                  false;
                  _loc1_.buildScore -= 2;
               }
               else
               {
                  false;
                  false;
                  if(_loc8_.splatsAdded == 5)
                  {
                     false;
                     false;
                     _loc1_.buildScore -= 3;
                     false;
                     false;
                  }
                  else
                  {
                     true;
                     true;
                     if(_loc8_.splatsAdded == 6)
                     {
                        false;
                        false;
                        true;
                        true;
                        _loc1_.buildScore -= 4;
                        true;
                        true;
                     }
                     else if(_loc8_.splatsAdded <= 8)
                     {
                        _loc1_.buildScore -= 5;
                     }
                     else
                     {
                        false;
                        false;
                        _loc1_.buildScore -= 6;
                     }
                  }
               }
            }
         }
         if(_loc8_.splatsAdded > 0)
         {
            class_5.method_25("---- Found " + _loc8_.splatsAdded + " Sauce Splats.");
         }
         true;
         true;
         §§push(_loc1_.buildScore < 0);
         if(!(_loc1_.buildScore < 0))
         {
            true;
            true;
            §§pop();
            §§push(isNaN(_loc1_.buildScore));
         }
         if(§§pop())
         {
            _loc1_.buildScore = 0;
         }
         _loc1_.buildScore = Math.ceil(_loc1_.buildScore);
         class_5.method_25("Build Score: " + _loc1_.buildScore + "% ----------------------------------------------------\n");
      }
      
      public function getDipDistroScore() : Number
      {
         var _loc7_:int = 0;
         var _loc20_:DipItem = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc1_:GiveOrderScreen = this;
         var _loc2_:Number = 100;
         var _loc3_:UserData = _loc1_.gameObj.userData;
         var _loc4_:CustomerData;
         var _loc5_:CustomerOrder = (_loc4_ = _loc1_.gameObj.customerData).getCustomerOrderData(_loc1_.currentCustomer.customerType);
         var _loc6_:FoodPlate = _loc1_.gameObj.var_11.currentPlate;
         133;
         var _loc9_:Number = _loc5_.dips.length;
         var _loc10_:Number = _loc6_.dipItems.length;
         false;
         false;
         false;
         false;
         class_5.method_25(">>>>> Dips: " + _loc10_ + "/" + _loc9_ + " dips.");
         true;
         true;
         var _loc11_:Number = 360 / _loc10_;
         var _loc12_:Array = [];
         var _loc13_:Array = [];
         var _loc14_:Array = [];
         var _loc15_:Number = 0;
         true;
         true;
         _loc7_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc7_ >= _loc6_.dipItems.length)
            {
               break;
            }
            _loc21_ = (_loc20_ = _loc6_.dipItems[_loc7_]).clip.x - _loc20_.plateCenterX;
            _loc22_ = _loc20_.clip.y - _loc20_.plateCenterY;
            _loc23_ = Math.sqrt(_loc21_ * _loc21_ + _loc22_ * _loc22_);
            false;
            false;
            _loc24_ = Math.atan2(_loc22_,_loc21_);
            _loc25_ = class_10.radsToDegrees(_loc24_);
            _loc12_.push(Math.round(_loc25_));
            _loc13_.push(Math.round(_loc23_));
            _loc14_.push(_loc20_.type);
            _loc7_++;
         }
         _loc12_.sort(Array.NUMERIC);
         if(_loc12_.length > 2)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc12_.length)
            {
               _loc26_ = 0;
               true;
               true;
               true;
               true;
               _loc27_ = 0;
               if(_loc7_ == 0)
               {
                  _loc26_ = _loc12_[_loc7_] - _loc12_[_loc12_.length - 1];
               }
               else
               {
                  _loc26_ = _loc12_[_loc7_] - _loc12_[_loc7_ - 1];
                  true;
                  true;
               }
               if(_loc7_ == _loc12_.length - 1)
               {
                  _loc27_ = _loc12_[0] - _loc12_[_loc7_];
               }
               else
               {
                  false;
                  false;
                  _loc27_ = _loc12_[_loc7_ + 1] - _loc12_[_loc7_];
               }
               if(_loc26_ < 0)
               {
                  false;
                  false;
                  true;
                  true;
                  false;
                  false;
                  _loc26_ += 360;
               }
               if(_loc27_ < 0)
               {
                  _loc27_ += 360;
                  true;
                  true;
               }
               false;
               false;
               _loc28_ = (_loc26_ + _loc27_) / 2;
               true;
               true;
               false;
               false;
               _loc29_ = (_loc29_ = Math.abs(Math.round(_loc28_ - _loc11_))) - 3;
               false;
               false;
               if(_loc3_.hasBonusFurniture("build",_loc14_[_loc7_]))
               {
                  true;
                  true;
                  _loc29_ -= 5;
               }
               false;
               false;
               if(_loc29_ < 0)
               {
                  _loc29_ = 0;
                  true;
                  true;
               }
               false;
               false;
               _loc15_ += _loc29_;
               _loc7_++;
            }
         }
         else if(_loc12_.length == 2)
         {
            false;
            false;
            _loc30_ = _loc12_[1] - _loc12_[0];
            true;
            true;
            _loc31_ = (_loc31_ = Math.abs(Math.round(_loc30_ - _loc11_))) - 5;
            false;
            false;
            if(_loc3_.hasBonusFurniture("build",_loc14_[0]) || _loc3_.hasBonusFurniture("build",_loc14_[1]))
            {
               false;
               false;
               _loc31_ -= 10;
            }
            if(_loc31_ < 0)
            {
               _loc31_ = 0;
            }
            _loc15_ += _loc31_;
            false;
            false;
         }
         else if(_loc12_.length == 1)
         {
         }
         true;
         true;
         var _loc16_:Number = _loc15_ / 360;
         var _loc17_:Number = Math.round((1 - _loc16_) * 100);
         true;
         true;
         class_5.method_25("      -- Angles: " + _loc17_ + "% Correct.");
         var _loc18_:Number = 0;
         false;
         false;
         if(_loc13_.length == 1)
         {
            if((_loc33_ = (_loc32_ = Math.abs(_loc13_[0])) / 133) > 1)
            {
               _loc33_ = 1;
            }
            else
            {
               false;
               false;
               if(_loc33_ < 0)
               {
                  _loc33_ = 0;
               }
            }
            true;
            true;
            false;
            false;
            _loc34_ = (_loc34_ = Math.round((1 - _loc33_) * 100)) + 3;
            if(_loc3_.hasBonusFurniture("build",_loc14_[0]))
            {
               true;
               true;
               _loc34_ += 5;
               true;
               true;
            }
            true;
            true;
            if(_loc34_ > 100)
            {
               _loc34_ = 100;
            }
            false;
            false;
            _loc18_ += _loc34_;
         }
         else
         {
            _loc7_ = 0;
            while(_loc7_ < _loc13_.length)
            {
               false;
               false;
               true;
               true;
               _loc35_ = 133 / 2;
               true;
               true;
               false;
               false;
               false;
               false;
               if((_loc37_ = (_loc36_ = Math.abs(_loc35_ - _loc13_[_loc7_])) / _loc35_) > 1)
               {
                  false;
                  false;
                  _loc37_ = 1;
                  false;
                  false;
               }
               else
               {
                  true;
                  true;
                  if(_loc37_ < 0)
                  {
                     true;
                     true;
                     _loc37_ = 0;
                  }
               }
               _loc38_ = Math.round((1 - _loc37_) * 100);
               true;
               true;
               _loc18_ += _loc38_;
               _loc7_++;
            }
         }
         var _loc19_:Number = Math.ceil(_loc18_ / _loc13_.length);
         class_5.method_25("      -- Distances: " + _loc19_ + "% Correct.");
         false;
         false;
         if(_loc12_.length == 1)
         {
            true;
            true;
            _loc2_ = _loc19_;
            true;
            true;
         }
         else
         {
            _loc2_ = _loc17_;
            true;
            true;
         }
         if(_loc10_ != _loc9_)
         {
            true;
            true;
            _loc39_ = Math.abs(_loc10_ - _loc9_);
            _loc40_ = _loc2_;
            _loc2_ = Math.ceil(_loc40_ * Math.min(_loc10_,_loc9_) / Math.max(_loc10_,_loc9_));
            true;
            true;
            false;
            false;
            true;
            true;
            false;
            false;
            class_5.method_25("     -- " + _loc39_ + " Difference in Amount. " + _loc40_ + "% ==> " + _loc2_ + "%");
         }
         else
         {
            false;
            false;
            class_5.method_25("     -- " + _loc2_ + "% Overall Correct.");
         }
         return _loc2_;
      }
      
      public function gradeSaucing() : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc12_:Boolean = false;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc1_:GiveOrderScreen = this;
         var _loc2_:CustomerData = _loc1_.gameObj.customerData;
         false;
         false;
         _loc1_.sauceScore = 100;
         class_5.method_25("Grade Saucing -------------------------------------------------------------------------");
         var _loc5_:CustomerOrder = _loc2_.getCustomerOrderData(_loc1_.currentCustomer.customerType);
         var _loc6_:FoodPlate = _loc1_.gameObj.var_11.currentPlate;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         var _loc10_:Number = 0;
         var _loc11_:Vector.<FoodItem> = _loc6_.getMeatItems();
         _loc3_ = 0;
         while(_loc3_ < _loc11_.length)
         {
            _loc12_ = false;
            _loc4_ = 0;
            false;
            false;
            while(_loc4_ < _loc5_.wings.length)
            {
               true;
               true;
               true;
               true;
               true;
               true;
               §§push(_loc11_[_loc3_].type == _loc5_.wings[_loc4_][0] && _loc11_[_loc3_].sauceType == _loc5_.wings[_loc4_][3]);
               if(!(_loc11_[_loc3_].type == _loc5_.wings[_loc4_][0] && _loc11_[_loc3_].sauceType == _loc5_.wings[_loc4_][3]))
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  true;
                  true;
                  §§push(_loc11_[_loc3_].subMeatType == _loc5_.wings[_loc4_][0]);
                  if(_loc11_[_loc3_].subMeatType == _loc5_.wings[_loc4_][0])
                  {
                     true;
                     true;
                     §§pop();
                     §§push(_loc11_[_loc3_].subSauceType == _loc5_.wings[_loc4_][3]);
                  }
               }
               if(§§pop())
               {
                  _loc13_ = 0;
                  _loc14_ = FoodData.getSauceNumberAmount(_loc11_[_loc3_].sauceAmountValue);
                  _loc15_ = _loc11_[_loc3_].orderMeatAmount;
                  false;
                  false;
                  false;
                  false;
                  if((_loc16_ = Math.abs(_loc14_ - _loc15_)) == 11)
                  {
                     false;
                     false;
                     _loc16_ = 1;
                  }
                  false;
                  false;
                  true;
                  true;
                  _loc13_ = 1 - _loc16_ / 12;
                  false;
                  false;
                  class_5.method_25(">> Wing: Saucing=" + _loc13_ + ", Spin=" + _loc11_[_loc3_].sauceSpinValue + ", Tumble: " + _loc11_[_loc3_].sauceTumbleValue);
                  true;
                  true;
                  false;
                  false;
                  if((_loc17_ = (_loc17_ = _loc11_[_loc3_].sauceSpinValue) + 0.02) > 1)
                  {
                     _loc17_ = 1;
                  }
                  false;
                  false;
                  if((_loc18_ = (_loc18_ = _loc11_[_loc3_].sauceTumbleValue) + 0.02) > 1)
                  {
                     false;
                     false;
                     false;
                     false;
                     _loc18_ = 1;
                     true;
                     true;
                  }
                  false;
                  false;
                  _loc13_ = 1 - (1 - _loc13_) * 2;
                  _loc17_ = 1 - (1 - _loc17_) * 2;
                  false;
                  false;
                  _loc18_ = 1 - (1 - _loc18_) * 2;
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
                  false;
                  false;
                  _loc19_ = (_loc13_ + _loc17_ + _loc18_) * 100 / 3;
                  if(_loc1_.gameObj.userData.hasBonusFurniture("sauce",_loc11_[_loc3_].sauceType))
                  {
                     true;
                     true;
                     false;
                     false;
                     if((_loc19_ += 2) > 100)
                     {
                        _loc19_ = 100;
                     }
                  }
                  false;
                  false;
                  §§push(_loc11_[_loc3_].type == _loc5_.wings[_loc4_][0]);
                  if(_loc11_[_loc3_].type == _loc5_.wings[_loc4_][0])
                  {
                     true;
                     true;
                     §§pop();
                     §§push(_loc11_[_loc3_].sauceType == _loc5_.wings[_loc4_][3]);
                  }
                  if(!§§pop())
                  {
                     false;
                     false;
                     true;
                     true;
                     false;
                     false;
                     _loc19_ -= 50;
                     _loc9_++;
                  }
                  _loc7_ += _loc19_;
                  true;
                  true;
                  _loc8_++;
                  false;
                  false;
                  _loc12_ = true;
                  break;
               }
               _loc4_++;
            }
            if(!_loc12_)
            {
               _loc8_++;
               _loc10_++;
            }
            _loc3_++;
         }
         true;
         true;
         if(_loc8_ == 0)
         {
            _loc1_.sauceScore = 0;
         }
         else
         {
            _loc1_.sauceScore = Math.round(_loc7_ / _loc8_);
         }
         true;
         true;
         false;
         false;
         class_5.method_25("Found " + _loc8_ + " meats. " + _loc9_ + " were substitutes, " + _loc10_ + " were wrong.");
         true;
         true;
         if(_loc1_.sauceScore < 0 || isNaN(_loc1_.sauceScore))
         {
            _loc1_.sauceScore = 0;
         }
         _loc1_.sauceScore = Math.ceil(_loc1_.sauceScore);
         class_5.method_25("Sauce Score: " + _loc1_.sauceScore + "% ----------------------------------------------------\n");
      }
      
      public function finishGivingOrder(param1:Boolean = false) : void
      {
         var _loc2_:GiveOrderScreen = this;
         _loc2_.isPresentingOrder = false;
         if(param1)
         {
            false;
            false;
            false;
            false;
            _loc2_.gameObj.hud.startTransition("order");
         }
         else
         {
            _loc2_.gameObj.hud.startTransition("build");
         }
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc1_:GiveOrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new orderBackdropMC();
         _loc4_ = 1;
         while(_loc4_ <= 10)
         {
            _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
            false;
            false;
            _loc4_++;
         }
         _loc4_ = 1;
         while(_loc4_ <= 7)
         {
            _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc2_.lobbyFlooring);
            true;
            true;
            false;
            false;
            _loc4_++;
         }
         _loc5_.holder.trim.gotoAndStop(_loc2_.lobbyWallpaper);
         _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
         false;
         false;
         _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
         var _loc6_:BitmapData;
         (_loc6_ = new BitmapData(706,552,true,0)).draw(_loc5_,null,null,null,new Rectangle(0,0,706,552));
         _loc3_ = new Bitmap(_loc6_);
         _loc5_ = null;
         return _loc3_;
      }
      
      public function initStationUpgrades() : void
      {
         false;
         true;
         var _loc1_:GiveOrderScreen = this;
         if(_loc1_.backdropBitmap != null)
         {
            true;
            true;
            _loc1_.backdropBitmap.bitmapData.dispose();
            try
            {
               _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
               false;
               false;
            }
            catch(err:Error)
            {
            }
            _loc1_.backdropBitmap = null;
         }
         _loc1_.backdropBitmap = _loc1_.createLobbyBackdropBitmap();
         _loc1_.clip.backdrop_holder.addChild(_loc1_.backdropBitmap);
         _loc1_.backdropBitmap.x = -24;
         _loc1_.backdropBitmap.y = -40;
         false;
         false;
         _loc1_.countertopMC = new giveorder_countertop();
         _loc1_.countertopMC.gotoAndStop(_loc1_.gameObj.userData.lobbyWallpaper);
         _loc1_.clip.countertop.addChild(_loc1_.countertopMC);
      }
   }
}
