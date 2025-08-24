package wingGame.data
{
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.customers.*;
   
   public class CustomerData
   {
       
      
      private var gameObj:class_4;
      
      private var customersIncluded:Array;
      
      private var customerDataFiles:Array;
      
      private var randomSeed:Number = 1020304;
      
      public function CustomerData(param1:class_4)
      {
         false;
         true;
         this.customersIncluded = [CustomerJojo,CustomerBoomer,CustomerQuinn,CustomerXolo,CustomerJohnny,CustomerProfessorFitz,CustomerNinjoy,CustomerChuckOrMandi,CustomerClover,CustomerMindy,CustomerAllan,CustomerHank,CustomerTimm,CustomerGreg,CustomerUtah,CustomerTaylor,CustomerRobby,CustomerRita,CustomerJames,CustomerAlberto,CustomerClair,CustomerKahuna,CustomerScooter,CustomerHugo,CustomerMaggie,CustomerBigPauly,CustomerAkari,CustomerWally,CustomerKayla,CustomerSargeFan,CustomerMitch,CustomerWendy,CustomerTohru,CustomerGeorgito,CustomerZoe,CustomerCooper,CustomerLisa,CustomerFranco,CustomerXandra,CustomerCarloRomano,CustomerSkyler,CustomerRico,CustomerSue,CustomerGremmie,CustomerBrunaRomano,CustomerNick,CustomerPrudence,CustomerEdna,CustomerDoan,CustomerCaptainCori,CustomerKingsley,CustomerPenny,CustomerMarty,CustomerOlga,CustomerSasha,CustomerRoy,CustomerCecilia,CustomerConnor,CustomerYippy,CustomerTony,CustomerPeggy,CustomerGinoRomano,CustomerMary,CustomerLittleEdoardo,CustomerMatt,CustomerIvy,CustomerVicky,CustomerCletus,CustomerFoodini,CustomerPapaLouie];
         this.customerDataFiles = [];
         true;
         true;
         super();
         var _loc2_:CustomerData = this;
         _loc2_.gameObj = param1;
         _loc2_.setupCustomerData();
      }
      
      public function setupCustomerData() : void
      {
         var _loc3_:Class = null;
         var _loc4_:CustomerDataFile = null;
         var _loc1_:CustomerData = this;
         true;
         true;
         _loc1_.customerDataFiles = [];
         _loc1_.customerDataFiles.push(new CustomerDataFile());
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.customersIncluded.length)
         {
            _loc3_ = _loc1_.customersIncluded[_loc2_];
            _loc4_ = new _loc3_();
            true;
            true;
            _loc1_.customerDataFiles.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function outputTallies() : void
      {
         this;
      }
      
      public function getCustomerOrder(param1:Number) : Array
      {
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         var _loc4_:Array = [];
         true;
         true;
         if(param1 == 1)
         {
            true;
            true;
            _loc4_ = _loc2_.getFoodCriticOrder().getOrderAsArray();
         }
         else
         {
            _loc4_ = _loc2_.getAvailableOrder(param1).getOrderAsArray();
         }
         return _loc4_;
      }
      
      public function getCustomerCompleteOrder(param1:Number) : Array
      {
         false;
         true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         var _loc4_:CustomerOrder = _loc3_.customerOrder;
         var _loc5_:Array = [];
         false;
         false;
         if(param1 == 1)
         {
            true;
            true;
            _loc5_ = _loc2_.getFoodCriticOrder().getOrderAsArray();
         }
         else
         {
            _loc5_ = _loc4_.getOrderAsArray();
         }
         return _loc5_;
      }
      
      public function getCustomerCompleteOrderData(param1:Number) : CustomerOrder
      {
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         return _loc3_.customerOrder;
      }
      
      public function getFoodCriticOrder(param1:Number = -1) : CustomerOrder
      {
         var _loc4_:Number = NaN;
         var _loc35_:String = null;
         var _loc2_:CustomerData = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         true;
         true;
         _loc2_.setRandomSeed(_loc3_.currentDay);
         if(param1 > -1)
         {
            false;
            false;
            _loc2_.setRandomSeed(param1);
         }
         var _loc5_:CustomerOrder = new CustomerOrder();
         var _loc6_:Number = 7;
         var _loc7_:Array = [];
         var _loc8_:Array = [FoodData.MEAT_WING,FoodData.MEAT_BONELESS,FoodData.MEAT_SHRIMP,FoodData.MEAT_STRIPS];
         var _loc9_:Array = [];
         var _loc10_:Array = FoodData.getSauces();
         var _loc11_:Array = [];
         var _loc12_:Array = [FoodData.SIDE_CARROT,FoodData.SIDE_CELERY,FoodData.SIDE_CHEESECUBES,FoodData.SIDE_FRY,FoodData.SIDE_GREENPEPPER,FoodData.SIDE_REDPEPPER];
         var _loc13_:Array = [];
         var _loc14_:Array = [FoodData.DIP_AWESOMESAUCE,FoodData.DIP_BLUECHEESE,FoodData.DIP_KUNGPAO,FoodData.DIP_MANGOCHILI,FoodData.DIP_RANCH,FoodData.DIP_ZESTYPESTO];
         true;
         true;
         _loc4_ = 0;
         while(_loc4_ < _loc8_.length)
         {
            false;
            false;
            if(_loc3_.hasTopping(_loc8_[_loc4_]))
            {
               _loc7_.push(_loc8_[_loc4_]);
            }
            false;
            false;
            _loc4_++;
         }
         true;
         true;
         _loc4_ = 0;
         while(_loc4_ < _loc10_.length)
         {
            true;
            true;
            if(_loc3_.hasTopping(_loc10_[_loc4_]))
            {
               _loc9_.push(_loc10_[_loc4_]);
            }
            false;
            false;
            false;
            false;
            _loc4_++;
         }
         _loc4_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc4_ >= _loc12_.length)
            {
               break;
            }
            if(_loc3_.hasTopping(_loc12_[_loc4_]))
            {
               _loc11_.push(_loc12_[_loc4_]);
            }
            false;
            false;
            _loc4_++;
         }
         true;
         true;
         false;
         false;
         _loc4_ = 0;
         true;
         true;
         while(_loc4_ < _loc14_.length)
         {
            if(_loc3_.hasTopping(_loc14_[_loc4_]))
            {
               _loc13_.push(_loc14_[_loc4_]);
            }
            _loc4_++;
         }
         var _loc15_:Number = 0;
         var _loc16_:Number = 0;
         0;
         5;
         true;
         true;
         false;
         false;
         false;
         false;
         var _loc19_:Number = (Math.floor(_loc3_.currentDay / 7) - 1) % 5 + 1;
         if(param1 > -1)
         {
            true;
            true;
            true;
            true;
            _loc19_ = (Math.floor(param1 / 7) - 1) % 5 + 1;
            false;
            false;
         }
         else if(_loc3_.getRank() < 6)
         {
            true;
            true;
            true;
            true;
            _loc19_ = 1;
         }
         var _loc20_:Number = 0;
         var _loc21_:Number = 0;
         var _loc22_:String = "";
         var _loc23_:Number = 0;
         var _loc24_:String = "";
         var _loc25_:Number = 0;
         var _loc26_:Number = 0;
         var _loc27_:Boolean = false;
         var _loc28_:Number = 0;
         var _loc29_:Number = 0;
         var _loc30_:Number = 0;
         var _loc31_:Number = 0;
         var _loc32_:Number = 0;
         var _loc33_:Number = 0;
         var _loc34_:Number = 0;
         class_5.method_25("Day " + _loc3_.currentDay + ": Food Critic Pattern " + _loc19_);
         if(_loc19_ == 1)
         {
            _loc20_ = Math.ceil(this.randomize() * 2);
            _loc26_ = this.randomize();
            false;
            false;
            if(_loc20_ == 1)
            {
               if(_loc26_ < 0.5)
               {
                  _loc25_ = 6;
                  true;
                  true;
               }
               else
               {
                  false;
                  false;
                  _loc25_ = 8;
               }
            }
            else
            {
               false;
               false;
               false;
               false;
               if(_loc26_ < 0.3)
               {
                  _loc25_ = 3;
               }
               else if(_loc26_ < 0.6)
               {
                  false;
                  false;
                  _loc25_ = 4;
               }
               else
               {
                  false;
                  false;
                  _loc25_ = 6;
                  false;
                  false;
               }
            }
            while(true)
            {
               true;
               true;
               if(_loc15_ >= _loc20_)
               {
                  break;
               }
               true;
               true;
               if(_loc6_ < 2)
               {
                  break;
               }
               _loc21_ = Math.floor(this.randomize() * _loc7_.length);
               _loc22_ = String(_loc7_[_loc21_]);
               true;
               true;
               _loc23_ = Math.floor(this.randomize() * _loc9_.length);
               _loc24_ = String(_loc9_[_loc23_]);
               false;
               false;
               _loc9_.splice(_loc23_,1);
               true;
               true;
               if(_loc25_ <= 4 && !_loc27_ && _loc15_ == 1 && this.randomize() < 0.2)
               {
                  true;
                  true;
                  _loc5_.addWings(_loc22_,_loc24_,_loc25_ * 2,FoodData.DISTRO_ALL);
                  _loc28_ += _loc25_ * 2;
                  _loc27_ = true;
               }
               else
               {
                  _loc5_.addWings(_loc22_,_loc24_,_loc25_,FoodData.DISTRO_ALL);
                  true;
                  true;
                  _loc28_ += _loc25_;
               }
               false;
               false;
               _loc6_ -= 2;
               false;
               false;
               _loc15_++;
            }
            false;
            false;
            if(_loc20_ == 2 || _loc25_ == 8 || _loc27_)
            {
               _loc20_ = 1;
               true;
               true;
            }
            else
            {
               true;
               true;
               _loc20_ = Math.ceil(this.randomize() * 2);
            }
            while(true)
            {
               if(_loc16_ < _loc20_)
               {
                  if(_loc11_.length == 0)
                  {
                     false;
                     false;
                     _loc16_ = _loc20_;
                     continue;
                  }
                  if(_loc6_ >= 1)
                  {
                     _loc21_ = Math.floor(this.randomize() * _loc11_.length);
                     _loc22_ = String(_loc11_[_loc21_]);
                     _loc11_.splice(_loc21_,1);
                     false;
                     false;
                     false;
                     false;
                     if(_loc25_ == 4 && _loc16_ == 0 && !_loc27_ && this.randomize() < 0.5)
                     {
                        _loc5_.addSide(_loc22_,8,FoodData.DISTRO_ALL);
                        false;
                        false;
                        _loc28_ += 8;
                        false;
                        false;
                     }
                     else
                     {
                        true;
                        true;
                        false;
                        false;
                        if(_loc25_ == 3 && _loc16_ == 0 && !_loc27_ && this.randomize() < 0.3)
                        {
                           _loc5_.addSide(_loc22_,6,FoodData.DISTRO_ALL);
                           false;
                           false;
                           false;
                           false;
                           false;
                           false;
                           _loc28_ += 6;
                        }
                        else
                        {
                           _loc5_.addSide(_loc22_,_loc25_,FoodData.DISTRO_ALL);
                           true;
                           true;
                           _loc28_ += _loc25_;
                        }
                     }
                     continue;
                  }
                  true;
                  true;
               }
            }
         }
         else
         {
            false;
            false;
            if(_loc19_ == 2)
            {
               true;
               true;
               if((_loc26_ = this.randomize()) < 0.25)
               {
                  _loc25_ = 3;
               }
               else
               {
                  false;
                  false;
                  if(_loc26_ < 0.5)
                  {
                     true;
                     true;
                     _loc25_ = 4;
                  }
                  else if(_loc26_ < 0.75)
                  {
                     _loc25_ = 5;
                  }
                  else
                  {
                     _loc25_ = 6;
                     true;
                     true;
                  }
               }
               _loc20_ = 1;
               while(true)
               {
                  false;
                  false;
                  if(_loc29_ >= _loc20_)
                  {
                     true;
                     true;
                     break;
                  }
                  if(_loc9_.length == 0)
                  {
                     break;
                  }
                  if(_loc6_ < 2)
                  {
                     break;
                  }
                  _loc21_ = Math.floor(this.randomize() * _loc7_.length);
                  false;
                  false;
                  _loc22_ = String(_loc7_[_loc21_]);
                  _loc23_ = Math.floor(this.randomize() * _loc9_.length);
                  _loc24_ = String(_loc9_[_loc23_]);
                  false;
                  false;
                  _loc9_.splice(_loc23_,1);
                  _loc5_.addWings(_loc22_,_loc24_,_loc25_,FoodData.DISTRO_LEFT);
                  true;
                  true;
                  _loc33_ += _loc25_;
                  true;
                  true;
                  _loc29_++;
                  true;
                  true;
                  true;
                  true;
                  _loc6_ -= 2;
               }
               while(true)
               {
                  false;
                  false;
                  false;
                  false;
                  if(_loc30_ >= _loc20_)
                  {
                     break;
                  }
                  if(_loc9_.length == 0)
                  {
                     false;
                     false;
                     break;
                  }
                  if(_loc6_ < 2)
                  {
                     break;
                  }
                  _loc21_ = Math.floor(this.randomize() * _loc7_.length);
                  _loc22_ = String(_loc7_[_loc21_]);
                  false;
                  false;
                  _loc23_ = Math.floor(this.randomize() * _loc9_.length);
                  _loc24_ = String(_loc9_[_loc23_]);
                  _loc9_.splice(_loc23_,1);
                  _loc5_.addWings(_loc22_,_loc24_,_loc25_,FoodData.DISTRO_RIGHT);
                  true;
                  true;
                  _loc34_ += _loc25_;
                  _loc30_++;
                  _loc6_ -= 2;
                  false;
                  false;
               }
               false;
               false;
               if((_loc25_ == 3 || _loc25_ == 4) && _loc29_ <= 1)
               {
                  _loc20_ = 1;
                  while(true)
                  {
                     true;
                     true;
                     if(_loc31_ >= _loc20_)
                     {
                        break;
                     }
                     if(_loc11_.length == 0)
                     {
                        false;
                        false;
                        break;
                     }
                     if(_loc6_ < 1)
                     {
                        break;
                     }
                     true;
                     true;
                     _loc21_ = Math.floor(this.randomize() * _loc11_.length);
                     _loc22_ = String(_loc11_[_loc21_]);
                     false;
                     false;
                     _loc11_.splice(_loc21_,1);
                     _loc5_.addSide(_loc22_,_loc25_,FoodData.DISTRO_LEFT);
                     true;
                     true;
                     _loc33_ += _loc25_;
                     _loc31_++;
                     false;
                     false;
                     _loc6_--;
                     false;
                     false;
                  }
               }
               true;
               true;
               if((_loc25_ == 3 || _loc25_ == 4) && _loc30_ <= 1)
               {
                  true;
                  true;
                  §§push(_loc25_ == 3);
                  if(_loc25_ == 3)
                  {
                     true;
                     true;
                     §§pop();
                     true;
                     true;
                     true;
                     true;
                     §§push(_loc33_ == 6);
                  }
                  if(§§pop() && _loc34_ == 0)
                  {
                     _loc20_ = 2;
                  }
                  else if(_loc25_ == 4 && _loc33_ == 8 && _loc34_ == 0)
                  {
                     _loc20_ = 2;
                  }
                  else
                  {
                     _loc20_ = 1;
                  }
                  while(true)
                  {
                     if(_loc32_ < _loc20_)
                     {
                        if(_loc11_.length == 0)
                        {
                           false;
                           false;
                        }
                        else
                        {
                           if(_loc6_ >= 1)
                           {
                              continue;
                           }
                           true;
                           true;
                        }
                     }
                  }
               }
            }
            else
            {
               false;
               false;
               if(_loc19_ == 3)
               {
                  _loc20_ = Math.ceil(this.randomize() * 4);
                  if(_loc9_.length < _loc20_)
                  {
                     true;
                     true;
                     _loc20_ = _loc9_.length;
                  }
                  _loc26_ = Math.floor(this.randomize() * (4 - _loc20_));
                  false;
                  false;
                  _loc4_ = 0;
                  while(_loc4_ < 4)
                  {
                     if(_loc4_ == 3)
                     {
                        false;
                        false;
                        _loc35_ = FoodData.DISTRO_RIGHT;
                     }
                     else
                     {
                        true;
                        true;
                        false;
                        false;
                        if(_loc4_ == 2)
                        {
                           false;
                           false;
                           true;
                           true;
                           _loc35_ = FoodData.DISTRO_LEFT;
                           true;
                           true;
                        }
                        else
                        {
                           _loc35_ = FoodData.DISTRO_ALL;
                           false;
                           false;
                        }
                     }
                     true;
                     true;
                     true;
                     true;
                     §§push(_loc4_ == 3);
                     if(!(_loc4_ == 3))
                     {
                        true;
                        true;
                        §§pop();
                        §§push(_loc4_ < _loc26_);
                     }
                     true;
                     true;
                     if(§§pop() || _loc4_ > _loc26_ + _loc20_)
                     {
                        if(_loc11_.length > 0)
                        {
                           _loc21_ = Math.floor(this.randomize() * _loc11_.length);
                           true;
                           true;
                           _loc22_ = String(_loc11_[_loc21_]);
                           _loc11_.splice(_loc21_,1);
                           true;
                           true;
                           _loc5_.addSide(_loc22_,3,_loc35_);
                           _loc6_--;
                        }
                     }
                     else if(_loc9_.length > 0)
                     {
                        false;
                        false;
                        false;
                        false;
                        _loc21_ = Math.floor(this.randomize() * _loc7_.length);
                        _loc22_ = String(_loc7_[_loc21_]);
                        _loc23_ = Math.floor(this.randomize() * _loc9_.length);
                        false;
                        false;
                        _loc24_ = String(_loc9_[_loc23_]);
                        _loc9_.splice(_loc23_,1);
                        _loc5_.addWings(_loc22_,_loc24_,3,_loc35_);
                        _loc6_ -= 2;
                     }
                     _loc4_++;
                  }
               }
               else if(_loc19_ == 4)
               {
                  _loc20_ = Math.ceil(this.randomize() * 3);
                  false;
                  false;
                  if(_loc9_.length < _loc20_)
                  {
                     false;
                     false;
                     _loc20_ = _loc9_.length;
                  }
                  _loc26_ = Math.floor(this.randomize() * (3 - _loc20_));
                  false;
                  false;
                  _loc4_ = 0;
                  while(true)
                  {
                     false;
                     false;
                     if(_loc4_ >= 3)
                     {
                        break;
                     }
                     if(_loc4_ == 2)
                     {
                        _loc35_ = FoodData.DISTRO_RIGHT;
                        false;
                        false;
                        _loc25_ = 6;
                     }
                     else
                     {
                        false;
                        false;
                        if(_loc4_ == 1)
                        {
                           false;
                           false;
                           _loc35_ = FoodData.DISTRO_LEFT;
                           _loc25_ = 6;
                        }
                        else
                        {
                           false;
                           false;
                           _loc35_ = FoodData.DISTRO_ALL;
                           true;
                           true;
                           true;
                           true;
                           _loc25_ = 4;
                           true;
                           true;
                        }
                     }
                     if(_loc4_ < _loc26_ || _loc4_ > _loc26_ + _loc20_)
                     {
                        if(_loc11_.length > 0)
                        {
                           false;
                           false;
                           _loc21_ = Math.floor(this.randomize() * _loc11_.length);
                           true;
                           true;
                           _loc22_ = String(_loc11_[_loc21_]);
                           _loc11_.splice(_loc21_,1);
                           true;
                           true;
                           _loc5_.addSide(_loc22_,_loc25_,_loc35_);
                        }
                     }
                     else if(_loc9_.length > 0)
                     {
                        _loc21_ = Math.floor(this.randomize() * _loc7_.length);
                        true;
                        true;
                        _loc22_ = String(_loc7_[_loc21_]);
                        false;
                        false;
                        _loc23_ = Math.floor(this.randomize() * _loc9_.length);
                        _loc24_ = String(_loc9_[_loc23_]);
                        true;
                        true;
                        _loc9_.splice(_loc23_,1);
                        _loc5_.addWings(_loc22_,_loc24_,_loc25_,_loc35_);
                        false;
                        false;
                     }
                     false;
                     false;
                     _loc4_++;
                  }
               }
               else if(_loc19_ == 5)
               {
                  _loc20_ = Math.ceil(this.randomize() * 3);
                  if(_loc9_.length < _loc20_)
                  {
                     _loc20_ = _loc9_.length;
                  }
                  _loc26_ = Math.floor(this.randomize() * (3 - _loc20_));
                  _loc4_ = 0;
                  while(_loc4_ < 3)
                  {
                     false;
                     false;
                     if(_loc4_ == 2)
                     {
                        _loc35_ = FoodData.DISTRO_RIGHT;
                        true;
                        true;
                        false;
                        false;
                        false;
                        false;
                        _loc25_ = 3;
                     }
                     else if(_loc4_ == 1)
                     {
                        false;
                        false;
                        _loc35_ = FoodData.DISTRO_LEFT;
                        true;
                        true;
                        _loc25_ = 3;
                     }
                     else
                     {
                        _loc35_ = FoodData.DISTRO_ALL;
                        _loc25_ = 6;
                     }
                     true;
                     true;
                     if(_loc4_ < _loc26_ || _loc4_ > _loc26_ + _loc20_)
                     {
                        true;
                        true;
                        if(_loc11_.length > 0)
                        {
                           _loc21_ = Math.floor(this.randomize() * _loc11_.length);
                           _loc22_ = String(_loc11_[_loc21_]);
                           _loc11_.splice(_loc21_,1);
                           true;
                           true;
                           _loc5_.addSide(_loc22_,_loc25_,_loc35_);
                           true;
                           true;
                        }
                     }
                     else if(_loc9_.length > 0)
                     {
                        _loc21_ = Math.floor(this.randomize() * _loc7_.length);
                        _loc22_ = String(_loc7_[_loc21_]);
                        _loc23_ = Math.floor(this.randomize() * _loc9_.length);
                        false;
                        false;
                        _loc24_ = String(_loc9_[_loc23_]);
                        _loc9_.splice(_loc23_,1);
                        _loc5_.addWings(_loc22_,_loc24_,_loc25_,_loc35_);
                     }
                     _loc4_++;
                     false;
                     false;
                  }
               }
            }
         }
         var _loc36_:Number = Math.round(this.randomize() * 4);
         false;
         false;
         if(_loc6_ >= 1)
         {
            if(_loc36_ > 0)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc36_)
               {
                  _loc21_ = Math.floor(this.randomize() * _loc13_.length);
                  _loc22_ = String(_loc13_[_loc21_]);
                  _loc5_.addDip(_loc22_);
                  _loc4_++;
               }
            }
         }
         var _loc37_:String = "Got Food Critic Order: ";
         false;
         false;
         false;
         false;
         _loc4_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc4_ >= _loc5_.wings.length)
            {
               break;
            }
            true;
            true;
            true;
            true;
            true;
            true;
            true;
            true;
            false;
            false;
            _loc37_ += _loc5_.wings[_loc4_].toString() + " | ";
            true;
            true;
            _loc4_++;
         }
         true;
         true;
         _loc4_ = 0;
         while(true)
         {
            false;
            false;
            true;
            true;
            if(_loc4_ >= _loc5_.sides.length)
            {
               break;
            }
            true;
            true;
            true;
            true;
            false;
            false;
            _loc37_ += _loc5_.sides[_loc4_].toString() + " | ";
            false;
            false;
            true;
            true;
            _loc4_++;
            true;
            true;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc5_.dips.length)
         {
            _loc37_ += _loc5_.dips[_loc4_].toString() + " | ";
            false;
            false;
            true;
            true;
            _loc4_++;
         }
         class_5.method_25(_loc37_);
         return _loc5_;
      }
      
      public function getAvailableOrder(param1:Number) : CustomerOrder
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:Boolean = false;
         var _loc14_:Number = NaN;
         var _loc15_:String = null;
         var _loc16_:Array = null;
         var _loc17_:String = null;
         var _loc18_:Array = null;
         var _loc19_:Array = null;
         var _loc2_:CustomerData = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc5_:CustomerDataFile;
         var _loc6_:CustomerOrder = (_loc5_ = _loc2_.customerDataFiles[param1]).customerOrder;
         var _loc7_:CustomerOrder = new CustomerOrder();
         true;
         true;
         var _loc8_:Array;
         _loc4_ = (_loc8_ = FoodData.getSauces()).length - 1;
         while(true)
         {
            true;
            true;
            if(_loc4_ < 0)
            {
               break;
            }
            true;
            true;
            if(_loc3_.hasTopping(_loc8_[_loc4_]) == false)
            {
               _loc8_.splice(_loc4_,1);
            }
            false;
            false;
            _loc4_--;
         }
         true;
         true;
         true;
         true;
         _loc4_ = 0;
         while(_loc4_ < _loc6_.wings.length)
         {
            false;
            false;
            if((_loc9_ = _loc8_.indexOf(_loc6_.wings[_loc4_][3])) > -1)
            {
               _loc8_.splice(_loc9_,1);
            }
            true;
            true;
            false;
            false;
            _loc4_++;
         }
         false;
         false;
         _loc4_ = 0;
         while(_loc4_ < _loc6_.wings.length)
         {
            false;
            false;
            true;
            true;
            _loc10_ = String(_loc6_.wings[_loc4_][0]);
            true;
            true;
            _loc11_ = String(_loc6_.wings[_loc4_][3]);
            false;
            false;
            _loc12_ = [];
            _loc13_ = true;
            true;
            true;
            false;
            false;
            if(_loc3_.hasTopping(_loc10_))
            {
               _loc12_[0] = _loc10_;
               _loc12_[1] = _loc6_.wings[_loc4_][1];
               false;
               false;
               _loc12_[2] = _loc6_.wings[_loc4_][2];
               if(_loc3_.hasTopping(_loc11_))
               {
                  _loc12_[3] = _loc11_;
               }
               else
               {
                  _loc12_[3] = FoodData.SAUCE_BBQ;
                  if(_loc8_.length > 0)
                  {
                     _loc14_ = 0;
                     _loc12_[3] = _loc8_[_loc14_];
                     _loc8_.splice(_loc14_,1);
                  }
                  else
                  {
                     false;
                     false;
                     _loc13_ = false;
                  }
               }
               if(_loc13_)
               {
                  _loc7_.wings.push(_loc12_);
               }
            }
            true;
            true;
            _loc4_++;
         }
         false;
         false;
         _loc4_ = 0;
         while(_loc4_ < _loc6_.sides.length)
         {
            true;
            true;
            _loc15_ = String(_loc6_.sides[_loc4_][0]);
            _loc16_ = [];
            true;
            true;
            if(_loc3_.hasTopping(_loc15_))
            {
               _loc16_[0] = _loc15_;
               _loc16_[1] = _loc6_.sides[_loc4_][1];
               _loc16_[2] = _loc6_.sides[_loc4_][2];
               _loc7_.sides.push(_loc16_);
            }
            false;
            false;
            false;
            false;
            _loc4_++;
         }
         false;
         false;
         _loc4_ = 0;
         while(_loc4_ < _loc6_.dips.length)
         {
            true;
            true;
            _loc17_ = String(_loc6_.dips[_loc4_][0]);
            true;
            true;
            _loc18_ = [];
            if(_loc3_.hasTopping(_loc17_))
            {
               true;
               true;
               _loc18_[0] = _loc17_;
               false;
               false;
               _loc7_.dips.push(_loc18_);
               true;
               true;
            }
            false;
            false;
            true;
            true;
            _loc4_++;
         }
         if(_loc6_.dips.length > 0 && _loc7_.dips.length == 0)
         {
            _loc19_ = [FoodData.DIP_RANCH];
            false;
            false;
            _loc7_.dips.push(_loc19_);
         }
         return _loc7_;
      }
      
      public function getCustomerIndex(param1:String) : Number
      {
         false;
         true;
         var _loc2_:CustomerData = this;
         var _loc3_:Number = -1;
         var _loc4_:int = 1;
         while(_loc4_ < _loc2_.customerDataFiles.length)
         {
            false;
            false;
            false;
            false;
            if(_loc2_.customerDataFiles[_loc4_].customerName == param1 || _loc2_.customerDataFiles[_loc4_].customerClipName == param1)
            {
               true;
               true;
               _loc3_ = _loc4_;
               false;
               false;
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function getCustomerName(param1:Number) : String
      {
         false;
         true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         true;
         true;
         if(_loc3_.customerName == "ChuckOrMandi")
         {
            true;
            true;
            if(_loc2_.gameObj.workerData.gender == WorkerData.GENDER_MALE)
            {
               true;
               true;
               return "Mandi";
            }
            return "Chuck";
         }
         return _loc3_.customerName;
      }
      
      public function getCustomerClipName(param1:Number) : String
      {
         false;
         true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         false;
         false;
         if(_loc3_.customerName == "ChuckOrMandi")
         {
            false;
            false;
            if(_loc2_.gameObj.workerData.gender == WorkerData.GENDER_MALE)
            {
               true;
               true;
               return "Mandi";
            }
            return "Chuck";
         }
         return _loc3_.customerClipName;
      }
      
      public function getCustomerOrderData(param1:Number) : CustomerOrder
      {
         false;
         true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         if(param1 == 1)
         {
            return _loc2_.getFoodCriticOrder();
         }
         return _loc2_.getAvailableOrder(param1);
      }
      
      public function getCustomerFirstGame(param1:Number) : String
      {
         false;
         true;
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         false;
         false;
         if(_loc3_.customerName == "ChuckOrMandi")
         {
            true;
            true;
            true;
            true;
            if(_loc2_.gameObj.workerData.gender == WorkerData.GENDER_MALE)
            {
               false;
               false;
               return "Papa\'s Pizzeria";
            }
            return "Papa Louie";
         }
         return _loc3_.customerFirstGame;
      }
      
      public function getCustomerColor(param1:Number) : String
      {
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         return _loc3_.thumbColor;
      }
      
      public function getCustomerTotal() : Number
      {
         var _loc1_:CustomerData = this;
         return _loc1_.customerDataFiles.length - 1;
      }
      
      private function getToppingRealName(param1:String) : String
      {
         var _loc2_:CustomerData = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:String = "???";
         var _loc5_:Number;
         if((_loc5_ = _loc3_.toppingIndexes.indexOf(param1)) > -1)
         {
            _loc4_ = String(_loc3_.toppingNames[_loc5_]);
         }
         return _loc4_;
      }
      
      public function getCustomerToppingString(param1:Number) : String
      {
         false;
         true;
         var _loc7_:int = 0;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:int = 0;
         var _loc2_:CustomerData = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:String = "";
         var _loc5_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         var _loc6_:CustomerOrder = _loc2_.getCustomerOrderData(param1);
         var _loc10_:Array = [];
         _loc7_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc7_ >= _loc6_.wings.length)
            {
               break;
            }
            _loc11_ = (_loc11_ = _loc2_.getToppingRealName(_loc6_.wings[_loc7_][3])).substr(0,_loc11_.length - 5);
            _loc12_ = _loc2_.getToppingRealName(_loc6_.wings[_loc7_][0]);
            false;
            false;
            false;
            false;
            _loc13_ = _loc11_ + "" + _loc12_;
            if(_loc10_.indexOf(_loc13_) == -1)
            {
               _loc10_.push(_loc13_);
            }
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc6_.sides.length)
         {
            false;
            false;
            _loc14_ = _loc2_.getToppingRealName(_loc6_.sides[_loc7_][0]);
            if(_loc10_.indexOf(_loc14_) == -1)
            {
               _loc10_.push(_loc14_);
               false;
               false;
            }
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc6_.dips.length)
         {
            true;
            true;
            _loc15_ = _loc2_.getToppingRealName(_loc6_.dips[_loc7_][0]);
            if(_loc10_.indexOf(_loc15_) == -1)
            {
               false;
               false;
               _loc10_.push(_loc15_);
            }
            _loc7_++;
            true;
            true;
         }
         true;
         true;
         _loc4_ = "";
         if(_loc10_.length > 0)
         {
            true;
            true;
            _loc16_ = 0;
            false;
            false;
            while(_loc16_ < _loc10_.length)
            {
               true;
               true;
               true;
               true;
               §§push(_loc16_ == _loc10_.length - 1);
               if(_loc16_ == _loc10_.length - 1)
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  §§push(_loc16_ != 0);
               }
               if(§§pop())
               {
                  false;
                  false;
                  _loc4_ += " and " + _loc10_[_loc16_];
               }
               else if(_loc16_ == 0)
               {
                  _loc4_ += _loc10_[_loc16_];
               }
               else if(_loc16_ < _loc10_.length - 1)
               {
                  _loc4_ += ", " + _loc10_[_loc16_];
               }
               _loc16_++;
            }
         }
         return _loc4_;
      }
      
      public function isCloser(param1:Number) : Boolean
      {
         var _loc2_:CustomerData = this;
         var _loc3_:CustomerDataFile = _loc2_.customerDataFiles[param1];
         return _loc3_.isCloser;
      }
      
      public function customersHaveTopping(param1:*, param2:String) : Boolean
      {
         var _loc4_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc3_:CustomerData = this;
         var _loc5_:Boolean = false;
         true;
         true;
         false;
         false;
         if(param1 is Number)
         {
            false;
            false;
            false;
            false;
            _loc4_ = [param1];
         }
         else if(param1 is Array)
         {
            _loc4_ = param1;
         }
         else
         {
            _loc4_ = [];
         }
         if(_loc4_.length > 0)
         {
            true;
            true;
            _loc6_ = 0;
            while(_loc6_ < _loc4_.length)
            {
               _loc7_ = _loc3_.getCustomerOrder(_loc4_[_loc6_]);
               _loc8_ = 0;
               while(true)
               {
                  if(_loc8_ >= _loc7_.length)
                  {
                     false;
                     false;
                     break;
                  }
                  if(_loc7_[_loc8_][0] == param2)
                  {
                     _loc5_ = true;
                     break;
                  }
                  _loc8_++;
                  false;
                  false;
               }
               _loc6_++;
            }
         }
         return _loc5_;
      }
      
      public function getCustomerWithTopping(param1:String, param2:Array) : Number
      {
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc3_:CustomerData = this;
         var _loc4_:Number = -1;
         var _loc5_:int = 0;
         while(_loc5_ < param2.length)
         {
            _loc6_ = _loc3_.getCustomerOrder(param2[_loc5_]);
            false;
            false;
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               if(_loc6_[_loc7_][0] == param1)
               {
                  false;
                  false;
                  _loc4_ = Number(param2[_loc5_]);
                  break;
               }
               _loc7_++;
            }
            true;
            true;
            if(_loc4_ > -1)
            {
               break;
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public function randomize(param1:Boolean = true) : Number
      {
         var _loc2_:CustomerData = this;
         if(param1)
         {
            false;
            false;
            true;
            true;
            true;
            true;
            return (_loc2_.randomSeed = _loc2_.randomSeed * 16807 % 2147483647) / 2147483647 + 2.33e-10;
         }
         return Math.random();
      }
      
      public function setRandomSeed(param1:Number) : void
      {
         false;
         true;
         var _loc2_:CustomerData = this;
         true;
         true;
         _loc2_.randomSeed = param1;
      }
   }
}
