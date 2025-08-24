package wingGame.models
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import package_2.class_5;
   import package_2.class_9;
   import package_4.class_4;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   import wingGame.screens.BuildScreen;
   
   public class FoodPlate
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var startX:Number = 111;
      
      public var startY:Number = 87;
      
      public var endX:Number = 780;
      
      public var tweenSpeed:Number = 2;
      
      public var foodItems:Vector.<FoodItem>;
      
      public var dipItems:Vector.<DipItem>;
      
      public var splatBitmap:Bitmap;
      
      public var splatBMP:BitmapData;
      
      public var splatsAdded:Number = 0;
      
      public var splatsX:Array;
      
      public var splatsY:Array;
      
      public var ticketHolderClip:MovieClip = null;
      
      public var ticketHolderTargetX:Number = -99;
      
      public var ticketHolderStartX:Number = -210;
      
      public var ticketHolderTargetY:Number = 67;
      
      public var ticketHolderSpeed:Number = 2;
      
      public var attachedTicket:Ticket;
      
      public var animatePlateOut:Boolean = false;
      
      public var isFinished:Boolean = false;
      
      public function FoodPlate(param1:class_4)
      {
         this.splatsX = [];
         true;
         true;
         this.splatsY = [];
         super();
         false;
         false;
         this.gameObj = param1;
         false;
         false;
         this.setupPlate();
      }
      
      public function setupPlate() : void
      {
         var _loc1_:FoodPlate = this;
         _loc1_.clip = new build_plate();
         _loc1_.gameObj.var_11.clip.plateholder.addChild(_loc1_.clip);
         _loc1_.clip.mouseEnabled = false;
         _loc1_.clip.mouseChildren = true;
         true;
         true;
         _loc1_.clip.splatholder.mouseEnabled = false;
         _loc1_.clip.splatholder.mouseChildren = false;
         _loc1_.clip.x = this.startX;
         true;
         true;
         _loc1_.clip.y = this.startY;
         _loc1_.foodItems = new Vector.<FoodItem>();
         true;
         true;
         _loc1_.dipItems = new Vector.<DipItem>();
         _loc1_.clip.plateinside.gotoAndStop(1);
         true;
         true;
         if(_loc1_.gameObj.userData.hasBonus("plateguide2"))
         {
            _loc1_.clip.plateinside.gotoAndStop(3);
            true;
            true;
         }
         else
         {
            true;
            true;
            if(_loc1_.gameObj.userData.hasBonus("plateguide1"))
            {
               true;
               true;
               _loc1_.clip.plateinside.gotoAndStop(2);
            }
         }
         _loc1_.splatBMP = new BitmapData(_loc1_.clip.width,_loc1_.clip.height,true,0);
         _loc1_.splatBitmap = new Bitmap(_loc1_.splatBMP);
         _loc1_.clip.splatholder.addChild(_loc1_.splatBitmap);
         true;
         true;
         _loc1_.gameObj.var_11.clip.done_btn.visible = false;
         _loc1_.gameObj.var_11.clip.trash_btn.visible = false;
      }
      
      public function addItemToPlate(param1:FoodItem) : void
      {
         false;
         true;
         var _loc2_:FoodPlate = this;
         _loc2_.foodItems.push(param1);
         true;
         true;
         _loc2_.gameObj.var_11.clip.done_btn.visible = true;
         _loc2_.gameObj.var_11.clip.trash_btn.visible = true;
         true;
         true;
         false;
         false;
         true;
         true;
         §§push(_loc2_.gameObj.var_14);
         if(_loc2_.gameObj.var_14)
         {
            false;
            false;
            §§pop();
            §§push(_loc2_.gameObj.var_12 == 23);
         }
         if(§§pop())
         {
            true;
            true;
            §§pop();
            §§push(_loc2_.gameObj.var_11.wingQueue.length == 0);
         }
         if(§§pop())
         {
            _loc2_.gameObj.method_29();
         }
      }
      
      public function removeItemFromPlate(param1:FoodItem) : void
      {
         false;
         true;
         var _loc2_:FoodPlate = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.foodItems.length)
         {
            if(_loc2_.foodItems[_loc3_] == param1)
            {
               _loc2_.foodItems.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
      }
      
      public function addDipToPlate(param1:DipItem) : void
      {
         var _loc2_:FoodPlate = this;
         false;
         false;
         _loc2_.dipItems.push(param1);
         _loc2_.gameObj.var_11.clip.done_btn.visible = true;
         _loc2_.gameObj.var_11.clip.trash_btn.visible = true;
      }
      
      public function removeDipFromPlate(param1:DipItem) : void
      {
         var _loc2_:FoodPlate = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.dipItems.length)
         {
            if(_loc2_.dipItems[_loc3_] == param1)
            {
               false;
               false;
               _loc2_.dipItems.splice(_loc3_,1);
               true;
               true;
               break;
            }
            _loc3_++;
            false;
            false;
         }
      }
      
      public function sortDips() : void
      {
         false;
         true;
         var _loc1_:FoodPlate = this;
         var _loc2_:Vector.<DipItem> = _loc1_.dipItems.sort(_loc1_.sortFunction);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc1_.clip.dipholder.setChildIndex(_loc2_[_loc3_].clip,_loc1_.clip.dipholder.numChildren - 1);
            true;
            true;
            _loc3_++;
         }
      }
      
      public function sortFunction(param1:DipItem, param2:DipItem) : Number
      {
         true;
         true;
         if(param1.clip.y < param2.clip.y)
         {
            true;
            true;
            return -1;
         }
         if(param1.clip.y > param2.clip.y)
         {
            true;
            true;
            return 1;
         }
         return 0;
      }
      
      public function sortItemFunction(param1:FoodItem, param2:FoodItem) : Number
      {
         false;
         false;
         if(param1.clip.y < param2.clip.y)
         {
            true;
            true;
            true;
            true;
            return -1;
         }
         if(param1.clip.y > param2.clip.y)
         {
            return 1;
         }
         return 0;
      }
      
      public function addSauceSplat(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc10_:MovieClip = null;
         var _loc8_:FoodPlate = this;
         var _loc9_:MovieClip = new MovieClip();
         true;
         true;
         if(param1 == FoodData.MEAT_WING)
         {
            true;
            true;
            _loc10_ = new meat_wing_splat();
         }
         else
         {
            true;
            true;
            false;
            false;
            if(param1 == FoodData.MEAT_BONELESS)
            {
               _loc10_ = new meat_boneless_splat();
            }
            else if(param1 == FoodData.MEAT_SHRIMP)
            {
               true;
               true;
               _loc10_ = new meat_shrimp_splat();
            }
            else if(param1 == FoodData.MEAT_STRIPS)
            {
               _loc10_ = new meat_strips_splat();
            }
         }
         _loc10_.x = param3;
         _loc10_.y = param4;
         _loc10_.rotation = param5;
         false;
         false;
         _loc10_.scaleX = param6;
         _loc10_.scaleY = param7;
         _loc10_.gotoAndStop(FoodData.getSauceFrame(param2));
         _loc9_.addChild(_loc10_);
         var _loc11_:MovieClip;
         (_loc11_ = new MovieClip()).graphics.beginFill(16711680,1);
         _loc11_.graphics.drawCircle(133,133,133);
         _loc11_.graphics.endFill();
         _loc9_.addChild(_loc11_);
         _loc10_.mask = _loc11_;
         var _loc12_:BitmapData;
         (_loc12_ = new BitmapData(_loc8_.splatBMP.width,_loc8_.splatBMP.height,true,0)).draw(_loc9_);
         _loc8_.splatBMP.copyPixels(_loc12_,_loc12_.rect,new Point(0,0),null,null,true);
         false;
         false;
         _loc12_.dispose();
         _loc12_ = null;
         _loc9_.removeChild(_loc11_);
         _loc9_.removeChild(_loc10_);
         _loc9_ = null;
         _loc11_ = null;
         _loc10_ = null;
         ++_loc8_.splatsAdded;
         false;
         false;
         _loc8_.splatsX.push(param3);
         false;
         false;
         _loc8_.splatsY.push(param4);
      }
      
      public function eraseSplats(param1:Number, param2:Number) : void
      {
         false;
         true;
         var _loc3_:FoodPlate = this;
         35;
         var _loc5_:Number = 0;
         param1 -= _loc3_.clip.x;
         true;
         true;
         true;
         true;
         param2 -= _loc3_.clip.y;
         var _loc6_:int = int(_loc3_.splatsX.length - 1);
         while(_loc6_ >= 0)
         {
            false;
            false;
            if((_loc5_ = Math.sqrt((param1 - _loc3_.splatsX[_loc6_]) * (param1 - _loc3_.splatsX[_loc6_]) + (param2 - _loc3_.splatsY[_loc6_]) * (param2 - _loc3_.splatsY[_loc6_]))) < 35)
            {
               true;
               true;
               true;
               true;
               false;
               false;
               _loc3_.splatsX.splice(_loc6_,1);
               _loc3_.splatsY.splice(_loc6_,1);
               false;
               false;
               var _loc7_:*;
               var _loc8_:* = (_loc7_ = _loc3_).splatsAdded - 1;
               false;
               false;
               _loc7_.splatsAdded = _loc8_;
            }
            _loc6_--;
         }
         _loc3_.eraseCircle(param1,param2);
      }
      
      private function eraseCircle(param1:Number, param2:Number) : void
      {
         false;
         true;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         35;
         0;
         var _loc5_:int = 0;
         var _loc6_:int = 35;
         true;
         true;
         var _loc7_:int = -35;
         while(_loc5_ <= _loc6_)
         {
            true;
            true;
            true;
            true;
            _loc8_ = param1 - _loc5_;
            false;
            false;
            false;
            false;
            _loc9_ = param1 - _loc6_;
            _loc10_ = _loc5_ + _loc5_;
            true;
            true;
            _loc11_ = _loc6_ + _loc6_;
            this.eraseLine(_loc8_,param2 + _loc6_,_loc10_,0);
            false;
            false;
            this.eraseLine(_loc8_,param2 - _loc6_,_loc10_,0);
            true;
            true;
            false;
            false;
            this.eraseLine(_loc9_,param2 + _loc5_,_loc11_,0);
            false;
            false;
            this.eraseLine(_loc9_,param2 - _loc5_,_loc11_,0);
            true;
            true;
            false;
            false;
            _loc5_++;
            true;
            true;
            true;
            true;
            true;
            true;
            if((_loc7_ = _loc7_ + (_loc5_ + (_loc5_ + 1))) >= 0)
            {
               _loc7_ -= _loc6_ - 1 + --_loc6_;
            }
         }
      }
      
      private function eraseLine(param1:Number, param2:Number, param3:Number, param4:uint) : void
      {
         var _loc5_:int = 0;
         while(_loc5_ < param3)
         {
            this.splatBMP.setPixel32(param1 + _loc5_,param2,param4);
            false;
            false;
            _loc5_++;
            false;
            false;
         }
      }
      
      public function bumpLettuce() : void
      {
         false;
         true;
         var _loc1_:FoodPlate = this;
         _loc1_.clip.lettuce.gotoAndPlay("bump");
      }
      
      public function resetLettuce() : void
      {
         var _loc1_:FoodPlate = this;
         false;
         false;
         _loc1_.clip.lettuce.gotoAndStop(1);
      }
      
      public function getSauceForCustomer() : String
      {
         false;
         true;
         var _loc1_:FoodPlate = this;
         var _loc2_:String = "";
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.foodItems.length)
         {
            if(_loc1_.foodItems[_loc3_].isMeat())
            {
               true;
               true;
               _loc2_ = _loc1_.foodItems[_loc3_].sauceType;
               true;
               true;
               break;
            }
            _loc3_++;
            true;
            true;
         }
         return _loc2_;
      }
      
      public function getIsOversaucedForCustomer() : Boolean
      {
         var _loc1_:FoodPlate = this;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.foodItems.length)
         {
            if(_loc1_.foodItems[_loc3_].isMeat())
            {
               false;
               false;
               _loc2_ = _loc1_.foodItems[_loc3_].isOversauced();
               break;
            }
            _loc3_++;
            false;
            false;
         }
         return _loc2_;
      }
      
      public function getFoodForCustomer() : MovieClip
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc1_:FoodPlate = this;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.foodItems.length)
         {
            if(_loc1_.foodItems[_loc2_].isMeat())
            {
               false;
               false;
               _loc3_ = _loc1_.foodItems[_loc2_].generateMeatForHand();
               false;
               false;
               _loc1_.foodItems[_loc2_].clip.visible = false;
               _loc4_ = true;
               break;
            }
            _loc2_++;
            false;
            false;
         }
         true;
         true;
         if(_loc4_ == false)
         {
            false;
            false;
            _loc2_ = 0;
            false;
            false;
            if(_loc2_ < _loc1_.foodItems.length)
            {
               _loc6_ = "build_side_" + _loc1_.foodItems[_loc2_].type;
               _loc3_ = class_9.method_26(_loc6_,false,false);
               true;
               true;
               _loc3_.scaleX = _loc1_.foodItems[_loc2_].clip.scaleX;
               _loc3_.scaleY = _loc1_.foodItems[_loc2_].clip.scaleY;
               _loc1_.foodItems[_loc2_].clip.visible = false;
               false;
               false;
               _loc5_ = true;
            }
         }
         §§push(_loc4_ == false);
         if(_loc4_ == false)
         {
            false;
            false;
            §§pop();
            §§push(_loc5_ == false);
         }
         if(§§pop())
         {
            if(_loc1_.dipItems.length > 0)
            {
               _loc7_ = "build_side_" + _loc1_.dipItems[0].type;
               _loc3_ = class_9.method_26(_loc7_,false,false);
               _loc3_.gotoAndStop(3);
               _loc3_.scaleY = 0.6;
               _loc3_.y = 8;
               _loc1_.dipItems[0].clip.visible = false;
            }
            else
            {
               _loc3_ = new MovieClip();
            }
         }
         _loc3_.scaleX *= 0.6;
         _loc3_.scaleY *= 0.6;
         _loc3_.stop();
         return _loc3_;
      }
      
      public function moveToGiveOrder() : void
      {
         var _loc2_:int = 0;
         var _loc1_:FoodPlate = this;
         false;
         false;
         _loc1_.clip.scaleX = 0.6;
         _loc1_.clip.scaleY = 0.6;
         _loc1_.clip.x = 82;
         true;
         true;
         _loc1_.clip.y = 250;
         _loc1_.clip.plateinside.scaleY = 0.51;
         _loc1_.clip.lettuce.scaleY = 0.62;
         true;
         true;
         _loc1_.clip.frontholder.scaleY = 0.85;
         _loc1_.clip.backholder.scaleY = 0.75;
         false;
         false;
         _loc1_.clip.frontholder.y -= 15;
         false;
         false;
         _loc1_.clip.backholder.y += 20;
         _loc1_.clip.dipholder.scaleY = 0.75;
         true;
         true;
         _loc1_.clip.dipholder.y += 20;
         _loc1_.clip.splatholder.scaleY = 0.51;
         _loc1_.clip.splatholder.y = 60;
         _loc1_.clip.setChildIndex(_loc1_.clip.frontholder,_loc1_.clip.numChildren - 1);
         _loc2_ = 0;
         while(_loc2_ < _loc1_.foodItems.length)
         {
            _loc1_.foodItems[_loc2_].adjustForGiveOrder();
            true;
            true;
            _loc2_++;
         }
         var _loc3_:Vector.<FoodItem> = _loc1_.foodItems.sort(_loc1_.sortItemFunction);
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            if(_loc3_[_loc2_].clip.parent == _loc1_.clip.frontholder)
            {
               true;
               true;
               _loc1_.clip.frontholder.setChildIndex(_loc3_[_loc2_].clip,_loc1_.clip.frontholder.numChildren - 1);
            }
            else if(_loc3_[_loc2_].clip.parent == _loc1_.clip.backholder)
            {
               true;
               true;
               _loc1_.clip.backholder.setChildIndex(_loc3_[_loc2_].clip,_loc1_.clip.backholder.numChildren - 1);
            }
            _loc2_++;
         }
         _loc1_.gameObj.var_53.clip.plate_holder.addChild(_loc1_.clip);
      }
      
      public function finishPlate() : void
      {
         var _loc1_:FoodPlate = this;
         _loc1_.isFinished = true;
         _loc1_.clip.mouseEnabled = false;
         _loc1_.clip.mouseChildren = false;
         _loc1_.addTicketHolder();
      }
      
      public function startDeliveringOrder() : void
      {
         false;
         true;
         var _loc1_:FoodPlate = this;
         true;
         true;
         _loc1_.animatePlateOut = true;
         true;
         true;
         _loc1_.gameObj.soundManager.playSound("trayslide.wav");
      }
      
      public function attachTicket(param1:Ticket) : void
      {
         var _loc4_:Boolean = false;
         var _loc2_:FoodPlate = this;
         _loc2_.gameObj.hud.disableStationButtons();
         _loc2_.attachedTicket = param1;
         var _loc3_:BuildScreen = _loc2_.gameObj.var_11;
         false;
         false;
         if(_loc3_.lastPattern > 0)
         {
            _loc4_ = false;
            false;
            false;
            §§push(param1.customerType == 12);
            if(param1.customerType == 12)
            {
               false;
               false;
               §§pop();
               true;
               true;
               §§push(_loc3_.lastPattern == 2);
            }
            if(§§pop())
            {
               _loc4_ = true;
            }
            else
            {
               false;
               false;
               §§push(param1.customerType == 20);
               if(param1.customerType == 20)
               {
                  false;
                  false;
                  §§pop();
                  §§push(_loc3_.lastPattern == 3);
               }
               if(§§pop())
               {
                  _loc4_ = true;
               }
               else
               {
                  §§push(param1.customerType == 13);
                  if(param1.customerType == 13)
                  {
                     false;
                     false;
                     §§pop();
                     true;
                     true;
                     §§push(_loc3_.lastPattern == 4);
                  }
                  if(§§pop())
                  {
                     _loc4_ = true;
                     false;
                     false;
                  }
                  else
                  {
                     true;
                     true;
                     if(param1.customerType == 22 && _loc3_.lastPattern == 5)
                     {
                        false;
                        false;
                        _loc4_ = true;
                     }
                     else
                     {
                        false;
                        false;
                        if(param1.customerType == 23 && _loc3_.lastPattern == 6)
                        {
                           _loc4_ = true;
                           false;
                           false;
                        }
                        else if(param1.customerType == 25 && _loc3_.lastPattern == 7)
                        {
                           _loc4_ = true;
                        }
                        else if(param1.customerType == 27 && _loc3_.lastPattern == 8)
                        {
                           false;
                           false;
                           _loc4_ = true;
                        }
                     }
                  }
               }
            }
            if(_loc4_)
            {
               _loc3_.gameObj.userData["hasTrainedPattern" + _loc3_.lastPattern] = true;
               class_5.method_25(">>>  Set flag for trained pattern: " + _loc3_.lastPattern);
               _loc3_.lastPattern = 0;
            }
         }
      }
      
      public function addTicketHolder() : void
      {
         false;
         true;
         var _loc1_:FoodPlate = this;
         if(_loc1_.ticketHolderClip == null)
         {
            false;
            false;
            _loc1_.ticketHolderClip = new ticketHolderMC();
            true;
            true;
            _loc1_.clip.addChild(_loc1_.ticketHolderClip);
            true;
            true;
            _loc1_.ticketHolderClip.x = _loc1_.ticketHolderStartX;
            true;
            true;
            _loc1_.ticketHolderClip.y = _loc1_.ticketHolderTargetY;
            _loc1_.ticketHolderClip.addEventListener(Event.ENTER_FRAME,_loc1_.animateTicketHolder);
         }
      }
      
      public function animateTicketHolder(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:FoodPlate = this;
         var _loc3_:Number = _loc2_.ticketHolderTargetX - _loc2_.ticketHolderClip.x;
         _loc2_.ticketHolderClip.x += _loc3_ / _loc2_.ticketHolderSpeed;
         if(Math.abs(_loc3_) <= 1)
         {
            _loc2_.ticketHolderClip.x = _loc2_.ticketHolderTargetX;
         }
         if(_loc2_.animatePlateOut)
         {
            true;
            true;
            _loc4_ = _loc2_.endX - _loc2_.clip.x;
            _loc2_.clip.x += _loc4_ / _loc2_.tweenSpeed;
            if(Math.abs(_loc4_) <= 1)
            {
               false;
               false;
               _loc2_.animatePlateOut = false;
               true;
               true;
               _loc2_.ticketHolderClip.removeEventListener(Event.ENTER_FRAME,_loc2_.animateTicketHolder);
               _loc2_.gameObj.hud.startTransition("giveOrder");
            }
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc2_:int = 0;
         var _loc1_:FoodPlate = this;
         false;
         false;
         _loc1_.splatsX = null;
         _loc1_.splatsY = null;
         try
         {
            _loc1_.ticketHolderClip.removeEventListener(Event.ENTER_FRAME,_loc1_.animateTicketHolder);
         }
         catch(err:Error)
         {
         }
         if(_loc1_.splatBitmap)
         {
            try
            {
               _loc1_.clip.splatholder.removeChild(_loc1_.splatBitmap);
            }
            catch(err:Error)
            {
            }
         }
         _loc1_.splatBitmap = null;
         true;
         true;
         if(_loc1_.splatBMP != null)
         {
            _loc1_.splatBMP.dispose();
         }
         _loc1_.splatBMP = null;
         false;
         false;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.foodItems.length)
         {
            _loc1_.foodItems[_loc2_].destroy();
            _loc1_.foodItems[_loc2_] = null;
            true;
            true;
            _loc2_++;
         }
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.dipItems.length)
         {
            _loc1_.dipItems[_loc2_].destroy();
            _loc1_.dipItems[_loc2_] = null;
            _loc2_++;
         }
         _loc1_.foodItems = null;
         false;
         false;
         try
         {
            _loc1_.clip.parent.removeChild(_loc1_.clip);
         }
         catch(err:Error)
         {
         }
         _loc1_.clip = null;
         if(_loc1_.attachedTicket)
         {
            _loc1_.gameObj.var_18.removeTicket(_loc1_.attachedTicket);
            false;
            false;
            _loc1_.attachedTicket = null;
         }
      }
      
      public function getMeatItems() : Vector.<FoodItem>
      {
         var _loc1_:FoodPlate = this;
         var _loc2_:Vector.<FoodItem> = new Vector.<FoodItem>();
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.foodItems.length)
         {
            if(_loc1_.foodItems[_loc3_].isMeat())
            {
               true;
               true;
               _loc2_.push(_loc1_.foodItems[_loc3_]);
               false;
               false;
            }
            _loc3_++;
            false;
            false;
         }
         return _loc2_;
      }
      
      public function getItemsOfDistro(param1:CustomerOrder, param2:String) : Vector.<FoodItem>
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:FoodPlate = this;
         var _loc6_:Vector.<FoodItem> = new Vector.<FoodItem>();
         _loc4_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc4_ >= param1.wings.length)
            {
               break;
            }
            false;
            false;
            false;
            false;
            if(param1.wings[_loc4_][2] == param2)
            {
               _loc5_ = 0;
               while(_loc5_ < _loc3_.foodItems.length)
               {
                  false;
                  false;
                  if(_loc3_.foodItems[_loc5_].type == param1.wings[_loc4_][0] && _loc3_.foodItems[_loc5_].sauceType == param1.wings[_loc4_][3])
                  {
                     _loc6_.push(_loc3_.foodItems[_loc5_]);
                  }
                  else if(_loc3_.foodItems[_loc5_].subMeatType == param1.wings[_loc4_][0] && _loc3_.foodItems[_loc5_].subSauceType == param1.wings[_loc4_][3])
                  {
                     true;
                     true;
                     _loc6_.push(_loc3_.foodItems[_loc5_]);
                  }
                  _loc5_++;
               }
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.sides.length)
         {
            if(param1.sides[_loc4_][2] == param2)
            {
               true;
               true;
               _loc5_ = 0;
               false;
               false;
               while(_loc5_ < _loc3_.foodItems.length)
               {
                  if(_loc3_.foodItems[_loc5_].type == param1.sides[_loc4_][0])
                  {
                     _loc6_.push(_loc3_.foodItems[_loc5_]);
                  }
                  _loc5_++;
               }
            }
            _loc4_++;
         }
         return _loc6_.sort(_loc3_.sortItemRotationFunction);
      }
      
      public function getItemsOnHalf(param1:CustomerOrder, param2:String) : Vector.<FoodItem>
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:FoodPlate = this;
         var _loc6_:Vector.<FoodItem> = new Vector.<FoodItem>();
         false;
         false;
         _loc4_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc4_ >= param1.wings.length)
            {
               break;
            }
            _loc5_ = 0;
            while(_loc5_ < _loc3_.foodItems.length)
            {
               §§push(_loc3_.foodItems[_loc5_].type == param1.wings[_loc4_][0]);
               if(_loc3_.foodItems[_loc5_].type == param1.wings[_loc4_][0])
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  §§push(_loc3_.foodItems[_loc5_].sauceType == param1.wings[_loc4_][3]);
               }
               if(§§pop())
               {
                  false;
                  false;
                  false;
                  false;
                  if(param2 == FoodData.DISTRO_LEFT && _loc3_.foodItems[_loc5_].getRotationOnPlate() < 180 || param2 == FoodData.DISTRO_RIGHT && _loc3_.foodItems[_loc5_].getRotationOnPlate() >= 180)
                  {
                     _loc6_.push(_loc3_.foodItems[_loc5_]);
                  }
               }
               else if(_loc3_.foodItems[_loc5_].subMeatType == param1.wings[_loc4_][0] && _loc3_.foodItems[_loc5_].subSauceType == param1.wings[_loc4_][3])
               {
                  true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  §§push(param2 == FoodData.DISTRO_LEFT && _loc3_.foodItems[_loc5_].getRotationOnPlate() < 180);
                  if(!(param2 == FoodData.DISTRO_LEFT && _loc3_.foodItems[_loc5_].getRotationOnPlate() < 180))
                  {
                     §§pop();
                     false;
                     false;
                     §§push(param2 == FoodData.DISTRO_RIGHT);
                     if(param2 == FoodData.DISTRO_RIGHT)
                     {
                        false;
                        false;
                        §§pop();
                        §§push(_loc3_.foodItems[_loc5_].getRotationOnPlate() >= 180);
                     }
                  }
                  if(§§pop())
                  {
                     _loc6_.push(_loc3_.foodItems[_loc5_]);
                  }
               }
               _loc5_++;
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.sides.length)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc3_.foodItems.length)
            {
               if(_loc3_.foodItems[_loc5_].type == param1.sides[_loc4_][0])
               {
                  true;
                  true;
                  true;
                  true;
                  if(param2 == FoodData.DISTRO_LEFT && _loc3_.foodItems[_loc5_].getRotationOnPlate() < 180 || param2 == FoodData.DISTRO_RIGHT && _loc3_.foodItems[_loc5_].getRotationOnPlate() >= 180)
                  {
                     _loc6_.push(_loc3_.foodItems[_loc5_]);
                  }
               }
               _loc5_++;
            }
            _loc4_++;
         }
         return _loc6_.sort(_loc3_.sortItemRotationFunction);
      }
      
      public function sortItemRotationFunction(param1:FoodItem, param2:FoodItem) : Number
      {
         false;
         true;
         var _loc3_:Number = param1.getRotationOnPlate();
         var _loc4_:Number = param2.getRotationOnPlate();
         false;
         false;
         true;
         true;
         if(_loc3_ < _loc4_)
         {
            true;
            true;
            false;
            false;
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            true;
            true;
            return 1;
         }
         return 0;
      }
      
      public function getToppingNames(param1:Array) : Array
      {
         var _loc4_:Number = NaN;
         var _loc6_:int = 0;
         var _loc2_:FoodPlate = this;
         var _loc3_:Array = [];
         var _loc5_:Array = [];
         false;
         false;
         _loc4_ = 0;
         while(_loc4_ < param1.length)
         {
            _loc6_ = 0;
            false;
            false;
            while(true)
            {
               false;
               false;
               if(_loc6_ >= param1[_loc4_].length)
               {
                  break;
               }
               if(param1[_loc4_][_loc6_] != "")
               {
                  _loc5_.push(param1[_loc4_][_loc6_]);
               }
               _loc6_++;
            }
            true;
            true;
            false;
            false;
            _loc4_++;
         }
         true;
         true;
         true;
         true;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.foodItems.length)
         {
            if(_loc2_.foodItems[_loc4_].isMeat())
            {
               if(_loc5_.indexOf(_loc2_.foodItems[_loc4_].sauceType) > -1)
               {
                  if(_loc3_.indexOf(_loc2_.foodItems[_loc4_].sauceType) == -1)
                  {
                     _loc3_.push(_loc2_.foodItems[_loc4_].sauceType);
                     false;
                     false;
                  }
               }
            }
            if(_loc5_.indexOf(_loc2_.foodItems[_loc4_].type) > -1)
            {
               if(_loc3_.indexOf(_loc2_.foodItems[_loc4_].type) == -1)
               {
                  _loc3_.push(_loc2_.foodItems[_loc4_].type);
               }
            }
            false;
            false;
            false;
            false;
            false;
            false;
            _loc4_++;
            true;
            true;
         }
         true;
         true;
         false;
         false;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.dipItems.length)
         {
            if(_loc5_.indexOf(_loc2_.dipItems[_loc4_].type) > -1)
            {
               if(_loc3_.indexOf(_loc2_.dipItems[_loc4_].type) == -1)
               {
                  _loc3_.push(_loc2_.dipItems[_loc4_].type);
               }
            }
            true;
            true;
            _loc4_++;
         }
         class_5.method_25("Get valid toppings for plate: " + _loc3_.toString());
         return _loc3_;
      }
   }
}
