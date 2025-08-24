package wingGame.screens
{
   import fl.controls.TextInput;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.*;
   import package_2.class_8;
   import package_4.class_4;
   import package_7.class_14;
   import wingGame.data.UserData;
   import wingGame.data.WorkerData;
   import wingGame.models.Worker;
   
   public class SlotSelectScreen
   {
       
      
      public var gameObj:class_4;
      
      public var container:MovieClip;
      
      public var clip:MovieClip;
      
      public var selectedSlot:Number = 0;
      
      public var isClosing:Boolean = false;
      
      public var isNewSlot:Boolean = false;
      
      public var currentMode:String = "slots";
      
      public var nameContinueButton:class_14;
      
      public var nameBackButton:class_14;
      
      public var selectedCharacter:String = "marty";
      
      public var workerChuck:Worker = null;
      
      public var workerMandi:Worker = null;
      
      public var workerCustom1:Worker = null;
      
      public var workerCustom2:Worker = null;
      
      public function SlotSelectScreen(param1:class_4, param2:MovieClip, param3:Object = null)
      {
         false;
         true;
         super();
         var _loc4_:SlotSelectScreen;
         (_loc4_ = this).gameObj = param1;
         false;
         false;
         _loc4_.container = param2;
         _loc4_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc5_:MovieClip = null;
         var _loc1_:SlotSelectScreen = this;
         _loc1_.clip = new slotSelectMC();
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            (_loc5_ = _loc1_.clip.slots["slot" + _loc2_ + "MC"]).new_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickNewSlot);
            _loc5_.select_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickExistingSlot);
            _loc5_.delete_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickDeleteSlot);
            _loc5_.new_btn.tabEnabled = false;
            _loc5_.select_btn.tabEnabled = false;
            _loc5_.delete_btn.tabEnabled = false;
            _loc5_.confirmMC.yes_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickDeleteYes);
            true;
            true;
            _loc5_.confirmMC.no_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickDeleteNo);
            _loc5_.confirmMC.yes_btn.tabEnabled = false;
            _loc5_.confirmMC.no_btn.tabEnabled = false;
            _loc5_.confirmMC.visible = false;
            false;
            false;
            _loc2_++;
         }
         _loc1_.nameBackButton = new class_14(null,"< BACK","small","button","clickNameCancel",null,false,false,false,null,false,112);
         false;
         false;
         _loc1_.nameBackButton.x = 0;
         true;
         true;
         _loc1_.nameBackButton.y = 75;
         _loc1_.nameContinueButton = new class_14(null,"CONTINUE >","small","button","clickNameOK",null,false,false,false,null,false,112);
         true;
         true;
         true;
         true;
         _loc1_.nameContinueButton.x = 181;
         true;
         true;
         _loc1_.nameContinueButton.y = 75;
         true;
         true;
         _loc1_.clip.entername.input_holder.addChild(_loc1_.nameBackButton);
         _loc1_.clip.entername.input_holder.addChild(_loc1_.nameContinueButton);
         true;
         true;
         _loc1_.nameContinueButton.addEventListener("clickNameOK",_loc1_.clickEnterNameOK);
         _loc1_.nameBackButton.addEventListener("clickNameCancel",_loc1_.clickEnterNameCancel);
         _loc1_.clip.character.marty_panel.select_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMarty);
         _loc1_.clip.character.rita_panel.select_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickRita);
         _loc1_.clip.character.custom_panel.select_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickCustom);
         _loc1_.clip.character.marty_panel.name_txt.text = "Chuck";
         true;
         true;
         _loc1_.clip.character.marty_panel.name_txt.visible = true;
         true;
         true;
         _loc1_.clip.character.marty_panel.custom_txt.visible = false;
         false;
         false;
         _loc1_.clip.character.rita_panel.name_txt.text = "Mandi";
         _loc1_.clip.character.rita_panel.name_txt.visible = true;
         _loc1_.clip.character.rita_panel.custom_txt.visible = false;
         _loc1_.clip.character.custom_panel.name_txt.text = "Custom";
         false;
         false;
         _loc1_.clip.character.custom_panel.name_txt.visible = false;
         true;
         true;
         _loc1_.clip.character.custom_panel.custom_txt.visible = true;
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.font = "Arial";
         true;
         true;
         _loc3_.size = 24;
         _loc3_.bold = true;
         _loc3_.align = TextFormatAlign.CENTER;
         var _loc4_:TextInput = _loc1_.clip.entername.input_holder.input_txt;
         _loc1_.clip.entername.input_holder.input_txt.setStyle("textFormat",_loc3_);
         _loc1_.clip.entername.input_holder.input_txt.maxChars = 16;
         _loc1_.clip.entername.input_holder.input_txt.restrict = "0-9A-Za-z \'\\-";
         _loc1_.container.addEventListener("clickBack",_loc1_.clickBack);
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.animateScreen);
         _loc1_.clip.addEventListener(KeyboardEvent.KEY_DOWN,_loc1_.keyListener);
         _loc1_.clip.entername.gotoAndStop(1);
         _loc1_.clip.slots.gotoAndStop(1);
         true;
         true;
         _loc1_.clip.character.gotoAndStop(1);
         _loc1_.showSlots();
      }
      
      public function keyListener(param1:KeyboardEvent) : void
      {
         var _loc2_:SlotSelectScreen = this;
         true;
         true;
         §§push(_loc2_.currentMode == "entername");
         if(_loc2_.currentMode == "entername")
         {
            false;
            false;
            §§pop();
            false;
            false;
            §§push(param1.keyCode == Keyboard.ENTER);
         }
         if(§§pop())
         {
            _loc2_.clickEnterNameOK();
         }
      }
      
      public function clickBack(param1:Event) : void
      {
         var _loc2_:SlotSelectScreen = this;
         true;
         true;
         true;
         true;
         _loc2_.gameObj.var_10.api.method_32("SplashScreen");
         _loc2_.gameObj.var_10.api.method_33("SlotSelect");
      }
      
      public function getSlotData() : void
      {
         false;
         true;
         var _loc3_:Object = null;
         var _loc4_:MovieClip = null;
         var _loc1_:SlotSelectScreen = this;
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            _loc3_ = _loc1_.gameObj.userData.loadLabelsForSlot(_loc2_);
            _loc4_ = _loc1_.clip.slots["slot" + _loc2_ + "MC"];
            if(_loc3_)
            {
               _loc4_.name_txt.text = String(_loc3_.name);
               _loc4_.textclip.points_txt.text = class_8.method_31(Number(_loc3_.score)) + " POINTS";
               _loc4_.textclip.rank_txt.text = _loc3_.rank;
               _loc4_.textclip.rank_title.text = _loc3_.title;
               _loc4_.select_btn.visible = true;
               _loc4_.new_btn.visible = false;
               _loc4_.delete_btn.visible = true;
            }
            else
            {
               _loc4_.name_txt.text = "Empty Slot";
               _loc4_.textclip.visible = false;
               _loc4_.new_btn.visible = true;
               _loc4_.select_btn.visible = false;
               _loc4_.delete_btn.visible = false;
               true;
               true;
            }
            _loc2_++;
         }
      }
      
      public function clickNewSlot(param1:MouseEvent) : void
      {
         var _loc2_:SlotSelectScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:Number = 0;
         true;
         true;
         if(param1.currentTarget == _loc2_.clip.slots.slot1MC.new_btn)
         {
            _loc4_ = 1;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot2MC.new_btn)
         {
            false;
            false;
            _loc4_ = 2;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot3MC.new_btn)
         {
            false;
            false;
            _loc4_ = 3;
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.selectedSlot = _loc4_;
         _loc2_.isNewSlot = true;
         _loc2_.showCharacter();
      }
      
      public function clickExistingSlot(param1:MouseEvent) : void
      {
         var _loc2_:SlotSelectScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:Number = 0;
         if(param1.currentTarget == _loc2_.clip.slots.slot1MC.select_btn)
         {
            false;
            false;
            _loc4_ = 1;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot2MC.select_btn)
         {
            false;
            false;
            true;
            true;
            _loc4_ = 2;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot3MC.select_btn)
         {
            _loc4_ = 3;
         }
         _loc3_.loadData(_loc4_);
         _loc2_.isNewSlot = false;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("dropticket.wav");
         _loc2_.clip.slots.gotoAndPlay("hide");
         _loc2_.startClosingScreen();
      }
      
      public function clickDeleteSlot(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:SlotSelectScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         0;
         true;
         true;
         if(param1.currentTarget == _loc2_.clip.slots.slot1MC.delete_btn)
         {
            _loc2_.clip.slots.slot1MC.confirmMC.visible = true;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot2MC.delete_btn)
         {
            true;
            true;
            _loc2_.clip.slots.slot2MC.confirmMC.visible = true;
            false;
            false;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot3MC.delete_btn)
         {
            _loc2_.clip.slots.slot3MC.confirmMC.visible = true;
         }
      }
      
      public function clickDeleteYes(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:SlotSelectScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:Number = 0;
         if(param1.currentTarget == _loc2_.clip.slots.slot1MC.confirmMC.yes_btn)
         {
            true;
            true;
            _loc4_ = 1;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot2MC.confirmMC.yes_btn)
         {
            false;
            false;
            _loc4_ = 2;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot3MC.confirmMC.yes_btn)
         {
            true;
            true;
            _loc4_ = 3;
         }
         if(_loc4_ > 0)
         {
            _loc2_.gameObj.soundManager.playSound("droptopping.wav");
            _loc3_.eraseSlot(_loc4_);
            false;
            false;
            _loc2_.showSlots();
         }
         else
         {
            trace("Unknown Target: " + param1.currentTarget);
         }
      }
      
      public function clickDeleteNo(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:SlotSelectScreen = this;
         true;
         true;
         _loc2_.clip.slots.slot1MC.confirmMC.visible = false;
         _loc2_.clip.slots.slot2MC.confirmMC.visible = false;
         false;
         false;
         _loc2_.clip.slots.slot3MC.confirmMC.visible = false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickEnterNameOK(param1:Event = null) : void
      {
         var _loc2_:SlotSelectScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         true;
         true;
         if(_loc2_.selectedCharacter == "marty")
         {
            false;
            false;
            false;
            false;
            _loc2_.gameObj.var_10.api.method_27("Choose_Chuck","Slots");
         }
         else if(_loc2_.selectedCharacter == "rita")
         {
            false;
            false;
            false;
            false;
            _loc2_.gameObj.var_10.api.method_27("Choose_Mandi","Slots");
         }
         else
         {
            false;
            false;
            _loc2_.gameObj.var_10.api.method_27("Choose_Custom","Slots");
         }
         _loc2_.gameObj.var_10.api.method_27("New_Game","Slots");
         _loc2_.gameObj.userData.createNewSlot(_loc2_.selectedSlot,_loc2_.clip.entername.input_holder.input_txt.text,_loc2_.selectedCharacter);
         false;
         false;
         _loc2_.clip.entername.gotoAndPlay("hide");
         true;
         true;
         _loc2_.startClosingScreen();
      }
      
      public function clickEnterNameCancel(param1:Event = null) : void
      {
         var _loc2_:SlotSelectScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.showSlots();
      }
      
      public function clickMarty(param1:MouseEvent) : void
      {
         var _loc2_:SlotSelectScreen = this;
         false;
         false;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.selectedCharacter = "marty";
         false;
         false;
         _loc2_.gameObj.var_10.api.method_27("Choose_Chuck","Slots");
         _loc2_.gameObj.var_10.api.method_27("New_Game","Slots");
         _loc2_.gameObj.userData.createNewSlot(_loc2_.selectedSlot,"Chuck",_loc2_.selectedCharacter);
         _loc2_.clip.character.gotoAndPlay("hide");
         _loc2_.startClosingScreen();
      }
      
      public function clickRita(param1:MouseEvent) : void
      {
         var _loc2_:SlotSelectScreen = this;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         true;
         true;
         _loc2_.selectedCharacter = "rita";
         false;
         false;
         true;
         true;
         false;
         false;
         _loc2_.gameObj.var_10.api.method_27("Choose_Mandi","Slots");
         false;
         false;
         _loc2_.gameObj.var_10.api.method_27("New_Game","Slots");
         true;
         true;
         _loc2_.gameObj.userData.createNewSlot(_loc2_.selectedSlot,"Mandi",_loc2_.selectedCharacter);
         _loc2_.clip.character.gotoAndPlay("hide");
         _loc2_.startClosingScreen();
      }
      
      public function clickCustom(param1:MouseEvent) : void
      {
         var _loc2_:SlotSelectScreen = this;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.selectedCharacter = "custom";
         false;
         false;
         true;
         true;
         _loc2_.gameObj.var_10.api.method_27("Choose_Custom","Slots");
         _loc2_.gameObj.var_10.api.method_27("New_Game","Slots");
         _loc2_.gameObj.workerData.setupDefaults();
         true;
         true;
         _loc2_.clip.character.gotoAndPlay("hide");
         _loc2_.startClosingScreen();
      }
      
      public function showSlots() : void
      {
         false;
         true;
         var _loc1_:SlotSelectScreen = this;
         _loc1_.currentMode = "slots";
         _loc1_.clip.slots.slot1MC.confirmMC.visible = false;
         _loc1_.clip.slots.slot2MC.confirmMC.visible = false;
         _loc1_.clip.slots.slot3MC.confirmMC.visible = false;
         _loc1_.getSlotData();
         true;
         true;
         §§push(_loc1_.clip.entername.currentFrame > 1);
         if(_loc1_.clip.entername.currentFrame > 1)
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(_loc1_.clip.entername.currentFrame < _loc1_.clip.entername.totalFrames);
         }
         if(§§pop())
         {
            _loc1_.clip.entername.gotoAndPlay("hide");
         }
         false;
         false;
         if(_loc1_.clip.character.currentFrame > 1 && _loc1_.clip.character.currentFrame < _loc1_.clip.character.totalFrames)
         {
            _loc1_.clip.character.gotoAndPlay("hide");
         }
         _loc1_.gameObj.soundManager.playSound("trayslide.wav");
         _loc1_.clip.slots.gotoAndPlay("show");
      }
      
      public function showCharacter() : void
      {
         var _loc1_:SlotSelectScreen = this;
         _loc1_.currentMode = "character";
         var _loc2_:WorkerData = new WorkerData();
         _loc2_.setupPremadeMale();
         false;
         false;
         _loc1_.workerChuck = new Worker(_loc1_.gameObj,_loc1_.clip.character.marty_panel,_loc2_,134,70,0.55,false,true);
         true;
         true;
         _loc1_.workerChuck.clip.stop();
         var _loc3_:WorkerData = new WorkerData();
         _loc3_.setupPremadeFemale();
         false;
         false;
         _loc1_.workerMandi = new Worker(_loc1_.gameObj,_loc1_.clip.character.rita_panel,_loc3_,42,70,0.55);
         _loc1_.workerMandi.clip.stop();
         var _loc4_:WorkerData;
         (_loc4_ = new WorkerData()).setupDefaults();
         _loc4_.setGender(WorkerData.GENDER_MALE);
         _loc4_.skinTone = 13537877;
         _loc4_.eyeStyle = 2;
         _loc4_.eyeDefaultExpression = 1;
         _loc4_.mouthDefaultExpression = 12;
         _loc4_.hairColor = 5718573;
         _loc4_.hair = "hair_wedge_1";
         false;
         false;
         _loc4_.facialhair = "soulpatch";
         _loc4_.accd = "glasses05";
         _loc4_.eyeHeight = 2;
         _loc4_.eyeSpacing = 0;
         _loc4_.mouthHeight = -2;
         _loc4_.headHeight = -3;
         _loc4_.headForward = 6;
         _loc1_.workerCustom1 = new Worker(_loc1_.gameObj,_loc1_.clip.character.custom_panel,_loc4_,92,70,0.55,false,true);
         _loc1_.workerCustom1.clip.stop();
         var _loc5_:WorkerData;
         (_loc5_ = new WorkerData()).setupDefaults();
         _loc5_.setGender(WorkerData.GENDER_FEMALE);
         _loc5_.skinTone = 15511933;
         _loc5_.eyeStyle = 7;
         _loc5_.eyeDefaultExpression = 13;
         _loc5_.mouthDefaultExpression = 1;
         _loc5_.hairColor = 16044913;
         _loc5_.hair = "hair_wavy_1";
         _loc5_.eyeHeight = 4;
         _loc5_.mouthHeight = 3;
         _loc1_.workerCustom2 = new Worker(_loc1_.gameObj,_loc1_.clip.character.custom_panel,_loc5_,83,70,0.55);
         _loc1_.workerCustom2.clip.stop();
         false;
         false;
         if(_loc1_.clip.entername.currentFrame > 1 && _loc1_.clip.entername.currentFrame < _loc1_.clip.entername.totalFrames)
         {
            _loc1_.clip.entername.gotoAndPlay("hide");
         }
         if(_loc1_.clip.slots.currentFrame > 1 && _loc1_.clip.slots.currentFrame < _loc1_.clip.slots.totalFrames)
         {
            _loc1_.clip.slots.gotoAndPlay("hide");
         }
         _loc1_.clip.character.gotoAndPlay("show");
         false;
         false;
         _loc1_.gameObj.var_10.api.method_54("CHOOSE YOUR CHARACTER");
      }
      
      public function showEnterName() : void
      {
         false;
         true;
         var _loc1_:SlotSelectScreen = this;
         _loc1_.currentMode = "entername";
         _loc1_.clip.entername.input_holder.input_txt.text = "";
         _loc1_.clip.entername.input_holder.input_txt.setFocus();
         §§push(_loc1_.clip.slots.currentFrame > 1);
         if(_loc1_.clip.slots.currentFrame > 1)
         {
            true;
            true;
            §§pop();
            true;
            true;
            false;
            false;
            §§push(_loc1_.clip.slots.currentFrame < _loc1_.clip.slots.totalFrames);
         }
         if(§§pop())
         {
            _loc1_.clip.slots.gotoAndPlay("hide");
         }
         true;
         true;
         if(_loc1_.clip.character.currentFrame > 1 && _loc1_.clip.character.currentFrame < _loc1_.clip.character.totalFrames)
         {
            _loc1_.clip.character.gotoAndPlay("hide");
            true;
            true;
         }
         _loc1_.clip.entername.gotoAndPlay("show");
         _loc1_.gameObj.var_10.api.method_54("ENTER YOUR NAME");
      }
      
      public function animateScreen(param1:Event) : void
      {
         false;
         true;
         var _loc2_:SlotSelectScreen = this;
         if(_loc2_.isClosing)
         {
            false;
            false;
            if(_loc2_.currentMode == "character" && _loc2_.clip.character.currentFrame == _loc2_.clip.character.totalFrames)
            {
               _loc2_.closeSlotSelectScreen();
            }
            else
            {
               true;
               true;
               if(_loc2_.currentMode == "slots" && _loc2_.clip.slots.currentFrame == _loc2_.clip.slots.totalFrames)
               {
                  _loc2_.closeSlotSelectScreen();
               }
            }
         }
      }
      
      public function clickStart(param1:Event) : void
      {
         var _loc2_:SlotSelectScreen = this;
         _loc2_.clip.iris.gotoAndPlay("irisout");
         true;
         true;
         _loc2_.gameObj.var_10.api.method_34("SlotSelectScreen");
      }
      
      public function destroy() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:SlotSelectScreen = this;
         if(_loc1_.workerChuck)
         {
            true;
            true;
            _loc1_.workerChuck.destroy();
            _loc1_.workerChuck = null;
         }
         if(_loc1_.workerMandi)
         {
            _loc1_.workerMandi.destroy();
            _loc1_.workerMandi = null;
         }
         if(_loc1_.workerCustom1)
         {
            _loc1_.workerCustom1.destroy();
            _loc1_.workerCustom1 = null;
         }
         false;
         false;
         if(_loc1_.workerCustom2)
         {
            _loc1_.workerCustom2.destroy();
            _loc1_.workerCustom2 = null;
            true;
            true;
         }
         if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.animateScreen);
            true;
            true;
         }
         _loc1_.container.removeEventListener("clickBack",_loc1_.clickBack);
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            _loc3_ = _loc1_.clip.slots["slot" + _loc2_ + "MC"];
            true;
            true;
            _loc3_.new_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickNewSlot);
            _loc3_.select_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickExistingSlot);
            _loc3_.delete_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickDeleteSlot);
            _loc3_.confirmMC.yes_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickDeleteYes);
            _loc3_.confirmMC.no_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickDeleteNo);
            _loc2_++;
         }
         false;
         false;
         _loc1_.clip.entername.input_holder.removeChild(_loc1_.nameContinueButton);
         _loc1_.clip.entername.input_holder.removeChild(_loc1_.nameBackButton);
         true;
         true;
         _loc1_.nameContinueButton.removeEventListener("clickNameOK",_loc1_.clickEnterNameOK);
         true;
         true;
         _loc1_.nameBackButton.removeEventListener("clickNameCancel",_loc1_.clickEnterNameCancel);
         _loc1_.nameContinueButton.destroy();
         _loc1_.nameBackButton.destroy();
         _loc1_.nameContinueButton = null;
         _loc1_.nameBackButton = null;
         true;
         true;
         _loc1_.clip.character.marty_panel.select_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickMarty);
         _loc1_.clip.character.rita_panel.select_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickRita);
         _loc1_.clip.removeEventListener(KeyboardEvent.KEY_DOWN,_loc1_.keyListener);
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function startClosingScreen() : void
      {
         var _loc1_:SlotSelectScreen = this;
         _loc1_.isClosing = true;
         true;
         true;
         _loc1_.gameObj.var_10.api.method_34();
      }
      
      public function closeSlotSelectScreen(param1:MouseEvent = null) : void
      {
         var _loc2_:SlotSelectScreen = this;
         true;
         true;
         _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.animateScreen);
         true;
         true;
         if(_loc2_.isNewSlot && _loc2_.selectedCharacter == "custom")
         {
            false;
            false;
            _loc2_.gameObj.method_145(_loc2_.selectedSlot);
         }
         else
         {
            true;
            true;
            if(_loc2_.isNewSlot && _loc2_.gameObj.userData.currentDay == 1)
            {
               _loc2_.gameObj.method_83();
               true;
               true;
            }
            else
            {
               _loc2_.gameObj.method_67();
            }
         }
         _loc2_.gameObj.var_10.api.method_33("SlotSelect");
      }
   }
}
