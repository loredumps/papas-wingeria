package wingGame.models
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.CustomerOrder;
   import wingGame.screens.BuildScreen;
   
   public class Ticket
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var order:Array;
      
      public var orderData:CustomerOrder;
      
      public var customerType:Number;
      
      public var ticketNumber:Number = 1;
      
      public var targetX:Number = 0;
      
      public var targetY:Number = 0;
      
      public var targetScale:Number = 0;
      
      public var isDragging:Boolean = false;
      
      public var isMoving:Boolean = false;
      
      public var isDrawingOrder:Boolean = false;
      
      public var isOnTray:Boolean = false;
      
      public var hangerX:Number = 558;
      
      public var hangerY:Number = 58;
      
      public var hangerScale:Number = 1;
      
      public var lineStartX:Number = 22;
      
      public var lineEndX:Number = 433;
      
      public var lineY:Number = 20;
      
      public var lineScale:Number = 0.25;
      
      public var trayX:Number = 37;
      
      public var trayY:Number = 26;
      
      public var trayScale:Number = 0.4;
      
      public var minGrabScale:Number = 0.25;
      
      public var maxGrabScale:Number = 1;
      
      public var minGrabY:Number = 15;
      
      public var maxGrabY:Number = 180;
      
      public var maxGrabBoundsY:Number = 320;
      
      public var minGrabX:Number = 22;
      
      public var maxGrabX:Number = 544;
      
      public var minGrabZoomX:Number = 458;
      
      public var tweenSpeed:Number = 2;
      
      public var startingY:Number = -242;
      
      public var trayBoundsLeftX:Number = 0;
      
      public var trayBoundsRightX:Number = 140;
      
      public var trayBoundsTopY:Number = 100;
      
      private var panelHolder:MovieClip = null;
      
      private var panelParts:Vector.<MovieClip>;
      
      private var panelTicketBottom:Number = 231;
      
      private var panelTicketTop:Number = -6;
      
      private var panelWingHeight:Number = 66;
      
      private var panelSideHeight:Number = 33;
      
      private var panelDipSize:Number = 33;
      
      private var panelTicketLeft:Number = -65;
      
      public var bmp:BitmapData;
      
      public var bitmap:Bitmap;
      
      public function Ticket(param1:class_4, param2:Number, param3:Number)
      {
         false;
         false;
         super();
         var _loc4_:Ticket;
         (_loc4_ = this).gameObj = param1;
         false;
         false;
         _loc4_.customerType = param2;
         _loc4_.ticketNumber = param3;
         true;
         true;
         _loc4_.setupTicket();
      }
      
      public function setupTicket() : void
      {
         false;
         true;
         var _loc1_:Ticket = this;
         _loc1_.clip = new ticketMC();
         var _loc2_:String = String(_loc1_.ticketNumber);
         false;
         false;
         false;
         false;
         if(_loc2_.length < 2)
         {
            _loc2_ = "0" + _loc2_;
            true;
            true;
         }
         _loc1_.clip.number_txt.text = _loc2_;
         false;
         false;
         _loc1_.orderData = _loc1_.gameObj.customerData.getCustomerOrderData(_loc1_.customerType);
         _loc1_.order = _loc1_.orderData.getOrderAsArray();
         _loc1_.container = _loc1_.gameObj.hud.clip.ticket_holder;
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.clip.scaleX = _loc1_.hangerScale;
         false;
         false;
         _loc1_.clip.scaleY = _loc1_.hangerScale;
         true;
         true;
         _loc1_.clip.x = _loc1_.hangerX;
         _loc1_.clip.y = _loc1_.startingY;
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTicket);
         false;
         false;
         _loc1_.clip.buttonMode = true;
         _loc1_.clip.useHandCursor = true;
         _loc1_.clip.mouseChildren = false;
         _loc1_.isDrawingOrder = true;
         _loc1_.createOrderPanels();
         _loc1_.moveToHanger();
      }
      
      public function createOrderPanels() : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc7_:MovieClip = null;
         var _loc8_:String = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc13_:MovieClip = null;
         var _loc1_:Ticket = this;
         _loc1_.panelHolder = new MovieClip();
         _loc1_.panelParts = new Vector.<MovieClip>();
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc2_ >= _loc1_.orderData.wings.length)
            {
               break;
            }
            false;
            false;
            true;
            true;
            _loc3_ = String(_loc1_.orderData.wings[_loc2_][0]);
            _loc4_ = String(_loc1_.orderData.wings[_loc2_][3]);
            true;
            true;
            _loc5_ = Number(_loc1_.orderData.wings[_loc2_][1]);
            false;
            false;
            _loc6_ = String(_loc1_.orderData.wings[_loc2_][2]);
            false;
            false;
            (_loc7_ = new ticket_panel_wings()).gotoAndStop(_loc3_);
            _loc7_.num_txt.text = String(_loc5_);
            _loc7_.distro.gotoAndStop(_loc6_);
            true;
            true;
            _loc7_.sauce.gotoAndStop(_loc4_);
            _loc7_.sauce.visible = false;
            true;
            true;
            _loc7_.x = _loc1_.panelTicketLeft;
            true;
            true;
            _loc7_.y = _loc1_.panelTicketBottom - _loc1_.panelWingHeight * (_loc2_ + 1);
            true;
            true;
            _loc1_.panelParts.push(_loc7_);
            true;
            true;
            _loc1_.panelParts.push(_loc7_.sauce);
            _loc1_.panelHolder.addChild(_loc7_);
            false;
            false;
            _loc7_.visible = false;
            _loc2_++;
         }
         true;
         true;
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            true;
            true;
            true;
            true;
            if(_loc2_ >= _loc1_.orderData.sides.length)
            {
               break;
            }
            false;
            false;
            true;
            true;
            _loc8_ = String(_loc1_.orderData.sides[_loc2_][0]);
            true;
            true;
            _loc9_ = Number(_loc1_.orderData.sides[_loc2_][1]);
            true;
            true;
            true;
            true;
            _loc10_ = String(_loc1_.orderData.sides[_loc2_][2]);
            true;
            true;
            (_loc11_ = new ticket_panel_side()).gotoAndStop(_loc8_);
            _loc11_.num_txt.text = String(_loc9_);
            _loc11_.distro.gotoAndStop(_loc10_);
            _loc11_.x = _loc1_.panelTicketLeft;
            false;
            false;
            _loc11_.y = _loc1_.panelTicketTop + _loc1_.panelSideHeight * (_loc1_.orderData.sides.length - 1) - _loc2_ * _loc1_.panelSideHeight;
            if(_loc1_.orderData.dips.length > 0)
            {
               _loc11_.y += _loc1_.panelDipSize;
            }
            _loc1_.panelParts.push(_loc11_);
            _loc1_.panelHolder.addChild(_loc11_);
            _loc11_.visible = false;
            true;
            true;
            _loc2_++;
         }
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.orderData.dips.length)
         {
            _loc12_ = String(_loc1_.orderData.dips[_loc2_][0]);
            (_loc13_ = new ticket_panel_dip()).gotoAndStop(_loc12_);
            _loc13_.y = _loc1_.panelTicketTop;
            false;
            false;
            _loc13_.x = 0 - _loc1_.orderData.dips.length * _loc1_.panelDipSize / 2 + _loc2_ * _loc1_.panelDipSize;
            true;
            true;
            _loc1_.panelParts.push(_loc13_);
            _loc1_.panelHolder.addChild(_loc13_);
            false;
            false;
            _loc13_.visible = false;
            _loc2_++;
         }
         true;
         true;
         _loc1_.clip.addChild(_loc1_.panelHolder);
      }
      
      public function moveToHanger() : void
      {
         var _loc1_:Ticket = this;
         _loc1_.targetX = _loc1_.hangerX;
         _loc1_.targetY = _loc1_.hangerY;
         _loc1_.targetScale = _loc1_.hangerScale;
         _loc1_.isMoving = true;
         if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateTicketPosition);
         }
         false;
         false;
         if(_loc1_.gameObj.var_14 && _loc1_.gameObj.var_12 == 10)
         {
            false;
            false;
            _loc1_.gameObj.method_29();
         }
         _loc1_.gameObj.var_11.checkForPatternTraining();
      }
      
      public function moveToLine(param1:Number = -1) : void
      {
         var _loc2_:Ticket = this;
         false;
         false;
         if(param1 == -1)
         {
            false;
            false;
            _loc2_.targetX = _loc2_.lineEndX - Math.floor(Math.random() * 30);
         }
         else if(param1 > _loc2_.lineEndX)
         {
            _loc2_.targetX = _loc2_.lineEndX;
         }
         else if(param1 < _loc2_.lineStartX)
         {
            _loc2_.targetX = _loc2_.lineStartX;
         }
         else
         {
            _loc2_.targetX = param1;
         }
         _loc2_.targetY = _loc2_.lineY;
         false;
         false;
         _loc2_.targetScale = _loc2_.lineScale;
         _loc2_.isMoving = true;
         if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateTicketPosition);
            false;
            false;
         }
         true;
         true;
         false;
         false;
         §§push(_loc2_.gameObj.var_14);
         if(_loc2_.gameObj.var_14)
         {
            false;
            false;
            §§pop();
            false;
            false;
            §§push(_loc2_.gameObj.var_12 == 8);
         }
         if(§§pop())
         {
            true;
            true;
            _loc2_.gameObj.method_29();
            true;
            true;
         }
         if(_loc2_.gameObj.hud.whichContextTraining.indexOf("pattern") > -1)
         {
            _loc2_.gameObj.hud.removeContextTraining();
         }
      }
      
      public function moveToTray() : void
      {
         false;
         true;
         var _loc1_:Ticket = this;
         _loc1_.container = _loc1_.gameObj.var_11.currentPlate.ticketHolderClip;
         false;
         false;
         _loc1_.container.addChild(_loc1_.clip);
         false;
         false;
         _loc1_.clip.x -= _loc1_.gameObj.var_11.currentPlate.clip.x + _loc1_.gameObj.var_11.currentPlate.ticketHolderClip.x;
         false;
         false;
         _loc1_.clip.y -= _loc1_.gameObj.var_11.currentPlate.clip.y + _loc1_.gameObj.var_11.currentPlate.ticketHolderClip.y;
         false;
         false;
         _loc1_.targetX = _loc1_.trayX;
         _loc1_.targetY = _loc1_.trayY;
         _loc1_.targetScale = _loc1_.trayScale;
         _loc1_.isMoving = true;
         true;
         true;
         _loc1_.isOnTray = true;
         _loc1_.gameObj.var_11.clip.trash_btn.visible = false;
         if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            false;
            false;
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateTicketPosition);
            true;
            true;
         }
         false;
         false;
         false;
         false;
         §§push(_loc1_.gameObj.var_14);
         if(_loc1_.gameObj.var_14)
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(_loc1_.gameObj.var_12 == 26);
         }
         if(§§pop())
         {
            _loc1_.gameObj.method_29();
         }
      }
      
      public function clickTicket(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:Ticket = this;
         false;
         false;
         false;
         false;
         §§push(!_loc2_.gameObj.var_56);
         if(!_loc2_.gameObj.var_56)
         {
            false;
            false;
            §§pop();
            §§push(!_loc2_.isDragging);
         }
         false;
         false;
         true;
         true;
         if(§§pop() && !_loc2_.isMoving && !_loc2_.isDrawingOrder && !_loc2_.isOnTray && _loc2_.canClickInTraining(param1))
         {
            true;
            true;
            true;
            true;
            if(_loc2_.gameObj.var_18.hangerTicket == _loc2_)
            {
               _loc2_.gameObj.var_18.hangerTicket = null;
            }
            _loc2_.isDragging = true;
            true;
            true;
            _loc2_.isMoving = false;
            _loc2_.clip.startDrag(true,new Rectangle(_loc2_.minGrabX,_loc2_.minGrabY,_loc2_.maxGrabX,_loc2_.maxGrabBoundsY));
            if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
            {
               _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateTicketPosition);
               true;
               true;
            }
            _loc2_.container.setChildIndex(_loc2_.clip,_loc2_.container.numChildren - 1);
            _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseTicket);
            _loc2_.gameObj.soundManager.playSound("grabticket.wav");
         }
      }
      
      public function releaseTicket(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:Ticket = this;
         var _loc3_:BuildScreen = _loc2_.gameObj.var_11;
         _loc2_.isDragging = false;
         _loc2_.isMoving = false;
         false;
         false;
         _loc2_.clip.stopDrag();
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("dropticket.wav");
         try
         {
            _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseTicket);
         }
         catch(err:Error)
         {
         }
         false;
         false;
         if(_loc2_.clip.x > _loc2_.hangerX - 90 && _loc2_.clip.x < _loc2_.hangerX + 70 && _loc2_.clip.y < _loc2_.hangerY + 227)
         {
            if(!_loc2_.gameObj.var_18.hangerTicket || _loc2_.gameObj.var_18.hangerTicket.isDrawingOrder == false)
            {
               if(_loc2_.gameObj.var_18.hangerTicket)
               {
                  _loc2_.gameObj.var_18.hangerTicket.moveToLine();
               }
               _loc2_.gameObj.var_18.hangerTicket = _loc2_;
               _loc2_.moveToHanger();
            }
            else
            {
               _loc2_.moveToLine();
               true;
               true;
            }
         }
         else
         {
            true;
            true;
            true;
            true;
            §§push(_loc2_.gameObj.hud.currentStation == "build" && _loc2_.gameObj.var_11.currentPlate != null && _loc2_.gameObj.var_11.currentPlate.ticketHolderClip && _loc2_.clip.x >= _loc2_.trayBoundsLeftX && _loc2_.clip.x <= _loc2_.trayBoundsRightX);
            if(_loc2_.gameObj.hud.currentStation == "build" && _loc2_.gameObj.var_11.currentPlate != null && _loc2_.gameObj.var_11.currentPlate.ticketHolderClip && _loc2_.clip.x >= _loc2_.trayBoundsLeftX && _loc2_.clip.x <= _loc2_.trayBoundsRightX)
            {
               false;
               false;
               §§pop();
               §§push(_loc2_.clip.y >= _loc2_.trayBoundsTopY);
            }
            if(§§pop())
            {
               _loc2_.moveToTray();
            }
            else
            {
               _loc2_.moveToLine(_loc2_.clip.x);
               false;
               false;
               if(_loc2_.gameObj.var_18.hangerTicket == _loc2_)
               {
                  _loc2_.gameObj.var_18.hangerTicket = null;
               }
            }
         }
      }
      
      public function updateTicketPosition(param1:Event) : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:FoodPlate = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc2_:Ticket = this;
         if(_loc2_.isDragging)
         {
            false;
            false;
            _loc3_ = _loc2_.maxGrabScale - _loc2_.minGrabScale;
            false;
            false;
            false;
            false;
            false;
            false;
            if((_loc4_ = (_loc2_.clip.y - _loc2_.minGrabY) / (_loc2_.maxGrabY - _loc2_.minGrabY)) < 0)
            {
               false;
               false;
               _loc4_ = 0;
               true;
               true;
            }
            else
            {
               true;
               true;
               if(_loc4_ > 1)
               {
                  _loc4_ = 1;
               }
            }
            true;
            true;
            true;
            true;
            _loc5_ = _loc2_.minGrabScale + _loc4_ * _loc3_;
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
            true;
            true;
            if((_loc6_ = (_loc2_.clip.x - _loc2_.minGrabZoomX) / (_loc2_.hangerX - _loc2_.minGrabZoomX)) < 0)
            {
               _loc6_ = 0;
               true;
               true;
            }
            else if(_loc6_ > 1)
            {
               _loc6_ = 1;
            }
            false;
            false;
            true;
            true;
            if((_loc7_ = _loc2_.minGrabScale + _loc6_ * _loc3_) > _loc5_)
            {
               true;
               true;
               true;
               true;
               _loc5_ = _loc7_;
               true;
               true;
            }
            true;
            true;
            false;
            false;
            §§push((_loc8_ = _loc2_.gameObj.var_11.currentPlate) && _loc8_.attachedTicket == null && _loc2_.gameObj.hud.currentStation == "build");
            if((_loc8_ = _loc2_.gameObj.var_11.currentPlate) && _loc8_.attachedTicket == null && _loc2_.gameObj.hud.currentStation == "build")
            {
               true;
               true;
               §§pop();
               §§push(_loc8_.ticketHolderClip);
            }
            if(§§pop() && !_loc8_.animatePlateOut)
            {
               true;
               true;
               _loc9_ = _loc8_.clip.x + _loc8_.ticketHolderClip.x + _loc2_.trayX;
               _loc10_ = _loc8_.clip.y + _loc8_.ticketHolderClip.y + _loc2_.trayY;
               true;
               true;
               true;
               true;
               _loc11_ = _loc9_ - _loc2_.clip.x;
               _loc12_ = _loc10_ - _loc2_.clip.y;
               _loc13_ = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_);
               _loc14_ = 150;
               if(_loc13_ < _loc14_)
               {
                  true;
                  true;
                  if((_loc15_ = _loc2_.minGrabScale + _loc13_ / _loc14_ * _loc3_) < _loc2_.trayScale)
                  {
                     false;
                     false;
                     _loc15_ = _loc2_.trayScale;
                  }
                  if(_loc15_ < _loc5_)
                  {
                     true;
                     true;
                     _loc5_ = _loc15_;
                  }
               }
            }
            _loc2_.clip.scaleX = _loc5_;
            _loc2_.clip.scaleY = _loc5_;
         }
         else if(_loc2_.isMoving)
         {
            true;
            true;
            _loc16_ = _loc2_.targetX - _loc2_.clip.x;
            _loc17_ = _loc2_.targetY - _loc2_.clip.y;
            false;
            false;
            false;
            false;
            _loc18_ = _loc2_.targetScale - _loc2_.clip.scaleX;
            _loc2_.clip.x += _loc16_ / _loc2_.tweenSpeed;
            true;
            true;
            _loc2_.clip.y += _loc17_ / _loc2_.tweenSpeed;
            _loc2_.clip.scaleX += _loc18_ / _loc2_.tweenSpeed;
            _loc2_.clip.scaleY += _loc18_ / _loc2_.tweenSpeed;
            false;
            false;
            if(Math.abs(_loc16_) < 1)
            {
               _loc2_.clip.x = _loc2_.targetX;
            }
            if(Math.abs(_loc17_) < 1)
            {
               true;
               true;
               _loc2_.clip.y = _loc2_.targetY;
            }
            if(Math.abs(_loc18_) < 0.05)
            {
               true;
               true;
               _loc2_.clip.scaleX = _loc2_.targetScale;
               false;
               false;
               _loc2_.clip.scaleY = _loc2_.targetScale;
               true;
               true;
            }
            true;
            true;
            if(_loc2_.clip.x == _loc2_.targetX && _loc2_.clip.y == _loc2_.targetY)
            {
               _loc2_.clip.scaleX = _loc2_.targetScale;
               _loc2_.clip.scaleY = _loc2_.targetScale;
               _loc2_.isMoving = false;
               _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.updateTicketPosition);
               if(_loc2_.isOnTray)
               {
                  false;
                  false;
                  _loc2_.gameObj.var_11.currentPlate.attachTicket(_loc2_);
                  false;
                  false;
                  _loc2_.gameObj.var_11.currentPlate.startDeliveringOrder();
               }
            }
         }
         true;
         true;
         if(_loc2_.isDragging && (_loc2_.gameObj.stage.mouseX < 0 || _loc2_.gameObj.mouseX > 640 || _loc2_.gameObj.mouseY < 0 || _loc2_.gameObj.mouseY > 480))
         {
            _loc2_.releaseTicket();
         }
      }
      
      public function drawTicketDetails(param1:Number, param2:Number = -1) : void
      {
         false;
         true;
         var _loc3_:Ticket = this;
         false;
         false;
         _loc3_.panelParts[param1].visible = true;
      }
      
      public function finishDrawingTicket() : void
      {
         var _loc1_:Ticket = this;
         false;
         false;
         _loc1_.isDrawingOrder = false;
         _loc1_.bmp = new BitmapData(_loc1_.clip.width,_loc1_.clip.height,true,16777215);
         var _loc2_:Rectangle = _loc1_.clip.getBounds(_loc1_.clip);
         var _loc3_:Matrix = new Matrix(1,0,0,1,0 - _loc2_.x,0 - _loc2_.y);
         false;
         false;
         _loc1_.bmp.draw(_loc1_.clip,_loc3_,null,null,null,true);
         _loc1_.bitmap = new Bitmap(_loc1_.bmp);
         _loc1_.bitmap.smoothing = true;
         true;
         true;
         _loc1_.clip.addChild(_loc1_.bitmap);
         _loc1_.bitmap.x = _loc2_.x;
         _loc1_.bitmap.y = _loc2_.y;
         _loc1_.clip.removeChild(_loc1_.panelHolder);
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_.panelParts.length)
         {
            _loc1_.panelParts[_loc4_].parent.removeChild(_loc1_.panelParts[_loc4_]);
            _loc1_.panelParts[_loc4_] = null;
            _loc4_++;
         }
         _loc1_.panelParts = null;
         _loc1_.panelHolder = null;
         _loc1_.clip.number_txt.text = "";
         _loc1_.clip.number_txt.visible = false;
      }
      
      public function destroy() : void
      {
         var ob:Ticket;
         false;
         true;
         ob = this;
         if(Boolean(ob.bitmap) && ob.clip.contains(ob.bitmap))
         {
            false;
            false;
            ob.clip.removeChild(ob.bitmap);
         }
         false;
         false;
         ob.bitmap = null;
         false;
         false;
         if(ob.bmp != null)
         {
            ob.bmp.dispose();
            true;
            true;
            ob.bmp = null;
         }
         ob.orderData = null;
         ob.order = null;
         ob.clip.removeEventListener(MouseEvent.MOUSE_DOWN,ob.clickTicket);
         try
         {
            if(ob.clip.parent.contains(ob.clip))
            {
               ob.clip.parent.removeChild(ob.clip);
               true;
               true;
            }
         }
         catch(err:Error)
         {
            false;
            false;
            class_5.error("Error removing ticket from parent");
         }
         ob.clip = null;
      }
      
      public function canClickInTraining(param1:Event) : Boolean
      {
         var _loc2_:Ticket = this;
         var _loc3_:class_4 = _loc2_.gameObj;
         var _loc4_:Boolean = false;
         false;
         false;
         if(_loc3_.var_14)
         {
            false;
            false;
            if(_loc3_.var_12 == 8)
            {
               false;
               false;
               _loc4_ = true;
            }
            else
            {
               true;
               true;
               if(_loc3_.var_12 == 10)
               {
                  false;
                  false;
                  true;
                  true;
                  _loc4_ = true;
               }
               else if(_loc3_.var_12 == 26)
               {
                  false;
                  false;
                  _loc4_ = true;
                  false;
                  false;
               }
            }
         }
         else
         {
            false;
            false;
            _loc4_ = true;
         }
         return _loc4_;
      }
   }
}
