package wingGame.screens
{
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import package_2.class_5;
   import package_4.*;
   import wingGame.data.UserData;
   import wingGame.managers.*;
   import wingGame.models.Customer;
   import wingGame.models.Ticket;
   import wingGame.models.Worker;
   
   public class TakeOrderScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var customerScale:Number = 1.14;
      
      public var customerX:Number = 280;
      
      public var customerY:Number = 95;
      
      public var stepArray:Array;
      
      public var whichStep:Number = -1;
      
      public var stepTimer:Number = 0;
      
      public var lastStepTime:Number = 0;
      
      public var shorterTimingSpacing:Number = 15;
      
      public var timingSpacing:Number = 40;
      
      public var useTimingSpacing:Number = 15;
      
      public var seal0Spacing:Number = 40;
      
      public var seal1Spacing:Number = 30;
      
      public var seal2Spacing:Number = 20;
      
      public var seal3Spacing:Number = 10;
      
      public var isPlacingOrder:Boolean = false;
      
      public var currentTicket:Ticket;
      
      public var currentCustomer:Customer;
      
      public var timeActivated:Number = -1;
      
      public var triedToRestart:Boolean = false;
      
      public var backdropBitmap:Bitmap = null;
      
      public var countertopMC:MovieClip = null;
      
      public var worker:Worker = null;
      
      public function TakeOrderScreen(param1:class_4)
      {
         this.stepArray = [];
         false;
         false;
         super();
         var _loc2_:TakeOrderScreen = this;
         true;
         true;
         _loc2_.gameObj = param1;
         true;
         true;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc1_:TakeOrderScreen = this;
         _loc1_.clip = new takeOrderMC();
         false;
         false;
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip,_loc1_.gameObj.workerData,-10,192,1.14,true);
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:TakeOrderScreen = this;
         false;
         false;
         if(_loc1_.countertopMC != null)
         {
            _loc1_.clip.countertop.removeChild(_loc1_.countertopMC);
            _loc1_.countertopMC = null;
            false;
            false;
         }
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
         _loc1_.worker.destroy();
         true;
         true;
         _loc1_.worker = null;
         true;
         true;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.clip = null;
      }
      
      public function activateScreen() : void
      {
         var _loc1_:TakeOrderScreen = this;
         false;
         false;
         if(!_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.addChild(_loc1_.clip);
         }
         _loc1_.currentCustomer = _loc1_.gameObj.var_13.orderline[0];
         _loc1_.currentCustomer.moveToTakeOrder();
         _loc1_.initializeOrder();
         _loc1_.timeActivated = _loc1_.gameObj.var_28.gameplayTimer;
         _loc1_.gameObj.soundManager.switchMusic("order");
         true;
         true;
         _loc1_.isActive = true;
      }
      
      public function deactivateScreen() : void
      {
         false;
         true;
         var _loc1_:TakeOrderScreen = this;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         if(_loc1_.currentCustomer != null)
         {
            _loc1_.currentCustomer.moveToLeaveLine();
            _loc1_.currentCustomer = null;
         }
         false;
         false;
         if(_loc1_.currentTicket != null)
         {
            _loc1_.currentTicket.finishDrawingTicket();
            _loc1_.currentTicket = null;
         }
         _loc1_.timeActivated = -1;
         true;
         true;
         _loc1_.triedToRestart = false;
         _loc1_.isActive = false;
      }
      
      public function initializeOrder() : void
      {
         var _loc8_:Number = NaN;
         var _loc1_:TakeOrderScreen = this;
         true;
         true;
         _loc1_.isPlacingOrder = true;
         true;
         true;
         _loc1_.stepTimer = 0;
         false;
         false;
         _loc1_.lastStepTime = 0;
         true;
         true;
         _loc1_.whichStep = -1;
         _loc1_.stepArray = [];
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.currentCustomer.order.length)
         {
            true;
            true;
            false;
            false;
            true;
            true;
            if(_loc1_.currentCustomer.order[_loc2_].length == 1)
            {
               false;
               false;
               true;
               true;
               _loc1_.stepArray.push([_loc2_]);
            }
            else
            {
               false;
               false;
               _loc8_ = 0;
               while(_loc8_ < _loc1_.currentCustomer.order[_loc2_].length)
               {
                  true;
                  true;
                  if(_loc1_.currentCustomer.order[_loc2_][_loc8_] != "")
                  {
                     false;
                     false;
                     _loc1_.stepArray.push([_loc2_,_loc8_]);
                     false;
                     false;
                  }
                  true;
                  true;
                  _loc8_++;
               }
            }
            _loc2_++;
         }
         _loc1_.clip.bubble.visible = false;
         false;
         false;
         _loc1_.currentTicket = _loc1_.gameObj.var_18.addTicket(_loc1_.currentCustomer.customerType);
         true;
         true;
         _loc1_.gameObj.soundManager.playSound("dropticket.wav");
         _loc1_.clip.customername_txt.text = String(_loc1_.currentCustomer.customerName);
         var _loc3_:Number = _loc1_.gameObj.userData.getCustomerStars(_loc1_.currentCustomer.customerType);
         var _loc4_:Number = _loc1_.gameObj.userData.getCustomerSeal(_loc1_.currentCustomer.customerType);
         var _loc5_:int = 1;
         while(_loc5_ <= 5)
         {
            false;
            false;
            false;
            false;
            if(_loc3_ >= _loc5_)
            {
               false;
               false;
               _loc1_.clip.stars["star" + _loc5_].gotoAndStop(2);
               false;
               false;
            }
            else
            {
               _loc1_.clip.stars["star" + _loc5_].gotoAndStop(1);
            }
            _loc5_++;
         }
         if(_loc4_ == 0)
         {
            _loc1_.clip.stars.currentseal.visible = false;
         }
         else
         {
            _loc1_.clip.stars.currentseal.visible = true;
            _loc1_.clip.stars.currentseal.gotoAndStop(_loc4_);
            true;
            true;
         }
         _loc1_.clip.stars.award.gotoAndStop(1);
         true;
         true;
         if(_loc1_.currentCustomer.isCloser)
         {
            _loc1_.clip.bubble.gotoAndStop("closer");
         }
         else
         {
            _loc1_.clip.bubble.gotoAndStop("normal");
         }
         var _loc6_:GlowFilter = _loc1_.clip.customername_txt.filters[0];
         if(_loc1_.currentCustomer.isCloser)
         {
            _loc6_.color = 13830400;
         }
         else
         {
            _loc6_.color = 3365915;
         }
         _loc1_.clip.customername_txt.filters = [_loc6_];
         true;
         true;
         false;
         false;
         false;
         false;
         var _loc7_:Number;
         if((_loc7_ = _loc1_.gameObj.var_28.gameplayTimer / _loc1_.gameObj.var_78) > 0.98)
         {
            _loc1_.clip.bg.gotoAndStop(7);
         }
         else
         {
            false;
            false;
            if(_loc7_ > 0.8)
            {
               _loc1_.clip.bg.gotoAndStop(6);
            }
            else if(_loc7_ > 0.65)
            {
               _loc1_.clip.bg.gotoAndStop(5);
            }
            else if(_loc7_ > 0.5)
            {
               _loc1_.clip.bg.gotoAndStop(4);
            }
            else
            {
               false;
               false;
               if(_loc7_ > 0.35)
               {
                  _loc1_.clip.bg.gotoAndStop(3);
               }
               else
               {
                  true;
                  true;
                  if(_loc7_ > 0.2)
                  {
                     _loc1_.clip.bg.gotoAndStop(2);
                  }
                  else
                  {
                     _loc1_.clip.bg.gotoAndStop(1);
                  }
               }
            }
         }
         _loc1_.worker.playAnimation("starttakeorder");
         false;
         false;
         if(_loc4_ == 0)
         {
            false;
            false;
            _loc1_.timingSpacing = _loc1_.seal0Spacing;
         }
         else if(_loc4_ == 1)
         {
            _loc1_.timingSpacing = _loc1_.seal1Spacing;
            true;
            true;
         }
         else
         {
            false;
            false;
            if(_loc4_ == 2)
            {
               _loc1_.timingSpacing = _loc1_.seal2Spacing;
               false;
               false;
            }
            else if(_loc4_ == 3)
            {
               _loc1_.timingSpacing = _loc1_.seal3Spacing;
               true;
               true;
            }
         }
         false;
         false;
         false;
         false;
         if(_loc1_.currentCustomer.customerType == 1 && !_loc1_.gameObj.userData.hasTrainedCritic)
         {
            true;
            true;
            false;
            false;
            _loc1_.gameObj.hud.showContextTraining("critic");
            false;
            false;
            _loc1_.gameObj.userData.hasTrainedCritic = true;
         }
         else if(_loc1_.currentCustomer.isCloser && !_loc1_.gameObj.userData.hasTrainedCloser)
         {
            false;
            false;
            _loc1_.gameObj.hud.showContextTraining("closer");
            _loc1_.gameObj.userData.hasTrainedCloser = true;
         }
      }
      
      public function updateScreen() : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:TakeOrderScreen = this;
         true;
         true;
         if(_loc1_.isPlacingOrder && !_loc1_.gameObj.var_56 && _loc1_.isActive)
         {
            false;
            false;
            false;
            false;
            ++_loc1_.stepTimer;
            true;
            true;
            true;
            true;
            if(_loc1_.currentCustomer.order == null || _loc1_.currentCustomer.order.length == 0)
            {
               _loc1_.currentCustomer.order = _loc1_.gameObj.customerData.getCustomerOrder(_loc1_.currentCustomer.customerType);
            }
            false;
            false;
            true;
            true;
            if(_loc1_.stepTimer >= _loc1_.useTimingSpacing)
            {
               true;
               true;
               var _loc9_:*;
               var _loc10_:* = (_loc9_ = _loc1_).whichStep + 1;
               false;
               false;
               _loc9_.whichStep = _loc10_;
               true;
               true;
               if(_loc1_.whichStep >= 0 && _loc1_.whichStep < _loc1_.stepArray.length)
               {
                  false;
                  false;
                  _loc1_.useTimingSpacing = _loc1_.timingSpacing;
                  if(_loc1_.whichStep == 0)
                  {
                     _loc1_.currentCustomer.clip.gotoAndPlay("takeorder");
                  }
                  _loc1_.clip.bubble.visible = true;
                  _loc1_.gameObj.soundManager.playSound("talkbubble.wav");
                  if(_loc1_.stepArray[_loc1_.whichStep].length == 1)
                  {
                     false;
                     false;
                     _loc3_ = Number(_loc1_.stepArray[_loc1_.whichStep][0]);
                     true;
                     true;
                     true;
                     true;
                     false;
                     false;
                     true;
                     true;
                     _loc4_ = String(_loc1_.currentCustomer.order[_loc3_][0]);
                     _loc1_.clip.bubble.clip.gotoAndStop(_loc4_);
                     false;
                     false;
                     _loc1_.clip.bubble.bg.gotoAndPlay(1);
                     _loc1_.clip.bubble.bg2.gotoAndPlay(1);
                     false;
                     false;
                     false;
                     false;
                     _loc1_.currentTicket.drawTicketDetails(_loc1_.stepArray[_loc1_.whichStep][0]);
                     false;
                     false;
                  }
                  else
                  {
                     class_5.method_25("Multi Bubble.");
                     _loc5_ = String(_loc1_.currentCustomer.order[_loc1_.stepArray[_loc1_.whichStep][0]][_loc1_.stepArray[_loc1_.whichStep][1]]);
                     _loc1_.clip.bubble.clip.gotoAndStop(_loc5_);
                     true;
                     true;
                     _loc1_.clip.bubble.bg.gotoAndPlay(1);
                     _loc1_.clip.bubble.bg2.gotoAndPlay(1);
                     _loc1_.currentTicket.drawTicketDetails(_loc1_.stepArray[_loc1_.whichStep][0],_loc1_.stepArray[_loc1_.whichStep][1]);
                  }
               }
               else
               {
                  true;
                  true;
                  if(_loc1_.whichStep == _loc1_.stepArray.length)
                  {
                     true;
                     true;
                     _loc1_.currentCustomer.clip.gotoAndPlay("stand");
                     _loc1_.clip.bubble.visible = false;
                     _loc1_.useTimingSpacing = _loc1_.shorterTimingSpacing;
                  }
                  else
                  {
                     §§push(_loc1_.currentCustomer != null && _loc1_.currentCustomer.order != null);
                     if(_loc1_.currentCustomer != null && _loc1_.currentCustomer.order != null)
                     {
                        false;
                        false;
                        §§pop();
                        §§push(_loc1_.currentCustomer.order.length > 0);
                     }
                     if(§§pop() && _loc1_.whichStep > _loc1_.stepArray.length)
                     {
                        _loc1_.finishPlacingOrder();
                     }
                  }
               }
               _loc1_.stepTimer = 0;
            }
         }
         false;
         false;
         var _loc2_:Number = _loc1_.gameObj.var_28.gameplayTimer - _loc1_.timeActivated;
         false;
         false;
         false;
         false;
         if(_loc1_.timeActivated > -1 && _loc2_ >= 150)
         {
            true;
            true;
            §§push(_loc1_.isActive && !_loc1_.isPlacingOrder);
            if(_loc1_.isActive && !_loc1_.isPlacingOrder)
            {
               true;
               true;
               §§pop();
               false;
               false;
               §§push(_loc1_.whichStep <= 0);
            }
            if(§§pop())
            {
               if(!_loc1_.triedToRestart)
               {
                  _loc1_.whichStep = -1;
                  _loc1_.isPlacingOrder = true;
                  _loc1_.triedToRestart = true;
                  _loc1_.timeActivated = _loc1_.gameObj.var_28.gameplayTimer;
               }
               else
               {
                  true;
                  true;
                  true;
                  true;
                  _loc6_ = 0;
                  _loc7_ = 0;
                  _loc8_ = 0;
                  try
                  {
                     true;
                     true;
                     true;
                     true;
                     _loc6_ = _loc1_.currentTicket.ticketNumber;
                  }
                  catch(err:Error)
                  {
                  }
                  try
                  {
                     false;
                     false;
                     _loc7_ = _loc1_.currentCustomer.customerType;
                  }
                  catch(err:Error)
                  {
                  }
                  try
                  {
                     _loc8_ = _loc1_.currentCustomer.order.length;
                     true;
                     true;
                  }
                  catch(err:Error)
                  {
                  }
                  true;
                  true;
                  true;
                  true;
                  class_5.error("STUCK: " + _loc6_ + ", " + _loc7_ + ", " + _loc8_);
                  false;
                  false;
               }
            }
         }
         if(_loc1_.isActive)
         {
            _loc1_.worker.animateModel();
         }
      }
      
      public function finishPlacingOrder() : void
      {
         false;
         true;
         var _loc1_:TakeOrderScreen = this;
         false;
         false;
         _loc1_.isPlacingOrder = false;
         true;
         true;
         _loc1_.gameObj.hud.startTransition("order");
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc4_:Number = NaN;
         var _loc1_:TakeOrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new orderBackdropMC();
         _loc4_ = 1;
         while(_loc4_ <= 10)
         {
            _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
            _loc4_++;
         }
         _loc4_ = 1;
         false;
         false;
         while(_loc4_ <= 7)
         {
            _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc2_.lobbyFlooring);
            false;
            false;
            _loc4_++;
         }
         false;
         false;
         _loc5_.holder.trim.gotoAndStop(_loc2_.lobbyWallpaper);
         _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
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
         var _loc1_:TakeOrderScreen = this;
         true;
         true;
         if(_loc1_.backdropBitmap != null)
         {
            false;
            false;
            _loc1_.backdropBitmap.bitmapData.dispose();
            try
            {
               _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
               true;
               true;
            }
            catch(err:Error)
            {
            }
            _loc1_.backdropBitmap = null;
         }
         _loc1_.backdropBitmap = _loc1_.createLobbyBackdropBitmap();
         _loc1_.clip.backdrop_holder.addChild(_loc1_.backdropBitmap);
         false;
         false;
         _loc1_.backdropBitmap.x = -24;
         _loc1_.backdropBitmap.y = -40;
         _loc1_.countertopMC = new giveorder_countertop();
         _loc1_.countertopMC.gotoAndStop(_loc1_.gameObj.userData.lobbyWallpaper);
         _loc1_.clip.countertop.addChild(_loc1_.countertopMC);
      }
   }
}
