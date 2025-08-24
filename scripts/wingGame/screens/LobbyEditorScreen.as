package wingGame.screens
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.utils.getDefinitionByName;
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.*;
   import wingGame.managers.*;
   import wingGame.models.FurnitureItem;
   
   public class LobbyEditorScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var wallGrid:Array;
      
      public var wallGridWidth:Number = 16;
      
      public var wallGridHeight:Number = 7;
      
      public var floorGrid:Array;
      
      public var floorGridWidth:Number = 16;
      
      public var floorGridHeight:Number = 3;
      
      public var furniItems:Vector.<FurnitureItem>;
      
      public var activeFurni:FurnitureItem = null;
      
      public var inventoryIsOpen:Boolean = false;
      
      public var isInvOpening:Boolean = false;
      
      public var isInvClosing:Boolean = false;
      
      public var invOpenSpeed:Number = 4;
      
      public var whichSet:Number = 1;
      
      public var panelsPerSet:Number = 12;
      
      public var workingArray:Array;
      
      public var shouldShowNext:Boolean = false;
      
      public var shouldShowPrev:Boolean = false;
      
      public var existingFurniIsSet:Boolean = false;
      
      public var mode:String = "furni";
      
      public var trainingClip:MovieClip;
      
      public var whichContextTraining:String = "none";
      
      public var backdropBitmap:Bitmap;
      
      public function LobbyEditorScreen(param1:class_4)
      {
         false;
         true;
         true;
         true;
         this.wallGrid = [];
         true;
         true;
         this.floorGrid = [];
         this.furniItems = new Vector.<FurnitureItem>();
         true;
         true;
         this.workingArray = [];
         super();
         var _loc2_:LobbyEditorScreen = this;
         false;
         false;
         _loc2_.gameObj = param1;
         false;
         false;
         true;
         true;
         false;
         false;
         _loc2_.gameObj.var_10.api.method_27("LobbyEditor","Screens");
         false;
         false;
         if(_loc2_.gameObj.userData.hasVisitedLobbyEditor == false)
         {
            true;
            true;
            _loc2_.gameObj.var_10.api.method_27("NoticedLobbyEditor","Screens",true);
            _loc2_.gameObj.userData.hasVisitedLobbyEditor = true;
         }
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:LobbyEditorScreen = this;
         _loc1_.clip = new lobbyEditorMC();
         true;
         true;
         _loc1_.gameObj.var_34.addChild(_loc1_.clip);
         _loc1_.createGrids();
         _loc1_.setupInventory();
         true;
         true;
         _loc1_.updateLobbyBitmap();
         _loc1_.clip.fader.mouseEnabled = false;
         _loc1_.clip.backtogame_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickBackToGame);
         _loc1_.clip.inventory_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickOpenInventory);
         _loc1_.clip.putaway_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPutAway);
         _loc1_.clip.putaway_btn.visible = false;
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_UP,_loc1_.clickScreen);
         _loc1_.clip.mute_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMute);
         _loc1_.clip.unmute_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickUnmute);
         _loc1_.updateMuteButton();
         false;
         false;
         true;
         true;
         _loc1_.gameObj.soundManager.switchMusic("order");
         false;
         false;
         true;
         true;
         if(!_loc1_.gameObj.userData.hasTrainedInventory)
         {
            false;
            false;
            _loc1_.showContextTraining("inventory");
            false;
            false;
            _loc1_.gameObj.userData.hasTrainedInventory = true;
         }
      }
      
      public function clickBackToGame(param1:Event) : void
      {
         var _loc2_:LobbyEditorScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         var _loc3_:SoundTransform = new SoundTransform(0);
         true;
         true;
         true;
         true;
         _loc2_.gameObj.soundManager.track_boombox.soundTransform = _loc3_;
         _loc2_.gameObj.soundManager.track_jukebox.soundTransform = _loc3_;
         _loc2_.gameObj.soundManager.track_phonograph.soundTransform = _loc3_;
         _loc2_.gameObj.userData.saveData();
         false;
         false;
         _loc2_.gameObj.method_47();
         _loc2_.gameObj.method_104();
      }
      
      public function setupInventory() : void
      {
         var _loc1_:LobbyEditorScreen = this;
         false;
         false;
         _loc1_.clip.inventory.furni_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.inventory.poster_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.inventory.wallpaper_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.inventory.flooring_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.inventory.next_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickNext);
         _loc1_.clip.inventory.prev_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPrevious);
         var _loc2_:int = 1;
         while(_loc2_ <= _loc1_.panelsPerSet)
         {
            _loc1_.clip.inventory.panels["panel" + _loc2_].mouseEnabled = true;
            _loc1_.clip.inventory.panels["panel" + _loc2_].mouseChildren = false;
            _loc1_.clip.inventory.panels["panel" + _loc2_].buttonMode = true;
            _loc1_.clip.inventory.panels["panel" + _loc2_].useHandCursor = true;
            _loc1_.clip.inventory.panels["panel" + _loc2_].addEventListener(MouseEvent.CLICK,_loc1_.grabFurniFromInventory);
            _loc1_.clip.inventory.panels["panel" + _loc2_].addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverInvPanel);
            _loc1_.clip.inventory.panels["panel" + _loc2_].addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutInvPanel);
            _loc2_++;
            true;
            true;
         }
         _loc1_.clip.inventory.next_btn.visible = false;
         true;
         true;
         _loc1_.clip.inventory.prev_btn.visible = false;
         _loc1_.clip.inventory.effect_txt.text = "";
         _loc1_.selectMode("furni");
         if(_loc1_.workingArray.length == 0)
         {
            false;
            false;
            _loc1_.selectMode("poster");
         }
         _loc1_.populatePanels();
         _loc1_.clip.inventory.y = 480;
      }
      
      public function clickNext(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         ++_loc2_.whichSet;
         _loc2_.clip.inventory.panels.gotoAndPlay("nextset");
         true;
         true;
         _loc2_.clip.inventory.next_btn.visible = false;
         _loc2_.clip.inventory.prev_btn.visible = false;
      }
      
      public function clickPrevious(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = _loc2_).whichSet - 1;
         false;
         false;
         _loc3_.whichSet = _loc4_;
         _loc2_.clip.inventory.panels.gotoAndPlay("prevset");
         _loc2_.clip.inventory.next_btn.visible = false;
         false;
         false;
         _loc2_.clip.inventory.prev_btn.visible = false;
      }
      
      public function rolloverInvPanel(param1:MouseEvent) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:FurniData = null;
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:Number = -1;
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ > _loc2_.panelsPerSet)
            {
               false;
               false;
               break;
            }
            if(param1.currentTarget == _loc2_.clip.inventory.panels["panel" + _loc4_])
            {
               false;
               false;
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         if(_loc3_ > -1)
         {
            _loc2_.clip.inventory.panels["panel" + _loc4_].hilite.visible = true;
            true;
            true;
            true;
            true;
            true;
            true;
            _loc5_ = _loc2_.panelsPerSet * (_loc2_.whichSet - 1);
            _loc6_ = _loc3_ - 1 + _loc5_;
            _loc7_ = String(_loc2_.workingArray[_loc6_]);
            _loc8_ = _loc2_.gameObj.var_38.getFurniFromTag(_loc7_);
            true;
            true;
            _loc2_.clip.inventory.effect_txt.text = _loc8_.effect;
         }
      }
      
      public function rolloutInvPanel(param1:MouseEvent) : void
      {
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:Number = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= _loc2_.panelsPerSet)
         {
            if(param1.currentTarget == _loc2_.clip.inventory.panels["panel" + _loc4_])
            {
               _loc3_ = _loc4_;
               true;
               true;
               break;
            }
            _loc4_++;
         }
         if(_loc3_ > -1)
         {
            _loc2_.clip.inventory.panels["panel" + _loc4_].hilite.visible = false;
         }
         _loc2_.clip.inventory.effect_txt.text = "";
      }
      
      public function grabFurniFromInventory(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:FurniData = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc2_:LobbyEditorScreen = this;
         true;
         true;
         if(_loc2_.inventoryIsOpen || _loc2_.isInvOpening)
         {
            _loc3_ = -1;
            false;
            false;
            _loc4_ = 1;
            while(_loc4_ <= _loc2_.panelsPerSet)
            {
               if(param1.currentTarget == _loc2_.clip.inventory.panels["panel" + _loc4_])
               {
                  _loc3_ = _loc4_;
                  break;
               }
               _loc4_++;
            }
            if(_loc3_ != -1)
            {
               true;
               true;
               true;
               true;
               _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
               true;
               true;
               _loc5_ = _loc2_.panelsPerSet * (_loc2_.whichSet - 1);
               false;
               false;
               false;
               false;
               _loc6_ = _loc3_ - 1 + _loc5_;
               _loc7_ = String(_loc2_.workingArray[_loc6_]);
               true;
               true;
               true;
               true;
               §§push((_loc8_ = _loc2_.gameObj.var_38.getFurniFromTag(_loc7_)).type == FurniData.TYPE_WALLPAPER);
               if(!((_loc8_ = _loc2_.gameObj.var_38.getFurniFromTag(_loc7_)).type == FurniData.TYPE_WALLPAPER))
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  §§push(_loc8_.type == FurniData.TYPE_FLOORING);
               }
               if(§§pop())
               {
                  true;
                  true;
                  if(_loc8_.type == FurniData.TYPE_WALLPAPER)
                  {
                     true;
                     true;
                     _loc9_ = Number(_loc7_.split("wall")[1]);
                     _loc2_.gameObj.userData.lobbyWallpaper = _loc9_;
                  }
                  else
                  {
                     false;
                     false;
                     false;
                     false;
                     if(_loc8_.type == FurniData.TYPE_FLOORING)
                     {
                        _loc10_ = Number(_loc7_.split("floor")[1]);
                        false;
                        false;
                        _loc2_.gameObj.userData.lobbyFlooring = _loc10_;
                     }
                  }
                  _loc2_.updateLobbyBitmap();
                  _loc2_.clip.putaway_btn.visible = false;
                  true;
                  true;
                  _loc2_.clip.inventory_btn.visible = true;
                  _loc2_.closeInventory();
               }
               else
               {
                  _loc2_.addFurni(_loc8_,true);
                  _loc2_.clip.putaway_btn.visible = true;
                  _loc2_.clip.inventory_btn.visible = false;
                  _loc2_.closeInventory();
                  false;
                  false;
                  true;
                  true;
                  false;
                  false;
                  if(_loc8_.type == FurniData.TYPE_POSTER && _loc2_.gameObj.userData.hasTrainedPoster == false)
                  {
                     _loc2_.showContextTraining("poster");
                     true;
                     true;
                     true;
                     true;
                     _loc2_.gameObj.userData.hasTrainedPoster = true;
                     true;
                     true;
                  }
                  else if(_loc8_.type == FurniData.TYPE_FURNI && _loc2_.gameObj.userData.hasTrainedFurni == false)
                  {
                     _loc2_.showContextTraining("furni");
                     false;
                     false;
                     _loc2_.gameObj.userData.hasTrainedFurni = true;
                  }
               }
            }
         }
      }
      
      public function refreshInventory() : void
      {
         false;
         true;
         var _loc1_:LobbyEditorScreen = this;
         _loc1_.workingArray = _loc1_.gameObj.userData.getFurniAvailable(_loc1_.mode);
         if(_loc1_.mode == FurniData.TYPE_WALLPAPER)
         {
            false;
            false;
            _loc1_.workingArray.push("wall1");
            false;
            false;
         }
         else if(_loc1_.mode == FurniData.TYPE_FLOORING)
         {
            _loc1_.workingArray.push("floor1");
         }
         var _loc2_:Number = Math.ceil(_loc1_.workingArray.length / _loc1_.panelsPerSet);
         false;
         false;
         if(_loc2_ >= 1 && _loc1_.whichSet > _loc2_)
         {
            true;
            true;
            _loc1_.whichSet = _loc2_;
         }
      }
      
      public function createGrids() : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc1_:LobbyEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         _loc4_ = 0;
         while(true)
         {
            true;
            true;
            false;
            false;
            if(_loc4_ >= _loc1_.wallGridHeight)
            {
               break;
            }
            true;
            true;
            _loc5_ = [];
            _loc3_ = 0;
            while(true)
            {
               true;
               true;
               if(_loc3_ >= _loc1_.wallGridWidth)
               {
                  break;
               }
               _loc5_.push(0);
               _loc3_++;
            }
            true;
            true;
            _loc1_.wallGrid.push(_loc5_);
            _loc4_++;
         }
         _loc4_ = 0;
         false;
         false;
         while(_loc4_ < _loc1_.floorGridHeight)
         {
            _loc6_ = [];
            _loc3_ = 0;
            while(true)
            {
               false;
               false;
               if(_loc3_ >= _loc1_.floorGridWidth)
               {
                  break;
               }
               _loc6_.push(0);
               true;
               true;
               _loc3_++;
            }
            _loc1_.floorGrid.push(_loc6_);
            true;
            true;
            _loc4_++;
         }
      }
      
      public function createExistingFurni() : void
      {
         var _loc4_:FurniData = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc1_:LobbyEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.lobbyPlacement.length)
         {
            _loc4_ = _loc1_.gameObj.var_38.getFurniFromTag(_loc2_.lobbyPlacement[_loc3_][0]);
            false;
            false;
            false;
            false;
            _loc5_ = Number(_loc2_.lobbyPlacement[_loc3_][1]);
            false;
            false;
            true;
            true;
            true;
            true;
            _loc6_ = Number(_loc2_.lobbyPlacement[_loc3_][2]);
            _loc1_.addFurni(_loc4_,false,_loc5_,_loc6_);
            _loc7_ = _loc6_;
            while(true)
            {
               true;
               true;
               if(_loc7_ >= _loc6_ + _loc4_.depth)
               {
                  break;
               }
               true;
               true;
               _loc8_ = _loc5_;
               while(true)
               {
                  true;
                  true;
                  true;
                  true;
                  false;
                  false;
                  if(_loc8_ >= _loc5_ + _loc4_.width)
                  {
                     break;
                  }
                  false;
                  false;
                  if(_loc4_.type == FurniData.TYPE_POSTER)
                  {
                     false;
                     false;
                     true;
                     true;
                     _loc1_.wallGrid[_loc7_][_loc8_] = 1;
                  }
                  else if(_loc4_.type == FurniData.TYPE_FURNI)
                  {
                     false;
                     false;
                     _loc1_.floorGrid[_loc7_][_loc8_] = 1;
                  }
                  _loc8_++;
               }
               false;
               false;
               _loc7_++;
            }
            false;
            false;
            _loc3_++;
         }
         true;
         true;
         _loc1_.existingFurniIsSet = true;
      }
      
      public function isWallGridFree(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc5_:LobbyEditorScreen = this;
         var _loc6_:Boolean = true;
         true;
         true;
         _loc8_ = param2;
         loop0:
         while(_loc8_ < param2 + param4)
         {
            _loc7_ = param1;
            while(_loc7_ < param1 + param3)
            {
               true;
               true;
               §§push(_loc8_ < 0);
               if(!(_loc8_ < 0))
               {
                  true;
                  true;
                  §§pop();
                  §§push(_loc8_ >= _loc5_.wallGrid.length);
               }
               false;
               false;
               if(!§§pop())
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  §§push(_loc7_ < 0);
               }
               false;
               false;
               if(§§pop() || _loc7_ >= _loc5_.wallGrid[0].length || _loc5_.wallGrid[_loc8_][_loc7_] != 0)
               {
                  _loc6_ = false;
                  break loop0;
               }
               _loc7_++;
            }
            false;
            false;
            _loc8_++;
            false;
            false;
         }
         return _loc6_;
      }
      
      public function isFloorGridFree(param1:Number, param2:Number, param3:Number, param4:Number = 1) : Boolean
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc5_:LobbyEditorScreen = this;
         var _loc6_:Boolean = true;
         _loc8_ = param2;
         loop0:
         while(_loc8_ < param2 + param4)
         {
            _loc7_ = param1;
            while(true)
            {
               false;
               false;
               false;
               false;
               if(_loc7_ >= param1 + param3)
               {
                  break;
               }
               true;
               true;
               §§push(_loc8_ < 0 || _loc8_ >= _loc5_.floorGrid.length);
               if(!(_loc8_ < 0 || _loc8_ >= _loc5_.floorGrid.length))
               {
                  false;
                  false;
                  §§pop();
                  §§push(_loc7_ < 0);
               }
               if(§§pop() || _loc7_ >= _loc5_.floorGrid[0].length || _loc5_.floorGrid[_loc8_][_loc7_] != 0)
               {
                  false;
                  false;
                  _loc6_ = false;
                  break loop0;
               }
               true;
               true;
               _loc7_++;
            }
            _loc8_++;
         }
         return _loc6_;
      }
      
      public function placeFurni(param1:FurniData, param2:Number, param3:Number) : void
      {
         var _loc7_:int = 0;
         var _loc4_:LobbyEditorScreen;
         var _loc5_:UserData = (_loc4_ = this).gameObj.userData;
         var _loc6_:int = param3;
         while(true)
         {
            false;
            false;
            if(_loc6_ >= param3 + param1.depth)
            {
               break;
            }
            false;
            false;
            _loc7_ = param2;
            while(true)
            {
               false;
               false;
               true;
               true;
               false;
               false;
               false;
               false;
               if(_loc7_ >= param2 + param1.width)
               {
                  break;
               }
               false;
               false;
               if(param1.type == FurniData.TYPE_POSTER)
               {
                  true;
                  true;
                  _loc4_.wallGrid[_loc6_][_loc7_] = 1;
               }
               else
               {
                  true;
                  true;
                  if(param1.type == FurniData.TYPE_FURNI)
                  {
                     _loc4_.floorGrid[_loc6_][_loc7_] = 1;
                  }
               }
               _loc7_++;
            }
            false;
            false;
            _loc6_++;
         }
         true;
         true;
         _loc5_.placeFurniInLobby(param1.tag,param2,param3);
         if(param1.type == FurniData.TYPE_FURNI)
         {
            _loc4_.adjustFloorLayering(param3);
         }
         true;
         true;
         false;
         false;
         §§push(Boolean(_loc4_.trainingClip));
         if(Boolean(_loc4_.trainingClip))
         {
            false;
            false;
            §§pop();
            false;
            false;
            false;
            false;
            §§push(_loc4_.whichContextTraining == "poster" || _loc4_.whichContextTraining == "furni");
         }
         if(§§pop())
         {
            _loc4_.removeContextTraining();
         }
         _loc4_.refreshInventory();
      }
      
      public function pickupFurni(param1:FurniData, param2:Number, param3:Number) : void
      {
         var _loc7_:int = 0;
         var _loc4_:LobbyEditorScreen;
         var _loc5_:UserData = (_loc4_ = this).gameObj.userData;
         var _loc6_:int = param3;
         while(_loc6_ < param3 + param1.depth)
         {
            _loc7_ = param2;
            while(true)
            {
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               if(_loc7_ >= param2 + param1.width)
               {
                  break;
               }
               true;
               true;
               if(param1.type == FurniData.TYPE_POSTER)
               {
                  _loc4_.wallGrid[_loc6_][_loc7_] = 0;
               }
               else if(param1.type == FurniData.TYPE_FURNI)
               {
                  _loc4_.floorGrid[_loc6_][_loc7_] = 0;
               }
               _loc7_++;
            }
            _loc6_++;
            false;
            false;
         }
         _loc5_.removeFurniFromLobby(param1.tag,param2,param3);
         _loc4_.refreshInventory();
      }
      
      public function adjustFloorLayering(param1:Number) : void
      {
      }
      
      public function putAwayFurni(param1:FurnitureItem) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:SoundManager = _loc2_.gameObj.soundManager;
         var _loc4_:UserData = _loc2_.gameObj.userData;
         true;
         true;
         if(param1.data.tag == "furni_jukebox" && !_loc4_.isFurniInLobby("jukebox"))
         {
            _loc3_.track_jukebox.soundTransform = new SoundTransform(0);
         }
         else
         {
            false;
            false;
            false;
            false;
            true;
            true;
            if(param1.data.tag == "furni_phonograph" && !_loc4_.isFurniInLobby("phonograph"))
            {
               _loc3_.track_phonograph.soundTransform = new SoundTransform(0);
            }
            else
            {
               §§push(param1.data.tag == "furni_wingeria_music");
               if(param1.data.tag == "furni_wingeria_music")
               {
                  false;
                  false;
                  §§pop();
                  §§push(!_loc4_.isFurniInLobby("boombox"));
               }
               if(§§pop())
               {
                  true;
                  true;
                  _loc3_.track_boombox.soundTransform = new SoundTransform(0);
               }
            }
         }
         if(_loc2_.activeFurni == param1)
         {
            _loc2_.activeFurni = null;
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.furniItems.length)
         {
            if(_loc2_.furniItems[_loc5_] == param1)
            {
               true;
               true;
               _loc2_.furniItems[_loc5_].destroy();
               _loc2_.furniItems.splice(_loc5_,1);
               break;
            }
            _loc5_++;
         }
         true;
         true;
         §§push(Boolean(_loc2_.trainingClip));
         if(Boolean(_loc2_.trainingClip))
         {
            true;
            true;
            §§pop();
            true;
            true;
            true;
            true;
            §§push(_loc2_.whichContextTraining == "poster" || _loc2_.whichContextTraining == "furni");
         }
         if(§§pop())
         {
            _loc2_.removeContextTraining();
         }
      }
      
      public function addFurni(param1:FurniData, param2:Boolean, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:LobbyEditorScreen;
         var _loc6_:SoundManager = (_loc5_ = this).gameObj.soundManager;
         var _loc7_:MovieClip = _loc5_.clip.moving_layer;
         true;
         true;
         true;
         true;
         if(param2 == false && param1.type == FurniData.TYPE_POSTER)
         {
            _loc7_ = _loc5_.clip.wall_layer;
         }
         else
         {
            true;
            true;
            if(param2 == false && param1.type == FurniData.TYPE_FURNI)
            {
               true;
               true;
               true;
               true;
               if(param4 == 0)
               {
                  _loc7_ = _loc5_.clip.floor0_layer;
               }
               else if(param4 == 1)
               {
                  _loc7_ = _loc5_.clip.floor1_layer;
               }
               else
               {
                  _loc7_ = _loc5_.clip.floor2_layer;
               }
            }
         }
         var _loc8_:FurnitureItem = new FurnitureItem(_loc5_.gameObj,_loc7_,param1,param3,param4,param2);
         _loc5_.furniItems.push(_loc8_);
         if(param2)
         {
            _loc5_.setActiveFurni(_loc8_);
         }
         if(param1.tag == "furni_jukebox")
         {
            _loc6_.track_jukebox.soundTransform = new SoundTransform(1);
         }
         else if(param1.tag == "furni_phonograph")
         {
            _loc6_.track_phonograph.soundTransform = new SoundTransform(1);
         }
         else if(param1.tag == "furni_wingeria_music")
         {
            _loc6_.track_boombox.soundTransform = new SoundTransform(1);
         }
      }
      
      public function setActiveFurni(param1:FurnitureItem) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         true;
         true;
         if(_loc2_.activeFurni != null)
         {
            true;
            true;
         }
         _loc2_.activeFurni = param1;
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:LobbyEditorScreen = this;
         true;
         true;
         if(_loc2_.existingFurniIsSet == false)
         {
            false;
            false;
            _loc2_.createExistingFurni();
         }
         if(_loc2_.inventoryIsOpen)
         {
            true;
            true;
            if(_loc2_.clip.inventory.panels.currentFrame == 6 || _loc2_.clip.inventory.panels.currentFrame == 17)
            {
               _loc2_.clip.inventory.panels.stop();
               if(_loc2_.shouldShowNext)
               {
                  _loc2_.clip.inventory.next_btn.visible = true;
               }
               else
               {
                  _loc2_.clip.inventory.next_btn.visible = false;
                  false;
                  false;
               }
               if(_loc2_.shouldShowPrev)
               {
                  _loc2_.clip.inventory.prev_btn.visible = true;
               }
               else
               {
                  _loc2_.clip.inventory.prev_btn.visible = false;
               }
            }
            else
            {
               _loc2_.clip.inventory.next_btn.visible = false;
               _loc2_.clip.inventory.prev_btn.visible = false;
               true;
               true;
            }
            if(_loc2_.clip.inventory.panels.currentFrame == 11)
            {
               _loc2_.populatePanels();
               _loc2_.clip.inventory.panels.gotoAndPlay(1);
            }
            else if(_loc2_.clip.inventory.panels.currentFrame == 22)
            {
               _loc2_.populatePanels();
               _loc2_.clip.inventory.panels.gotoAndPlay(12);
            }
         }
         else if(_loc2_.isInvClosing)
         {
            _loc3_ = 480;
            false;
            false;
            _loc4_ = _loc3_ - _loc2_.clip.inventory.y;
            _loc2_.clip.inventory.y += _loc4_ / _loc2_.invOpenSpeed;
            false;
            false;
            if(_loc4_ >= -1 && _loc4_ <= 1)
            {
               true;
               true;
               _loc2_.clip.inventory.y = _loc3_;
               true;
               true;
               _loc2_.isInvClosing = false;
            }
         }
         else
         {
            true;
            true;
            if(_loc2_.isInvOpening)
            {
               true;
               true;
               _loc6_ = (_loc5_ = 0) - _loc2_.clip.inventory.y;
               _loc2_.clip.inventory.y += _loc6_ / _loc2_.invOpenSpeed;
               false;
               false;
               true;
               true;
               if(_loc6_ >= -1 && _loc6_ <= 1)
               {
                  _loc2_.clip.inventory.y = _loc5_;
                  _loc2_.isInvOpening = false;
                  false;
                  false;
                  _loc2_.inventoryIsOpen = true;
               }
            }
         }
      }
      
      public function populatePanels() : void
      {
         var screen:LobbyEditorScreen;
         var data:UserData;
         var gamedata:GameData;
         var offset:Number;
         var i:int;
         var index:Number;
         var mypanel:MovieClip;
         var whichTag:String;
         var furniData:FurniData;
         var amt:Number;
         false;
         true;
         false;
         false;
         index = NaN;
         mypanel = null;
         whichTag = null;
         furniData = null;
         true;
         true;
         amt = NaN;
         false;
         false;
         screen = this;
         false;
         false;
         true;
         true;
         data = screen.gameObj.userData;
         true;
         true;
         true;
         true;
         gamedata = screen.gameObj.var_38;
         false;
         false;
         true;
         true;
         offset = screen.panelsPerSet * (screen.whichSet - 1);
         i = 0;
         while(i < screen.panelsPerSet)
         {
            index = i + offset;
            true;
            true;
            true;
            true;
            mypanel = screen.clip.inventory.panels["panel" + (i + 1)];
            if(index < screen.workingArray.length)
            {
               true;
               true;
               false;
               false;
               whichTag = String(screen.workingArray[index]);
               furniData = gamedata.getFurniFromTag(whichTag);
               mypanel.visible = true;
               true;
               true;
               mypanel.title_txt.text = furniData.title;
               true;
               true;
               amt = data.getFurniAmount(whichTag,false);
               mypanel.tally.amount_txt.text = String(amt);
               false;
               false;
               if(amt > 1)
               {
                  mypanel.tally.visible = true;
               }
               else
               {
                  mypanel.tally.visible = false;
               }
               false;
               false;
               true;
               true;
               false;
               false;
               if(furniData.tag == "wall" + data.lobbyWallpaper || furniData.tag == "floor" + data.lobbyFlooring)
               {
                  true;
                  true;
                  mypanel.checkmark.visible = true;
                  true;
                  true;
                  mypanel.tally.visible = true;
                  mypanel.tally.amount_txt.text = "";
               }
               else
               {
                  mypanel.checkmark.visible = false;
               }
               try
               {
                  if(mypanel.thumb.numChildren > 0)
                  {
                     mypanel.thumb.removeChildAt(0);
                  }
               }
               catch(err:Error)
               {
                  false;
                  false;
                  class_5.error("Error removing thumb.");
               }
               mypanel.thumb.addChild(screen.createThumbnail(furniData));
               mypanel.hilite.visible = false;
            }
            else
            {
               mypanel.visible = false;
               false;
               false;
            }
            true;
            true;
            true;
            true;
            i++;
         }
         false;
         false;
         if(screen.workingArray.length > offset + screen.panelsPerSet)
         {
            false;
            false;
            true;
            true;
            screen.shouldShowNext = true;
         }
         else
         {
            false;
            false;
            screen.shouldShowNext = false;
         }
         true;
         true;
         false;
         false;
         if(screen.whichSet > 1)
         {
            true;
            true;
            true;
            true;
            screen.shouldShowPrev = true;
         }
         else
         {
            screen.shouldShowPrev = false;
         }
      }
      
      public function createThumbnail(param1:FurniData) : MovieClip
      {
         var _loc6_:Number = NaN;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:Number = NaN;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:Class = null;
         var _loc13_:MovieClip = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         this;
         var _loc3_:MovieClip = null;
         73;
         70;
         false;
         false;
         true;
         true;
         if(param1.type == FurniData.TYPE_FLOORING)
         {
            _loc6_ = Number(String(param1.tag).split("floor")[1]);
            _loc3_ = new MovieClip();
            (_loc7_ = new flooring_chunk()).gotoAndStop(_loc6_);
            (_loc8_ = new flooring_chunk()).gotoAndStop(_loc6_);
            true;
            true;
            _loc8_.x = _loc7_.width;
            false;
            false;
            _loc3_.addChild(_loc7_);
            true;
            true;
            _loc3_.addChild(_loc8_);
            true;
            true;
            _loc3_.scaleX = 0.3;
            _loc3_.scaleY = 0.3;
         }
         else if(param1.type == FurniData.TYPE_WALLPAPER)
         {
            true;
            true;
            _loc9_ = Number(String(param1.tag).split("wall")[1]);
            _loc3_ = new MovieClip();
            (_loc10_ = new wallpaper_holder()).gotoAndStop(_loc9_);
            (_loc11_ = new wallpaper_holder()).gotoAndStop(_loc9_);
            true;
            true;
            _loc11_.x = _loc10_.width;
            false;
            false;
            _loc3_.addChild(_loc10_);
            _loc3_.addChild(_loc11_);
            false;
            false;
            _loc3_.scaleX = 0.28;
            _loc3_.scaleY = 0.28;
         }
         else
         {
            true;
            true;
            _loc14_ = (_loc13_ = new (_loc12_ = getDefinitionByName(param1.tag) as Class)()).height / _loc13_.width;
            _loc15_ = _loc13_.width / _loc13_.height;
            true;
            true;
            if(_loc13_.height > 70 || _loc13_.width > 73)
            {
               false;
               false;
               if(_loc13_.height > _loc13_.width)
               {
                  _loc13_.height = 70;
                  _loc13_.width = _loc13_.height * _loc15_;
               }
               else
               {
                  _loc13_.width = 73;
                  _loc13_.height = _loc13_.width * _loc14_;
               }
            }
            true;
            true;
            _loc16_ = (73 - _loc13_.width) / 2;
            false;
            false;
            _loc17_ = (70 - _loc13_.height) / 2;
            true;
            true;
            if(param1.type == FurniData.TYPE_FURNI)
            {
               _loc13_.x = _loc16_;
               _loc13_.y = 70 - _loc17_;
            }
            else if(param1.type == FurniData.TYPE_POSTER)
            {
               _loc13_.x = _loc16_;
               _loc13_.y = _loc17_;
            }
            _loc3_ = _loc13_;
         }
         return _loc3_;
      }
      
      public function clickOpenInventory(param1:MouseEvent) : void
      {
         var _loc2_:LobbyEditorScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.clip.putaway_btn.visible = false;
         true;
         true;
         _loc2_.clip.inventory_btn.visible = true;
         false;
         false;
         if(_loc2_.inventoryIsOpen || _loc2_.isInvOpening)
         {
            true;
            true;
            _loc2_.closeInventory();
         }
         else
         {
            if(_loc2_.activeFurni != null)
            {
               _loc2_.putAwayFurni(_loc2_.activeFurni);
            }
            _loc2_.openInventory();
         }
         if(Boolean(_loc2_.trainingClip) && _loc2_.whichContextTraining == "inventory")
         {
            _loc2_.removeContextTraining();
         }
      }
      
      public function clickPutAway(param1:MouseEvent) : void
      {
         var _loc2_:LobbyEditorScreen = this;
         _loc2_.gameObj.soundManager.playSound("minigame_putt_cup.wav");
         false;
         false;
         _loc2_.clip.putaway_btn.visible = false;
         true;
         true;
         _loc2_.clip.inventory_btn.visible = true;
         true;
         true;
         if(_loc2_.activeFurni != null)
         {
            false;
            false;
            _loc2_.putAwayFurni(_loc2_.activeFurni);
         }
      }
      
      public function openInventory() : void
      {
         var _loc1_:LobbyEditorScreen = this;
         true;
         true;
         §§push(!_loc1_.inventoryIsOpen);
         if(!_loc1_.inventoryIsOpen)
         {
            true;
            true;
            §§pop();
            §§push(!_loc1_.isInvOpening);
         }
         if(§§pop())
         {
            false;
            false;
            _loc1_.populatePanels();
            _loc1_.isInvClosing = false;
            _loc1_.isInvOpening = true;
            _loc1_.inventoryIsOpen = false;
         }
      }
      
      public function closeInventory() : void
      {
         false;
         true;
         var _loc1_:LobbyEditorScreen = this;
         true;
         true;
         true;
         true;
         false;
         false;
         §§push(_loc1_.inventoryIsOpen);
         if(!_loc1_.inventoryIsOpen)
         {
            false;
            false;
            §§pop();
            false;
            false;
            §§push(_loc1_.isInvOpening);
         }
         if(§§pop())
         {
            false;
            false;
            _loc1_.isInvClosing = true;
            _loc1_.isInvOpening = false;
            _loc1_.inventoryIsOpen = false;
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:LobbyEditorScreen = this;
         _loc1_.removeContextTraining();
         var _loc2_:int = 0;
         while(true)
         {
            true;
            true;
            if(_loc2_ >= _loc1_.furniItems.length)
            {
               break;
            }
            _loc1_.furniItems[_loc2_].destroy();
            _loc1_.furniItems[_loc2_] = null;
            _loc2_++;
         }
         false;
         false;
         _loc1_.furniItems = null;
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
         }
         _loc1_.clip.inventory.furni_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.inventory.poster_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         true;
         true;
         _loc1_.clip.inventory.wallpaper_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.inventory.flooring_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.inventory.next_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickNext);
         _loc1_.clip.inventory.prev_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPrevious);
         var _loc3_:int = 1;
         false;
         false;
         while(_loc3_ <= _loc1_.panelsPerSet)
         {
            _loc1_.clip.inventory.panels["panel" + _loc3_].removeEventListener(MouseEvent.CLICK,_loc1_.grabFurniFromInventory);
            _loc1_.clip.inventory.panels["panel" + _loc3_].removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverInvPanel);
            _loc1_.clip.inventory.panels["panel" + _loc3_].removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutInvPanel);
            _loc3_++;
         }
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         }
         catch(err:Error)
         {
         }
         _loc1_.clip.backtogame_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickBackToGame);
         true;
         true;
         _loc1_.clip.inventory_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickOpenInventory);
         false;
         false;
         _loc1_.clip.putaway_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPutAway);
         _loc1_.clip.mute_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickMute);
         _loc1_.clip.unmute_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickUnmute);
         _loc1_.clip.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.clickScreen);
         _loc1_.gameObj.var_34.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         true;
         true;
         false;
         false;
         if(_loc2_.activeFurni != null && param1.target != _loc2_.clip.inventory_btn && param1.target != _loc2_.clip.backtogame_btn)
         {
            _loc2_.activeFurni.clickFurni(param1);
         }
      }
      
      public function clickMute(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         _loc2_.gameObj.soundManager.muteSound();
         false;
         false;
         _loc2_.updateMuteButton();
      }
      
      public function updateMuteButton() : void
      {
         false;
         true;
         var _loc1_:LobbyEditorScreen = this;
         false;
         false;
         _loc1_.clip.mute_btn.visible = !_loc1_.gameObj.soundManager.isMute;
         _loc1_.clip.unmute_btn.visible = _loc1_.gameObj.soundManager.isMute;
      }
      
      public function clickUnmute(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         false;
         false;
         true;
         true;
         _loc2_.gameObj.soundManager.unmuteSound();
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.updateMuteButton();
      }
      
      public function showContextTraining(param1:String) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         if(!_loc2_.trainingClip)
         {
            _loc2_.trainingClip = new trainingMC();
            _loc2_.clip.addChild(_loc2_.trainingClip);
            _loc2_.trainingClip.mouseEnabled = false;
            _loc2_.trainingClip.mouseChildren = false;
         }
         _loc2_.whichContextTraining = param1;
         _loc2_.trainingClip.gotoAndStop(param1);
      }
      
      public function removeContextTraining() : void
      {
         var _loc1_:LobbyEditorScreen = this;
         true;
         true;
         if(_loc1_.trainingClip)
         {
            _loc1_.clip.removeChild(_loc1_.trainingClip);
            true;
            true;
            _loc1_.trainingClip = null;
            true;
            true;
         }
         _loc1_.whichContextTraining = "none";
      }
      
      public function clickChangeMode(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:String = String(_loc3_[0]);
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(_loc2_.mode != _loc4_)
         {
            true;
            true;
            _loc2_.selectMode(_loc4_);
         }
      }
      
      public function selectMode(param1:String, param2:Boolean = false) : void
      {
         false;
         true;
         var _loc3_:LobbyEditorScreen = this;
         _loc3_.mode = param1;
         false;
         false;
         _loc3_.clip.inventory.tabbg.gotoAndStop("inv_" + _loc3_.mode);
         _loc3_.refreshInventory();
         _loc3_.whichSet = 1;
         false;
         false;
         if(!param2)
         {
            _loc3_.clip.inventory.panels.gotoAndPlay("nextset");
            _loc3_.clip.inventory.next_btn.visible = false;
            _loc3_.clip.inventory.prev_btn.visible = false;
         }
         else
         {
            _loc3_.clip.inventory.panels.gotoAndPlay(1);
            _loc3_.clip.inventory.next_btn.visible = false;
            true;
            true;
            _loc3_.clip.inventory.prev_btn.visible = false;
         }
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc4_:Number = NaN;
         var _loc1_:LobbyEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new lobbyBackdropMC();
         true;
         true;
         _loc4_ = 1;
         while(true)
         {
            false;
            false;
            if(_loc4_ > 10)
            {
               break;
            }
            _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
            _loc4_++;
            true;
            true;
         }
         _loc4_ = 1;
         while(_loc4_ <= 7)
         {
            _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc2_.lobbyFlooring);
            _loc4_++;
         }
         _loc5_.holder.trim.gotoAndStop(_loc2_.lobbyWallpaper);
         false;
         false;
         _loc5_.holder.countertop.gotoAndStop(_loc2_.lobbyWallpaper);
         _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
         _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
         var _loc6_:BitmapData;
         (_loc6_ = new BitmapData(640,480,false,4294967295)).draw(_loc5_,null,null,null,new Rectangle(0,0,640,480));
         _loc3_ = new Bitmap(_loc6_);
         _loc5_ = null;
         return _loc3_;
      }
      
      public function updateLobbyBitmap() : void
      {
         var _loc1_:LobbyEditorScreen = this;
         false;
         false;
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
      }
   }
}
