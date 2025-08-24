package wingGame.screens
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import package_2.class_5;
   import package_4.*;
   import wingGame.data.FurniData;
   import wingGame.data.UserData;
   import wingGame.managers.CustomerManager;
   import wingGame.managers.SoundManager;
   import wingGame.models.Customer;
   import wingGame.models.FurnitureItem;
   import wingGame.models.Worker;
   
   public class OrderScreen
   {
       
      
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var gameObj:class_4;
      
      public var orderLineTargetX:Number = 105;
      
      public var orderLineTargetY:Number = 198;
      
      public var orderLineScale:Number = 0.6;
      
      public var leaveLineTargetX:Number = 152;
      
      public var leaveLineTargetY:Number = 186;
      
      public var leaveLineScale:Number = 0.6;
      
      public var waitLineTargetX:Number = 141;
      
      public var waitLineTargetY:Number = 131;
      
      public var waitLineScale:Number = 0.6;
      
      public var customerSpacing:Number = 85;
      
      public var offScreenX:Number = 675;
      
      public var forceCustomerDelay:Number = 900;
      
      public var timeEnteredStation:Number = 0;
      
      public var clicksToStation:Number = 0;
      
      public var clicksToForce:Number = 2;
      
      public var clickForceCustomerDelay:Number = 90;
      
      public var willForceCustomer:Boolean = false;
      
      public var clickForceCustomerTimer:Number = 0;
      
      public var signBarWidth:Number = 80;
      
      public var readyToTrainCloser:Boolean = false;
      
      public var readyToTrainCritic:Boolean = false;
      
      public var furniItems:Vector.<FurnitureItem>;
      
      public var backdropBitmap:Bitmap;
      
      public var muted_boombox:Boolean = false;
      
      public var muted_jukebox:Boolean = false;
      
      public var muted_phonograph:Boolean = false;
      
      public var boomboxMC:MovieClip = null;
      
      public var jukeboxMC:MovieClip = null;
      
      public var phonographMC:MovieClip = null;
      
      public var isWaitingToEnd:Boolean = false;
      
      public var endingTimer:Number = 0;
      
      public var endingTimerMax:Number = 80;
      
      public var worker:Worker = null;
      
      public function OrderScreen(param1:class_4)
      {
         false;
         true;
         false;
         false;
         this.furniItems = new Vector.<FurnitureItem>();
         super();
         var _loc2_:OrderScreen = this;
         false;
         false;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:OrderScreen = this;
         _loc1_.clip = new orderScreenMC();
         _loc1_.clip.opensign.gotoAndStop(1);
         _loc1_.clip.opensign.sign.gotoAndStop(1);
         true;
         true;
         _loc1_.clip.opensign.sign.opensign.bar.scaleX = 0;
         _loc1_.clip.takeorder_bubble.clip.takeorder_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickTakeOrder);
         _loc1_.clip.takeorder_bubble.clip.takeorder_closer_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickTakeOrder);
         _loc1_.hideTakeOrderBubble();
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip,_loc1_.gameObj.workerData,20,173,0.6,false,true);
      }
      
      public function destroy() : void
      {
         var _loc1_:OrderScreen = this;
         _loc1_.clip.takeorder_bubble.clip.takeorder_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickTakeOrder);
         _loc1_.clip.takeorder_bubble.clip.takeorder_closer_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickTakeOrder);
         _loc1_.worker.destroy();
         _loc1_.worker = null;
         if(_loc1_.backdropBitmap != null)
         {
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
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.furniItems.length)
         {
            _loc1_.furniItems[_loc2_].destroy();
            _loc1_.furniItems[_loc2_] = null;
            _loc2_++;
         }
         _loc1_.furniItems = null;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.clip = null;
      }
      
      public function activateScreen() : void
      {
         false;
         true;
         var _loc4_:Customer = null;
         var _loc1_:OrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         true;
         true;
         if(!_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            true;
            true;
            _loc1_.gameObj.var_15.addChild(_loc1_.clip);
            false;
            false;
         }
         true;
         true;
         _loc1_.gameObj.hud.clip.doorchime_alert.visible = false;
         false;
         false;
         _loc1_.gameObj.hud.clip.doorchime_alert.stop();
         if(_loc2_.hasRibbon())
         {
            _loc1_.clip.ribbon.visible = true;
         }
         else
         {
            _loc1_.clip.ribbon.visible = false;
            false;
            false;
         }
         if(_loc1_.clip.opensign.currentFrame == 1)
         {
            _loc1_.clip.opensign.gotoAndPlay(2);
         }
         _loc1_.hideTakeOrderBubble();
         var _loc3_:CustomerManager = _loc1_.gameObj.var_13;
         true;
         true;
         if(_loc3_.orderline.length > 0)
         {
            false;
            false;
            §§push(!(_loc4_ = _loc3_.orderline[0]).isWalking);
            if(!(_loc4_ = _loc3_.orderline[0]).isWalking)
            {
               false;
               false;
               §§pop();
               false;
               false;
               §§push(_loc4_.currentLine == "orderline");
            }
            if(§§pop())
            {
               false;
               false;
               _loc1_.showTakeOrderBubble(_loc4_.isCloser);
            }
         }
         _loc1_.timeEnteredStation = _loc1_.gameObj.var_28.gameplayTimer;
         _loc1_.isActive = true;
         false;
         false;
         _loc1_.worker.playAnimation("leanin");
         _loc3_.updateCustomersForBonuses();
         false;
         false;
         false;
         false;
         false;
         false;
         if(_loc1_.gameObj.var_13.outOfCustomers(true) && _loc1_.gameObj.var_18.outOfTickets())
         {
            true;
            true;
            class_5.method_25("End the Day!");
            true;
            true;
            _loc1_.gameObj.soundManager.playSound("endofday.wav");
            _loc1_.gameObj.hud.disableStationButtons();
            _loc1_.isWaitingToEnd = true;
            _loc1_.endingTimer = 0;
         }
         else
         {
            _loc1_.gameObj.soundManager.switchMusic("order");
            _loc1_.playFurniMusic();
         }
      }
      
      public function deactivateScreen() : void
      {
         var _loc1_:OrderScreen = this;
         true;
         true;
         false;
         false;
         if(_loc1_.gameObj.var_15.contains(_loc1_.clip))
         {
            _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         }
         _loc1_.stopFurniMusic();
         _loc1_.isActive = false;
      }
      
      public function showTakeOrderBubble(param1:Boolean = false) : void
      {
         var _loc2_:OrderScreen = this;
         §§push(_loc2_.gameObj.var_14);
         if(_loc2_.gameObj.var_14)
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(_loc2_.gameObj.var_12 == 5);
         }
         if(§§pop())
         {
            _loc2_.gameObj.method_29();
         }
         _loc2_.clip.takeorder_bubble.visible = true;
         if(param1)
         {
            _loc2_.clip.takeorder_bubble.clip.takeorder_btn.visible = false;
            true;
            true;
            _loc2_.clip.takeorder_bubble.clip.takeorder_closer_btn.visible = true;
            true;
            true;
            _loc2_.clip.takeorder_bubble.clip.gotoAndStop("closer");
         }
         else
         {
            _loc2_.clip.takeorder_bubble.clip.takeorder_btn.visible = true;
            _loc2_.clip.takeorder_bubble.clip.takeorder_closer_btn.visible = false;
            true;
            true;
            _loc2_.clip.takeorder_bubble.clip.gotoAndStop("normal");
         }
      }
      
      public function hideTakeOrderBubble() : void
      {
         var _loc1_:OrderScreen = this;
         _loc1_.clip.takeorder_bubble.visible = false;
      }
      
      public function clickTakeOrder(param1:MouseEvent) : void
      {
         var _loc2_:OrderScreen = this;
         true;
         true;
         if(!_loc2_.gameObj.var_232)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            _loc2_.clicksToStation = 0;
            _loc2_.hideTakeOrderBubble();
            §§push(_loc2_.gameObj.var_14);
            if(_loc2_.gameObj.var_14)
            {
               false;
               false;
               §§pop();
               false;
               false;
               false;
               false;
               §§push(_loc2_.gameObj.var_12 == 6);
            }
            if(§§pop())
            {
               _loc2_.gameObj.method_29();
               false;
               false;
            }
            true;
            true;
            false;
            false;
            if(_loc2_.gameObj.hud.whichContextTraining == "critic" || _loc2_.gameObj.hud.whichContextTraining == "closer")
            {
               true;
               true;
               _loc2_.gameObj.hud.removeContextTraining();
            }
            _loc2_.gameObj.hud.startTransition("takeOrder");
         }
      }
      
      public function updateScreen() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:OrderScreen = this;
         if(_loc1_.isActive)
         {
            if(_loc1_.gameObj.var_28.gameplayTimer - _loc1_.timeEnteredStation > _loc1_.forceCustomerDelay)
            {
               true;
               true;
               false;
               false;
               if(_loc1_.gameObj.var_13.orderline.length == 0 && _loc1_.gameObj.var_13.totalCustomers < _loc1_.gameObj.var_13.customerLineup.length)
               {
                  false;
                  false;
                  if(_loc1_.gameObj.userData.currentDay > 1)
                  {
                     _loc1_.gameObj.var_13.spawnCustomer();
                  }
               }
            }
            _loc1_.clip.opensign.sign.opensign.bar.scaleX = Math.min(1,_loc1_.gameObj.var_28.gameplayTimer / _loc1_.gameObj.var_78);
            false;
            false;
            false;
            false;
            false;
            false;
            _loc2_ = _loc1_.gameObj.var_13.customerLineup.length - _loc1_.gameObj.var_13.totalCustomers;
            true;
            true;
            _loc3_ = _loc1_.gameObj.var_13.spawnTiming;
            false;
            false;
            true;
            true;
            _loc4_ = _loc1_.gameObj.var_13.lastSpawnTime + _loc3_ - _loc1_.gameObj.var_28.gameplayTimer;
            true;
            true;
            false;
            false;
            false;
            false;
            _loc2_--;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
            true;
            true;
            true;
            true;
            _loc5_ = _loc1_.gameObj.var_28.gameplayTimer + _loc4_ + _loc2_ * _loc3_;
            true;
            true;
            _loc6_ = Math.min(1,_loc5_ / _loc1_.gameObj.var_78);
            false;
            false;
            _loc1_.clip.opensign.sign.opensign.marker.x = _loc1_.clip.opensign.sign.opensign.bar.x + _loc6_ * _loc1_.signBarWidth;
            _loc1_.worker.animateModel();
         }
         true;
         true;
         if(_loc1_.willForceCustomer)
         {
            false;
            false;
            var _loc7_:*;
            var _loc8_:* = (_loc7_ = _loc1_).clickForceCustomerTimer + 1;
            false;
            false;
            _loc7_.clickForceCustomerTimer = _loc8_;
            if(_loc1_.clickForceCustomerTimer >= _loc1_.clickForceCustomerDelay)
            {
               if(_loc1_.gameObj.var_13.orderline.length == 0 && _loc1_.gameObj.var_13.totalCustomers < _loc1_.gameObj.var_13.customerLineup.length)
               {
                  class_5.method_25(">> Force a customer!");
                  _loc1_.gameObj.var_13.spawnCustomer();
               }
               _loc1_.willForceCustomer = false;
            }
         }
         if(_loc1_.isWaitingToEnd)
         {
            true;
            true;
            ++_loc1_.endingTimer;
            if(_loc1_.endingTimer == _loc1_.endingTimerMax)
            {
               _loc1_.gameObj.var_103 = true;
               false;
               false;
               _loc1_.gameObj.hud.startTransition("ending");
               _loc1_.isWaitingToEnd = false;
            }
         }
      }
      
      public function registerClickForForcing() : void
      {
         false;
         true;
         var _loc1_:OrderScreen = this;
         var _loc2_:CustomerManager = _loc1_.gameObj.var_13;
         false;
         false;
         false;
         false;
         §§push(_loc1_.gameObj.userData.currentDay > 1);
         if(_loc1_.gameObj.userData.currentDay > 1)
         {
            true;
            true;
            §§pop();
            §§push(!_loc1_.willForceCustomer);
         }
         false;
         false;
         §§push(§§pop() && _loc2_.orderline.length == 0);
         if(§§pop() && _loc2_.orderline.length == 0)
         {
            false;
            false;
            §§pop();
            §§push(_loc2_.waitline.length <= 2);
         }
         if(§§pop())
         {
            false;
            false;
            §§pop();
            §§push(_loc2_.totalCustomers < _loc2_.customerLineup.length);
         }
         if(§§pop())
         {
            false;
            false;
            var _loc3_:*;
            var _loc4_:* = (_loc3_ = _loc1_).clicksToStation + 1;
            false;
            false;
            _loc3_.clicksToStation = _loc4_;
            class_5.method_25("Register Click for Forcing Customer (" + _loc1_.clicksToStation + ")");
            if(_loc1_.clicksToStation >= _loc1_.clicksToForce)
            {
               class_5.method_25(">> Will force a customer out!");
               _loc1_.clickForceCustomerTimer = 0;
               _loc1_.clicksToStation = 0;
               _loc1_.willForceCustomer = true;
            }
         }
      }
      
      public function initStationUpgrades() : void
      {
         var screen:OrderScreen;
         var user:UserData;
         var f:int;
         var i:int;
         var data:FurniData;
         var x:Number;
         var y:Number;
         false;
         true;
         true;
         true;
         data = null;
         true;
         true;
         false;
         false;
         true;
         true;
         x = NaN;
         true;
         true;
         y = NaN;
         false;
         false;
         screen = this;
         false;
         false;
         user = screen.gameObj.userData;
         f = 0;
         while(true)
         {
            false;
            false;
            if(f >= user.lobbyPlacement.length)
            {
               break;
            }
            data = screen.gameObj.var_38.getFurniFromTag(user.lobbyPlacement[f][0]);
            true;
            true;
            true;
            true;
            true;
            true;
            false;
            false;
            x = Number(user.lobbyPlacement[f][1]);
            true;
            true;
            y = Number(user.lobbyPlacement[f][2]);
            false;
            false;
            screen.addFurni(data,false,x,y);
            f++;
         }
         if(screen.backdropBitmap != null)
         {
            false;
            false;
            screen.backdropBitmap.bitmapData.dispose();
            try
            {
               screen.clip.backdrop_holder.removeChild(screen.backdropBitmap);
            }
            catch(err:Error)
            {
            }
            screen.backdropBitmap = null;
         }
         true;
         true;
         screen.backdropBitmap = screen.createLobbyBackdropBitmap();
         false;
         false;
         screen.clip.backdrop_holder.addChild(screen.backdropBitmap);
         i = 0;
         while(i < screen.furniItems.length)
         {
            if(screen.furniItems[i].data.tag == "poster_window")
            {
               try
               {
                  screen.backdropBitmap.bitmapData.fillRect(new Rectangle(screen.furniItems[i].clip.x,screen.furniItems[i].clip.y,screen.furniItems[i].tileWidth * screen.furniItems[i].data.width,screen.furniItems[i].tileWidth * screen.furniItems[i].data.depth),0);
                  true;
                  true;
               }
               catch(err:Error)
               {
                  class_5.error("Error cutting out wall with smart window: " + err.message);
               }
            }
            true;
            true;
            i++;
         }
      }
      
      public function addFurni(param1:FurniData, param2:Boolean, param3:Number = 0, param4:Number = 0) : void
      {
         false;
         true;
         var _loc5_:OrderScreen;
         var _loc6_:MovieClip = (_loc5_ = this).clip.wall_layer;
         false;
         false;
         if(param1.type == FurniData.TYPE_FURNI)
         {
            true;
            true;
            false;
            false;
            if(param4 == 0)
            {
               _loc6_ = _loc5_.clip.floor0_layer;
            }
            else if(param4 == 1)
            {
               _loc6_ = _loc5_.clip.floor1_layer;
            }
            else
            {
               _loc6_ = _loc5_.clip.floor2_layer;
            }
         }
         var _loc7_:FurnitureItem = new FurnitureItem(_loc5_.gameObj,_loc6_,param1,param3,param4,false,true);
         _loc5_.furniItems.push(_loc7_);
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc4_:Number = NaN;
         var _loc1_:OrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new lobbyBackdropMC();
         _loc4_ = 1;
         while(true)
         {
            true;
            true;
            if(_loc4_ > 10)
            {
               break;
            }
            _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
            true;
            true;
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
         _loc5_.holder.countertop.gotoAndStop(_loc2_.lobbyWallpaper);
         _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
         _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
         var _loc6_:BitmapData;
         (_loc6_ = new BitmapData(640,480,true,4294967295)).draw(_loc5_,null,null,null,new Rectangle(0,0,640,480));
         _loc3_ = new Bitmap(_loc6_);
         _loc5_ = null;
         return _loc3_;
      }
      
      public function playFurniMusic(param1:String = "all") : void
      {
         false;
         true;
         var _loc2_:OrderScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:SoundManager;
         var _loc5_:Number = (_loc4_ = _loc2_.gameObj.soundManager).track_order.position;
         true;
         true;
         var _loc6_:Number = _loc4_.trackLength;
         true;
         true;
         var _loc7_:Number = _loc5_ / _loc6_;
         var _loc8_:SoundTransform = new SoundTransform(1,0);
         true;
         true;
         false;
         false;
         if((param1 == "all" || param1 == "jukebox" || param1 == "furni_jukebox") && _loc3_.isFurniInLobby("furni_jukebox") && !_loc2_.muted_jukebox)
         {
            true;
            true;
            _loc4_.track_jukebox.soundTransform = _loc8_;
         }
         if((param1 == "all" || param1 == "boombox" || param1 == "furni_wingeria_music") && _loc3_.isFurniInLobby("furni_wingeria_music") && !_loc2_.muted_boombox)
         {
            _loc4_.track_boombox.soundTransform = _loc8_;
         }
         true;
         true;
         false;
         false;
         if((param1 == "all" || param1 == "phonograph" || param1 == "furni_phonograph") && _loc3_.isFurniInLobby("furni_phonograph") && !_loc2_.muted_phonograph)
         {
            false;
            false;
            _loc4_.track_phonograph.soundTransform = _loc8_;
         }
      }
      
      public function stopFurniMusic() : void
      {
         var _loc1_:OrderScreen = this;
         var _loc2_:SoundManager = _loc1_.gameObj.soundManager;
         var _loc3_:SoundTransform = new SoundTransform(0,0);
         _loc2_.track_jukebox.soundTransform = _loc3_;
         _loc2_.track_boombox.soundTransform = _loc3_;
         true;
         true;
         _loc2_.track_phonograph.soundTransform = _loc3_;
      }
      
      public function toggleMusicMute(param1:String) : void
      {
         var _loc2_:OrderScreen = this;
         var _loc3_:SoundManager = _loc2_.gameObj.soundManager;
         var _loc4_:SoundTransform = new SoundTransform(0,0);
         if(param1 == "furni_jukebox")
         {
            true;
            true;
            _loc2_.muted_jukebox = !_loc2_.muted_jukebox;
            if(_loc2_.muted_jukebox == false)
            {
               _loc2_.playFurniMusic("jukebox");
            }
            else
            {
               _loc3_.track_jukebox.soundTransform = _loc4_;
            }
         }
         else if(param1 == "furni_wingeria_music")
         {
            true;
            true;
            _loc2_.muted_boombox = !_loc2_.muted_boombox;
            false;
            false;
            if(_loc2_.muted_boombox == false)
            {
               _loc2_.playFurniMusic("boombox");
            }
            else
            {
               _loc3_.track_boombox.soundTransform = _loc4_;
            }
         }
         else if(param1 == "furni_phonograph")
         {
            true;
            true;
            _loc2_.muted_phonograph = !_loc2_.muted_phonograph;
            true;
            true;
            if(_loc2_.muted_phonograph == false)
            {
               _loc2_.playFurniMusic("phonograph");
            }
            else
            {
               _loc3_.track_phonograph.soundTransform = _loc4_;
            }
         }
      }
   }
}
