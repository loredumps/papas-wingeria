package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.CustomerData;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   import wingGame.managers.CustomerManager;
   import wingGame.models.Worker;
   
   public class StartDayScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var worker:Worker;
      
      public var isWaitingForTalkerResponse:Number = 0;
      
      public function StartDayScreen(param1:class_4)
      {
         false;
         true;
         false;
         false;
         super();
         var _loc2_:StartDayScreen = this;
         true;
         true;
         _loc2_.gameObj = param1;
         false;
         false;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:StartDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         true;
         true;
         _loc1_.clip = new startDayMC();
         _loc1_.gameObj.var_34.addChild(_loc1_.clip);
         _loc1_.clip.dayMC.clip.day_text.text = String(_loc2_.getDay());
         _loc1_.clip.dayMC.clip.day_shadow.text = String(_loc2_.getDay());
         _loc1_.clip.dayMC.nopapaclip.day_text.text = String(_loc2_.getDay());
         false;
         false;
         _loc1_.clip.dayMC.nopapaclip.day_shadow.text = String(_loc2_.getDay());
         _loc1_.clip.dayMC.nopapaclip.return_txt.text = "";
         false;
         false;
         var _loc3_:Number = _loc2_.getDaysUntilPapa();
         _loc1_.clip.dayMC.clip.visible = false;
         _loc1_.clip.dayMC.nopapaclip.visible = true;
         _loc1_.clip.play();
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,this.updateScreen);
         true;
         true;
         _loc1_.gameObj.soundManager.switchMusic("none");
         _loc1_.gameObj.soundManager.playSound("startofday.wav");
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip.workerholder,_loc1_.gameObj.workerData,0,0,0.22);
         _loc1_.worker.playAnimation("startday");
         true;
         true;
         _loc1_.setupCustomers();
         _loc1_.setupOrderHints();
         _loc1_.gameObj.stage.frameRate = 30;
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:MovieClip = null;
         var _loc2_:StartDayScreen = this;
         _loc2_.worker.animateModel();
         true;
         true;
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            true;
            true;
            _loc2_.clip.removeEventListener(Event.ENTER_FRAME,this.updateScreen);
            true;
            true;
            true;
            true;
            _loc2_.gameObj.method_111();
            _loc2_.gameObj.method_114();
         }
         else if(_loc2_.clip.currentFrame == 66)
         {
            _loc2_.clip.customercross.gotoAndPlay("stand");
         }
         else if(_loc2_.clip.currentFrame == 72)
         {
            true;
            true;
            _loc2_.clip.customercross.gotoAndPlay("overjoyed");
         }
         else if(_loc2_.clip.currentFrame == 84)
         {
            _loc2_.clip.customerleaving.gotoAndPlay("stand");
         }
         else if(_loc2_.clip.currentFrame == 89)
         {
            false;
            false;
            _loc3_ = Math.random();
            true;
            true;
            if(_loc3_ < 0.2)
            {
               _loc2_.clip.customerleaving.gotoAndPlay("stand");
            }
            else if(_loc3_ < 0.4)
            {
               _loc2_.clip.customerleaving.gotoAndPlay("decent");
               true;
               true;
            }
            else
            {
               true;
               true;
               if(_loc3_ < 0.6)
               {
                  _loc2_.clip.customerleaving.gotoAndPlay("worried");
               }
               else if(_loc3_ < 0.8)
               {
                  _loc2_.clip.customerleaving.gotoAndPlay("pissed");
                  true;
                  true;
               }
               else
               {
                  _loc2_.clip.customerleaving.gotoAndPlay("overjoyed");
               }
            }
         }
         else
         {
            false;
            false;
            if(_loc2_.clip.currentFrame == 74 && _loc2_.isWaitingForTalkerResponse > 0)
            {
               false;
               false;
               if(_loc2_.isWaitingForTalkerResponse == 1)
               {
                  _loc2_.clip.customertalking2.gotoAndPlay("stand");
               }
               else
               {
                  _loc2_.clip.customertalking1.gotoAndPlay("stand");
               }
            }
            else if(_loc2_.clip.currentFrame == 85 && _loc2_.isWaitingForTalkerResponse > 0)
            {
               _loc4_ = Math.random();
               _loc5_ = _loc2_.clip["customertalking" + _loc2_.isWaitingForTalkerResponse];
               true;
               true;
               true;
               true;
               if(_loc4_ < 0.2)
               {
                  _loc5_.gotoAndPlay("takeorder");
               }
               else if(_loc4_ < 0.4)
               {
                  _loc5_.gotoAndPlay("decent");
               }
               else
               {
                  false;
                  false;
                  false;
                  false;
                  if(_loc4_ < 0.6)
                  {
                     true;
                     true;
                     _loc5_.gotoAndPlay("upset");
                  }
                  else if(_loc4_ < 0.8)
                  {
                     _loc5_.gotoAndPlay("pissed");
                  }
                  else
                  {
                     _loc5_.gotoAndPlay("happy");
                  }
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:StartDayScreen = this;
         _loc1_.worker.destroy();
         _loc1_.worker = null;
         _loc1_.destroyCustomerModel(_loc1_.clip.customercross);
         _loc1_.destroyCustomerModel(_loc1_.clip.customerfg);
         _loc1_.destroyCustomerModel(_loc1_.clip.customerleaving);
         _loc1_.destroyCustomerModel(_loc1_.clip.customerreading);
         _loc1_.destroyCustomerModel(_loc1_.clip.customertalking1);
         true;
         true;
         _loc1_.destroyCustomerModel(_loc1_.clip.customertalking2);
         _loc1_.gameObj.var_34.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function setupOrderHints() : void
      {
         var _loc5_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:CustomerOrder = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:Number = NaN;
         var _loc1_:StartDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         var _loc4_:CustomerManager = _loc1_.gameObj.var_13;
         true;
         true;
         _loc5_ = 1;
         while(true)
         {
            false;
            false;
            if(_loc5_ > 3)
            {
               break;
            }
            _loc1_.clip["sauce_hint" + _loc5_].visible = false;
            true;
            true;
            _loc1_.clip["numberhint" + _loc5_].visible = false;
            _loc1_.clip["meathint" + _loc5_].visible = false;
            true;
            true;
            _loc5_++;
         }
         var _loc6_:Number = 0;
         false;
         false;
         _loc5_ = 0;
         while(_loc5_ < _loc4_.customerLineup.length)
         {
            if(_loc6_ < 3)
            {
               false;
               false;
               _loc7_ = Number(_loc4_.customerLineup[_loc5_]);
               false;
               false;
               _loc8_ = _loc3_.getCustomerOrderData(_loc7_);
               false;
               false;
               _loc9_ = 0;
               while(_loc9_ < _loc8_.wings.length)
               {
                  true;
                  true;
                  if(++_loc6_ <= 3)
                  {
                     _loc1_.clip["sauce_hint" + _loc6_].visible = true;
                     _loc1_.clip["sauce_hint" + _loc6_].gotoAndStop(FoodData.getSauceFrame(_loc8_.wings[_loc9_][3]));
                     _loc1_.clip["numberhint" + _loc6_].visible = true;
                     _loc1_.clip["numberhint" + _loc6_].gotoAndStop(_loc8_.wings[_loc9_][1]);
                     _loc10_ = String(_loc8_.wings[_loc9_][0]);
                     _loc11_ = 1;
                     if(_loc10_ == FoodData.MEAT_WING)
                     {
                        _loc11_ = 1;
                     }
                     else
                     {
                        false;
                        false;
                        true;
                        true;
                        if(_loc10_ == FoodData.MEAT_BONELESS)
                        {
                           _loc11_ = 2;
                        }
                        else
                        {
                           false;
                           false;
                           if(_loc10_ == FoodData.MEAT_SHRIMP)
                           {
                              false;
                              false;
                              false;
                              false;
                              _loc11_ = 3;
                           }
                           else if(_loc10_ == FoodData.MEAT_STRIPS)
                           {
                              _loc11_ = 4;
                           }
                        }
                     }
                     _loc1_.clip["meathint" + _loc6_].visible = true;
                     _loc1_.clip["meathint" + _loc6_].gotoAndStop(_loc11_);
                  }
                  _loc9_++;
               }
            }
            _loc5_++;
         }
      }
      
      public function setupCustomers() : void
      {
         var _loc1_:StartDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         var _loc4_:CustomerManager = _loc1_.gameObj.var_13;
         var _loc5_:Array = [];
         var _loc6_:Number = Number(_loc4_.customerLineup[0]);
         false;
         false;
         var _loc7_:String = _loc3_.getCustomerClipName(_loc6_);
         _loc1_.setupCustomerModel(_loc1_.clip.customercross,_loc7_);
         _loc5_.push(_loc6_);
         var _loc8_:Number = Number(_loc4_.customerLineup[1]);
         var _loc9_:String = _loc3_.getCustomerClipName(_loc8_);
         true;
         true;
         _loc1_.setupCustomerModel(_loc1_.clip.customerleaving,_loc9_);
         true;
         true;
         _loc5_.push(_loc8_);
         var _loc10_:Number = -1;
         while(true)
         {
            false;
            false;
            §§push(_loc10_ == -1);
            if(!(_loc10_ == -1))
            {
               true;
               true;
               §§pop();
               true;
               true;
               §§push(_loc5_.indexOf(_loc10_) > -1);
            }
            if(!§§pop())
            {
               break;
            }
            _loc10_ = Math.ceil(Math.random() * (_loc3_.getCustomerTotal() - 1));
            true;
            true;
         }
         true;
         true;
         var _loc11_:String = _loc3_.getCustomerClipName(_loc10_);
         _loc1_.setupCustomerModel(_loc1_.clip.customerfg,_loc11_);
         _loc5_.push(_loc10_);
         var _loc12_:Number = -1;
         false;
         false;
         while(true)
         {
            §§push(_loc12_ == -1);
            if(!(_loc12_ == -1))
            {
               true;
               true;
               §§pop();
               false;
               false;
               §§push(_loc5_.indexOf(_loc12_) > -1);
            }
            if(!§§pop())
            {
               break;
            }
            false;
            false;
            _loc12_ = Math.ceil(Math.random() * (_loc3_.getCustomerTotal() - 1));
            true;
            true;
         }
         false;
         false;
         var _loc13_:String = _loc3_.getCustomerClipName(_loc12_);
         true;
         true;
         _loc1_.setupCustomerModel(_loc1_.clip.customerreading,_loc13_);
         true;
         true;
         _loc5_.push(_loc12_);
         var _loc14_:Number = -1;
         while(true)
         {
            §§push(_loc14_ == -1);
            if(!(_loc14_ == -1))
            {
               false;
               false;
               §§pop();
               §§push(_loc5_.indexOf(_loc14_) > -1);
            }
            if(!§§pop())
            {
               break;
            }
            true;
            true;
            _loc14_ = Math.ceil(Math.random() * (_loc3_.getCustomerTotal() - 1));
         }
         true;
         true;
         var _loc15_:String = _loc3_.getCustomerClipName(_loc14_);
         _loc1_.setupCustomerModel(_loc1_.clip.customertalking1,_loc15_);
         _loc5_.push(_loc14_);
         var _loc16_:Number = -1;
         while(true)
         {
            false;
            false;
            §§push(_loc16_ == -1);
            if(!(_loc16_ == -1))
            {
               true;
               true;
               §§pop();
               §§push(_loc5_.indexOf(_loc16_) > -1);
            }
            if(!§§pop())
            {
               break;
            }
            true;
            true;
            _loc16_ = Math.ceil(Math.random() * (_loc3_.getCustomerTotal() - 1));
         }
         var _loc17_:String = _loc3_.getCustomerClipName(_loc16_);
         _loc1_.setupCustomerModel(_loc1_.clip.customertalking2,_loc17_);
         _loc5_.push(_loc16_);
         false;
         false;
         _loc1_.clip.customercross.gotoAndPlay("walk");
         true;
         true;
         _loc1_.clip.customerfg.gotoAndPlay("walk");
         _loc1_.clip.customerleaving.gotoAndPlay("walk");
         var _loc18_:Number;
         if((_loc18_ = Math.random()) < 0.3)
         {
            true;
            true;
            _loc1_.clip.customerreading.gotoAndPlay("readpaper1");
            _loc1_.clip.customerreading.book.gotoAndStop("newspaper");
         }
         else
         {
            false;
            false;
            if(_loc18_ < 0.6)
            {
               _loc1_.clip.customerreading.gotoAndPlay("readpaper1");
               _loc1_.clip.customerreading.book.gotoAndStop("comics");
            }
            else
            {
               true;
               true;
               if(_loc18_ < 0.8)
               {
                  true;
                  true;
                  _loc1_.clip.customerreading.gotoAndPlay("chewgum3");
               }
               else
               {
                  _loc1_.clip.customerreading.gotoAndPlay("drinkcoffee4");
                  _loc1_.clip.customerreading.mug.gotoAndStop("soda");
               }
            }
         }
         false;
         false;
         true;
         true;
         var _loc19_:Number;
         if((_loc19_ = Math.random()) < 0.3)
         {
            _loc1_.clip.customertalking1.gotoAndPlay("takeorder");
            _loc1_.clip.customertalking2.gotoAndPlay("stand");
            _loc1_.isWaitingForTalkerResponse = 2;
         }
         else
         {
            true;
            true;
            false;
            false;
            if(_loc19_ < 0.6)
            {
               false;
               false;
               _loc1_.clip.customertalking1.gotoAndPlay("stand");
               _loc1_.clip.customertalking2.gotoAndPlay("takeorder");
               _loc1_.isWaitingForTalkerResponse = 1;
            }
            else if(_loc19_ < 0.8)
            {
               true;
               true;
               _loc1_.clip.customertalking1.gotoAndPlay("drinkcoffee4");
               _loc1_.clip.customertalking1.mug.gotoAndStop("soda");
               _loc1_.clip.customertalking2.gotoAndPlay("drinkcoffee3");
               _loc1_.clip.customertalking2.mug.gotoAndStop("soda");
            }
            else
            {
               _loc1_.clip.customertalking1.gotoAndPlay("dance1");
               _loc1_.clip.customertalking2.gotoAndPlay("dance4");
            }
         }
      }
      
      public function setupCustomerModel(param1:MovieClip, param2:String) : void
      {
         false;
         true;
         var _loc26_:Class = null;
         var _loc27_:MovieClip = null;
         var _loc28_:Class = null;
         var _loc29_:MovieClip = null;
         var _loc3_:Class = getDefinitionByName("customer_" + param2 + "_body") as Class;
         var _loc4_:MovieClip;
         (_loc4_ = new _loc3_()).name = "clip";
         param1.body.addChild(_loc4_);
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = getDefinitionByName("customer_" + param2 + "_head") as Class)()).name = "clip";
         param1.head.addChild(_loc6_);
         var _loc8_:MovieClip;
         var _loc7_:Class;
         (_loc8_ = new (_loc7_ = getDefinitionByName("customer_" + param2 + "_eyes") as Class)()).name = "clip";
         false;
         false;
         param1.eyes.addChild(_loc8_);
         var _loc10_:MovieClip;
         var _loc9_:Class;
         (_loc10_ = new (_loc9_ = getDefinitionByName("customer_" + param2 + "_mouth") as Class)()).name = "clip";
         param1.mouth.addChild(_loc10_);
         var _loc12_:MovieClip;
         var _loc11_:Class;
         (_loc12_ = new (_loc11_ = getDefinitionByName("customer_" + param2 + "_neck") as Class)()).name = "clip";
         false;
         false;
         param1.neck.addChild(_loc12_);
         try
         {
            (_loc27_ = new (_loc26_ = getDefinitionByName("customer_" + param2 + "_hair") as Class)()).name = "clip";
            false;
            false;
            param1.hair.addChild(_loc27_);
         }
         catch(err:Error)
         {
         }
         try
         {
            (_loc29_ = new (_loc28_ = getDefinitionByName("customer_" + param2 + "_back_hair") as Class)()).name = "clip";
            param1.back_hair.addChild(_loc29_);
         }
         catch(err:Error)
         {
         }
         var _loc14_:MovieClip;
         var _loc13_:Class;
         (_loc14_ = new (_loc13_ = getDefinitionByName("customer_" + param2 + "_foot") as Class)()).name = "clip";
         param1.front_shoe.addChild(_loc14_);
         var _loc15_:MovieClip;
         (_loc15_ = new _loc13_()).name = "clip";
         true;
         true;
         param1.back_shoe.addChild(_loc15_);
         var _loc17_:MovieClip;
         var _loc16_:Class;
         (_loc17_ = new (_loc16_ = getDefinitionByName("customer_" + param2 + "_hand") as Class)()).name = "clip";
         false;
         false;
         param1.fronthand.addChild(_loc17_);
         var _loc19_:MovieClip;
         var _loc18_:Class;
         (_loc19_ = new (_loc18_ = getDefinitionByName("customer_" + param2 + "_hand2") as Class)()).name = "clip";
         param1.backhand.addChild(_loc19_);
         var _loc21_:MovieClip;
         var _loc20_:Class;
         (_loc21_ = new (_loc20_ = getDefinitionByName("customer_" + param2 + "_upperarm") as Class)()).name = "clip";
         true;
         true;
         param1.front_upperarm.addChild(_loc21_);
         var _loc22_:MovieClip;
         (_loc22_ = new _loc20_()).name = "clip";
         param1.back_upperarm.addChild(_loc22_);
         var _loc24_:MovieClip;
         var _loc23_:Class;
         (_loc24_ = new (_loc23_ = getDefinitionByName("customer_" + param2 + "_forearm") as Class)()).name = "clip";
         param1.front_forearm.addChild(_loc24_);
         var _loc25_:MovieClip;
         (_loc25_ = new _loc23_()).name = "clip";
         param1.back_forearm.addChild(_loc25_);
      }
      
      public function destroyCustomerModel(param1:MovieClip) : void
      {
         var whichClip:MovieClip;
         false;
         false;
         whichClip = param1;
         true;
         true;
         whichClip.stop();
         try
         {
            true;
            true;
            whichClip.body.removeChildAt(0);
            false;
            false;
            whichClip.head.removeChildAt(0);
            false;
            false;
            whichClip.eyes.removeChildAt(0);
            false;
            false;
            false;
            false;
            whichClip.mouth.removeChildAt(0);
            whichClip.neck.removeChildAt(0);
            false;
            false;
            whichClip.front_shoe.removeChildAt(0);
            false;
            false;
            true;
            true;
            whichClip.back_shoe.removeChildAt(0);
            false;
            false;
            whichClip.fronthand.removeChildAt(0);
            true;
            true;
            whichClip.backhand.removeChildAt(0);
            true;
            true;
            whichClip.front_upperarm.removeChildAt(0);
            whichClip.back_upperarm.removeChildAt(0);
            whichClip.front_forearm.removeChildAt(0);
            false;
            false;
            whichClip.back_forearm.removeChildAt(0);
         }
         catch(err:Error)
         {
            true;
            true;
            class_5.error("Error removing parts of customer");
         }
         try
         {
            whichClip.hair.removeChildAt(0);
         }
         catch(err:Error)
         {
         }
         try
         {
            whichClip.back_hair.removeChildAt(0);
         }
         catch(err:Error)
         {
         }
      }
   }
}
