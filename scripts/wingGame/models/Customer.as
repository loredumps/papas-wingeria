package wingGame.models
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import package_2.class_5;
   import package_4.*;
   import wingGame.data.CustomerData;
   import wingGame.data.FoodData;
   import wingGame.managers.*;
   import wingGame.screens.*;
   
   public class Customer
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var customerType:Number = 1;
      
      public var customerName:String = "Some Guy";
      
      public var isCloser:Boolean = false;
      
      public var timeEntered:Number = 0;
      
      public var timeOrderTaken:Number = 0;
      
      public var customersAlreadyWaiting:Number = 0;
      
      public var currentLine:String;
      
      public var orderIsPlaced:Boolean = false;
      
      public var isWalking:Boolean = false;
      
      public var walkSpeed:Number = 4;
      
      public var walkDir:Number;
      
      public var targetX:Number;
      
      public var order:Array;
      
      public function Customer(param1:class_4, param2:Number)
      {
         false;
         true;
         super();
         var _loc3_:Customer = this;
         false;
         false;
         _loc3_.gameObj = param1;
         _loc3_.customerType = param2;
         _loc3_.isCloser = _loc3_.gameObj.customerData.isCloser(param2);
         _loc3_.defineVars();
         true;
         true;
         _loc3_.setupCustomer();
         _loc3_.startCustomerEntering();
      }
      
      public function defineVars() : void
      {
         false;
         true;
         var _loc1_:Customer = this;
         var _loc2_:CustomerData = _loc1_.gameObj.customerData;
         _loc1_.customerName = _loc2_.getCustomerName(_loc1_.customerType);
         true;
         true;
         _loc1_.order = _loc2_.getCustomerOrder(_loc1_.customerType);
      }
      
      public function setupCustomer() : void
      {
         false;
         true;
         var _loc26_:Class = null;
         var _loc27_:MovieClip = null;
         var _loc28_:Class = null;
         var _loc29_:MovieClip = null;
         var _loc1_:Customer = this;
         _loc1_.timeEntered = _loc1_.gameObj.var_28.gameplayTimer;
         false;
         false;
         _loc1_.clip = new customerMC();
         false;
         false;
         var _loc2_:String = _loc1_.gameObj.customerData.getCustomerClipName(_loc1_.customerType);
         var _loc3_:Class = getDefinitionByName("customer_" + _loc2_ + "_body") as Class;
         var _loc4_:MovieClip;
         (_loc4_ = new _loc3_()).name = "clip";
         _loc1_.clip.body.addChild(_loc4_);
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = getDefinitionByName("customer_" + _loc2_ + "_head") as Class)()).name = "clip";
         true;
         true;
         _loc1_.clip.head.addChild(_loc6_);
         var _loc8_:MovieClip;
         var _loc7_:Class;
         (_loc8_ = new (_loc7_ = getDefinitionByName("customer_" + _loc2_ + "_eyes") as Class)()).name = "clip";
         _loc1_.clip.eyes.addChild(_loc8_);
         var _loc10_:MovieClip;
         var _loc9_:Class;
         (_loc10_ = new (_loc9_ = getDefinitionByName("customer_" + _loc2_ + "_mouth") as Class)()).name = "clip";
         true;
         true;
         _loc1_.clip.mouth.addChild(_loc10_);
         var _loc12_:MovieClip;
         var _loc11_:Class;
         (_loc12_ = new (_loc11_ = getDefinitionByName("customer_" + _loc2_ + "_neck") as Class)()).name = "clip";
         false;
         false;
         _loc1_.clip.neck.addChild(_loc12_);
         try
         {
            (_loc27_ = new (_loc26_ = getDefinitionByName("customer_" + _loc2_ + "_hair") as Class)()).name = "clip";
            true;
            true;
            _loc1_.clip.hair.addChild(_loc27_);
         }
         catch(err:Error)
         {
         }
         try
         {
            (_loc29_ = new (_loc28_ = getDefinitionByName("customer_" + _loc2_ + "_back_hair") as Class)()).name = "clip";
            false;
            false;
            _loc1_.clip.back_hair.addChild(_loc29_);
         }
         catch(err:Error)
         {
         }
         var _loc14_:MovieClip;
         var _loc13_:Class;
         (_loc14_ = new (_loc13_ = getDefinitionByName("customer_" + _loc2_ + "_foot") as Class)()).name = "clip";
         false;
         false;
         _loc1_.clip.front_shoe.addChild(_loc14_);
         var _loc15_:MovieClip;
         (_loc15_ = new _loc13_()).name = "clip";
         _loc1_.clip.back_shoe.addChild(_loc15_);
         var _loc17_:MovieClip;
         var _loc16_:Class;
         (_loc17_ = new (_loc16_ = getDefinitionByName("customer_" + _loc2_ + "_hand") as Class)()).name = "clip";
         _loc1_.clip.fronthand.addChild(_loc17_);
         var _loc19_:MovieClip;
         var _loc18_:Class;
         (_loc19_ = new (_loc18_ = getDefinitionByName("customer_" + _loc2_ + "_hand2") as Class)()).name = "clip";
         true;
         true;
         _loc1_.clip.backhand.addChild(_loc19_);
         var _loc21_:MovieClip;
         var _loc20_:Class;
         (_loc21_ = new (_loc20_ = getDefinitionByName("customer_" + _loc2_ + "_upperarm") as Class)()).name = "clip";
         _loc1_.clip.front_upperarm.addChild(_loc21_);
         var _loc22_:MovieClip;
         (_loc22_ = new _loc20_()).name = "clip";
         _loc1_.clip.back_upperarm.addChild(_loc22_);
         var _loc24_:MovieClip;
         var _loc23_:Class;
         (_loc24_ = new (_loc23_ = getDefinitionByName("customer_" + _loc2_ + "_forearm") as Class)()).name = "clip";
         false;
         false;
         _loc1_.clip.front_forearm.addChild(_loc24_);
         var _loc25_:MovieClip;
         (_loc25_ = new _loc23_()).name = "clip";
         _loc1_.clip.back_forearm.addChild(_loc25_);
      }
      
      public function startCustomerEntering() : void
      {
         var _loc1_:Customer = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.var_21;
         var _loc3_:CustomerManager = _loc1_.gameObj.var_13;
         true;
         true;
         false;
         false;
         var _loc4_:Number;
         var _loc5_:Number = (_loc4_ = _loc3_.orderline.length) + 1;
         _loc2_.clip.orderline_holder.addChild(_loc1_.clip);
         _loc2_.clip.orderline_holder.setChildIndex(_loc1_.clip,0);
         _loc1_.clip.scaleX = _loc2_.orderLineScale;
         _loc1_.clip.scaleY = _loc2_.orderLineScale;
         false;
         false;
         _loc1_.targetX = _loc2_.orderLineTargetX + _loc4_ * _loc2_.customerSpacing;
         _loc1_.clip.y = _loc2_.orderLineTargetY;
         _loc1_.clip.x = _loc2_.offScreenX;
         _loc1_.walkDir = -1;
         false;
         false;
         _loc1_.isWalking = true;
         _loc1_.clip.gotoAndPlay("walk");
         _loc1_.currentLine = "orderline";
         false;
         false;
         _loc3_.orderline.push(_loc1_);
         if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.walkCustomer);
         }
         _loc1_.gameObj.userData.addToCustomersToday(_loc1_.customerType);
      }
      
      public function moveToLeaveLine() : void
      {
         false;
         true;
         var _loc1_:Customer = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.var_21;
         var _loc3_:CustomerManager = _loc1_.gameObj.var_13;
         _loc2_.clip.leaveline_holder.addChild(_loc1_.clip);
         _loc2_.clip.leaveline_holder.setChildIndex(_loc1_.clip,0);
         _loc1_.clip.scaleX = _loc2_.leaveLineScale * -1;
         _loc1_.clip.scaleY = _loc2_.leaveLineScale;
         true;
         true;
         _loc1_.targetX = _loc2_.offScreenX + _loc1_.clip.width;
         _loc1_.clip.x = _loc2_.leaveLineTargetX + _loc1_.clip.width;
         true;
         true;
         _loc1_.clip.y = _loc2_.leaveLineTargetY;
         _loc1_.walkDir = 1;
         true;
         true;
         _loc1_.isWalking = true;
         _loc1_.clip.gotoAndPlay("walk");
         try
         {
            _loc1_.clip.body.clip.logo.gotoAndStop(2);
         }
         catch(err:Error)
         {
         }
         _loc1_.currentLine = "leaveline";
         _loc3_.orderline.shift();
         _loc3_.leaveline.push(_loc1_);
         _loc3_.shiftCustomersInOrderLine();
         if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.walkCustomer);
         }
      }
      
      public function moveToWaitLine() : void
      {
         var _loc1_:Customer = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.var_21;
         var _loc3_:CustomerManager = _loc1_.gameObj.var_13;
         var _loc4_:Number = _loc3_.waitline.length;
         _loc2_.clip.waitline_holder.addChild(_loc1_.clip);
         _loc2_.clip.waitline_holder.setChildIndex(_loc1_.clip,0);
         _loc1_.clip.scaleX = _loc2_.waitLineScale;
         true;
         true;
         _loc1_.clip.scaleY = _loc2_.waitLineScale;
         _loc1_.targetX = _loc2_.waitLineTargetX + _loc4_ * _loc2_.customerSpacing;
         false;
         false;
         _loc1_.clip.y = _loc2_.waitLineTargetY;
         _loc1_.clip.x = _loc2_.offScreenX;
         _loc1_.walkDir = -1;
         _loc1_.isWalking = true;
         _loc1_.clip.gotoAndPlay("walk");
         try
         {
            _loc1_.clip.body.clip.logo.gotoAndStop(1);
            false;
            false;
         }
         catch(err:Error)
         {
         }
         _loc1_.currentLine = "waitline";
         true;
         true;
         _loc3_.leaveline.shift();
         _loc3_.waitline.push(_loc1_);
         true;
         true;
         if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.walkCustomer);
         }
      }
      
      public function moveToTakeOrder() : void
      {
         false;
         true;
         var _loc1_:Customer = this;
         var _loc2_:TakeOrderScreen = _loc1_.gameObj.var_59;
         _loc1_.timeOrderTaken = _loc1_.gameObj.var_28.gameplayTimer;
         _loc1_.customersAlreadyWaiting = _loc1_.gameObj.var_13.waitline.length + _loc1_.gameObj.var_13.leaveline.length;
         _loc2_.clip.customer_holder.addChild(_loc1_.clip);
         false;
         false;
         _loc1_.clip.scaleX = _loc2_.customerScale;
         _loc1_.clip.scaleY = _loc2_.customerScale;
         false;
         false;
         _loc1_.clip.x = _loc2_.customerX;
         _loc1_.clip.y = _loc2_.customerY;
         _loc1_.targetX = _loc2_.customerX;
         false;
         false;
         _loc1_.isWalking = false;
         _loc1_.clip.gotoAndPlay("stand");
      }
      
      public function moveToReceiveOrder() : void
      {
         false;
         true;
         var _loc1_:Customer = this;
         var _loc2_:GiveOrderScreen = _loc1_.gameObj.var_53;
         _loc2_.clip.customer_holder.addChild(_loc1_.clip);
         _loc1_.clip.scaleX = _loc2_.customerScale;
         _loc1_.clip.scaleY = _loc2_.customerScale;
         _loc1_.clip.x = _loc2_.customerX;
         _loc1_.clip.y = _loc2_.customerY;
         _loc1_.targetX = _loc2_.customerX;
         _loc1_.isWalking = false;
         true;
         true;
         if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            true;
            true;
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.walkCustomer);
         }
         _loc1_.clip.gotoAndPlay("look");
      }
      
      public function destroy() : void
      {
         var ob:Customer = this;
         try
         {
            false;
            false;
            if(ob.clip.hasEventListener(Event.ENTER_FRAME))
            {
               ob.clip.removeEventListener(Event.ENTER_FRAME,ob.walkCustomer);
            }
         }
         catch(err:Error)
         {
            true;
            true;
            class_5.error("Error stopping walking on customer.");
         }
         ob.clip.stop();
         try
         {
            ob.clip.body.removeChildAt(0);
            true;
            true;
            ob.clip.head.removeChildAt(0);
            false;
            false;
            ob.clip.eyes.removeChildAt(0);
            ob.clip.mouth.removeChildAt(0);
            ob.clip.neck.removeChildAt(0);
            false;
            false;
            false;
            false;
            ob.clip.front_shoe.removeChildAt(0);
            ob.clip.back_shoe.removeChildAt(0);
            false;
            false;
            ob.clip.fronthand.removeChildAt(0);
            true;
            true;
            false;
            false;
            ob.clip.backhand.removeChildAt(0);
            ob.clip.front_upperarm.removeChildAt(0);
            ob.clip.back_upperarm.removeChildAt(0);
            true;
            true;
            ob.clip.front_forearm.removeChildAt(0);
            ob.clip.back_forearm.removeChildAt(0);
            false;
            false;
         }
         catch(err:Error)
         {
            class_5.error("Error removing parts of customer");
         }
         try
         {
            false;
            false;
            false;
            false;
            ob.clip.hair.removeChildAt(0);
         }
         catch(err:Error)
         {
         }
         try
         {
            ob.clip.back_hair.removeChildAt(0);
         }
         catch(err:Error)
         {
         }
         try
         {
            ob.clip.parent.removeChild(ob.clip);
         }
         catch(err:Error)
         {
            class_5.error("Error removing clip from parent");
         }
         ob.clip = null;
      }
      
      public function walkCustomer(param1:Event = null) : void
      {
         var _loc2_:Customer = this;
         var _loc3_:OrderScreen = _loc2_.gameObj.var_21;
         true;
         true;
         if(!_loc2_.gameObj.var_56)
         {
            true;
            true;
            false;
            false;
            false;
            false;
            if(_loc2_.walkDir == -1 && _loc2_.clip.x + _loc2_.walkDir * _loc2_.walkSpeed <= _loc2_.targetX)
            {
               _loc2_.clip.x = _loc2_.targetX;
               _loc2_.clip.gotoAndPlay("stand");
               _loc2_.isWalking = false;
               true;
               true;
               if(_loc2_.currentLine == "orderline")
               {
                  if(_loc2_.gameObj.var_13.orderline[0] == _loc2_)
                  {
                     _loc3_.showTakeOrderBubble(_loc2_.isCloser);
                  }
               }
               _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.walkCustomer);
            }
            else if(_loc2_.walkDir == 1 && _loc2_.clip.x + _loc2_.walkDir * _loc2_.walkSpeed >= _loc2_.targetX)
            {
               _loc2_.clip.x = _loc2_.targetX;
               _loc2_.clip.gotoAndPlay("stand");
               if(_loc2_.currentLine == "leaveline")
               {
                  _loc2_.moveToWaitLine();
               }
               else
               {
                  _loc2_.isWalking = false;
                  _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.walkCustomer);
               }
            }
            else
            {
               _loc2_.isWalking = true;
               _loc2_.clip.x += _loc2_.walkDir * _loc2_.walkSpeed;
            }
         }
      }
      
      public function resetContainer() : void
      {
         var _loc4_:Number = NaN;
         var _loc1_:Customer = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.var_21;
         var _loc3_:CustomerManager = _loc1_.gameObj.var_13;
         false;
         false;
         if(_loc1_.currentLine == "waitline")
         {
            if(!_loc2_.clip.waitline_holder.contains(_loc1_.clip))
            {
               _loc2_.clip.waitline_holder.addChild(_loc1_.clip);
               true;
               true;
               _loc2_.clip.waitline_holder.setChildIndex(_loc1_.clip,0);
               true;
               true;
               _loc4_ = 0;
               while(true)
               {
                  if(_loc4_ < _loc3_.waitline.length)
                  {
                     true;
                     true;
                     if(_loc3_.waitline[_loc4_] != _loc1_)
                     {
                        continue;
                     }
                     _loc1_.clip.x = _loc2_.waitLineTargetX + _loc4_ * _loc2_.customerSpacing;
                     _loc1_.clip.y = _loc2_.waitLineTargetY;
                  }
               }
            }
         }
         else if(_loc1_.currentLine == "orderline")
         {
            true;
            true;
            if(!_loc2_.clip.orderline_holder.contains(_loc1_.clip))
            {
               _loc2_.clip.orderline_holder.addChild(_loc1_.clip);
               _loc2_.clip.orderline_holder.setChildIndex(_loc1_.clip,0);
               true;
               true;
               _loc4_ = 0;
               true;
               true;
               while(_loc4_ < _loc3_.orderline.length)
               {
                  if(_loc3_.orderline[_loc4_] == _loc1_)
                  {
                     _loc1_.clip.x = _loc2_.orderLineTargetX + _loc4_ * _loc2_.customerSpacing;
                     _loc1_.clip.y = _loc2_.orderLineTargetY;
                     break;
                  }
                  true;
                  true;
                  true;
                  true;
                  _loc4_++;
               }
            }
         }
      }
      
      public function shiftInOrderLine(param1:Number) : void
      {
         false;
         true;
         var _loc2_:Customer = this;
         _loc2_.targetX = param1;
         false;
         false;
         if(!_loc2_.isWalking)
         {
            _loc2_.clip.x = _loc2_.targetX;
         }
         false;
         false;
         if(!_loc2_.isWalking && _loc2_.gameObj.var_13.orderline[0] == _loc2_)
         {
            _loc2_.gameObj.var_21.showTakeOrderBubble(_loc2_.isCloser);
         }
      }
      
      public function shiftInWaitLine(param1:Number) : void
      {
         var _loc2_:Customer = this;
         _loc2_.targetX = param1;
         if(!_loc2_.isWalking)
         {
            false;
            false;
            _loc2_.clip.x = _loc2_.targetX;
         }
      }
      
      public function getOkayWaitingTime() : Number
      {
         var _loc1_:Customer = this;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.order.length)
         {
            §§push(FoodData.isMeat(_loc1_.order[_loc3_][0]));
            if(FoodData.isMeat(_loc1_.order[_loc3_][0]))
            {
               false;
               false;
               §§pop();
               true;
               true;
               false;
               false;
               §§push(_loc2_ < FoodData.getTargetCookTime(_loc1_.order[_loc3_][0]));
            }
            if(§§pop())
            {
               false;
               false;
               true;
               true;
               _loc2_ = FoodData.getTargetCookTime(_loc1_.order[_loc3_][0]);
               true;
               true;
            }
            _loc3_++;
         }
         return _loc2_;
      }
   }
}
