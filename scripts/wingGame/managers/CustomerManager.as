package wingGame.managers
{
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.FurniData;
   import wingGame.data.UserData;
   import wingGame.models.Customer;
   import wingGame.models.FurnitureItem;
   import wingGame.screens.OrderScreen;
   
   public class CustomerManager
   {
       
      
      public var gameObj:class_4;
      
      public var totalCustomers:Number = 0;
      
      public var orderline:Array;
      
      public var leaveline:Array;
      
      public var waitline:Array;
      
      public var numberOfCustomers:Array;
      
      public var customerLineup:Array;
      
      public var minSpawnTiming:Number = 0;
      
      public var spawnTiming:Number = 0;
      
      public var firstSpawnTiming:Number = 750;
      
      public var lastSpawnTime:Number = 0;
      
      public var totalTime:Number = 0;
      
      public var showNewCustomer:Boolean = false;
      
      public var showNewCustomerNum:Number = 1;
      
      public var showNoPapa:Boolean = false;
      
      public function CustomerManager(param1:class_4)
      {
         this.orderline = [];
         this.leaveline = [];
         this.waitline = [];
         this.numberOfCustomers = [4,4,5,5,5,5,5,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7];
         this.customerLineup = [];
         super();
         var _loc2_:CustomerManager = this;
         _loc2_.gameObj = param1;
         _loc2_.setupManager();
      }
      
      public function setupManager() : void
      {
         false;
         true;
         var _loc1_:CustomerManager = this;
         _loc1_.totalCustomers = 0;
         _loc1_.orderline = [];
         _loc1_.leaveline = [];
         _loc1_.waitline = [];
         _loc1_.customerLineup = [];
         true;
         true;
         if(_loc1_.gameObj.userData.currentDay == 1)
         {
            _loc1_.trainingLineup();
         }
         else
         {
            _loc1_.decideLineup();
         }
      }
      
      public function trainingLineup() : void
      {
         false;
         true;
         var _loc1_:CustomerManager = this;
         false;
         false;
         _loc1_.customerLineup = [9,12];
      }
      
      public function decideLineup() : void
      {
         var _loc2_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc1_:CustomerManager = this;
         true;
         true;
         var _loc3_:Number = _loc1_.gameObj.userData.getRank();
         var _loc4_:Number = 0;
         false;
         false;
         true;
         true;
         if(_loc3_ >= _loc1_.numberOfCustomers.length)
         {
            false;
            false;
            false;
            false;
            _loc4_ = _loc1_.numberOfCustomers.length - 1;
            false;
            false;
         }
         else
         {
            false;
            false;
            _loc4_ = _loc3_;
         }
         false;
         false;
         var _loc5_:Number = (_loc5_ = Number(_loc1_.numberOfCustomers[_loc4_])) - 1;
         var _loc6_:Array = _loc1_.gameObj.userData.getCustomerPool(_loc5_);
         var _loc7_:Number = _loc1_.gameObj.userData.getNewestCustomer();
         var _loc8_:Number = _loc1_.gameObj.userData.getCloserCustomer();
         class_5.method_25("-- Possible Customers: " + _loc6_.toString() + ".  New Customer: " + _loc7_ + ". Closer Customer: " + _loc8_);
         _loc1_.customerLineup = [];
         if(_loc7_ > 0)
         {
            false;
            false;
            true;
            true;
            _loc1_.customerLineup.push(_loc7_);
            false;
            false;
            if(_loc6_.indexOf(_loc7_) > -1)
            {
               false;
               false;
               _loc6_.splice(_loc6_.indexOf(_loc7_),1);
            }
            true;
            true;
            _loc5_--;
            false;
            false;
            false;
            false;
            if(this.gameObj.userData.alreadyEarnedCustomer(_loc7_))
            {
               class_5.method_25("Already Earned Customer " + _loc7_ + ".");
               _loc1_.showNewCustomer = false;
            }
            else
            {
               true;
               true;
               class_5.method_25("Customer " + _loc7_ + " is new!");
               _loc1_.showNewCustomer = true;
               false;
               false;
               _loc1_.showNewCustomerNum = _loc7_;
            }
         }
         class_5.method_25("Which Topping to Reveal/Feature: " + this.gameObj.userData.getToppingToReveal());
         false;
         false;
         if(this.gameObj.userData.getToppingToReveal() != "none")
         {
            if(_loc7_ > 0 && _loc1_.gameObj.customerData.customersHaveTopping(_loc7_,this.gameObj.userData.getToppingToReveal()))
            {
               false;
               false;
               true;
               true;
               class_5.method_25("Customer " + _loc7_ + " is already ordering " + this.gameObj.userData.getToppingToReveal() + ". Don\'t need to add one in for this.");
               false;
               false;
            }
            else if((_loc9_ = _loc1_.gameObj.customerData.getCustomerWithTopping(this.gameObj.userData.getToppingToReveal(),_loc6_)) > 0)
            {
               false;
               false;
               false;
               false;
               if(_loc1_.customerLineup.indexOf(_loc9_) == -1)
               {
                  false;
                  false;
                  false;
                  false;
                  class_5.method_25("Add Customer " + _loc9_ + " to order " + this.gameObj.userData.getToppingToReveal());
                  _loc1_.customerLineup.push(_loc9_);
                  if(_loc6_.indexOf(_loc9_) > -1)
                  {
                     _loc6_.splice(_loc6_.indexOf(_loc9_),1);
                  }
                  true;
                  true;
                  _loc5_--;
               }
            }
            else
            {
               class_5.method_25("Couldn\'t find a Customer to order " + this.gameObj.userData.getToppingToReveal());
               false;
               false;
            }
         }
         else
         {
            class_5.method_25("No new toppings to feature.");
         }
         _loc2_ = 0;
         while(_loc2_ < _loc5_)
         {
            if(_loc6_.length > 0)
            {
               false;
               false;
               _loc10_ = _loc6_.length;
               _loc11_ = Math.floor(Math.random() * _loc10_);
               _loc12_ = Number(_loc6_[_loc11_]);
               true;
               true;
               false;
               false;
               _loc1_.customerLineup.push(_loc12_);
               _loc6_.splice(_loc11_,1);
            }
            _loc2_++;
         }
         _loc1_.customerLineup.push(_loc8_);
         true;
         true;
         true;
         true;
         true;
         true;
         false;
         false;
         §§push(_loc1_.gameObj.userData.readyToShowPapa());
         if(_loc1_.gameObj.userData.readyToShowPapa())
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(!_loc1_.gameObj.userData.isEveryoneGold());
         }
         if(§§pop())
         {
            _loc1_.showNoPapa = true;
         }
         else
         {
            _loc1_.showNoPapa = false;
            true;
            true;
         }
         class_5.method_25("Chosen Customers Today: " + this.customerLineup);
      }
      
      public function startSpawningCustomers() : void
      {
         var _loc1_:CustomerManager = this;
         _loc1_.totalTime = _loc1_.gameObj.var_78;
         var _loc2_:Number = _loc1_.customerLineup.length;
         _loc1_.spawnTiming = Math.floor(_loc1_.totalTime / (_loc2_ - 1));
         false;
         false;
         if(_loc1_.spawnTiming > 1500)
         {
            _loc1_.spawnTiming = 1500;
         }
         _loc1_.minSpawnTiming = Math.min(1200,_loc1_.spawnTiming);
         true;
         true;
         _loc1_.spawnTiming = 1800;
         _loc1_.minSpawnTiming = 1800;
         if(!_loc1_.gameObj.var_14)
         {
            _loc1_.spawnCustomer();
         }
      }
      
      public function spawnCustomer() : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = false;
         var _loc1_:CustomerManager = this;
         var _loc2_:Number = _loc1_.totalCustomers;
         true;
         true;
         false;
         false;
         true;
         true;
         if(_loc2_ < _loc1_.customerLineup.length)
         {
            _loc3_ = Number(_loc1_.customerLineup[_loc2_]);
            false;
            false;
            _loc4_ = false;
            _loc1_.gameObj.var_21.clicksToStation = 0;
            if(_loc2_ == _loc1_.customerLineup.length - 1)
            {
               _loc1_.gameObj.var_21.clip.opensign.sign.gotoAndPlay(2);
               true;
               true;
               _loc4_ = true;
               true;
               true;
            }
            _loc1_.addCustomer(_loc3_,_loc4_);
            false;
            false;
            _loc1_.lastSpawnTime = _loc1_.gameObj.var_28.gameplayTimer;
         }
      }
      
      public function addCustomer(param1:Number, param2:Boolean) : void
      {
         var _loc3_:CustomerManager = this;
         true;
         true;
         ++_loc3_.totalCustomers;
         var _loc4_:Customer = new Customer(_loc3_.gameObj,param1);
         _loc3_.gameObj.hud.showCustomerAlert();
      }
      
      public function deleteCustomer(param1:Customer) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:CustomerManager = this;
         var _loc4_:Number = -1;
         false;
         false;
         _loc3_ = 0;
         while(_loc3_ < _loc2_.waitline.length)
         {
            if(_loc2_.waitline[_loc3_] == param1)
            {
               true;
               true;
               _loc4_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         if(_loc4_ > -1)
         {
            _loc2_.waitline.splice(_loc4_,1);
         }
         _loc2_.shiftCustomersInWaitLine(_loc4_);
         param1.destroy();
         param1 = null;
         false;
         false;
         false;
         false;
         true;
         true;
         if(_loc2_.waitline.length == 0 && _loc2_.orderline.length == 0)
         {
            false;
            false;
            if(_loc2_.totalCustomers == _loc2_.customerLineup.length)
            {
            }
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc1_:CustomerManager = this;
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.waitline.length)
         {
            false;
            false;
            _loc1_.waitline[_loc2_].destroy();
            false;
            false;
            false;
            false;
            true;
            true;
            _loc1_.waitline[_loc2_] = null;
            _loc2_++;
            true;
            true;
         }
         true;
         true;
         true;
         true;
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            true;
            true;
            if(_loc2_ >= _loc1_.leaveline.length)
            {
               break;
            }
            _loc1_.leaveline[_loc2_].destroy();
            true;
            true;
            false;
            false;
            true;
            true;
            _loc1_.leaveline[_loc2_] = null;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc1_.orderline.length)
         {
            false;
            false;
            _loc1_.orderline[_loc2_].destroy();
            false;
            false;
            _loc1_.orderline[_loc2_] = null;
            true;
            true;
            _loc2_++;
         }
         _loc1_.waitline = null;
         _loc1_.leaveline = null;
         _loc1_.orderline = null;
      }
      
      public function getWaitingCustomer(param1:Number) : Customer
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc5_:Customer = null;
         var _loc6_:Customer = null;
         var _loc2_:CustomerManager = this;
         var _loc3_:Customer = null;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.waitline.length)
         {
            false;
            false;
            if((_loc5_ = _loc2_.waitline[_loc4_]).customerType == param1)
            {
               false;
               false;
               _loc3_ = _loc5_;
               break;
            }
            false;
            false;
            true;
            true;
            _loc4_++;
         }
         if(_loc3_ == null)
         {
            if(_loc2_.leaveline.length > 0)
            {
               true;
               true;
               _loc4_ = 0;
               while(_loc4_ < _loc2_.leaveline.length)
               {
                  true;
                  true;
                  if((_loc6_ = _loc2_.leaveline[_loc4_]).customerType == param1)
                  {
                     _loc6_.moveToWaitLine();
                     _loc3_ = _loc6_;
                     break;
                  }
                  _loc4_++;
               }
            }
         }
         return _loc3_;
      }
      
      public function shiftCustomersInWaitLine(param1:Number) : void
      {
         var _loc5_:Customer = null;
         var _loc6_:Number = NaN;
         var _loc2_:CustomerManager = this;
         var _loc3_:OrderScreen = _loc2_.gameObj.var_21;
         var _loc4_:int = param1;
         while(_loc4_ < _loc2_.waitline.length)
         {
            _loc5_ = _loc2_.waitline[_loc4_];
            _loc6_ = _loc3_.waitLineTargetX + _loc4_ * _loc3_.customerSpacing;
            _loc5_.shiftInWaitLine(_loc6_);
            true;
            true;
            _loc4_++;
         }
      }
      
      public function shiftCustomersInOrderLine() : void
      {
         var _loc4_:Customer = null;
         var _loc5_:Number = NaN;
         var _loc1_:CustomerManager = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.var_21;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.orderline.length)
         {
            _loc4_ = _loc1_.orderline[_loc3_];
            true;
            true;
            _loc5_ = _loc2_.orderLineTargetX + _loc3_ * _loc2_.customerSpacing;
            false;
            false;
            _loc4_.shiftInOrderLine(_loc5_);
            true;
            true;
            _loc3_++;
         }
      }
      
      public function resetAllCustomerContainers() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc1_:CustomerManager = this;
         true;
         true;
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            true;
            true;
            if(_loc2_ >= _loc1_.waitline.length)
            {
               break;
            }
            false;
            false;
            true;
            true;
            _loc1_.waitline[_loc2_].resetContainer();
            true;
            true;
            _loc2_++;
            true;
            true;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc1_.orderline.length)
         {
            _loc1_.orderline[_loc2_].resetContainer();
            true;
            true;
            _loc2_++;
         }
      }
      
      public function updateManager() : void
      {
         var _loc1_:CustomerManager = this;
         var _loc2_:Number = _loc1_.gameObj.var_28.gameplayTimer;
         true;
         true;
         true;
         true;
         if(_loc1_.gameObj.userData.currentDay == 1)
         {
            false;
            false;
            false;
            false;
            true;
            true;
            if(_loc1_.gameObj.var_14 && _loc1_.gameObj.var_12 == 5 && _loc1_.orderline.length == 0)
            {
               _loc1_.spawnCustomer();
            }
            else
            {
               true;
               true;
               if(!_loc1_.gameObj.var_14)
               {
                  _loc1_.spawnCustomer();
               }
            }
         }
         else if(_loc1_.totalCustomers < _loc1_.customerLineup.length)
         {
            true;
            true;
            false;
            false;
            if(_loc1_.orderline.length == 0 && _loc1_.waitline.length == 0 && _loc1_.leaveline.length == 0)
            {
               true;
               true;
               _loc1_.spawnCustomer();
               true;
               true;
            }
            else
            {
               false;
               false;
               false;
               false;
               §§push(_loc2_ - _loc1_.lastSpawnTime >= _loc1_.minSpawnTiming);
               if(_loc2_ - _loc1_.lastSpawnTime >= _loc1_.minSpawnTiming)
               {
                  false;
                  false;
                  §§pop();
                  true;
                  true;
                  §§push(_loc1_.orderline.length == 0);
               }
               if(§§pop())
               {
                  _loc1_.spawnCustomer();
                  true;
                  true;
               }
               else
               {
                  true;
                  true;
                  if(_loc2_ - _loc1_.lastSpawnTime >= _loc1_.firstSpawnTiming && _loc1_.orderline.length == 0 && _loc1_.totalCustomers == 1)
                  {
                     _loc1_.spawnCustomer();
                     true;
                     true;
                  }
                  else
                  {
                     true;
                     true;
                     if(_loc2_ - _loc1_.lastSpawnTime >= _loc1_.spawnTiming)
                     {
                        true;
                        true;
                        _loc1_.spawnCustomer();
                     }
                  }
               }
            }
         }
      }
      
      public function outOfCustomers(param1:Boolean = false) : Boolean
      {
         false;
         true;
         var _loc2_:CustomerManager = this;
         var _loc3_:Boolean = false;
         false;
         false;
         if(_loc2_.totalCustomers == _loc2_.customerLineup.length)
         {
            true;
            true;
            true;
            true;
            if(param1 == true && _loc2_.waitline.length == 0 && _loc2_.leaveline.length == 0 && _loc2_.orderline.length == 0)
            {
               _loc3_ = true;
            }
            else
            {
               false;
               false;
               true;
               true;
               if(param1 == false && _loc2_.waitline.length <= 1 && _loc2_.leaveline.length == 0 && _loc2_.orderline.length == 0)
               {
                  _loc3_ = true;
               }
            }
         }
         return _loc3_;
      }
      
      private function getBonusesWithinRange(param1:String, param2:Number) : Array
      {
         false;
         true;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc11_:int = 0;
         var _loc3_:CustomerManager = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:OrderScreen = _loc3_.gameObj.var_21;
         var _loc6_:Array = [];
         true;
         true;
         false;
         false;
         if(param1 == "waitline")
         {
            false;
            false;
            _loc7_ = [0,1];
         }
         else if(param1 == "orderline")
         {
            _loc7_ = [1,2];
         }
         if(param2 == 0)
         {
            false;
            false;
            _loc8_ = [0,1,2];
         }
         else
         {
            false;
            false;
            if(param2 == 1)
            {
               false;
               false;
               false;
               false;
               true;
               true;
               _loc8_ = [3,4,5];
            }
            else
            {
               true;
               true;
               if(param2 == 2)
               {
                  true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  _loc8_ = [5,6,7];
               }
               else
               {
                  false;
                  false;
                  if(param2 == 3)
                  {
                     _loc8_ = [8,9,10];
                  }
                  else
                  {
                     false;
                     false;
                     true;
                     true;
                     if(param2 == 4)
                     {
                        false;
                        false;
                        true;
                        true;
                        true;
                        true;
                        _loc8_ = [10,11,12];
                     }
                     else if(param2 == 5)
                     {
                        _loc8_ = [13,14,15];
                     }
                  }
               }
            }
         }
         var _loc9_:Boolean = false;
         true;
         true;
         false;
         false;
         if(param1 == "orderline" && param2 == 0)
         {
            true;
            true;
            _loc9_ = true;
         }
         var _loc10_:int = 0;
         while(_loc10_ < _loc5_.furniItems.length)
         {
            false;
            false;
            if(_loc5_.furniItems[_loc10_].data.special != "none" && _loc5_.furniItems[_loc10_].data.special != FurniData.SPECIAL_SCORE && _loc5_.furniItems[_loc10_].isOccupied == false)
            {
               if(!_loc9_ || _loc5_.furniItems[_loc10_].data.special != FurniData.SPECIAL_ARCADE && _loc5_.furniItems[_loc10_].data.special != FurniData.SPECIAL_BOOK && _loc5_.furniItems[_loc10_].data.special != FurniData.SPECIAL_COMICS && _loc5_.furniItems[_loc10_].data.special != FurniData.SPECIAL_NEWSPAPER)
               {
                  _loc11_ = _loc5_.furniItems[_loc10_].xtile;
                  true;
                  true;
                  while(true)
                  {
                     false;
                     false;
                     if(_loc11_ >= _loc5_.furniItems[_loc10_].xtile + _loc5_.furniItems[_loc10_].data.width)
                     {
                        break;
                     }
                     if(_loc8_.indexOf(_loc11_) > -1 && _loc7_.indexOf(_loc5_.furniItems[_loc10_].ytile) > -1)
                     {
                        false;
                        false;
                        _loc6_.push(_loc5_.furniItems[_loc10_]);
                        break;
                     }
                     _loc11_++;
                  }
               }
            }
            _loc10_++;
         }
         return _loc6_;
      }
      
      public function updateCustomersForBonuses() : void
      {
         var manager:CustomerManager;
         var data:UserData;
         var i:Number;
         var maxPerLine:Number;
         var customer:Customer;
         var available:Array;
         var gotBonus:Boolean;
         var lines:Array;
         var ln:int;
         var whichLine:Array;
         var whichVariation:Number;
         var chooseIndex:Number;
         var furni:FurnitureItem;
         false;
         true;
         true;
         true;
         i = NaN;
         false;
         false;
         customer = null;
         false;
         false;
         false;
         false;
         whichLine = null;
         false;
         false;
         false;
         false;
         whichVariation = NaN;
         true;
         true;
         chooseIndex = NaN;
         false;
         false;
         true;
         true;
         furni = null;
         true;
         true;
         manager = this;
         false;
         false;
         data = manager.gameObj.userData;
         true;
         true;
         maxPerLine = 6;
         available = null;
         gotBonus = false;
         lines = ["waitline","orderline"];
         i = 0;
         while(true)
         {
            true;
            true;
            true;
            true;
            false;
            false;
            if(i >= manager.gameObj.var_21.furniItems.length)
            {
               break;
            }
            manager.gameObj.var_21.furniItems[i].isOccupied = false;
            false;
            false;
            i++;
         }
         manager.resetAllCustomerContainers();
         false;
         false;
         ln = 0;
         while(ln < lines.length)
         {
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
            whichLine = manager[lines[ln]];
            true;
            true;
            if(whichLine.length > 0)
            {
               false;
               false;
               false;
               false;
               i = 0;
               while(true)
               {
                  true;
                  true;
                  if(i >= whichLine.length)
                  {
                     break;
                  }
                  false;
                  false;
                  gotBonus = false;
                  true;
                  true;
                  true;
                  true;
                  false;
                  false;
                  customer = whichLine[i];
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  if(i < maxPerLine && !customer.isWalking)
                  {
                     false;
                     false;
                     whichVariation = Math.ceil(Math.random() * 4);
                     false;
                     false;
                     available = manager.getBonusesWithinRange(lines[ln],i);
                     false;
                     false;
                     true;
                     true;
                     true;
                     true;
                     true;
                     true;
                     if(available != null && available.length > 0)
                     {
                        chooseIndex = Math.floor(Math.random() * available.length);
                        true;
                        true;
                        furni = available[chooseIndex];
                        gotBonus = true;
                        if(furni.data.special == FurniData.SPECIAL_ARCADE)
                        {
                           customer.clip.gotoAndPlay("playgame" + whichVariation);
                           false;
                           false;
                           furni.clip.addChild(customer.clip);
                           true;
                           true;
                           true;
                           true;
                           customer.clip.x = 84;
                           customer.clip.y = -190;
                           false;
                           false;
                           furni.isOccupied = true;
                        }
                        else
                        {
                           §§push(furni.data.special == FurniData.SPECIAL_BUBBLEGUM);
                           if(!(furni.data.special == FurniData.SPECIAL_BUBBLEGUM))
                           {
                              true;
                              true;
                              §§pop();
                              false;
                              false;
                              true;
                              true;
                              §§push(furni.data.special == FurniData.SPECIAL_SCOREBUBBLEGUM);
                           }
                           if(§§pop())
                           {
                              true;
                              true;
                              customer.clip.gotoAndPlay("chewgum" + whichVariation);
                           }
                           else
                           {
                              false;
                              false;
                              if(furni.data.special == FurniData.SPECIAL_MUSIC)
                              {
                                 false;
                                 false;
                                 customer.clip.gotoAndPlay("dance" + whichVariation);
                              }
                              else
                              {
                                 false;
                                 false;
                                 false;
                                 false;
                                 §§push(furni.data.special == FurniData.SPECIAL_BOOK);
                                 if(!(furni.data.special == FurniData.SPECIAL_BOOK))
                                 {
                                    false;
                                    false;
                                    §§pop();
                                    false;
                                    false;
                                    §§push(furni.data.special == FurniData.SPECIAL_NEWSPAPER);
                                 }
                                 false;
                                 false;
                                 if(§§pop() || furni.data.special == FurniData.SPECIAL_COMICS)
                                 {
                                    false;
                                    false;
                                    false;
                                    false;
                                    customer.clip.gotoAndPlay("readpaper" + whichVariation);
                                    try
                                    {
                                       customer.clip.book.gotoAndStop(furni.data.special);
                                    }
                                    catch(err:Error)
                                    {
                                       true;
                                       true;
                                       true;
                                       true;
                                       class_5.method_25("Error setting correct book for Customer.. (Trying to go to readpaper" + whichVariation + ", trying to set book to " + furni.data.special + ")");
                                    }
                                    continue;
                                 }
                                 true;
                                 true;
                                 true;
                                 true;
                                 if(furni.data.special == FurniData.SPECIAL_COFFEE || furni.data.special == FurniData.SPECIAL_PUNCH || furni.data.special == FurniData.SPECIAL_SODA)
                                 {
                                    false;
                                    false;
                                    customer.clip.gotoAndPlay("drinkcoffee" + whichVariation);
                                    try
                                    {
                                       customer.clip.mug.gotoAndStop(furni.data.special);
                                    }
                                    catch(err:Error)
                                    {
                                       false;
                                       false;
                                       false;
                                       false;
                                       false;
                                       false;
                                       class_5.method_25("Error setting correct drink for Customer.. (Trying to go to drinkcoffee" + whichVariation + ", trying to set drink to " + furni.data.special + ")");
                                    }
                                    continue;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            false;
            false;
            ln++;
         }
      }
   }
}
