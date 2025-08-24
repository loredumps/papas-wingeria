package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import package_2.*;
   import package_4.*;
   import wingGame.data.*;
   import wingGame.models.Worker;
   
   public class ParadeScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var didStart:Boolean = false;
      
      public var lastTime:Number = 0;
      
      public var goldCustomerIDs:Array;
      
      public var silverCustomerIDs:Array;
      
      public var bronzeCustomerIDs:Array;
      
      public var noneCustomerIDs:Array;
      
      public var goldSetsShown:Number = 0;
      
      public var silverSetsShown:Number = 0;
      
      public var bronzeSetsShown:Number = 0;
      
      public var foodiniCustomerID:Number = -1;
      
      public var closerCustomerIDs:Array;
      
      public var floatCustomerIDs_papalouie:Array;
      
      public var floatCustomerIDs_pizzeria:Array;
      
      public var floatCustomerIDs_burgeria:Array;
      
      public var floatCustomerIDs_tacomia:Array;
      
      public var floatCustomerIDs_freezeria:Array;
      
      public var floatCustomerIDs_pancakeria:Array;
      
      public var floatCustomerIDs_flipline:Array;
      
      public var floatCustomerIDs_wingeria:Array;
      
      public var floatCustomerIDs_romano:Array;
      
      public var didChuck:Boolean = false;
      
      public var whichOrder:Number = -1;
      
      public var paradeOrder:Array;
      
      public var walkSpeed:Number = 2;
      
      public var carSpeed:Number = 3;
      
      public var movingParts:Array;
      
      public var movingPartsType:Array;
      
      public var startX:Number = -20;
      
      public var carStartY:Number = 351;
      
      public var customerStartY:Number = 270;
      
      public var customerScale:Number = 0.21;
      
      public var fromButton:Boolean = false;
      
      public var workers:Vector.<Worker>;
      
      public function ParadeScreen(param1:class_4, param2:Boolean)
      {
         this.goldCustomerIDs = [];
         this.silverCustomerIDs = [];
         false;
         false;
         this.bronzeCustomerIDs = [];
         this.noneCustomerIDs = [];
         this.closerCustomerIDs = [];
         this.floatCustomerIDs_papalouie = [];
         true;
         true;
         this.floatCustomerIDs_pizzeria = [];
         this.floatCustomerIDs_burgeria = [];
         this.floatCustomerIDs_tacomia = [];
         false;
         false;
         this.floatCustomerIDs_freezeria = [];
         false;
         false;
         this.floatCustomerIDs_pancakeria = [];
         this.floatCustomerIDs_flipline = [];
         this.floatCustomerIDs_wingeria = [];
         this.floatCustomerIDs_romano = [];
         this.paradeOrder = ["foodini","papalouie","closer","pizzeria","gold","burgeria","silver","tacomia","bronze","freezeria","romano","pancakeria","wingeria","flipline"];
         this.movingParts = [];
         this.movingPartsType = [];
         super();
         var _loc3_:ParadeScreen = this;
         true;
         true;
         _loc3_.gameObj = param1;
         _loc3_.fromButton = param2;
         _loc3_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:ParadeScreen = this;
         _loc1_.clip = new paradeScreenMC();
         false;
         false;
         _loc1_.gameObj.var_34.addChild(_loc1_.clip);
         false;
         false;
         _loc1_.workers = new Vector.<Worker>();
         true;
         true;
         _loc1_.setupCustomerGroups();
         _loc1_.releaseNextGroup();
         true;
         true;
         _loc1_.didStart = true;
         _loc1_.clip.backtogame_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBackToGame);
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         if(_loc1_.paradeOrder.indexOf("papalouie") > -1)
         {
            _loc1_.clip.message.visible = false;
         }
         else
         {
            _loc1_.clip.message.visible = true;
         }
         _loc1_.gameObj.soundManager.switchMusic("title");
         true;
         true;
         if(_loc1_.fromButton == false)
         {
            _loc1_.gameObj.userData.didShowParade = true;
         }
      }
      
      public function clickBackToGame(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:ParadeScreen = this;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.clip.fader.gotoAndPlay("fadeout");
         _loc2_.clip.backtogame_btn.visible = false;
      }
      
      public function updateScreen(param1:Event = null) : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc4_:MovieClip = null;
         var _loc2_:ParadeScreen = this;
         true;
         true;
         if(_loc2_.didStart)
         {
            false;
            false;
            _loc3_ = int(_loc2_.movingParts.length - 1);
            while(_loc3_ >= 0)
            {
               _loc4_ = _loc2_.movingParts[_loc3_];
               false;
               false;
               true;
               true;
               true;
               true;
               if(_loc2_.movingPartsType[_loc3_] == "car" || _loc2_.movingPartsType[_loc3_] == "carmain")
               {
                  _loc4_.x += _loc2_.carSpeed;
               }
               else
               {
                  _loc4_.x += _loc2_.walkSpeed;
               }
               true;
               true;
               §§push(_loc2_.movingPartsType[_loc3_] == "car" || _loc2_.movingPartsType[_loc3_] == "carmain");
               if(_loc2_.movingPartsType[_loc3_] == "car" || _loc2_.movingPartsType[_loc3_] == "carmain")
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  true;
                  true;
                  §§push(_loc4_.x - _loc4_.width > 660);
               }
               if(§§pop())
               {
                  try
                  {
                     _loc2_.clearCustomer(_loc4_.customer0);
                     false;
                     false;
                  }
                  catch(err:Error)
                  {
                  }
                  try
                  {
                     _loc2_.clearCustomer(_loc4_.customer1);
                  }
                  catch(err:Error)
                  {
                  }
                  try
                  {
                     _loc2_.clearCustomer(_loc4_.customer2);
                  }
                  catch(err:Error)
                  {
                  }
                  try
                  {
                     _loc2_.clearCustomer(_loc4_.customer3);
                  }
                  catch(err:Error)
                  {
                  }
                  _loc2_.clip.holder.removeChild(_loc4_);
                  true;
                  true;
                  false;
                  false;
                  _loc2_.movingParts.splice(_loc3_,1);
                  true;
                  true;
                  _loc2_.movingPartsType.splice(_loc3_,1);
                  if(_loc2_.whichOrder == _loc2_.paradeOrder.length)
                  {
                     _loc2_.clip.fader.gotoAndPlay("fadeout");
                  }
               }
               else if((_loc2_.movingPartsType[_loc3_] == "customer" || _loc2_.movingPartsType[_loc3_] == "customermain") && _loc4_.x - _loc4_.width / 2 > 660)
               {
                  _loc2_.clearCustomer(_loc4_);
                  _loc2_.clip.holder.removeChild(_loc4_);
                  true;
                  true;
                  false;
                  false;
                  _loc2_.movingParts.splice(_loc3_,1);
                  _loc2_.movingPartsType.splice(_loc3_,1);
                  true;
                  true;
               }
               else
               {
                  true;
                  true;
                  if(_loc2_.movingPartsType[_loc3_] == "customermain" && _loc4_.x > 500)
                  {
                     _loc2_.releaseNextGroup();
                     false;
                     false;
                     true;
                     true;
                     _loc2_.movingPartsType[_loc3_] = "customer";
                  }
                  else
                  {
                     true;
                     true;
                     false;
                     false;
                     §§push(_loc2_.movingPartsType[_loc3_] == "customermain" && _loc2_.whichOrder == 0);
                     if(_loc2_.movingPartsType[_loc3_] == "customermain" && _loc2_.whichOrder == 0)
                     {
                        true;
                        true;
                        §§pop();
                        false;
                        false;
                        §§push(_loc4_.x > 320);
                     }
                     if(§§pop())
                     {
                        false;
                        false;
                        _loc2_.releaseNextGroup();
                        true;
                        true;
                        _loc2_.movingPartsType[_loc3_] = "customer";
                     }
                     else if(_loc2_.movingPartsType[_loc3_] == "carmain" && _loc4_.x - _loc4_.width / 2 > 500)
                     {
                        _loc2_.releaseNextGroup();
                        _loc2_.movingPartsType[_loc3_] = "car";
                     }
                  }
               }
               true;
               true;
               _loc3_--;
            }
            if(_loc2_.clip.fader.currentFrame == _loc2_.clip.fader.totalFrames)
            {
               _loc2_.didStart = false;
               if(_loc2_.fromButton)
               {
                  false;
                  false;
                  _loc2_.gameObj.method_47();
               }
               else
               {
                  false;
                  false;
                  if(_loc2_.gameObj.userData.isPayday())
                  {
                     _loc2_.gameObj.method_82();
                     true;
                     true;
                  }
                  else
                  {
                     false;
                     false;
                     §§push(_loc2_.gameObj.var_13.showNoPapa);
                     if(!_loc2_.gameObj.var_13.showNoPapa)
                     {
                        false;
                        false;
                        §§pop();
                        true;
                        true;
                        §§push(_loc2_.gameObj.var_13.showNewCustomer);
                     }
                     if(§§pop())
                     {
                        _loc2_.gameObj.method_60();
                        false;
                        false;
                     }
                     else
                     {
                        false;
                        false;
                        if(_loc2_.gameObj.userData.getToppingToReveal() != "none")
                        {
                           _loc2_.gameObj.method_50();
                        }
                        else
                        {
                           _loc2_.gameObj.method_43();
                        }
                     }
                  }
               }
               _loc2_.gameObj.method_122();
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:ParadeScreen = this;
         true;
         true;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         false;
         false;
         _loc1_.clip.backtogame_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBackToGame);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.workers.length)
         {
            _loc1_.workers[_loc2_].destroy();
            _loc1_.workers[_loc2_] = null;
            _loc2_++;
         }
         false;
         false;
         _loc1_.workers = null;
         _loc1_.gameObj.var_34.removeChild(_loc1_.clip);
         false;
         false;
         _loc1_.clip = null;
      }
      
      public function releaseNextGroup() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Boolean = false;
         var _loc8_:WorkerData = null;
         var _loc9_:Worker = null;
         var _loc10_:WorkerData = null;
         var _loc11_:Worker = null;
         var _loc12_:Worker = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc15_:Array = null;
         var _loc16_:Boolean = false;
         var _loc17_:Array = null;
         var _loc18_:Array = null;
         var _loc19_:MovieClip = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Array = null;
         var _loc23_:MovieClip = null;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc1_:ParadeScreen = this;
         true;
         true;
         true;
         true;
         §§push(_loc1_.paradeOrder[_loc1_.whichOrder] == "gold");
         if(_loc1_.paradeOrder[_loc1_.whichOrder] == "gold")
         {
            true;
            true;
            §§pop();
            true;
            true;
            true;
            true;
            §§push(_loc1_.goldSetsShown < _loc1_.goldCustomerIDs.length);
         }
         if(!§§pop())
         {
            true;
            true;
            if(!(_loc1_.paradeOrder[_loc1_.whichOrder] == "silver" && _loc1_.silverSetsShown < _loc1_.silverCustomerIDs.length))
            {
               false;
               false;
               true;
               true;
               if(_loc1_.paradeOrder[_loc1_.whichOrder] == "bronze" && _loc1_.bronzeSetsShown < _loc1_.bronzeCustomerIDs.length)
               {
                  true;
                  true;
               }
               else
               {
                  ++_loc1_.whichOrder;
                  false;
                  false;
               }
            }
         }
         if(_loc1_.whichOrder < _loc1_.paradeOrder.length)
         {
            _loc3_ = String(_loc1_.paradeOrder[_loc1_.whichOrder]);
            if(_loc3_ == "foodini")
            {
               _loc4_ = new customerParadeMC();
               true;
               true;
               _loc1_.buildCustomer(_loc1_.foodiniCustomerID,_loc4_);
               _loc4_.scaleX = _loc1_.customerScale * -1;
               _loc4_.scaleY = _loc1_.customerScale;
               true;
               true;
               _loc4_.x = _loc1_.startX;
               _loc4_.y = _loc1_.customerStartY;
               _loc4_.gotoAndPlay("walkbaton");
               _loc1_.clip.holder.addChild(_loc4_);
               false;
               false;
               _loc1_.movingParts.push(_loc4_);
               _loc1_.movingPartsType.push("customermain");
            }
            else if(_loc3_ == "wingeria")
            {
               _loc6_ = new (_loc5_ = getDefinitionByName("parade_car_" + _loc3_) as Class)() as MovieClip;
               true;
               true;
               _loc7_ = false;
               (_loc8_ = new WorkerData()).setupPremadeMale();
               true;
               true;
               true;
               true;
               if(_loc1_.gameObj.userData.whichCharacter == "marty")
               {
                  _loc8_ = _loc1_.gameObj.workerData;
               }
               (_loc9_ = new Worker(_loc1_.gameObj,_loc6_.customer0,_loc8_,0,0,1)).playAnimation("stand");
               _loc1_.workers.push(_loc9_);
               (_loc10_ = new WorkerData()).setupPremadeFemale();
               if(_loc1_.gameObj.userData.whichCharacter == "rita")
               {
                  _loc10_ = _loc1_.gameObj.workerData;
               }
               (_loc11_ = new Worker(_loc1_.gameObj,_loc6_.customer1,_loc10_,0,0,1)).playAnimation("stand");
               _loc1_.workers.push(_loc11_);
               if(_loc1_.gameObj.userData.whichCharacter == "custom")
               {
                  (_loc12_ = new Worker(_loc1_.gameObj,_loc6_.customer2,_loc1_.gameObj.workerData,0,0,1)).playAnimation("stand");
                  false;
                  false;
                  _loc1_.workers.push(_loc12_);
               }
               _loc6_.x = _loc1_.startX;
               _loc6_.y = _loc1_.carStartY;
               _loc1_.clip.holder.addChild(_loc6_);
               _loc1_.movingParts.push(_loc6_);
               _loc1_.movingPartsType.push("carmain");
            }
            else
            {
               false;
               false;
               §§push(_loc3_ == "papalouie" || _loc3_ == "pizzeria");
               if(!(_loc3_ == "papalouie" || _loc3_ == "pizzeria"))
               {
                  true;
                  true;
                  §§pop();
                  §§push(_loc3_ == "burgeria");
               }
               §§push(§§pop() || _loc3_ == "tacomia" || _loc3_ == "freezeria");
               if(!(§§pop() || _loc3_ == "tacomia" || _loc3_ == "freezeria"))
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  §§push(_loc3_ == "pancakeria");
               }
               true;
               true;
               if(!§§pop())
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  §§push(_loc3_ == "flipline");
               }
               if(§§pop() || _loc3_ == "romano")
               {
                  _loc14_ = new (_loc13_ = getDefinitionByName("parade_car_" + _loc3_) as Class)() as MovieClip;
                  _loc15_ = _loc1_["floatCustomerIDs_" + _loc3_];
                  false;
                  false;
                  _loc16_ = false;
                  _loc2_ = 0;
                  while(_loc2_ < _loc15_.length)
                  {
                     _loc1_.buildCustomer(_loc15_[_loc2_],_loc14_["customer" + _loc2_]);
                     if(_loc3_ == "papalouie")
                     {
                        _loc14_["customer" + _loc2_].gotoAndPlay("standwave0");
                     }
                     else if(_loc3_ == "pizzeria")
                     {
                        _loc14_["customer" + _loc2_].gotoAndPlay("stand");
                     }
                     else
                     {
                        false;
                        false;
                        §§push(Math.random() > 0.5);
                        if(Math.random() > 0.5)
                        {
                           false;
                           false;
                           §§pop();
                           true;
                           true;
                           §§push(_loc2_ == 0 || _loc2_ >= 1 && _loc16_);
                        }
                        if(§§pop())
                        {
                           false;
                           false;
                           _loc14_["customer" + _loc2_].gotoAndPlay("stand");
                        }
                        else
                        {
                           _loc14_["customer" + _loc2_].gotoAndPlay("standwave" + Math.min(1,_loc2_));
                           _loc16_ = true;
                        }
                     }
                     true;
                     true;
                     false;
                     false;
                     _loc2_++;
                  }
                  _loc14_.x = _loc1_.startX;
                  _loc14_.y = _loc1_.carStartY;
                  _loc1_.clip.holder.addChild(_loc14_);
                  true;
                  true;
                  _loc1_.movingParts.push(_loc14_);
                  _loc1_.movingPartsType.push("carmain");
               }
               else
               {
                  false;
                  false;
                  false;
                  false;
                  if(_loc3_ == "gold" || _loc3_ == "bronze" || _loc3_ == "silver")
                  {
                     _loc17_ = _loc1_[_loc3_ + "CustomerIDs"];
                     _loc18_ = [];
                     false;
                     false;
                     false;
                     false;
                     if(_loc3_ == "gold")
                     {
                        false;
                        false;
                        _loc18_ = _loc17_[_loc1_.goldSetsShown];
                     }
                     else if(_loc3_ == "silver")
                     {
                        _loc18_ = _loc17_[_loc1_.silverSetsShown];
                     }
                     else if(_loc3_ == "bronze")
                     {
                        _loc18_ = _loc17_[_loc1_.bronzeSetsShown];
                     }
                     true;
                     true;
                     _loc2_ = 0;
                     while(_loc2_ < _loc18_.length)
                     {
                        _loc19_ = new customerParadeMC();
                        _loc1_.buildCustomer(_loc18_[_loc2_],_loc19_);
                        _loc19_.scaleX = _loc1_.customerScale * -1;
                        _loc19_.scaleY = _loc1_.customerScale;
                        _loc19_.x = _loc1_.startX;
                        _loc19_.y = _loc1_.customerStartY;
                        false;
                        false;
                        _loc20_ = Math.random();
                        true;
                        true;
                        _loc21_ = Math.random();
                        true;
                        true;
                        false;
                        false;
                        if(_loc2_ == 0 && (_loc3_ == "bronze" || _loc3_ == "silver" || _loc3_ == "gold"))
                        {
                           _loc19_.gotoAndPlay("walkbanner");
                           _loc19_.flag.inside.gotoAndStop(_loc3_);
                        }
                        else if(_loc20_ > 0.7)
                        {
                           if(_loc21_ > 0.8)
                           {
                              _loc19_.gotoAndPlay("walkwave2");
                           }
                           else if(_loc21_ > 0.4)
                           {
                              _loc19_.gotoAndPlay("walkwave2_2");
                           }
                           else
                           {
                              _loc19_.gotoAndPlay("walkwave2_3");
                           }
                        }
                        else if(_loc20_ > 0.4)
                        {
                           if(_loc21_ > 0.8)
                           {
                              _loc19_.gotoAndPlay("walkwave");
                           }
                           else
                           {
                              true;
                              true;
                              if(_loc21_ > 0.5)
                              {
                                 true;
                                 true;
                                 _loc19_.gotoAndPlay("walkwave_2");
                              }
                              else
                              {
                                 _loc19_.gotoAndPlay("walkwave_3");
                              }
                           }
                        }
                        else
                        {
                           false;
                           false;
                           if(_loc21_ > 0.7)
                           {
                              true;
                              true;
                              _loc19_.gotoAndPlay("walk");
                           }
                           else
                           {
                              false;
                              false;
                              true;
                              true;
                              if(_loc21_ > 0.4)
                              {
                                 _loc19_.gotoAndPlay("walk_2");
                              }
                              else
                              {
                                 _loc19_.gotoAndPlay("walk_3");
                              }
                           }
                        }
                        if(_loc2_ > 0)
                        {
                           false;
                           false;
                           if(_loc2_ % 2 == 0)
                           {
                              _loc19_.y += 20;
                              _loc1_.clip.holder.addChild(_loc19_);
                           }
                           else
                           {
                              _loc19_.y -= 20;
                              _loc1_.clip.holder.addChildAt(_loc19_,0);
                           }
                           _loc19_.y += Math.round(Math.random() * 12) - 6;
                           false;
                           false;
                           _loc19_.x -= 20 + (20 * _loc2_ + Math.floor(Math.random() * 10));
                           false;
                           false;
                        }
                        else
                        {
                           _loc1_.clip.holder.addChild(_loc19_);
                        }
                        false;
                        false;
                        _loc1_.movingParts.push(_loc19_);
                        false;
                        false;
                        if(_loc2_ == _loc18_.length - 1)
                        {
                           false;
                           false;
                           _loc1_.movingPartsType.push("customermain");
                        }
                        else
                        {
                           _loc1_.movingPartsType.push("customer");
                           true;
                           true;
                        }
                        false;
                        false;
                        _loc2_++;
                     }
                     false;
                     false;
                     if(_loc3_ == "gold")
                     {
                        false;
                        false;
                        ++_loc1_.goldSetsShown;
                     }
                     else
                     {
                        true;
                        true;
                        if(_loc3_ == "silver")
                        {
                           false;
                           false;
                           ++_loc1_.silverSetsShown;
                        }
                        else if(_loc3_ == "bronze")
                        {
                           ++_loc1_.bronzeSetsShown;
                        }
                     }
                  }
                  else
                  {
                     _loc22_ = _loc1_[_loc3_ + "CustomerIDs"];
                     false;
                     false;
                     true;
                     true;
                     _loc2_ = 0;
                     false;
                     false;
                     while(_loc2_ < _loc22_.length)
                     {
                        _loc23_ = new customerParadeMC();
                        _loc1_.buildCustomer(_loc22_[_loc2_],_loc23_);
                        true;
                        true;
                        _loc23_.scaleX = _loc1_.customerScale * -1;
                        _loc23_.scaleY = _loc1_.customerScale;
                        false;
                        false;
                        _loc23_.x = _loc1_.startX;
                        _loc23_.y = _loc1_.customerStartY;
                        _loc24_ = Math.random();
                        _loc25_ = Math.random();
                        false;
                        false;
                        false;
                        false;
                        §§push(_loc2_ == 0);
                        if(_loc2_ == 0)
                        {
                           true;
                           true;
                           §§pop();
                           false;
                           false;
                           false;
                           false;
                           §§push(_loc3_ == "bronze");
                           if(!(_loc3_ == "bronze"))
                           {
                              true;
                              true;
                              §§pop();
                              false;
                              false;
                              §§push(_loc3_ == "silver");
                           }
                           §§push(§§pop() || _loc3_ == "gold");
                        }
                        if(§§pop())
                        {
                           true;
                           true;
                           _loc23_.gotoAndPlay("walkbanner");
                           _loc23_.flag.inside.gotoAndStop(_loc3_);
                        }
                        else if(_loc24_ > 0.7)
                        {
                           false;
                           false;
                           if(_loc25_ > 0.8)
                           {
                              _loc23_.gotoAndPlay("walkwave2");
                           }
                           else if(_loc25_ > 0.4)
                           {
                              _loc23_.gotoAndPlay("walkwave2_2");
                           }
                           else
                           {
                              _loc23_.gotoAndPlay("walkwave2_3");
                           }
                        }
                        else if(_loc24_ > 0.4)
                        {
                           false;
                           false;
                           if(_loc25_ > 0.8)
                           {
                              _loc23_.gotoAndPlay("walkwave");
                           }
                           else if(_loc25_ > 0.5)
                           {
                              _loc23_.gotoAndPlay("walkwave_2");
                              false;
                              false;
                           }
                           else
                           {
                              _loc23_.gotoAndPlay("walkwave_3");
                           }
                        }
                        else if(_loc25_ > 0.7)
                        {
                           false;
                           false;
                           _loc23_.gotoAndPlay("walk");
                        }
                        else if(_loc25_ > 0.4)
                        {
                           _loc23_.gotoAndPlay("walk_2");
                        }
                        else
                        {
                           _loc23_.gotoAndPlay("walk_3");
                        }
                        if(_loc2_ > 0)
                        {
                           false;
                           false;
                           true;
                           true;
                           false;
                           false;
                           if(_loc2_ % 2 == 0)
                           {
                              _loc23_.y += 20;
                              _loc1_.clip.holder.addChild(_loc23_);
                           }
                           else
                           {
                              _loc23_.y -= 20;
                              _loc1_.clip.holder.addChildAt(_loc23_,0);
                           }
                           _loc23_.y += Math.round(Math.random() * 12) - 6;
                           _loc23_.x -= 20 + (20 * _loc2_ + Math.floor(Math.random() * 10));
                        }
                        else
                        {
                           _loc1_.clip.holder.addChild(_loc23_);
                           false;
                           false;
                        }
                        _loc1_.movingParts.push(_loc23_);
                        if(_loc2_ == _loc22_.length - 1)
                        {
                           false;
                           false;
                           _loc1_.movingPartsType.push("customermain");
                        }
                        else
                        {
                           _loc1_.movingPartsType.push("customer");
                        }
                        _loc2_++;
                     }
                  }
               }
            }
         }
      }
      
      public function setupCustomerGroups() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:ParadeScreen = this;
         _loc1_.foodiniCustomerID = _loc1_.getCustomerIndex("Foodini");
         _loc1_.closerCustomerIDs = _loc1_.getMultipleCustomerIndex(["Jojo","Boomer","Quinn","Xolo","Johnny","ProfessorFitz","Ninjoy"]);
         _loc1_.floatCustomerIDs_papalouie = _loc1_.getMultipleCustomerIndex(["PapaLouie"]);
         _loc1_.floatCustomerIDs_burgeria = _loc1_.getMultipleCustomerIndex(["Marty","Rita"]);
         _loc1_.floatCustomerIDs_pizzeria = _loc1_.getMultipleCustomerIndex(["Roy"]);
         _loc1_.floatCustomerIDs_tacomia = _loc1_.getMultipleCustomerIndex(["Mitch","Maggie"]);
         _loc1_.floatCustomerIDs_freezeria = _loc1_.getMultipleCustomerIndex(["Penny","Alberto"]);
         _loc1_.floatCustomerIDs_pancakeria = _loc1_.getMultipleCustomerIndex(["Cooper","Prudence"]);
         _loc1_.floatCustomerIDs_flipline = _loc1_.getMultipleCustomerIndex(["Matt","Tony"]);
         false;
         false;
         _loc1_.floatCustomerIDs_romano = _loc1_.getMultipleCustomerIndex(["Carlo Romano","Bruna Romano","Gino Romano","Little Edoardo"]);
         _loc1_.floatCustomerIDs_wingeria = _loc1_.getMultipleCustomerIndex(["ChuckOrMandi","ChuckOrMandi"]);
         _loc1_.noneCustomerIDs = _loc1_.getCustomerIndexWithAward(0);
         _loc1_.bronzeCustomerIDs = _loc1_.getCustomerIndexWithAward(1);
         _loc1_.silverCustomerIDs = _loc1_.getCustomerIndexWithAward(2);
         _loc1_.goldCustomerIDs = _loc1_.getCustomerIndexWithAward(3);
         if(_loc1_.goldCustomerIDs.length == 0)
         {
            false;
            false;
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("gold"),1);
         }
         if(_loc1_.silverCustomerIDs.length == 0)
         {
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("silver"),1);
         }
         if(_loc1_.bronzeCustomerIDs.length == 0)
         {
            false;
            false;
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("bronze"),1);
         }
         true;
         true;
         _loc2_ = _loc1_.closerCustomerIDs.length - 1;
         while(true)
         {
            false;
            false;
            if(_loc2_ < 0)
            {
               break;
            }
            true;
            true;
            if(_loc1_.hasServedCustomer(_loc1_.closerCustomerIDs[_loc2_]) == false)
            {
               true;
               true;
               _loc1_.closerCustomerIDs.splice(_loc2_,1);
               false;
               false;
            }
            _loc2_--;
         }
         false;
         false;
         if(_loc1_.closerCustomerIDs.length == 0)
         {
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("closer"),1);
         }
         _loc2_ = _loc1_.floatCustomerIDs_burgeria.length - 1;
         while(true)
         {
            true;
            true;
            if(_loc2_ < 0)
            {
               break;
            }
            if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_burgeria[_loc2_]) == false)
            {
               false;
               false;
               _loc1_.floatCustomerIDs_burgeria.splice(_loc2_,1);
            }
            _loc2_--;
            false;
            false;
         }
         if(_loc1_.floatCustomerIDs_burgeria.length == 0)
         {
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("burgeria"),1);
         }
         false;
         false;
         _loc2_ = _loc1_.floatCustomerIDs_pizzeria.length - 1;
         true;
         true;
         while(_loc2_ >= 0)
         {
            if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_pizzeria[_loc2_]) == false)
            {
               false;
               false;
               _loc1_.floatCustomerIDs_pizzeria.splice(_loc2_,1);
            }
            true;
            true;
            _loc2_--;
         }
         if(_loc1_.floatCustomerIDs_pizzeria.length == 0)
         {
            true;
            true;
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("pizzeria"),1);
         }
         false;
         false;
         _loc2_ = _loc1_.floatCustomerIDs_tacomia.length - 1;
         while(_loc2_ >= 0)
         {
            if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_tacomia[_loc2_]) == false)
            {
               _loc1_.floatCustomerIDs_tacomia.splice(_loc2_,1);
            }
            _loc2_--;
            false;
            false;
         }
         if(_loc1_.floatCustomerIDs_tacomia.length == 0)
         {
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("tacomia"),1);
         }
         false;
         false;
         _loc2_ = _loc1_.floatCustomerIDs_freezeria.length - 1;
         true;
         true;
         while(true)
         {
            false;
            false;
            if(_loc2_ < 0)
            {
               break;
            }
            if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_freezeria[_loc2_]) == false)
            {
               true;
               true;
               false;
               false;
               _loc1_.floatCustomerIDs_freezeria.splice(_loc2_,1);
            }
            _loc2_--;
            false;
            false;
         }
         if(_loc1_.floatCustomerIDs_freezeria.length == 0)
         {
            true;
            true;
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("freezeria"),1);
         }
         false;
         false;
         _loc2_ = _loc1_.floatCustomerIDs_papalouie.length - 1;
         while(_loc2_ >= 0)
         {
            true;
            true;
            if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_papalouie[_loc2_]) == false)
            {
               true;
               true;
               _loc1_.floatCustomerIDs_papalouie.splice(_loc2_,1);
            }
            false;
            false;
            _loc2_--;
         }
         if(_loc1_.floatCustomerIDs_papalouie.length == 0)
         {
            true;
            true;
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("papalouie"),1);
         }
         _loc2_ = _loc1_.floatCustomerIDs_flipline.length - 1;
         while(true)
         {
            true;
            true;
            if(_loc2_ < 0)
            {
               break;
            }
            true;
            true;
            if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_flipline[_loc2_]) == false)
            {
               _loc1_.floatCustomerIDs_flipline.splice(_loc2_,1);
            }
            false;
            false;
            true;
            true;
            _loc2_--;
         }
         false;
         false;
         if(_loc1_.floatCustomerIDs_flipline.length == 0)
         {
            false;
            false;
            true;
            true;
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("flipline"),1);
            true;
            true;
         }
         _loc2_ = _loc1_.floatCustomerIDs_pancakeria.length - 1;
         true;
         true;
         while(_loc2_ >= 0)
         {
            if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_pancakeria[_loc2_]) == false)
            {
               _loc1_.floatCustomerIDs_pancakeria.splice(_loc2_,1);
            }
            false;
            false;
            true;
            true;
            _loc2_--;
         }
         if(_loc1_.floatCustomerIDs_pancakeria.length == 0)
         {
            true;
            true;
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("pancakeria"),1);
         }
         _loc2_ = _loc1_.floatCustomerIDs_romano.length - 1;
         while(_loc2_ >= 0)
         {
            if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_romano[_loc2_]) == false)
            {
               _loc1_.floatCustomerIDs_romano.splice(_loc2_,1);
            }
            _loc2_--;
            false;
            false;
         }
         if(_loc1_.floatCustomerIDs_romano.length == 0)
         {
            _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("romano"),1);
         }
         var _loc3_:Number = 0;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.paradeOrder.length)
         {
            true;
            true;
            true;
            true;
            §§push((_loc4_ = String(_loc1_.paradeOrder[_loc2_])) == "pizzeria" || _loc4_ == "burgeria" || _loc4_ == "tacomia" || _loc4_ == "freezeria" || _loc4_ == "flipline" || _loc4_ == "pancakeria");
            if(!((_loc4_ = String(_loc1_.paradeOrder[_loc2_])) == "pizzeria" || _loc4_ == "burgeria" || _loc4_ == "tacomia" || _loc4_ == "freezeria" || _loc4_ == "flipline" || _loc4_ == "pancakeria"))
            {
               false;
               false;
               §§pop();
               §§push(_loc4_ == "romano");
            }
            if(§§pop())
            {
               _loc3_++;
            }
            true;
            true;
            _loc2_++;
            true;
            true;
         }
         _loc1_.gameObj.userData.seenFloatsInParade = _loc3_;
      }
      
      public function getCustomerIndexWithAward(param1:Number) : Array
      {
         false;
         true;
         var _loc2_:ParadeScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:CustomerData = _loc2_.gameObj.customerData;
         var _loc5_:Array;
         (_loc5_ = []).push([]);
         7;
         var _loc7_:int = 1;
         while(_loc7_ < _loc4_.getCustomerTotal())
         {
            if(_loc3_.getCustomerSeal(_loc7_) == param1 && !_loc2_.alreadyInGroup(_loc7_))
            {
               if(_loc5_[_loc5_.length - 1].length < 7)
               {
                  _loc5_[_loc5_.length - 1].push(_loc7_);
               }
               else
               {
                  _loc5_.push([_loc7_]);
                  true;
                  true;
               }
            }
            _loc7_++;
         }
         true;
         true;
         if(_loc5_.length == 1 && _loc5_[0].length == 0)
         {
            true;
            true;
            _loc5_ = [];
         }
         false;
         false;
         true;
         true;
         class_5.method_25("Award Level " + param1 + ": " + _loc5_.length + " sets.");
         return _loc5_;
      }
      
      public function hasServedCustomer(param1:Number, param2:Boolean = false) : Boolean
      {
         var _loc3_:ParadeScreen = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:Boolean = true;
         if(param2 && _loc4_.customersUnlocked[param1] == 1)
         {
            _loc5_ = true;
         }
         else if(_loc4_.getCustomerTotalOrders(param1) == 0)
         {
            false;
            false;
            _loc5_ = false;
            true;
            true;
         }
         else
         {
            _loc5_ = true;
         }
         return _loc5_;
      }
      
      public function alreadyInGroup(param1:Number) : Boolean
      {
         var _loc2_:ParadeScreen = this;
         var _loc3_:Boolean = false;
         if(_loc2_.foodiniCustomerID == param1)
         {
            _loc3_ = true;
         }
         true;
         true;
         if(_loc2_.closerCustomerIDs.indexOf(param1) > -1)
         {
            false;
            false;
            _loc3_ = true;
         }
         if(_loc2_.floatCustomerIDs_burgeria.indexOf(param1) > -1)
         {
            _loc3_ = true;
         }
         if(_loc2_.floatCustomerIDs_flipline.indexOf(param1) > -1)
         {
            _loc3_ = true;
         }
         if(_loc2_.floatCustomerIDs_freezeria.indexOf(param1) > -1)
         {
            _loc3_ = true;
            false;
            false;
         }
         if(_loc2_.floatCustomerIDs_pancakeria.indexOf(param1) > -1)
         {
            _loc3_ = true;
            true;
            true;
         }
         if(_loc2_.floatCustomerIDs_papalouie.indexOf(param1) > -1)
         {
            _loc3_ = true;
         }
         if(_loc2_.floatCustomerIDs_pizzeria.indexOf(param1) > -1)
         {
            _loc3_ = true;
         }
         true;
         true;
         if(_loc2_.floatCustomerIDs_tacomia.indexOf(param1) > -1)
         {
            _loc3_ = true;
            false;
            false;
         }
         true;
         true;
         if(_loc2_.floatCustomerIDs_romano.indexOf(param1) > -1)
         {
            _loc3_ = true;
         }
         if(_loc2_.floatCustomerIDs_wingeria.indexOf(param1) > -1)
         {
            true;
            true;
            _loc3_ = true;
         }
         return _loc3_;
      }
      
      public function getCustomerIndex(param1:String) : Number
      {
         var _loc2_:ParadeScreen = this;
         return _loc2_.gameObj.customerData.getCustomerIndex(param1);
      }
      
      public function getMultipleCustomerIndex(param1:Array) : Array
      {
         false;
         true;
         var _loc2_:ParadeScreen = this;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_.push(_loc2_.getCustomerIndex(param1[_loc4_]));
            false;
            false;
            _loc4_++;
            false;
            false;
         }
         return _loc3_;
      }
      
      public function getCustomerClipName(param1:Number) : String
      {
         var _loc2_:ParadeScreen = this;
         true;
         true;
         var _loc3_:String = _loc2_.gameObj.customerData.getCustomerClipName(param1);
         true;
         true;
         if(_loc3_ == "Chuck" || _loc3_ == "Mandi")
         {
            if(_loc2_.didChuck == false)
            {
               _loc3_ = "Chuck";
               true;
               true;
               _loc2_.didChuck = true;
            }
            else
            {
               _loc3_ = "Mandi";
            }
         }
         return _loc3_;
      }
      
      public function buildCustomer(param1:Number, param2:MovieClip) : void
      {
         var _loc28_:Class = null;
         var _loc29_:MovieClip = null;
         var _loc30_:Class = null;
         var _loc31_:MovieClip = null;
         var _loc3_:ParadeScreen = this;
         var _loc4_:String = _loc3_.getCustomerClipName(param1);
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = getDefinitionByName("customer_" + _loc4_ + "_body") as Class)()).name = "clip";
         false;
         false;
         param2.body.addChild(_loc6_);
         var _loc8_:MovieClip;
         var _loc7_:Class;
         (_loc8_ = new (_loc7_ = getDefinitionByName("customer_" + _loc4_ + "_head") as Class)()).name = "clip";
         false;
         false;
         param2.head.addChild(_loc8_);
         var _loc10_:MovieClip;
         var _loc9_:Class;
         (_loc10_ = new (_loc9_ = getDefinitionByName("customer_" + _loc4_ + "_eyes") as Class)()).name = "clip";
         param2.eyes.addChild(_loc10_);
         var _loc12_:MovieClip;
         var _loc11_:Class;
         (_loc12_ = new (_loc11_ = getDefinitionByName("customer_" + _loc4_ + "_mouth") as Class)()).name = "clip";
         param2.mouth.addChild(_loc12_);
         var _loc14_:MovieClip;
         var _loc13_:Class;
         (_loc14_ = new (_loc13_ = getDefinitionByName("customer_" + _loc4_ + "_neck") as Class)()).name = "clip";
         false;
         false;
         param2.neck.addChild(_loc14_);
         try
         {
            (_loc29_ = new (_loc28_ = getDefinitionByName("customer_" + _loc4_ + "_hair") as Class)()).name = "clip";
            param2.hair.addChild(_loc29_);
         }
         catch(err:Error)
         {
         }
         try
         {
            (_loc31_ = new (_loc30_ = getDefinitionByName("customer_" + _loc4_ + "_back_hair") as Class)()).name = "clip";
            true;
            true;
            param2.back_hair.addChild(_loc31_);
         }
         catch(err:Error)
         {
         }
         var _loc16_:MovieClip;
         var _loc15_:Class;
         (_loc16_ = new (_loc15_ = getDefinitionByName("customer_" + _loc4_ + "_foot") as Class)()).name = "clip";
         false;
         false;
         param2.front_shoe.addChild(_loc16_);
         var _loc17_:MovieClip;
         (_loc17_ = new _loc15_()).name = "clip";
         param2.back_shoe.addChild(_loc17_);
         var _loc19_:MovieClip;
         var _loc18_:Class;
         (_loc19_ = new (_loc18_ = getDefinitionByName("customer_" + _loc4_ + "_hand") as Class)()).name = "clip";
         param2.fronthand.addChild(_loc19_);
         var _loc21_:MovieClip;
         var _loc20_:Class;
         (_loc21_ = new (_loc20_ = getDefinitionByName("customer_" + _loc4_ + "_hand2") as Class)()).name = "clip";
         true;
         true;
         param2.backhand.addChild(_loc21_);
         var _loc23_:MovieClip;
         var _loc22_:Class;
         (_loc23_ = new (_loc22_ = getDefinitionByName("customer_" + _loc4_ + "_upperarm") as Class)()).name = "clip";
         param2.front_upperarm.addChild(_loc23_);
         var _loc24_:MovieClip;
         (_loc24_ = new _loc22_()).name = "clip";
         true;
         true;
         param2.back_upperarm.addChild(_loc24_);
         var _loc26_:MovieClip;
         var _loc25_:Class;
         (_loc26_ = new (_loc25_ = getDefinitionByName("customer_" + _loc4_ + "_forearm") as Class)()).name = "clip";
         param2.front_forearm.addChild(_loc26_);
         var _loc27_:MovieClip;
         (_loc27_ = new _loc25_()).name = "clip";
         param2.back_forearm.addChild(_loc27_);
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
            false;
            false;
            param1.neck.removeChildAt(0);
            param1.front_shoe.removeChildAt(0);
            param1.back_shoe.removeChildAt(0);
            param1.fronthand.removeChildAt(0);
            param1.backhand.removeChildAt(0);
            false;
            false;
            param1.front_upperarm.removeChildAt(0);
            false;
            false;
            param1.back_upperarm.removeChildAt(0);
            param1.front_forearm.removeChildAt(0);
            param1.back_forearm.removeChildAt(0);
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
   }
}
