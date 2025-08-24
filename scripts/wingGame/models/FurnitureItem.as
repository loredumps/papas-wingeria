package wingGame.models
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.FurniData;
   import wingGame.screens.LobbyEditorScreen;
   
   public class FurnitureItem
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var data:FurniData;
      
      public var xtile:Number;
      
      public var ytile:Number;
      
      public var isDragging:Boolean = true;
      
      public var posterOffsetX:Number = -16;
      
      public var posterOffsetY:Number = -16;
      
      public var furniOffsetX:Number = -16;
      
      public var furniOffsetY:Number = 16;
      
      public var wallX:Number = 117;
      
      public var wallY:Number = 13;
      
      public var floorX:Array;
      
      public var floorY:Array;
      
      public var tileWidth:Number = 32;
      
      public var isLobby:Boolean = false;
      
      public var isOccupied:Boolean = false;
      
      public function FurnitureItem(param1:class_4, param2:MovieClip, param3:FurniData, param4:Number = 0, param5:Number = 0, param6:Boolean = true, param7:Boolean = false)
      {
         false;
         true;
         this.floorX = [140,121,102];
         this.floorY = [290,358,425];
         super();
         var _loc8_:FurnitureItem;
         (_loc8_ = this).gameObj = param1;
         _loc8_.container = param2;
         _loc8_.data = param3;
         _loc8_.xtile = param4;
         _loc8_.ytile = param5;
         _loc8_.isDragging = param6;
         _loc8_.isLobby = param7;
         _loc8_.setupFurni();
      }
      
      public function setupFurni() : void
      {
         var _loc1_:FurnitureItem = this;
         var _loc2_:LobbyEditorScreen = _loc1_.gameObj.var_51;
         var _loc3_:Class = getDefinitionByName(_loc1_.data.tag) as Class;
         _loc1_.clip = new _loc3_();
         _loc1_.container.addChild(_loc1_.clip);
         true;
         true;
         false;
         false;
         if(_loc1_.data.tag.indexOf("arcade") == -1)
         {
            _loc1_.clip.cacheAsBitmap = true;
         }
         if(!_loc1_.isDragging)
         {
            true;
            true;
            if(this.data.type == FurniData.TYPE_POSTER)
            {
               _loc1_.clip.x = _loc1_.wallX + _loc1_.xtile * _loc1_.tileWidth;
               _loc1_.clip.y = _loc1_.wallY + _loc1_.ytile * _loc1_.tileWidth;
            }
            else if(this.data.type == FurniData.TYPE_FURNI)
            {
               false;
               false;
               _loc1_.clip.x = _loc1_.floorX[_loc1_.ytile] + _loc1_.xtile * _loc1_.tileWidth;
               _loc1_.clip.y = _loc1_.floorY[_loc1_.ytile];
            }
         }
         else
         {
            _loc1_.clip.x = _loc2_.clip.mouseX;
            true;
            true;
            _loc1_.clip.y = _loc2_.clip.mouseY;
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateFurni);
         }
         if(!_loc1_.isLobby)
         {
            _loc1_.clip.mouseEnabled = true;
            _loc1_.clip.buttonMode = true;
            _loc1_.clip.useHandCursor = true;
            _loc1_.clip.addEventListener(MouseEvent.MOUSE_UP,_loc1_.selectFurni);
         }
         else
         {
            false;
            false;
            true;
            true;
            if(_loc1_.data.tag == "furni_jukebox" || _loc1_.data.tag == "furni_wingeria_music" || _loc1_.data.tag == "furni_phonograph")
            {
               true;
               true;
               _loc1_.clip.mouseEnabled = true;
               _loc1_.clip.buttonMode = true;
               _loc1_.clip.useHandCursor = true;
               true;
               true;
               _loc1_.clip.addEventListener(MouseEvent.MOUSE_UP,_loc1_.toggleMusicVolume);
               true;
               true;
            }
         }
         if(_loc1_.data.tag == "poster_window" && !_loc1_.isLobby)
         {
            false;
            false;
            _loc1_.clip.graphics.beginFill(10561991,1);
            _loc1_.clip.graphics.drawRect(0,0,96,96);
            _loc1_.clip.graphics.endFill();
         }
      }
      
      public function updateFurni(param1:Event = null) : void
      {
         var _loc4_:Point = null;
         var _loc2_:FurnitureItem = this;
         var _loc3_:LobbyEditorScreen = _loc2_.gameObj.var_51;
         true;
         true;
         if(_loc2_.isDragging)
         {
            if((_loc4_ = _loc2_.getGridTile()) != null)
            {
               false;
               false;
               true;
               true;
               if(_loc2_.data.type == FurniData.TYPE_POSTER)
               {
                  if(_loc3_.isWallGridFree(_loc4_.x,_loc4_.y,this.data.width,this.data.depth))
                  {
                     _loc2_.clip.alpha = 0.9;
                     _loc2_.clip.x = _loc2_.wallX + _loc4_.x * _loc2_.tileWidth;
                     _loc2_.clip.y = _loc2_.wallY + _loc4_.y * _loc2_.tileWidth;
                  }
                  else
                  {
                     _loc2_.clip.alpha = 0.5;
                     _loc2_.clip.x = _loc3_.clip.mouseX + _loc2_.posterOffsetX;
                     true;
                     true;
                     _loc2_.clip.y = _loc3_.clip.mouseY + _loc2_.posterOffsetX;
                  }
                  _loc2_.setContainer(_loc3_.clip.wall_layer);
               }
               else if(_loc2_.data.type == FurniData.TYPE_FURNI)
               {
                  true;
                  true;
                  if(_loc3_.isFloorGridFree(_loc4_.x,_loc4_.y,this.data.width,this.data.depth))
                  {
                     _loc2_.clip.alpha = 0.9;
                     true;
                     true;
                     _loc2_.clip.x = _loc2_.floorX[_loc4_.y] + _loc4_.x * _loc2_.tileWidth;
                     _loc2_.clip.y = _loc2_.floorY[_loc4_.y];
                  }
                  else
                  {
                     _loc2_.clip.alpha = 0.5;
                     _loc2_.clip.x = _loc3_.clip.mouseX + _loc2_.furniOffsetX;
                     _loc2_.clip.y = _loc3_.clip.mouseY + _loc2_.furniOffsetY;
                  }
                  _loc2_.setContainer(_loc3_.clip["floor" + _loc4_.y + "_layer"]);
               }
            }
            else
            {
               _loc2_.clip.alpha = 0.5;
               _loc2_.clip.x = _loc3_.clip.mouseX;
               _loc2_.clip.y = _loc3_.clip.mouseY;
               if(_loc2_.data.type == FurniData.TYPE_POSTER)
               {
                  _loc2_.clip.x += _loc2_.posterOffsetX;
                  _loc2_.clip.y += _loc2_.posterOffsetY;
               }
               else
               {
                  _loc2_.clip.x += _loc2_.furniOffsetX;
                  _loc2_.clip.y += _loc2_.furniOffsetY;
               }
               _loc2_.setContainer(_loc3_.clip.moving_layer);
            }
         }
      }
      
      public function getGridTile() : Point
      {
         var _loc1_:FurnitureItem = this;
         var _loc2_:LobbyEditorScreen = _loc1_.gameObj.var_51;
         var _loc3_:Point = null;
         var _loc4_:Number = _loc2_.clip.mouseX;
         var _loc5_:Number = _loc2_.clip.mouseY;
         var _loc6_:Number = -1;
         var _loc7_:Number = -1;
         true;
         true;
         false;
         false;
         false;
         false;
         if(_loc1_.data.type == FurniData.TYPE_POSTER)
         {
            true;
            true;
            _loc6_ = Math.floor((_loc4_ - _loc1_.wallX) / _loc1_.tileWidth);
            _loc7_ = Math.floor((_loc5_ - _loc1_.wallY) / _loc1_.tileWidth);
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
            if(_loc6_ >= 0 && _loc6_ < _loc2_.wallGridWidth && _loc7_ >= 0 && _loc7_ < _loc2_.wallGridHeight)
            {
               _loc3_ = new Point(_loc6_,_loc7_);
            }
         }
         else if(_loc1_.data.type == FurniData.TYPE_FURNI)
         {
            true;
            true;
            false;
            false;
            true;
            true;
            if(_loc5_ >= _loc1_.floorY[0] - _loc1_.tileWidth && _loc5_ <= _loc1_.floorY[0])
            {
               true;
               true;
               _loc7_ = 0;
            }
            else
            {
               false;
               false;
               false;
               false;
               §§push(_loc5_ >= _loc1_.floorY[1] - _loc1_.tileWidth);
               if(_loc5_ >= _loc1_.floorY[1] - _loc1_.tileWidth)
               {
                  false;
                  false;
                  §§pop();
                  true;
                  true;
                  §§push(_loc5_ <= _loc1_.floorY[1]);
               }
               if(§§pop())
               {
                  _loc7_ = 1;
                  false;
                  false;
               }
               else
               {
                  true;
                  true;
                  true;
                  true;
                  if(_loc5_ >= _loc1_.floorY[2] - _loc1_.tileWidth && _loc5_ <= _loc1_.floorY[2])
                  {
                     false;
                     false;
                     _loc7_ = 2;
                  }
               }
            }
            if(_loc7_ > -1)
            {
               false;
               false;
               §§push((_loc6_ = Math.floor((_loc4_ - _loc1_.floorX[_loc7_]) / _loc1_.tileWidth)) >= 0 && _loc6_ < _loc2_.floorGridWidth);
               if((_loc6_ = Math.floor((_loc4_ - _loc1_.floorX[_loc7_]) / _loc1_.tileWidth)) >= 0 && _loc6_ < _loc2_.floorGridWidth)
               {
                  true;
                  true;
                  §§pop();
                  §§push(_loc7_ >= 0);
               }
               if(§§pop() && _loc7_ < _loc2_.floorGridHeight)
               {
                  _loc3_ = new Point(_loc6_,_loc7_);
               }
            }
         }
         return _loc3_;
      }
      
      public function setContainer(param1:MovieClip) : void
      {
         false;
         true;
         var _loc2_:FurnitureItem = this;
         true;
         true;
         if(_loc2_.container != param1)
         {
            _loc2_.container = param1;
            if(!_loc2_.container.contains(_loc2_.clip))
            {
               _loc2_.container.addChild(_loc2_.clip);
            }
            else
            {
               _loc2_.container.setChildIndex(_loc2_.clip,_loc2_.container.numChildren - 1);
               false;
               false;
            }
         }
         else
         {
            _loc2_.container.setChildIndex(_loc2_.clip,_loc2_.container.numChildren - 1);
         }
      }
      
      public function selectFurni(param1:MouseEvent) : void
      {
         var _loc2_:FurnitureItem = this;
         var _loc3_:LobbyEditorScreen = _loc2_.gameObj.var_51;
         false;
         false;
         §§push(!_loc2_.isDragging);
         if(!_loc2_.isDragging)
         {
            true;
            true;
            §§pop();
            §§push(_loc3_.activeFurni == null);
         }
         if(§§pop())
         {
            true;
            true;
            _loc2_.gameObj.soundManager.playSound("grabtopping.wav");
            _loc2_.isDragging = true;
            false;
            false;
            _loc3_.pickupFurni(_loc2_.data,_loc2_.xtile,_loc2_.ytile);
            _loc3_.setActiveFurni(_loc2_);
            if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
            {
               _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateFurni);
               true;
               true;
            }
            _loc3_.clip.putaway_btn.visible = true;
            _loc3_.clip.inventory_btn.visible = false;
            true;
            true;
            param1.stopImmediatePropagation();
         }
      }
      
      public function clickFurni(param1:MouseEvent) : void
      {
         var _loc4_:Point = null;
         var _loc2_:FurnitureItem = this;
         var _loc3_:LobbyEditorScreen = _loc2_.gameObj.var_51;
         false;
         false;
         if(_loc2_.isDragging)
         {
            if((_loc4_ = _loc2_.getGridTile()) != null)
            {
               true;
               true;
               if(_loc2_.data.type == FurniData.TYPE_POSTER)
               {
                  false;
                  false;
                  if(_loc3_.isWallGridFree(_loc4_.x,_loc4_.y,this.data.width,this.data.depth))
                  {
                     _loc2_.clip.alpha = 1;
                     _loc2_.clip.x = _loc2_.wallX + _loc4_.x * _loc2_.tileWidth;
                     _loc2_.clip.y = _loc2_.wallY + _loc4_.y * _loc2_.tileWidth;
                     _loc3_.placeFurni(_loc2_.data,_loc4_.x,_loc4_.y);
                     false;
                     false;
                     _loc2_.xtile = _loc4_.x;
                     _loc2_.ytile = _loc4_.y;
                     false;
                     false;
                     if(_loc3_.activeFurni == _loc2_)
                     {
                        _loc3_.activeFurni = null;
                     }
                     _loc2_.setContainer(_loc3_.clip.wall_layer);
                     _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.updateFurni);
                     _loc2_.isDragging = false;
                     _loc3_.clip.putaway_btn.visible = false;
                     _loc3_.clip.inventory_btn.visible = true;
                     false;
                     false;
                     if(!_loc2_.gameObj.userData.hasPlacedFurniture)
                     {
                        false;
                        false;
                        false;
                        false;
                        _loc2_.gameObj.var_10.api.method_27("Placed_Furniture","Screens",true);
                        false;
                        false;
                        _loc2_.gameObj.userData.hasPlacedFurniture = true;
                     }
                     false;
                     false;
                     true;
                     true;
                     _loc2_.gameObj.soundManager.playSound("droptopping.wav");
                  }
               }
               else if(_loc2_.data.type == FurniData.TYPE_FURNI)
               {
                  false;
                  false;
                  if(_loc3_.isFloorGridFree(_loc4_.x,_loc4_.y,this.data.width,this.data.depth))
                  {
                     _loc2_.clip.alpha = 1;
                     false;
                     false;
                     _loc2_.clip.x = _loc2_.floorX[_loc4_.y] + _loc4_.x * _loc2_.tileWidth;
                     _loc2_.clip.y = _loc2_.floorY[_loc4_.y];
                     _loc3_.placeFurni(_loc2_.data,_loc4_.x,_loc4_.y);
                     _loc2_.xtile = _loc4_.x;
                     _loc2_.ytile = _loc4_.y;
                     if(_loc3_.activeFurni == _loc2_)
                     {
                        _loc3_.activeFurni = null;
                     }
                     _loc2_.setContainer(_loc3_.clip["floor" + _loc2_.ytile + "_layer"]);
                     _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.updateFurni);
                     _loc2_.isDragging = false;
                     _loc3_.clip.putaway_btn.visible = false;
                     _loc3_.clip.inventory_btn.visible = true;
                     false;
                     false;
                     if(!_loc2_.gameObj.userData.hasPlacedFurniture)
                     {
                        _loc2_.gameObj.var_10.api.method_27("Placed_Furniture","Screens",true);
                        _loc2_.gameObj.userData.hasPlacedFurniture = true;
                     }
                     _loc2_.gameObj.soundManager.playSound("droptopping.wav");
                  }
               }
            }
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:FurnitureItem = this;
         if(!_loc1_.isLobby)
         {
            _loc1_.clip.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.selectFurni);
         }
         else
         {
            true;
            true;
            true;
            true;
            if(_loc1_.data.tag == "furni_jukebox" || _loc1_.data.tag == "furni_wingeria_music" || _loc1_.data.tag == "furni_phonograph")
            {
               _loc1_.clip.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.toggleMusicVolume);
            }
         }
         if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateFurni);
         }
         §§push(Boolean(_loc1_.container));
         if(Boolean(_loc1_.container))
         {
            true;
            true;
            §§pop();
            true;
            true;
            §§push(_loc1_.container.contains(_loc1_.clip));
         }
         if(§§pop())
         {
            _loc1_.container.removeChild(_loc1_.clip);
         }
         _loc1_.container = null;
         true;
         true;
         _loc1_.clip = null;
      }
      
      public function toggleMusicVolume(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:FurnitureItem;
         false;
         true;
         true;
         true;
         e = param1;
         ob = this;
         try
         {
            ob.gameObj.var_21.toggleMusicMute(ob.data.tag);
         }
         catch(err:Error)
         {
            class_5.method_25("Error with toggling volume on furni.");
         }
      }
   }
}
