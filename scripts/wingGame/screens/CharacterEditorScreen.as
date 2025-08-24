package wingGame.screens
{
   import fl.controls.TextInput;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import package_2.class_16;
   import package_2.class_3;
   import package_2.class_5;
   import package_2.class_8;
   import package_2.class_9;
   import package_4.*;
   import wingGame.data.*;
   import wingGame.models.Worker;
   
   public class CharacterEditorScreen
   {
       
      
      public var gameObj:class_4;
      
      public var workerData:WorkerData;
      
      public var worker:Worker;
      
      public var workerReverse:Worker;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var params:Object;
      
      public var endaction:String = "none";
      
      public var sliderStartX:Number = 8;
      
      public var sliderRange:Number = 162;
      
      public var draggingWhichSlider:String = null;
      
      public var workerScale:Number = 0.7;
      
      public var workerX:Number = 185;
      
      public var workerY:Number = 104;
      
      public var workerReverseX:Number = 104;
      
      public var workerReverseY:Number = 73;
      
      public var available_pants:Array;
      
      public var available_shirt:Array;
      
      public var available_jacket:Array;
      
      public var available_hair:Array;
      
      public var available_shoes:Array;
      
      public var available_facialhair:Array;
      
      public var available_acca:Array;
      
      public var available_accb:Array;
      
      public var available_accc:Array;
      
      public var available_accd:Array;
      
      public var which_pants:Number = 0;
      
      public var which_shirt:Number = 0;
      
      public var which_jacket:Number = 0;
      
      public var which_hair:Number = 0;
      
      public var which_shoes:Number = 0;
      
      public var which_facialhair:Number = 0;
      
      public var which_acca:Number = 0;
      
      public var which_accb:Number = 0;
      
      public var which_accc:Number = 0;
      
      public var which_accd:Number = 0;
      
      public var firsttime:Boolean = false;
      
      public var inMenu:Boolean = false;
      
      public var didChange:Boolean = false;
      
      public var thumb_shirt:MovieClip;
      
      public var thumb_jacket:MovieClip;
      
      public var thumb_pants:MovieClip;
      
      public var thumb_hair:MovieClip;
      
      public var thumb_shoes:MovieClip;
      
      public var thumb_acca:MovieClip;
      
      public var thumb_accb:MovieClip;
      
      public var thumb_accc:MovieClip;
      
      public var thumb_accd:MovieClip;
      
      public var mannequinColor:uint = 14540253;
      
      public var backdropBitmap:Bitmap;
      
      public var mirrorBitmap:Bitmap;
      
      public var photoBitmap:Bitmap = null;
      
      public function CharacterEditorScreen(param1:class_4, param2:MovieClip, param3:Object = null)
      {
         this.available_pants = [];
         this.available_shirt = [];
         this.available_jacket = [];
         true;
         true;
         this.available_hair = [];
         this.available_shoes = [];
         this.available_facialhair = [];
         this.available_acca = [];
         this.available_accb = [];
         this.available_accc = [];
         false;
         false;
         this.available_accd = [];
         super();
         var _loc4_:CharacterEditorScreen;
         (_loc4_ = this).gameObj = param1;
         _loc4_.container = param2;
         true;
         true;
         _loc4_.params = param3;
         if(param3 != null)
         {
            if(param3.hasOwnProperty("firsttime"))
            {
               _loc4_.firsttime = param3.firsttime;
               true;
               true;
            }
            if(param3.hasOwnProperty("inMenu"))
            {
               _loc4_.inMenu = param3.inMenu;
            }
         }
         _loc4_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc1_:CharacterEditorScreen = this;
         _loc1_.clip = new characterEditorMC();
         false;
         false;
         if(_loc1_.firsttime)
         {
            false;
            false;
            _loc1_.clip.menu.y = 21;
            _loc1_.clip.menu.custom_input.visible = true;
         }
         else
         {
            _loc1_.clip.menu.custom_input.visible = false;
            _loc1_.clip.menu.gender_panel.visible = false;
            true;
            true;
            _loc1_.clip.menu.accd_panel.visible = false;
         }
         _loc1_.workerData = _loc1_.gameObj.workerData;
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip.holder,_loc1_.workerData,_loc1_.workerX,_loc1_.workerY,_loc1_.workerScale,false,true);
         true;
         true;
         _loc1_.workerReverse = new Worker(_loc1_.gameObj,_loc1_.clip.mirror_holder,_loc1_.workerData,_loc1_.workerReverseX,_loc1_.workerReverseY,_loc1_.workerScale,true,true);
         _loc1_.getAvailableClothing();
         if(_loc1_.firsttime == false)
         {
            _loc1_.setupStats();
            false;
            false;
         }
         _loc1_.createBackdrop();
         _loc1_.setupInterface();
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         true;
         true;
         if(_loc1_.firsttime)
         {
            true;
            true;
            _loc1_.container.addEventListener("clickBack",_loc1_.clickBack);
            _loc1_.container.addEventListener("clickContinue",_loc1_.clickContinue);
            true;
            true;
         }
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.gameObj.soundManager.switchMusic("order");
      }
      
      public function getAvailableClothing(param1:Boolean = true) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         _loc2_.available_hair = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_HAIR,_loc2_.workerData.gender,false,_loc2_.firsttime);
         false;
         false;
         _loc2_.which_hair = _loc2_.available_hair.indexOf(_loc2_.workerData.hair);
         _loc2_.available_accd = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_ACC_FACE,_loc2_.workerData.gender,false,_loc2_.firsttime);
         false;
         false;
         _loc2_.available_accd.unshift("");
         _loc2_.which_accd = _loc2_.available_accd.indexOf(_loc2_.workerData.accd);
         _loc2_.available_facialhair = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_FACIALHAIR,_loc2_.workerData.gender,false,_loc2_.firsttime);
         true;
         true;
         _loc2_.available_facialhair.unshift("");
         _loc2_.which_facialhair = _loc2_.available_facialhair.indexOf(_loc2_.workerData.facialhair);
         false;
         false;
         if(_loc2_.firsttime == false)
         {
            _loc2_.available_pants = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_PANTS,_loc2_.workerData.gender,false);
            _loc2_.which_pants = _loc2_.available_pants.indexOf(_loc2_.workerData.pants);
            true;
            true;
            _loc2_.available_shirt = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_SHIRT,_loc2_.workerData.gender,false);
            _loc2_.which_shirt = _loc2_.available_shirt.indexOf(_loc2_.workerData.shirt);
            _loc2_.available_jacket = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_JACKET,_loc2_.workerData.gender,false);
            true;
            true;
            _loc2_.available_jacket.unshift("");
            _loc2_.which_jacket = _loc2_.available_jacket.indexOf(_loc2_.workerData.jacket);
            _loc2_.available_shoes = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_SHOES,_loc2_.workerData.gender,false);
            _loc2_.which_shoes = _loc2_.available_shoes.indexOf(_loc2_.workerData.shoes);
            _loc2_.available_acca = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_ACC_BODY,_loc2_.workerData.gender,false);
            _loc2_.available_acca.unshift("");
            true;
            true;
            _loc2_.which_acca = _loc2_.available_acca.indexOf(_loc2_.workerData.acca);
            true;
            true;
            _loc2_.available_accb = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_ACC_BELT,_loc2_.workerData.gender,false);
            false;
            false;
            _loc2_.available_accb.unshift("");
            true;
            true;
            _loc2_.which_accb = _loc2_.available_accb.indexOf(_loc2_.workerData.accb);
            _loc2_.available_accc = _loc2_.gameObj.var_20.getAvailableClothingTags(ClothingItem.TYPE_ACC_ARMS,_loc2_.workerData.gender,false);
            _loc2_.available_accc.unshift("");
            _loc2_.which_accc = _loc2_.available_accc.indexOf(_loc2_.workerData.accc);
         }
      }
      
      public function updateScreen(param1:Event) : void
      {
         false;
         true;
         var _loc5_:SimpleButton = null;
         var _loc6_:Number = NaN;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Number = 0;
         0;
         true;
         true;
         if(_loc2_.draggingWhichSlider != null)
         {
            false;
            false;
            true;
            true;
            if(_loc2_.draggingWhichSlider == "eyeheight")
            {
               false;
               false;
               _loc5_ = _loc2_.clip.menu.eyeheight_panel.slider;
               true;
               true;
               _loc6_ = Number(_loc2_.clip.menu.eyeheight_panel.mouseX);
               true;
               true;
               _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
               true;
               true;
               _loc3_ = Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.EYE_HEIGHT_MAX - WorkerData.EYE_HEIGHT_MIN)) + WorkerData.EYE_HEIGHT_MIN;
               false;
               false;
               if(_loc2_.workerData.eyeHeight != _loc3_)
               {
                  _loc2_.workerData.adjustValue("eyeHeight",_loc3_);
                  _loc2_.worker.updateFacialLayout();
                  _loc2_.workerReverse.updateFacialLayout();
               }
            }
            else
            {
               true;
               true;
               if(_loc2_.draggingWhichSlider == "eyespacing")
               {
                  _loc5_ = _loc2_.clip.menu.eyespacing_panel.slider;
                  true;
                  true;
                  _loc6_ = Number(_loc2_.clip.menu.eyespacing_panel.mouseX);
                  _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                  _loc3_ = Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.EYE_SPACING_MAX - WorkerData.EYE_SPACING_MIN)) + WorkerData.EYE_SPACING_MIN;
                  if(_loc2_.workerData.eyeSpacing != _loc3_)
                  {
                     _loc2_.workerData.adjustValue("eyeSpacing",_loc3_);
                     _loc2_.worker.updateFacialLayout();
                     _loc2_.workerReverse.updateFacialLayout();
                  }
               }
               else if(_loc2_.draggingWhichSlider == "mouthheight")
               {
                  _loc5_ = _loc2_.clip.menu.mouthheight_panel.slider;
                  false;
                  false;
                  _loc6_ = Number(_loc2_.clip.menu.mouthheight_panel.mouseX);
                  _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                  true;
                  true;
                  _loc3_ = Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.MOUTH_HEIGHT_MAX - WorkerData.MOUTH_HEIGHT_MIN)) + WorkerData.MOUTH_HEIGHT_MIN;
                  if(_loc2_.workerData.mouthHeight != _loc3_)
                  {
                     _loc2_.workerData.adjustValue("mouthHeight",_loc3_);
                     _loc2_.worker.updateFacialLayout();
                     false;
                     false;
                     _loc2_.workerReverse.updateFacialLayout();
                  }
               }
               else if(_loc2_.draggingWhichSlider == "headforward")
               {
                  _loc5_ = _loc2_.clip.menu.headforward_panel.slider;
                  true;
                  true;
                  _loc6_ = Number(_loc2_.clip.menu.headforward_panel.mouseX);
                  false;
                  false;
                  _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                  false;
                  false;
                  _loc3_ = Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.HEAD_FORWARD_MAX - WorkerData.HEAD_FORWARD_MIN)) + WorkerData.HEAD_FORWARD_MIN;
                  true;
                  true;
                  if(_loc2_.workerData.headForward != _loc3_)
                  {
                     _loc2_.workerData.adjustValue("headForward",_loc3_);
                     _loc2_.worker.updateFacialLayout();
                     _loc2_.workerReverse.updateFacialLayout();
                  }
               }
               else
               {
                  true;
                  true;
                  if(_loc2_.draggingWhichSlider == "headscale")
                  {
                     false;
                     false;
                     _loc5_ = _loc2_.clip.menu.headscale_panel.slider;
                     true;
                     true;
                     _loc6_ = Number(_loc2_.clip.menu.headscale_panel.mouseX);
                     false;
                     false;
                     _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                     false;
                     false;
                     true;
                     true;
                     _loc3_ = (_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.HEAD_SCALE_MAX - WorkerData.HEAD_SCALE_MIN) + WorkerData.HEAD_SCALE_MIN;
                     true;
                     true;
                     if(_loc2_.workerData.headScale != _loc3_)
                     {
                        _loc2_.workerData.adjustValue("headScale",_loc3_);
                        _loc2_.worker.updateFacialLayout();
                        _loc2_.workerReverse.updateFacialLayout();
                     }
                  }
                  else if(_loc2_.draggingWhichSlider == "headheight")
                  {
                     _loc5_ = _loc2_.clip.menu.headheight_panel.slider;
                     _loc6_ = Number(_loc2_.clip.menu.headheight_panel.mouseX);
                     _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                     true;
                     true;
                     _loc3_ = Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.HEAD_HEIGHT_MAX - WorkerData.HEAD_HEIGHT_MIN)) + WorkerData.HEAD_HEIGHT_MIN;
                     if(_loc2_.workerData.headHeight != _loc3_)
                     {
                        _loc2_.workerData.adjustValue("headHeight",_loc3_);
                        false;
                        false;
                        _loc2_.worker.updateFacialLayout();
                        false;
                        false;
                        _loc2_.workerReverse.updateFacialLayout();
                     }
                  }
               }
            }
         }
         if(_loc2_.clip.fader.currentFrame == _loc2_.clip.fader.totalFrames)
         {
            if(_loc2_.endaction == "back")
            {
               _loc2_.gameObj.var_10.api.method_32("SlotSelect");
               _loc2_.gameObj.var_10.api.method_33("CharacterEditor");
            }
            else
            {
               _loc2_.gameObj.method_83();
               _loc2_.gameObj.method_118();
            }
         }
         true;
         true;
         if(_loc2_.worker)
         {
            true;
            true;
            _loc2_.worker.animateModel();
         }
      }
      
      public function setupInterface(param1:Boolean = true) : void
      {
         false;
         true;
         var _loc3_:TextFormat = null;
         var _loc4_:TextInput = null;
         var _loc5_:Number = NaN;
         var _loc6_:TextFormat = null;
         var _loc7_:TextInput = null;
         var _loc2_:CharacterEditorScreen = this;
         true;
         true;
         if(param1)
         {
            if(_loc2_.firsttime)
            {
               _loc2_.clip.menu.visible = true;
               _loc2_.clip.clothes.visible = false;
               _loc2_.clip.stats.visible = false;
               _loc2_.clip.tabs.visible = false;
               _loc2_.clip.name_txt.visible = false;
               _loc2_.clip.namerollover_btn.visible = false;
            }
            else
            {
               _loc2_.clip.menu.visible = false;
               _loc2_.clip.clothes.visible = false;
               true;
               true;
               _loc2_.clip.stats.visible = true;
               true;
               true;
               _loc2_.clip.tabs.visible = true;
               _loc2_.clip.tabs.gotoAndStop("stats");
               _loc2_.clip.tabs.newstar.visible = _loc2_.gameObj.userData.hasNewClothing;
               true;
               true;
               _loc2_.clip.tabs.newstar.mouseEnabled = false;
               _loc2_.clip.tabs.newstar.mouseChildren = false;
               _loc2_.clip.name_txt.visible = true;
               _loc2_.clip.namerollover_btn.visible = true;
               true;
               true;
               true;
               true;
               §§push(_loc2_.gameObj.userData.whichCharacter == "marty");
               if(!(_loc2_.gameObj.userData.whichCharacter == "marty"))
               {
                  false;
                  false;
                  §§pop();
                  true;
                  true;
                  true;
                  true;
                  §§push(_loc2_.gameObj.userData.whichCharacter == "rita");
               }
               if(§§pop())
               {
                  true;
                  true;
                  _loc2_.clip.tabs.customize_btn.visible = false;
                  false;
                  false;
                  _loc2_.clip.namerollover_btn.visible = false;
               }
               if(class_3.method_2())
               {
                  _loc2_.clip.namerollover_btn.visible = false;
               }
            }
            _loc2_.clip.changeNameMC.visible = false;
            _loc2_.clip.name_txt.mouseEnabled = false;
            false;
            false;
            _loc2_.clip.namerollover_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeName);
            _loc2_.clip.name_txt.text = String(_loc2_.gameObj.userData.myName);
            _loc3_ = new TextFormat();
            _loc3_.font = "Arial";
            _loc3_.size = 14;
            _loc3_.bold = true;
            false;
            false;
            _loc3_.align = TextFormatAlign.CENTER;
            _loc4_ = _loc2_.clip.changeNameMC.input_txt;
            _loc2_.clip.changeNameMC.input_txt.setStyle("textFormat",_loc3_);
            _loc2_.clip.changeNameMC.input_txt.maxChars = 16;
            _loc2_.clip.changeNameMC.input_txt.restrict = "0-9A-Za-z \'\\-";
            _loc2_.clip.changeNameMC.input_txt.text = String(_loc2_.gameObj.userData.myName);
            _loc2_.clip.tabs.stats_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionStats);
            _loc2_.clip.tabs.clothes_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionClothes);
            true;
            true;
            _loc2_.clip.tabs.customize_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionCustomize);
            _loc2_.clip.menu.eyeheight_panel.label_txt.text = "Eye Position";
            true;
            true;
            _loc2_.clip.menu.eyeheight_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.eyeheight_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.eyeHeight - WorkerData.EYE_HEIGHT_MIN) / (WorkerData.EYE_HEIGHT_MAX - WorkerData.EYE_HEIGHT_MIN) * _loc2_.sliderRange;
            false;
            false;
            _loc2_.clip.menu.eyespacing_panel.label_txt.text = "Eye Spacing";
            false;
            false;
            _loc2_.clip.menu.eyespacing_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.eyespacing_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.eyeSpacing - WorkerData.EYE_SPACING_MIN) / (WorkerData.EYE_SPACING_MAX - WorkerData.EYE_SPACING_MIN) * _loc2_.sliderRange;
            _loc2_.clip.menu.mouthheight_panel.label_txt.text = "Mouth Position";
            _loc2_.clip.menu.mouthheight_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.mouthheight_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.mouthHeight - WorkerData.MOUTH_HEIGHT_MIN) / (WorkerData.MOUTH_HEIGHT_MAX - WorkerData.MOUTH_HEIGHT_MIN) * _loc2_.sliderRange;
            _loc2_.clip.menu.headforward_panel.label_txt.text = "Head Position";
            _loc2_.clip.menu.headforward_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.headforward_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.headForward - WorkerData.HEAD_FORWARD_MIN) / (WorkerData.HEAD_FORWARD_MAX - WorkerData.HEAD_FORWARD_MIN) * _loc2_.sliderRange;
            _loc2_.clip.menu.headscale_panel.label_txt.text = "Head Size";
            _loc2_.clip.menu.headscale_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.headscale_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.headScale - WorkerData.HEAD_SCALE_MIN) / (WorkerData.HEAD_SCALE_MAX - WorkerData.HEAD_SCALE_MIN) * _loc2_.sliderRange;
            _loc2_.clip.menu.headheight_panel.label_txt.text = "Neck Length";
            false;
            false;
            _loc2_.clip.menu.headheight_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.headheight_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.headHeight - WorkerData.HEAD_HEIGHT_MIN) / (WorkerData.HEAD_HEIGHT_MAX - WorkerData.HEAD_HEIGHT_MIN) * _loc2_.sliderRange;
            false;
            false;
            _loc5_ = WorkerData.skinToneOptions.indexOf(_loc2_.workerData.skinTone);
            _loc2_.clip.menu.skin_panel.label_txt.text = "Skin Color";
            _loc2_.clip.menu.skin_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeSkin);
            _loc2_.clip.menu.skin_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeSkin);
            _loc2_.clip.menu.skin_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.skinToneOptions.length);
            true;
            true;
            _loc5_ = WorkerData.hairColorOptions.indexOf(_loc2_.workerData.hairColor);
            _loc2_.clip.menu.haircolor_panel.label_txt.text = "Hair Color";
            false;
            false;
            _loc2_.clip.menu.haircolor_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHairColor);
            _loc2_.clip.menu.haircolor_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHairColor);
            _loc2_.clip.menu.haircolor_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.hairColorOptions.length);
            _loc5_ = _loc2_.workerData.eyeStyle;
            _loc2_.clip.menu.eyetype_panel.label_txt.text = "Eye Type";
            _loc2_.clip.menu.eyetype_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeType);
            false;
            false;
            _loc2_.clip.menu.eyetype_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeType);
            _loc2_.clip.menu.eyetype_panel.amount_txt.text = String(_loc5_ + "/" + WorkerData.EYE_STYLE_MAX);
            _loc5_ = WorkerData.eyeDefaultOptions.indexOf(_loc2_.workerData.eyeDefaultExpression);
            _loc2_.clip.menu.eyedefault_panel.label_txt.text = "Eye Look";
            _loc2_.clip.menu.eyedefault_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeDefault);
            _loc2_.clip.menu.eyedefault_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeDefault);
            _loc2_.clip.menu.eyedefault_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.eyeDefaultOptions.length);
            false;
            false;
            _loc5_ = _loc2_.workerData.mouthDefaultExpression;
            _loc2_.clip.menu.mouthdefault_panel.label_txt.text = "Mouth Look";
            _loc2_.clip.menu.mouthdefault_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeMouthDefault);
            _loc2_.clip.menu.mouthdefault_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeMouthDefault);
            _loc2_.clip.menu.mouthdefault_panel.amount_txt.text = String(_loc5_ + "/" + WorkerData.MOUTH_DEFAULT_MAX);
            false;
            false;
            false;
            false;
            _loc5_ = _loc2_.available_hair.indexOf(_loc2_.workerData.hair);
            _loc2_.clip.menu.hair_panel.label_txt.text = "Hair";
            _loc2_.clip.menu.hair_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHair);
            _loc2_.clip.menu.hair_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHair);
            true;
            true;
            _loc2_.clip.menu.hair_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_hair.length);
            _loc5_ = _loc2_.available_facialhair.indexOf(_loc2_.workerData.facialhair);
            false;
            false;
            _loc2_.clip.menu.facialhair_panel.label_txt.text = "Facial Hair";
            _loc2_.clip.menu.facialhair_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeFacialHair);
            _loc2_.clip.menu.facialhair_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeFacialHair);
            true;
            true;
            _loc2_.clip.menu.facialhair_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_facialhair.length);
            true;
            true;
            _loc5_ = _loc2_.available_accd.indexOf(_loc2_.workerData.accd);
            _loc2_.clip.menu.accd_panel.label_txt.text = "Extras";
            _loc2_.clip.menu.accd_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeAccessory);
            _loc2_.clip.menu.accd_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeAccessory);
            _loc2_.clip.menu.accd_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_accd.length);
            if(!_loc2_.firsttime)
            {
               true;
               true;
               _loc5_ = _loc2_.available_shirt.indexOf(_loc2_.workerData.shirt);
               _loc2_.clip.clothes.shirt_panel.label_txt.text = "Shirt";
               true;
               true;
               _loc2_.clip.clothes.shirt_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.shirt_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.shirt_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_shirt.length);
               false;
               false;
               _loc2_.thumb_shirt = _loc2_.generateClothingThumb(_loc2_.workerData.shirt);
               _loc2_.clip.clothes.shirt_panel.addChild(_loc2_.thumb_shirt);
               _loc5_ = _loc2_.available_pants.indexOf(_loc2_.workerData.pants);
               _loc2_.clip.clothes.pants_panel.label_txt.text = "Pants";
               _loc2_.clip.clothes.pants_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.pants_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.pants_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_pants.length);
               _loc2_.thumb_pants = _loc2_.generateClothingThumb(_loc2_.workerData.pants);
               false;
               false;
               _loc2_.clip.clothes.pants_panel.addChild(_loc2_.thumb_pants);
               true;
               true;
               _loc5_ = _loc2_.available_shoes.indexOf(_loc2_.workerData.shoes);
               _loc2_.clip.clothes.shoes_panel.label_txt.text = "Shoes";
               true;
               true;
               _loc2_.clip.clothes.shoes_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.shoes_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.shoes_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_shoes.length);
               _loc2_.thumb_shoes = _loc2_.generateClothingThumb(_loc2_.workerData.shoes);
               _loc2_.clip.clothes.shoes_panel.addChild(_loc2_.thumb_shoes);
               true;
               true;
               _loc5_ = _loc2_.available_jacket.indexOf(_loc2_.workerData.jacket);
               _loc2_.clip.clothes.jacket_panel.label_txt.text = "Jacket";
               _loc2_.clip.clothes.jacket_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.jacket_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.jacket_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_jacket.length);
               _loc2_.thumb_jacket = _loc2_.generateClothingThumb(_loc2_.workerData.jacket);
               false;
               false;
               _loc2_.clip.clothes.jacket_panel.addChild(_loc2_.thumb_jacket);
               _loc5_ = _loc2_.available_hair.indexOf(_loc2_.workerData.hair);
               _loc2_.clip.clothes.hair_panel.label_txt.text = "Hat";
               _loc2_.clip.clothes.hair_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.hair_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.hair_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_hair.length);
               _loc2_.thumb_hair = _loc2_.generateClothingThumb(_loc2_.workerData.hair);
               _loc2_.clip.clothes.hair_panel.addChild(_loc2_.thumb_hair);
               false;
               false;
               false;
               false;
               _loc5_ = _loc2_.available_acca.indexOf(_loc2_.workerData.acca);
               _loc2_.clip.clothes.acca_panel.label_txt.text = "Extra A";
               _loc2_.clip.clothes.acca_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.acca_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.acca_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_acca.length);
               _loc2_.thumb_acca = _loc2_.generateClothingThumb(_loc2_.workerData.acca);
               _loc2_.clip.clothes.acca_panel.addChild(_loc2_.thumb_acca);
               true;
               true;
               _loc5_ = _loc2_.available_accb.indexOf(_loc2_.workerData.accb);
               true;
               true;
               _loc2_.clip.clothes.accb_panel.label_txt.text = "Extra B";
               true;
               true;
               _loc2_.clip.clothes.accb_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.accb_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.accb_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_accb.length);
               _loc2_.thumb_accb = _loc2_.generateClothingThumb(_loc2_.workerData.accb);
               _loc2_.clip.clothes.accb_panel.addChild(_loc2_.thumb_accb);
               false;
               false;
               _loc5_ = _loc2_.available_accc.indexOf(_loc2_.workerData.accc);
               _loc2_.clip.clothes.accc_panel.label_txt.text = "Extra C";
               _loc2_.clip.clothes.accc_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.accc_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               true;
               true;
               _loc2_.clip.clothes.accc_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_accc.length);
               _loc2_.thumb_accc = _loc2_.generateClothingThumb(_loc2_.workerData.accc);
               true;
               true;
               _loc2_.clip.clothes.accc_panel.addChild(_loc2_.thumb_accc);
               _loc5_ = _loc2_.available_accd.indexOf(_loc2_.workerData.accd);
               _loc2_.clip.clothes.accd_panel.label_txt.text = "Extra D";
               _loc2_.clip.clothes.accd_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               _loc2_.clip.clothes.accd_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               true;
               true;
               _loc2_.clip.clothes.accd_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_accd.length);
               _loc2_.thumb_accd = _loc2_.generateClothingThumb(_loc2_.workerData.accd);
               false;
               false;
               _loc2_.clip.clothes.accd_panel.addChild(_loc2_.thumb_accd);
            }
            if(_loc2_.workerData.gender == WorkerData.GENDER_MALE)
            {
               _loc2_.clip.menu.gender_panel.male_btn.gotoAndStop(2);
               true;
               true;
               _loc2_.clip.menu.gender_panel.female_btn.gotoAndStop(1);
            }
            else
            {
               _loc2_.clip.menu.gender_panel.male_btn.gotoAndStop(1);
               _loc2_.clip.menu.gender_panel.female_btn.gotoAndStop(2);
            }
            _loc2_.clip.menu.gender_panel.male_btn.buttonMode = true;
            _loc2_.clip.menu.gender_panel.male_btn.useHandCursor = true;
            _loc2_.clip.menu.gender_panel.male_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickGender);
            _loc2_.clip.menu.gender_panel.female_btn.buttonMode = true;
            _loc2_.clip.menu.gender_panel.female_btn.useHandCursor = true;
            _loc2_.clip.menu.gender_panel.female_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickGender);
            (_loc6_ = new TextFormat()).font = "Arial";
            false;
            false;
            _loc6_.size = 24;
            true;
            true;
            _loc6_.bold = true;
            _loc6_.align = TextFormatAlign.CENTER;
            _loc7_ = _loc2_.clip.menu.custom_input.input_txt;
            _loc2_.clip.menu.custom_input.input_txt.setStyle("textFormat",_loc6_);
            _loc2_.clip.menu.custom_input.input_txt.maxChars = 16;
            _loc2_.clip.menu.custom_input.input_txt.restrict = "0-9A-Za-z \'\\-";
            _loc2_.clip.menu.custom_input.noname.gotoAndStop(1);
            true;
            true;
            if(class_3.method_2())
            {
               _loc7_.editable = false;
               _loc7_.text = "You";
               _loc7_.mouseEnabled = false;
               _loc7_.mouseChildren = false;
            }
            _loc2_.clip.clothes.photopanel.photo_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickTakePhoto);
            _loc2_.clip.poloroid.visible = false;
            _loc2_.clip.poloroid.holder.mask = _loc2_.clip.poloroid.masker;
            true;
            true;
            _loc2_.clip.poloroid.flasher.gotoAndStop(1);
            true;
            true;
            _loc2_.clip.poloroid.save_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSavePhoto);
            _loc2_.clip.poloroid.close_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickClosePhoto);
         }
         else
         {
            _loc2_.clip.namerollover_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeName);
            _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickScreenChangingName);
            _loc2_.gameObj.removeEventListener(KeyboardEvent.KEY_DOWN,_loc2_.keyListener);
            _loc2_.clip.tabs.stats_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionStats);
            _loc2_.clip.tabs.clothes_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionClothes);
            _loc2_.clip.tabs.customize_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionCustomize);
            _loc2_.clip.menu.eyeheight_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.eyespacing_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.mouthheight_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.headforward_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            _loc2_.clip.menu.headscale_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            false;
            false;
            _loc2_.clip.menu.headheight_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
            true;
            true;
            _loc2_.clip.menu.skin_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeSkin);
            _loc2_.clip.menu.skin_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeSkin);
            false;
            false;
            _loc2_.clip.menu.haircolor_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHairColor);
            _loc2_.clip.menu.haircolor_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHairColor);
            _loc2_.clip.menu.eyetype_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeType);
            _loc2_.clip.menu.eyetype_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeType);
            _loc2_.clip.menu.eyedefault_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeDefault);
            _loc2_.clip.menu.eyedefault_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeDefault);
            _loc2_.clip.menu.mouthdefault_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeMouthDefault);
            _loc2_.clip.menu.mouthdefault_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeMouthDefault);
            _loc2_.clip.menu.hair_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHair);
            _loc2_.clip.menu.hair_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHair);
            true;
            true;
            _loc2_.clip.menu.facialhair_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeFacialHair);
            _loc2_.clip.menu.facialhair_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeFacialHair);
            false;
            false;
            _loc2_.clip.clothes.acca_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.acca_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.accb_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.accb_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.accc_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.accc_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.accd_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.accd_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            true;
            true;
            _loc2_.clip.clothes.shirt_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.shirt_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.jacket_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.jacket_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.pants_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.pants_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.shoes_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.shoes_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            _loc2_.clip.clothes.hair_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            true;
            true;
            _loc2_.clip.clothes.hair_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            false;
            false;
            _loc2_.clip.menu.gender_panel.male_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickGender);
            false;
            false;
            _loc2_.clip.menu.gender_panel.female_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickGender);
            _loc2_.clip.clothes.photopanel.photo_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickTakePhoto);
            _loc2_.clip.poloroid.save_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSavePhoto);
            _loc2_.clip.poloroid.close_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickClosePhoto);
         }
      }
      
      public function clickSectionStats(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         _loc2_.clip.tabs.gotoAndStop("stats");
         false;
         false;
         _loc2_.clip.stats.visible = true;
         _loc2_.clip.clothes.visible = false;
         true;
         true;
         _loc2_.clip.menu.visible = false;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickSectionClothes(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         _loc2_.clip.tabs.gotoAndStop("clothes");
         _loc2_.clip.stats.visible = false;
         _loc2_.clip.clothes.visible = true;
         _loc2_.clip.menu.visible = false;
         false;
         false;
         _loc2_.clip.tabs.newstar.visible = false;
         _loc2_.gameObj.userData.hasNewClothing = false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickSectionCustomize(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         false;
         false;
         _loc2_.clip.tabs.gotoAndStop("customize");
         true;
         true;
         _loc2_.clip.stats.visible = false;
         _loc2_.clip.clothes.visible = false;
         _loc2_.clip.menu.visible = true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickSlider(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         if(param1.currentTarget == _loc2_.clip.menu.eyeheight_panel.slider)
         {
            true;
            true;
            _loc2_.draggingWhichSlider = "eyeheight";
         }
         else if(param1.currentTarget == _loc2_.clip.menu.eyespacing_panel.slider)
         {
            _loc2_.draggingWhichSlider = "eyespacing";
         }
         else if(param1.currentTarget == _loc2_.clip.menu.mouthheight_panel.slider)
         {
            _loc2_.draggingWhichSlider = "mouthheight";
         }
         else if(param1.currentTarget == _loc2_.clip.menu.headforward_panel.slider)
         {
            _loc2_.draggingWhichSlider = "headforward";
         }
         else if(param1.currentTarget == _loc2_.clip.menu.headscale_panel.slider)
         {
            true;
            true;
            _loc2_.draggingWhichSlider = "headscale";
         }
         else if(param1.currentTarget == _loc2_.clip.menu.headheight_panel.slider)
         {
            _loc2_.draggingWhichSlider = "headheight";
         }
         true;
         true;
         _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseSlider);
         _loc2_.gameObj.stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseSlider);
         _loc2_.didChange = true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function releaseSlider(param1:Event) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         true;
         true;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseSlider);
         false;
         false;
         true;
         true;
         _loc2_.gameObj.stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseSlider);
         false;
         false;
         _loc2_.draggingWhichSlider = null;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickGender(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         false;
         false;
         §§push(param1.currentTarget == _loc2_.clip.menu.gender_panel.male_btn);
         if(param1.currentTarget == _loc2_.clip.menu.gender_panel.male_btn)
         {
            true;
            true;
            §§pop();
            true;
            true;
            false;
            false;
            §§push(_loc2_.workerData.gender != WorkerData.GENDER_MALE);
         }
         if(§§pop())
         {
            _loc2_.workerData.setGender(WorkerData.GENDER_MALE);
            true;
            true;
            _loc2_.worker.updateModelLook();
            true;
            true;
            true;
            true;
            _loc2_.workerReverse.updateModelLook();
            _loc2_.clip.menu.facialhair_panel.visible = true;
            _loc2_.clip.menu.hair_panel.amount_txt.text = String(_loc2_.available_hair.indexOf(_loc2_.workerData.hair) + 1 + "/" + _loc2_.available_hair.length);
            _loc2_.which_hair = _loc2_.available_hair.indexOf(_loc2_.workerData.hair);
            false;
            false;
            _loc2_.which_facialhair = _loc2_.available_facialhair.indexOf(_loc2_.workerData.facialhair);
            true;
            true;
            _loc2_.didChange = true;
            false;
            false;
            _loc2_.worker.playAnimation("react1");
            _loc2_.workerReverse.playAnimation("react1_mirror");
         }
         else if(param1.currentTarget == _loc2_.clip.menu.gender_panel.female_btn && _loc2_.workerData.gender != WorkerData.GENDER_FEMALE)
         {
            _loc2_.workerData.setGender(WorkerData.GENDER_FEMALE);
            _loc2_.workerData.facialhair = "";
            _loc2_.clip.menu.facialhair_panel.amount_txt.text = String("1/" + _loc2_.available_facialhair.length);
            _loc2_.clip.menu.facialhair_panel.visible = false;
            true;
            true;
            _loc2_.clip.menu.hair_panel.amount_txt.text = String(_loc2_.available_hair.indexOf(_loc2_.workerData.hair) + 1 + "/" + _loc2_.available_hair.length);
            _loc2_.which_hair = _loc2_.available_hair.indexOf(_loc2_.workerData.hair);
            _loc2_.which_facialhair = _loc2_.available_facialhair.indexOf(_loc2_.workerData.facialhair);
            true;
            true;
            _loc2_.worker.updateModelLook();
            true;
            true;
            _loc2_.workerReverse.updateModelLook();
            false;
            false;
            _loc2_.didChange = true;
            false;
            false;
            _loc2_.worker.playAnimation("react1");
            _loc2_.workerReverse.playAnimation("react1_mirror");
            false;
            false;
         }
         if(_loc2_.workerData.gender == WorkerData.GENDER_MALE)
         {
            _loc2_.clip.menu.gender_panel.male_btn.gotoAndStop(2);
            _loc2_.clip.menu.gender_panel.female_btn.gotoAndStop(1);
            true;
            true;
         }
         else
         {
            _loc2_.clip.menu.gender_panel.male_btn.gotoAndStop(1);
            _loc2_.clip.menu.gender_panel.female_btn.gotoAndStop(2);
         }
      }
      
      public function clickChangeName(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         false;
         false;
         _loc2_.clip.changeNameMC.visible = true;
         _loc2_.clip.changeNameMC.input_txt.setFocus();
         param1.stopImmediatePropagation();
         true;
         true;
         _loc2_.gameObj.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickScreenChangingName);
         _loc2_.gameObj.addEventListener(KeyboardEvent.KEY_DOWN,_loc2_.keyListener);
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function keyListener(param1:KeyboardEvent) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         if(param1.keyCode == Keyboard.ENTER)
         {
            _loc2_.clickScreenChangingName(null,true);
         }
      }
      
      public function clickScreenChangingName(param1:MouseEvent = null, param2:Boolean = false) : void
      {
         false;
         true;
         var _loc3_:CharacterEditorScreen = this;
         §§push(param2);
         if(!param2)
         {
            false;
            false;
            §§pop();
            false;
            false;
            §§push(param1.target.parent != _loc3_.clip.changeNameMC.input_txt);
         }
         if(§§pop())
         {
            false;
            false;
            _loc3_.gameObj.stage.focus = _loc3_.gameObj.stage;
            _loc3_.clip.changeNameMC.visible = false;
            _loc3_.clip.name_txt.text = String(_loc3_.clip.changeNameMC.input_txt.text);
            false;
            false;
            _loc3_.gameObj.removeEventListener(MouseEvent.MOUSE_DOWN,_loc3_.clickScreenChangingName);
            _loc3_.gameObj.removeEventListener(KeyboardEvent.KEY_DOWN,_loc3_.keyListener);
         }
      }
      
      public function clickChangeSkin(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:Number = 1;
         false;
         false;
         if(_loc3_[0] == "prev")
         {
            false;
            false;
            _loc4_ = -1;
         }
         false;
         false;
         var _loc5_:Number;
         if((_loc5_ = WorkerData.skinToneOptions.indexOf(_loc2_.workerData.skinTone) + _loc4_) >= WorkerData.skinToneOptions.length)
         {
            false;
            false;
            _loc5_ = 0;
         }
         else if(_loc5_ < 0)
         {
            _loc5_ = WorkerData.skinToneOptions.length - 1;
         }
         _loc2_.clip.menu.skin_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.skinToneOptions.length);
         false;
         false;
         true;
         true;
         if(_loc2_.workerData.skinTone != WorkerData.skinToneOptions[_loc5_])
         {
            _loc2_.workerData.skinTone = WorkerData.skinToneOptions[_loc5_];
            _loc2_.worker.updateSkinTone();
            _loc2_.workerReverse.updateSkinTone();
            _loc2_.didChange = true;
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeEyeType(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:Number = 1;
         if(_loc3_[0] == "prev")
         {
            false;
            false;
            _loc4_ = -1;
         }
         false;
         false;
         var _loc5_:Number;
         if((_loc5_ = _loc2_.workerData.eyeStyle + _loc4_) > WorkerData.EYE_STYLE_MAX)
         {
            false;
            false;
            _loc5_ = 1;
            false;
            false;
         }
         else
         {
            false;
            false;
            if(_loc5_ < 1)
            {
               true;
               true;
               _loc5_ = WorkerData.EYE_STYLE_MAX;
               true;
               true;
            }
         }
         if(_loc2_.workerData.eyeStyle != _loc5_)
         {
            _loc2_.workerData.adjustValue("eyeStyle",_loc5_);
            _loc2_.worker.redoClothing(ClothingItem.TYPE_HAIR);
            true;
            true;
            _loc2_.workerReverse.redoClothing(ClothingItem.TYPE_HAIR);
            true;
            true;
            _loc2_.didChange = true;
         }
         _loc2_.clip.menu.eyetype_panel.amount_txt.text = String(_loc5_ + "/" + WorkerData.EYE_STYLE_MAX);
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeEyeDefault(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:Number = 1;
         true;
         true;
         if(_loc3_[0] == "prev")
         {
            false;
            false;
            _loc4_ = -1;
         }
         false;
         false;
         false;
         false;
         var _loc5_:Number;
         if((_loc5_ = WorkerData.eyeDefaultOptions.indexOf(_loc2_.workerData.eyeDefaultExpression) + _loc4_) >= WorkerData.eyeDefaultOptions.length)
         {
            false;
            false;
            _loc5_ = 0;
         }
         else
         {
            true;
            true;
            if(_loc5_ < 0)
            {
               false;
               false;
               true;
               true;
               false;
               false;
               _loc5_ = WorkerData.eyeDefaultOptions.length - 1;
            }
         }
         if(WorkerData.eyeDefaultOptions.length > _loc5_ && _loc2_.workerData.eyeDefaultExpression != WorkerData.eyeDefaultOptions[_loc5_])
         {
            _loc2_.workerData.adjustValue("eyeDefault",_loc5_);
            false;
            false;
            _loc2_.worker.updateFacialLayout();
            _loc2_.workerReverse.updateFacialLayout();
            _loc2_.didChange = true;
            false;
            false;
         }
         _loc2_.clip.menu.eyedefault_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.eyeDefaultOptions.length);
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeMouthDefault(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:Number = 1;
         if(_loc3_[0] == "prev")
         {
            true;
            true;
            _loc4_ = -1;
         }
         true;
         true;
         true;
         true;
         false;
         false;
         var _loc5_:Number;
         if((_loc5_ = _loc2_.workerData.mouthDefaultExpression + _loc4_) > WorkerData.MOUTH_DEFAULT_MAX)
         {
            true;
            true;
            _loc5_ = 1;
         }
         else if(_loc5_ < 1)
         {
            false;
            false;
            true;
            true;
            _loc5_ = WorkerData.MOUTH_DEFAULT_MAX;
         }
         if(_loc2_.workerData.mouthDefaultExpression != _loc5_)
         {
            _loc2_.workerData.adjustValue("mouthDefault",_loc5_);
            _loc2_.worker.updateFacialLayout();
            _loc2_.workerReverse.updateFacialLayout();
            _loc2_.didChange = true;
         }
         _loc2_.clip.menu.mouthdefault_panel.amount_txt.text = String(_loc5_ + "/" + WorkerData.MOUTH_DEFAULT_MAX);
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeHairColor(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:Number = 1;
         false;
         false;
         if(_loc3_[0] == "prev")
         {
            false;
            false;
            _loc4_ = -1;
         }
         var _loc5_:Number;
         if((_loc5_ = WorkerData.hairColorOptions.indexOf(_loc2_.workerData.hairColor) + _loc4_) >= WorkerData.hairColorOptions.length)
         {
            false;
            false;
            true;
            true;
            _loc5_ = 0;
         }
         else if(_loc5_ < 0)
         {
            _loc5_ = WorkerData.hairColorOptions.length - 1;
            true;
            true;
         }
         _loc2_.clip.menu.haircolor_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.hairColorOptions.length);
         true;
         true;
         false;
         false;
         if(_loc2_.workerData.hairColor != WorkerData.hairColorOptions[_loc5_])
         {
            _loc2_.workerData.hairColor = WorkerData.hairColorOptions[_loc5_];
            _loc2_.worker.updateHairColor();
            _loc2_.workerReverse.updateHairColor();
            _loc2_.didChange = true;
            false;
            false;
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeHair(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:CharacterEditorScreen;
         var splitter:Array;
         var dir:Number;
         var type:String;
         var currentIndex:Number;
         var targetIndex:Number;
         var tag:String;
         false;
         true;
         type = null;
         targetIndex = NaN;
         false;
         false;
         e = param1;
         false;
         false;
         ob = this;
         false;
         false;
         splitter = String(e.currentTarget.name).split("_");
         false;
         false;
         dir = 1;
         false;
         false;
         if(splitter[0] == "prev")
         {
            true;
            true;
            true;
            true;
            dir = -1;
         }
         type = "hair";
         false;
         false;
         false;
         false;
         currentIndex = Number(ob["which_" + type]);
         true;
         true;
         targetIndex = currentIndex + dir;
         false;
         false;
         true;
         true;
         §§push(targetIndex < 0);
         if(targetIndex < 0)
         {
            true;
            true;
            §§pop();
            false;
            false;
            false;
            false;
            false;
            false;
            §§push(ob["available_" + type].length > 0);
         }
         if(§§pop())
         {
            targetIndex = ob["available_" + type].length - 1;
         }
         else if(targetIndex >= ob["available_" + type].length && ob["available_" + type].length > 0)
         {
            targetIndex = 0;
         }
         ob["which_" + type] = targetIndex;
         tag = "";
         try
         {
            false;
            false;
            tag = String(ob["available_" + type][targetIndex]);
         }
         catch(err:Error)
         {
            true;
            true;
            true;
            true;
            class_5.error("Could not get new tag: type = " + type + ", index = " + targetIndex + ". Error: " + err.message);
         }
         ob.workerData[type] = tag;
         true;
         true;
         false;
         false;
         ob.worker.redoClothing(type);
         true;
         true;
         ob.workerReverse.redoClothing(type);
         false;
         false;
         ob.clip.menu.hair_panel.amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
         false;
         false;
         ob.didChange = true;
         ob.worker.playAnimation("react2");
         false;
         false;
         ob.workerReverse.playAnimation("react2_mirror");
         true;
         true;
         false;
         false;
         ob.clip.clothes[type + "_panel"].amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
         false;
         false;
         ob.which_hair = ob.available_hair.indexOf(ob.workerData.hair);
         try
         {
            true;
            true;
            true;
            true;
            if(ob["thumb_" + type] != null)
            {
               true;
               true;
               false;
               false;
               ob["thumb_" + type].parent.removeChild(ob["thumb_" + type]);
               true;
               true;
               false;
               false;
               false;
               false;
               ob["thumb_" + type] = null;
            }
            ob["thumb_" + type] = ob.generateClothingThumb(tag);
            false;
            false;
            ob.clip.clothes[type + "_panel"].addChild(ob["thumb_" + type]);
         }
         catch(err:Error)
         {
            class_5.error("Error regenerating thumb: " + err.message);
         }
         ob.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeFacialHair(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:CharacterEditorScreen;
         var splitter:Array;
         var dir:Number;
         var type:String;
         var currentIndex:Number;
         var targetIndex:Number;
         var tag:String;
         true;
         true;
         type = null;
         false;
         false;
         targetIndex = NaN;
         true;
         true;
         e = param1;
         true;
         true;
         ob = this;
         splitter = String(e.currentTarget.name).split("_");
         true;
         true;
         false;
         false;
         dir = 1;
         false;
         false;
         if(splitter[0] == "prev")
         {
            true;
            true;
            true;
            true;
            dir = -1;
         }
         type = "facialhair";
         false;
         false;
         false;
         false;
         true;
         true;
         currentIndex = Number(ob["which_" + type]);
         false;
         false;
         targetIndex = currentIndex + dir;
         true;
         true;
         false;
         false;
         false;
         false;
         if(targetIndex < 0 && ob["available_" + type].length > 0)
         {
            false;
            false;
            targetIndex = ob["available_" + type].length - 1;
            true;
            true;
         }
         else if(targetIndex >= ob["available_" + type].length && ob["available_" + type].length > 0)
         {
            true;
            true;
            targetIndex = 0;
            true;
            true;
         }
         ob["which_" + type] = targetIndex;
         tag = "";
         try
         {
            tag = String(ob["available_" + type][targetIndex]);
         }
         catch(err:Error)
         {
            false;
            false;
            class_5.error("Could not get new tag: type = " + type + ", index = " + targetIndex + ". Error: " + err.message);
         }
         true;
         true;
         ob.workerData[type] = tag;
         true;
         true;
         ob.worker.redoClothing(type);
         true;
         true;
         ob.workerReverse.redoClothing(type);
         true;
         true;
         ob.clip.menu.facialhair_panel.amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
         false;
         false;
         true;
         true;
         ob.didChange = true;
         false;
         false;
         ob.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeAccessory(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:CharacterEditorScreen;
         var splitter:Array;
         var dir:Number;
         var type:String;
         var currentIndex:Number;
         var targetIndex:Number;
         var tag:String;
         false;
         true;
         type = null;
         targetIndex = NaN;
         e = param1;
         ob = this;
         false;
         false;
         splitter = String(e.currentTarget.name).split("_");
         dir = 1;
         if(splitter[0] == "prev")
         {
            false;
            false;
            true;
            true;
            dir = -1;
            true;
            true;
         }
         type = "accd";
         true;
         true;
         false;
         false;
         currentIndex = Number(ob["which_" + type]);
         false;
         false;
         false;
         false;
         targetIndex = currentIndex + dir;
         false;
         false;
         if(targetIndex < 0 && ob["available_" + type].length > 0)
         {
            false;
            false;
            targetIndex = ob["available_" + type].length - 1;
            false;
            false;
         }
         else
         {
            true;
            true;
            §§push(targetIndex >= ob["available_" + type].length);
            if(targetIndex >= ob["available_" + type].length)
            {
               true;
               true;
               §§pop();
               §§push(ob["available_" + type].length > 0);
            }
            if(§§pop())
            {
               true;
               true;
               targetIndex = 0;
            }
         }
         ob["which_" + type] = targetIndex;
         tag = "";
         try
         {
            false;
            false;
            tag = String(ob["available_" + type][targetIndex]);
         }
         catch(err:Error)
         {
            false;
            false;
            false;
            false;
            class_5.error("Could not get new tag: type = " + type + ", index = " + targetIndex + ". Error: " + err.message);
         }
         false;
         false;
         ob.workerData[type] = tag;
         true;
         true;
         ob.worker.redoClothing(type);
         ob.workerReverse.redoClothing(type);
         ob.clip.menu.accd_panel.amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
         ob.didChange = true;
         true;
         true;
         ob.worker.playAnimation("react2");
         ob.workerReverse.playAnimation("react2_mirror");
         false;
         false;
         true;
         true;
         ob.gameObj.soundManager.playSound("buttonclick.wav");
         ob.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeClothing(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:CharacterEditorScreen;
         var splitter:Array;
         var type:String;
         var dir:Number;
         var currentIndex:Number;
         var targetIndex:Number;
         var tag:String;
         false;
         true;
         true;
         true;
         type = null;
         targetIndex = NaN;
         e = param1;
         ob = this;
         splitter = String(e.currentTarget.name).split("_");
         type = String(String(e.currentTarget.parent.name).split("_")[0]);
         true;
         true;
         dir = 1;
         if(splitter[0] == "prev")
         {
            false;
            false;
            true;
            true;
            dir = -1;
         }
         true;
         true;
         false;
         false;
         currentIndex = Number(ob["which_" + type]);
         false;
         false;
         targetIndex = currentIndex + dir;
         false;
         false;
         true;
         true;
         §§push(targetIndex < 0);
         if(targetIndex < 0)
         {
            true;
            true;
            §§pop();
            false;
            false;
            false;
            false;
            true;
            true;
            false;
            false;
            true;
            true;
            false;
            false;
            false;
            false;
            true;
            true;
            §§push(ob["available_" + type].length > 0);
         }
         if(§§pop())
         {
            true;
            true;
            targetIndex = ob["available_" + type].length - 1;
         }
         else if(targetIndex >= ob["available_" + type].length && ob["available_" + type].length > 0)
         {
            false;
            false;
            true;
            true;
            targetIndex = 0;
            true;
            true;
         }
         ob["which_" + type] = targetIndex;
         tag = "";
         try
         {
            false;
            false;
            tag = String(ob["available_" + type][targetIndex]);
         }
         catch(err:Error)
         {
            false;
            false;
            class_5.error("Could not get new tag: type = " + type + ", index = " + targetIndex + ". Error: " + err.message);
         }
         ob.workerData[type] = tag;
         ob.worker.redoClothing(type);
         false;
         false;
         true;
         true;
         true;
         true;
         ob.workerReverse.redoClothing(type);
         ob.clip.clothes[type + "_panel"].amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
         false;
         false;
         ob.didChange = true;
         true;
         true;
         true;
         true;
         §§push(type == "hair" || type == "accd");
         if(!(type == "hair" || type == "accd"))
         {
            false;
            false;
            §§pop();
            false;
            false;
            true;
            true;
            §§push(type == "acca");
         }
         if(§§pop())
         {
            false;
            false;
            false;
            false;
            ob.worker.playAnimation("react2");
            true;
            true;
            true;
            true;
            true;
            true;
            ob.workerReverse.playAnimation("react2_mirror");
         }
         else
         {
            true;
            true;
            ob.worker.playAnimation("react1");
            ob.workerReverse.playAnimation("react1_mirror");
         }
         try
         {
            if(ob["thumb_" + type] != null)
            {
               ob["thumb_" + type].parent.removeChild(ob["thumb_" + type]);
               false;
               false;
               false;
               false;
               false;
               false;
               ob["thumb_" + type] = null;
            }
            ob["thumb_" + type] = ob.generateClothingThumb(tag);
            true;
            true;
            ob.clip.clothes[type + "_panel"].addChild(ob["thumb_" + type]);
            true;
            true;
         }
         catch(err:Error)
         {
            class_5.error("Error regenerating thumb: " + err.message);
         }
         if(type == "hair")
         {
            false;
            false;
            ob.clip.menu.hair_panel.amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
         }
         false;
         false;
         §§push(ob.workerData.shirt != "shirt_00_male" && ob.workerData.shirt != "shirt_00_female" && ob.workerData.pants != "pants_01_male" && ob.workerData.pants != "pants_01_female");
         if(ob.workerData.shirt != "shirt_00_male" && ob.workerData.shirt != "shirt_00_female" && ob.workerData.pants != "pants_01_male" && ob.workerData.pants != "pants_01_female")
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(ob.workerData.jacket != "");
         }
         if(§§pop() && ob.workerData.shoes != "shoes1")
         {
            true;
            true;
            ob.gameObj.challengeManager.recordTagged("changeclothes");
            false;
            false;
         }
         ob.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickBack(param1:Event) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         false;
         false;
         true;
         true;
         _loc2_.gameObj.var_10.api.method_32("SlotSelect");
         _loc2_.gameObj.var_10.api.method_33("CharacterEditor");
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickContinue(param1:Event) : void
      {
         false;
         true;
         var _loc3_:String = null;
         var _loc2_:CharacterEditorScreen = this;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(_loc2_.endaction == "none")
         {
            false;
            false;
            true;
            true;
            _loc3_ = String(_loc2_.clip.menu.custom_input.input_txt.text);
            false;
            false;
            false;
            false;
            false;
            false;
            if(_loc3_ == "" || _loc3_ == " " || _loc3_ == "  ")
            {
               _loc2_.clip.menu.custom_input.noname.gotoAndPlay(2);
               _loc2_.clip.menu.custom_input.input_txt.setFocus();
               false;
               false;
            }
            else
            {
               _loc2_.endaction = "continue";
               _loc2_.gameObj.userData.createNewSlot(_loc2_.params.selectedSlot,_loc3_,"custom");
               _loc2_.clip.mouseEnabled = false;
               _loc2_.clip.mouseChildren = false;
               _loc2_.clip.fader.gotoAndPlay("quickfadeout");
            }
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc2_:String = null;
         var _loc1_:CharacterEditorScreen = this;
         false;
         false;
         _loc1_.clip.stats.bonus.facebook_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickBonusFacebook);
         _loc1_.clip.stats.bonus.twitter_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickBonusTwitter);
         true;
         true;
         if(_loc1_.photoBitmap != null)
         {
            _loc1_.photoBitmap.bitmapData.dispose();
            try
            {
               _loc1_.clip.poloroid.holder.removeChild(_loc1_.photoBitmap);
               false;
               false;
            }
            catch(err:Error)
            {
            }
            _loc1_.photoBitmap = null;
         }
         if(_loc1_.backdropBitmap != null)
         {
            _loc1_.backdropBitmap.bitmapData.dispose();
            try
            {
               _loc1_.clip.bgholder.removeChild(_loc1_.backdropBitmap);
            }
            catch(err:Error)
            {
            }
            _loc1_.backdropBitmap = null;
         }
         if(_loc1_.mirrorBitmap != null)
         {
            true;
            true;
            _loc1_.mirrorBitmap.bitmapData.dispose();
            true;
            true;
            try
            {
               _loc1_.clip.mirrorbgholder.removeChild(_loc1_.mirrorBitmap);
            }
            catch(err:Error)
            {
            }
         }
         if(!_loc1_.firsttime)
         {
            true;
            true;
            _loc2_ = String(_loc1_.clip.changeNameMC.input_txt.text);
            true;
            true;
            if(_loc2_ != "" && _loc2_ != " " && _loc2_ != "  " && _loc2_ != "   ")
            {
               false;
               false;
               false;
               false;
               _loc1_.gameObj.userData.myName = _loc2_;
               false;
               false;
               if(!_loc1_.didChange)
               {
                  true;
                  true;
                  _loc1_.gameObj.userData.saveCharacterData();
               }
            }
         }
         true;
         true;
         if(_loc1_.didChange)
         {
            _loc1_.gameObj.var_10.api.method_120("workerChange");
            true;
            true;
            if(!_loc1_.firsttime)
            {
               _loc1_.gameObj.userData.saveCharacterData();
               true;
               true;
            }
         }
         if(_loc1_.thumb_shirt)
         {
            _loc1_.thumb_shirt.parent.removeChild(_loc1_.thumb_shirt);
            _loc1_.thumb_shirt = null;
         }
         if(_loc1_.thumb_jacket)
         {
            true;
            true;
            _loc1_.thumb_jacket.parent.removeChild(_loc1_.thumb_jacket);
            _loc1_.thumb_jacket = null;
         }
         if(_loc1_.thumb_pants)
         {
            _loc1_.thumb_pants.parent.removeChild(_loc1_.thumb_pants);
            _loc1_.thumb_pants = null;
         }
         if(_loc1_.thumb_hair)
         {
            false;
            false;
            _loc1_.thumb_hair.parent.removeChild(_loc1_.thumb_hair);
            _loc1_.thumb_hair = null;
            true;
            true;
         }
         if(_loc1_.thumb_shoes)
         {
            _loc1_.thumb_shoes.parent.removeChild(_loc1_.thumb_shoes);
            _loc1_.thumb_shoes = null;
         }
         if(_loc1_.thumb_acca)
         {
            _loc1_.thumb_acca.parent.removeChild(_loc1_.thumb_acca);
            _loc1_.thumb_acca = null;
         }
         if(_loc1_.thumb_accb)
         {
            _loc1_.thumb_accb.parent.removeChild(_loc1_.thumb_accb);
            _loc1_.thumb_accb = null;
         }
         if(_loc1_.thumb_accc)
         {
            false;
            false;
            _loc1_.thumb_accc.parent.removeChild(_loc1_.thumb_accc);
            true;
            true;
            _loc1_.thumb_accc = null;
         }
         if(_loc1_.thumb_accd)
         {
            _loc1_.thumb_accd.parent.removeChild(_loc1_.thumb_accd);
            _loc1_.thumb_accd = null;
         }
         _loc1_.container.removeEventListener("clickBack",_loc1_.clickBack);
         _loc1_.container.removeEventListener("clickContinue",_loc1_.clickContinue);
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.setupInterface(false);
         _loc1_.worker.destroy();
         _loc1_.worker = null;
         _loc1_.workerReverse.destroy();
         _loc1_.workerReverse = null;
         false;
         false;
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function clickBonusFacebook(param1:Event) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         if(_loc3_.didClickFacebook == false)
         {
            _loc2_.gameObj.var_10.api.method_28("http://www.facebook.com/pages/Flipline-Studios/121045844606187","BonusTipsFacebook","BonusLinks");
            _loc3_.didClickFacebook = true;
            false;
            false;
            _loc3_.totalTips += 5000;
            _loc3_.saveData();
            _loc2_.clip.stats.tipstotal_txt.text = _loc3_.getTipsTotal(true,true);
            true;
            true;
            _loc2_.clip.stats.bonus.facebook_btn.visible = false;
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         }
      }
      
      public function clickBonusTwitter(param1:Event) : void
      {
         false;
         true;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         if(_loc3_.didClickTwitter == false)
         {
            _loc2_.gameObj.var_10.api.method_28("http://www.twitter.com/FliplineStudios","BonusTipsTwitter","BonusLinks");
            _loc3_.didClickTwitter = true;
            false;
            false;
            _loc3_.totalTips += 5000;
            _loc3_.saveData();
            false;
            false;
            _loc2_.clip.stats.tipstotal_txt.text = _loc3_.getTipsTotal(true,true);
            _loc2_.clip.stats.bonus.twitter_btn.visible = false;
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         }
      }
      
      public function setupStats() : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc1_:CharacterEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         _loc1_.clip.stats.xpbar.bar.mask = _loc1_.clip.stats.xpbar.masker;
         false;
         false;
         _loc1_.clip.stats.xpbar.bar.x = _loc2_.getCurrentPointPercentage() * 384;
         if(_loc1_.clip.stats.xpbar.bar.x == 384)
         {
            _loc1_.clip.stats.xpbar.bar.x = 408;
         }
         var _loc4_:Number;
         var _loc5_:Number = ((_loc4_ = _loc2_.getDay()) - 1) % 7;
         true;
         true;
         _loc3_ = 0;
         while(_loc3_ <= 6)
         {
            _loc10_ = _loc1_.clip.stats["day" + _loc3_];
            if(_loc3_ == 6)
            {
               _loc10_.gotoAndStop(2);
               _loc10_.payday.visible = true;
            }
            else
            {
               _loc10_.payday.visible = false;
            }
            if(_loc3_ < _loc5_)
            {
               _loc10_.circle.visible = false;
               true;
               true;
               _loc10_.day.visible = false;
               _loc10_.calx.visible = true;
            }
            else
            {
               true;
               true;
               true;
               true;
               if(_loc3_ == _loc5_)
               {
                  _loc10_.circle.visible = true;
                  false;
                  false;
                  _loc10_.day.visible = true;
                  _loc10_.payday.visible = false;
                  _loc10_.calx.visible = false;
                  _loc10_.day.day_txt.text = String(_loc4_);
               }
               else if(_loc3_ > _loc5_)
               {
                  _loc10_.circle.visible = false;
                  _loc10_.day.visible = false;
                  _loc10_.calx.visible = false;
               }
            }
            _loc3_++;
         }
         var _loc6_:Number = _loc2_.getTipsToday();
         false;
         false;
         var _loc7_:Number = _loc2_.getTodayTotalScore();
         _loc1_.clip.stats.tipstoday_txt.text = _loc2_.getTipsToday(true);
         _loc1_.clip.stats.tipstotal_txt.text = _loc2_.getTipsTotal(true,true);
         false;
         false;
         _loc1_.clip.stats.pointstoday_txt.text = class_8.method_31(_loc2_.getTodayTotalScore());
         _loc1_.clip.stats.pointstotal_txt.text = class_8.method_31(_loc2_.getTotalPoints(true));
         _loc1_.clip.stats.rank_txt.text = _loc2_.getRank();
         _loc1_.clip.stats.rank_title.text = _loc2_.getRankTitle();
         true;
         true;
         if(_loc6_ == 0)
         {
            _loc1_.clip.stats.tipstoday_txt.text = "--";
            false;
            false;
         }
         if(_loc7_ == 0)
         {
            _loc1_.clip.stats.pointstoday_txt.text = "--";
         }
         var _loc8_:Number;
         if((_loc8_ = _loc2_.getPointsUntilNextRank(true)) < 0)
         {
            false;
            false;
            _loc8_ = 0;
         }
         _loc1_.clip.stats.morepoints_txt.htmlText = "<b>" + class_8.method_31(_loc8_) + " more points to Rank " + (_loc2_.getRank() + 1) + "</b>";
         _loc1_.clip.stats.wage_txt.text = _loc2_.getWeeklyWage(true);
         _loc1_.clip.stats.payday_txt.text = _loc2_.getPaydayMessage();
         var _loc9_:Boolean = true;
         if(_loc1_.inMenu)
         {
            _loc9_ = false;
         }
         true;
         true;
         if(class_3.method_2())
         {
            _loc9_ = false;
            true;
            true;
         }
         false;
         false;
         if(_loc9_)
         {
            if(_loc2_.didClickFacebook)
            {
               false;
               false;
               _loc1_.clip.stats.bonus.facebook_btn.visible = false;
            }
            true;
            true;
            if(_loc2_.didClickTwitter)
            {
               _loc1_.clip.stats.bonus.twitter_btn.visible = false;
            }
            if(_loc2_.didClickFacebook && _loc2_.didClickTwitter)
            {
               _loc1_.clip.stats.bonus.visible = false;
            }
            else
            {
               _loc1_.clip.stats.bonus.visible = true;
            }
         }
         else
         {
            _loc1_.clip.stats.bonus.visible = false;
         }
         _loc1_.clip.stats.bonus.facebook_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickBonusFacebook);
         _loc1_.clip.stats.bonus.twitter_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickBonusTwitter);
      }
      
      public function generateClothingThumb(param1:String) : MovieClip
      {
         var sku:String;
         var screen:CharacterEditorScreen;
         var data:ClothingData;
         var item:ClothingItem;
         var skinTrans:ColorTransform;
         var maxHeight:Number;
         var bounds:Rectangle;
         var ratio:Number;
         var torsoPart:MovieClip;
         var bicepPart1:MovieClip;
         var bicepPart2:MovieClip;
         var forearmPart1:MovieClip;
         var forearmPart2:MovieClip;
         var neckPartShirt:MovieClip;
         var pantsPart:MovieClip;
         var frontPart:MovieClip;
         var backPart:MovieClip;
         var accneckPart:MovieClip;
         var armPart:MovieClip;
         var headPart:MovieClip;
         var backhairPart:MovieClip;
         var headaccPart:MovieClip;
         var shoePart:MovieClip;
         var model:MovieClip = null;
         var maxWidth:Number = NaN;
         true;
         true;
         maxHeight = NaN;
         false;
         false;
         bounds = null;
         true;
         true;
         ratio = NaN;
         torsoPart = null;
         bicepPart1 = null;
         false;
         false;
         bicepPart2 = null;
         forearmPart1 = null;
         forearmPart2 = null;
         neckPartShirt = null;
         true;
         true;
         pantsPart = null;
         frontPart = null;
         true;
         true;
         backPart = null;
         true;
         true;
         accneckPart = null;
         true;
         true;
         armPart = null;
         true;
         true;
         headPart = null;
         true;
         true;
         true;
         true;
         backhairPart = null;
         false;
         false;
         true;
         true;
         headaccPart = null;
         shoePart = null;
         false;
         false;
         sku = param1;
         screen = this;
         true;
         true;
         false;
         false;
         false;
         false;
         data = screen.gameObj.var_20;
         false;
         false;
         item = screen.gameObj.var_20.getItemFromSKU(sku);
         skinTrans = screen.createColorTransform(screen.mannequinColor);
         if(item == null)
         {
            false;
            false;
            model = new clothesthumb_none();
            false;
            false;
         }
         else
         {
            true;
            true;
            §§push(item.type == ClothingItem.TYPE_SHIRT);
            if(!(item.type == ClothingItem.TYPE_SHIRT))
            {
               false;
               false;
               §§pop();
               false;
               false;
               §§push(item.type == ClothingItem.TYPE_JACKET);
            }
            if(§§pop())
            {
               model = new worker_mannequin_torso();
               false;
               false;
               false;
               false;
               false;
               false;
               if(item.gender == WorkerData.GENDER_FEMALE)
               {
                  false;
                  false;
                  model.body.male_skin.visible = false;
                  model.body.female_skin.visible = true;
               }
               else
               {
                  model.body.male_skin.visible = true;
                  false;
                  false;
                  true;
                  true;
                  model.body.female_skin.visible = false;
               }
               true;
               true;
               torsoPart = class_9.method_26("worker_" + item.tag + "_body",false,false);
               torsoPart.gotoAndStop(1);
               model.body.addChild(torsoPart);
               true;
               true;
               true;
               true;
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BICEP))
               {
                  true;
                  true;
                  bicepPart1 = class_9.method_26("worker_" + item.tag + "_upperarm",false,false);
                  bicepPart1.gotoAndStop(1);
                  model.front_bicep.addChild(bicepPart1);
                  true;
                  true;
                  true;
                  true;
                  bicepPart2 = class_9.method_26("worker_" + item.tag + "_upperarm",false,false);
                  bicepPart2.gotoAndStop(1);
                  model.back_bicep.addChild(bicepPart2);
               }
               true;
               true;
               true;
               true;
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_FOREARM))
               {
                  true;
                  true;
                  forearmPart1 = class_9.method_26("worker_" + item.tag + "_forearm",false,false);
                  false;
                  false;
                  forearmPart1.gotoAndStop(1);
                  true;
                  true;
                  model.front_forearm.addChild(forearmPart1);
                  forearmPart2 = class_9.method_26("worker_" + item.tag + "_forearm",false,false);
                  false;
                  false;
                  forearmPart2.gotoAndStop(1);
                  model.back_forearm.addChild(forearmPart2);
               }
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
               {
                  true;
                  true;
                  neckPartShirt = class_9.method_26("worker_" + item.tag + "_neck",false,false);
                  false;
                  false;
                  neckPartShirt.gotoAndStop(1);
                  model.neck.addChild(neckPartShirt);
               }
               model.body.male_skin.transform.colorTransform = skinTrans;
               model.body.female_skin.transform.colorTransform = skinTrans;
               model.neck.skin.transform.colorTransform = skinTrans;
               model.front_forearm.skin.transform.colorTransform = skinTrans;
               false;
               false;
               model.front_bicep.skin.transform.colorTransform = skinTrans;
               model.back_forearm.skin.transform.colorTransform = skinTrans;
               model.back_bicep.skin.transform.colorTransform = skinTrans;
            }
            else
            {
               false;
               false;
               if(item.type == ClothingItem.TYPE_PANTS || item.type == ClothingItem.TYPE_ACC_BELT)
               {
                  model = new worker_mannequin_pants();
                  if(item.gender == WorkerData.GENDER_FEMALE)
                  {
                     model.body.male_skin.visible = false;
                     model.body.female_skin.visible = true;
                  }
                  else
                  {
                     model.body.male_skin.visible = true;
                     false;
                     false;
                     model.body.female_skin.visible = false;
                  }
                  true;
                  true;
                  pantsPart = class_9.method_26("worker_" + item.tag);
                  pantsPart.gotoAndStop(1);
                  model.body.addChild(pantsPart);
                  model.body.male_skin.transform.colorTransform = skinTrans;
                  model.body.female_skin.transform.colorTransform = skinTrans;
               }
               else
               {
                  true;
                  true;
                  if(item.type == ClothingItem.TYPE_ACC_BODY)
                  {
                     false;
                     false;
                     model = new worker_mannequin_torso();
                     true;
                     true;
                     if(screen.gameObj.workerData.gender == WorkerData.GENDER_FEMALE)
                     {
                        true;
                        true;
                        model.body.male_skin.visible = false;
                        model.body.female_skin.visible = true;
                     }
                     else
                     {
                        false;
                        false;
                        model.body.male_skin.visible = true;
                        model.body.female_skin.visible = false;
                        false;
                        false;
                     }
                     true;
                     true;
                     false;
                     false;
                     if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_FRONTBODY))
                     {
                        true;
                        true;
                        frontPart = class_9.method_26("worker_" + item.tag + "_front",false,false);
                        frontPart.gotoAndStop(1);
                        false;
                        false;
                        model.body.addChild(frontPart);
                        true;
                        true;
                     }
                     if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BACKBODY))
                     {
                        false;
                        false;
                        backPart = class_9.method_26("worker_" + item.tag + "_back",false,false);
                        backPart.gotoAndStop(1);
                        false;
                        false;
                        model.back_acca.addChild(backPart);
                     }
                     if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
                     {
                        true;
                        true;
                        true;
                        true;
                        accneckPart = class_9.method_26("worker_" + item.tag + "_neck",false,false);
                        false;
                        false;
                        accneckPart.gotoAndStop(1);
                        model.neck.addChild(accneckPart);
                     }
                     model.body.male_skin.transform.colorTransform = skinTrans;
                     model.body.female_skin.transform.colorTransform = skinTrans;
                     model.neck.skin.transform.colorTransform = skinTrans;
                     true;
                     true;
                     model.front_forearm.skin.transform.colorTransform = skinTrans;
                     model.front_bicep.skin.transform.colorTransform = skinTrans;
                     false;
                     false;
                     model.back_forearm.skin.transform.colorTransform = skinTrans;
                     true;
                     true;
                     model.back_bicep.skin.transform.colorTransform = skinTrans;
                  }
                  else
                  {
                     true;
                     true;
                     true;
                     true;
                     if(item.type == ClothingItem.TYPE_ACC_ARMS)
                     {
                        false;
                        false;
                        model = new worker_mannequin_forearm();
                        true;
                        true;
                        armPart = class_9.method_26("worker_" + item.tag,false,false);
                        armPart.gotoAndStop(1);
                        model.front_forearm.addChild(armPart);
                        model.front_forearm.skin.transform.colorTransform = skinTrans;
                        model.front_hand.skin.transform.colorTransform = skinTrans;
                     }
                     else if(item.type == ClothingItem.TYPE_HAIR)
                     {
                        model = new worker_mannequin_head();
                        false;
                        false;
                        headPart = class_9.method_26("worker_" + item.tag,false,false);
                        headPart.gotoAndStop(1);
                        model.head.inside.addChild(headPart);
                        if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BACK_HAIR))
                        {
                           false;
                           false;
                           true;
                           true;
                           backhairPart = class_9.method_26("worker_" + item.tag + "_back",false,false);
                           backhairPart.gotoAndStop(1);
                           model.back_hair.addChild(backhairPart);
                           try
                           {
                              backhairPart.hair.transform.colorTransform = screen.createColorTransform(screen.workerData.hairColor);
                           }
                           catch(err:Error)
                           {
                           }
                        }
                        else
                        {
                           false;
                           false;
                           model.removeChild(model.back_hair);
                        }
                        model.head.inside.skin.transform.colorTransform = skinTrans;
                        try
                        {
                           false;
                           false;
                           headPart.hair.transform.colorTransform = screen.createColorTransform(screen.workerData.hairColor);
                        }
                        catch(err:Error)
                        {
                           false;
                           false;
                           class_5.method_25("Error coloring hair.");
                        }
                     }
                     else
                     {
                        false;
                        false;
                        true;
                        true;
                        if(item.type == ClothingItem.TYPE_ACC_FACE)
                        {
                           false;
                           false;
                           true;
                           true;
                           model = new worker_mannequin_head();
                           headaccPart = class_9.method_26("worker_" + item.tag,false,false);
                           headaccPart.gotoAndStop(1);
                           model.head.inside.addChild(headaccPart);
                           model.head.inside.skin.transform.colorTransform = skinTrans;
                           model.removeChild(model.back_hair);
                        }
                        else
                        {
                           true;
                           true;
                           if(item.type == ClothingItem.TYPE_SHOES)
                           {
                              false;
                              false;
                              model = new worker_mannequin_foot();
                              false;
                              false;
                              shoePart = class_9.method_26("worker_" + item.tag,false,false);
                              shoePart.gotoAndStop(1);
                              model.front_foot.addChild(shoePart);
                              model.front_foot.skin.gotoAndStop(1);
                           }
                        }
                     }
                  }
               }
            }
            true;
            true;
            maxWidth = 64;
            false;
            false;
            maxHeight = 64;
            false;
            false;
            bounds = model.getBounds(screen.gameObj);
            false;
            false;
            false;
            false;
            if(bounds.width > bounds.height)
            {
               ratio = bounds.height / bounds.width;
               false;
               false;
               model.width = maxWidth;
               model.height = maxWidth * ratio;
            }
            else
            {
               false;
               false;
               ratio = bounds.width / bounds.height;
               true;
               true;
               model.height = maxHeight;
               model.width = maxHeight * ratio;
            }
            bounds = model.getBounds(screen.gameObj);
            false;
            false;
            if(bounds.y + bounds.height > maxHeight / 2)
            {
               false;
               false;
               model.y = maxHeight / 2 - (bounds.y + bounds.height);
            }
            else
            {
               true;
               true;
               if(bounds.y < 0 - maxHeight / 2)
               {
                  false;
                  false;
                  false;
                  false;
                  model.y = 0 - maxHeight / 2 - bounds.y;
               }
            }
            false;
            false;
            if(bounds.x + bounds.width > maxWidth / 2)
            {
               model.x = maxWidth / 2 - (bounds.x + bounds.width);
               false;
               false;
            }
            else
            {
               false;
               false;
               if(bounds.x < 0 - maxWidth / 2)
               {
                  model.x = 0 - maxWidth / 2 - bounds.x;
               }
            }
         }
         model.x += 39;
         model.y += 56;
         model.mouseEnabled = false;
         false;
         false;
         model.mouseChildren = false;
         return model;
      }
      
      private function createColorTransform(param1:Number) : ColorTransform
      {
         false;
         true;
         var _loc2_:ColorTransform = new ColorTransform();
         false;
         false;
         _loc2_.redMultiplier = ((param1 & 16711680) >>> 16) / 255;
         _loc2_.greenMultiplier = ((param1 & 65280) >>> 8) / 255;
         false;
         false;
         _loc2_.blueMultiplier = (param1 & 255) / 255;
         return _loc2_;
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc1_:CharacterEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new nowindowBackdropMC();
         var _loc6_:Number = 1;
         var _loc7_:Number = 1;
         false;
         false;
         if(!_loc1_.firsttime)
         {
            false;
            false;
            true;
            true;
            _loc6_ = _loc2_.lobbyWallpaper;
            false;
            false;
            false;
            false;
            _loc7_ = _loc2_.lobbyFlooring;
         }
         _loc4_ = 1;
         while(_loc4_ <= 10)
         {
            _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc6_);
            _loc4_++;
         }
         _loc4_ = 1;
         while(_loc4_ <= 7)
         {
            _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc7_);
            false;
            false;
            _loc4_++;
            true;
            true;
         }
         _loc5_.holder.trim.gotoAndStop(_loc6_);
         _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
         _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
         var _loc8_:BitmapData;
         (_loc8_ = new BitmapData(706,552,true,0)).draw(_loc5_,null,null,null,new Rectangle(0,0,706,552));
         _loc3_ = new Bitmap(_loc8_);
         _loc5_ = null;
         return _loc3_;
      }
      
      public function createBackdrop() : void
      {
         false;
         true;
         var _loc1_:CharacterEditorScreen = this;
         true;
         true;
         if(_loc1_.backdropBitmap != null)
         {
            true;
            true;
            _loc1_.backdropBitmap.bitmapData.dispose();
            try
            {
               _loc1_.clip.bgholder.removeChild(_loc1_.backdropBitmap);
            }
            catch(err:Error)
            {
            }
            _loc1_.backdropBitmap = null;
            true;
            true;
         }
         _loc1_.backdropBitmap = _loc1_.createLobbyBackdropBitmap();
         _loc1_.clip.bgholder.addChild(_loc1_.backdropBitmap);
         _loc1_.clip.bgholder.mask = _loc1_.clip.bgmask;
         true;
         true;
         _loc1_.backdropBitmap.x = -3;
         _loc1_.backdropBitmap.y = -20;
         var _loc2_:BitmapData = new BitmapData(100,270,false,4294967295);
         false;
         false;
         _loc2_.copyPixels(_loc1_.backdropBitmap.bitmapData,new Rectangle(33,80,100,270),new Point(0,0));
         _loc2_.colorTransform(_loc2_.rect,new ColorTransform(1,1,1,1,100,100,100,0));
         true;
         true;
         _loc1_.mirrorBitmap = new Bitmap(_loc2_);
         false;
         false;
         _loc1_.mirrorBitmap.smoothing = true;
         var _loc3_:Matrix = new Matrix();
         false;
         false;
         _loc3_.b = 0.25;
         _loc3_.ty = 25;
         _loc1_.mirrorBitmap.transform.matrix = _loc3_;
         true;
         true;
         _loc1_.clip.mirrorbgholder.addChild(_loc1_.mirrorBitmap);
      }
      
      public function clickTakePhoto(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         false;
         false;
         if(_loc2_.photoBitmap)
         {
            false;
            false;
            _loc2_.photoBitmap.bitmapData.dispose();
            false;
            false;
            _loc2_.photoBitmap.parent.removeChild(_loc2_.photoBitmap);
            _loc2_.photoBitmap = null;
         }
         var _loc3_:MovieClip = new MovieClip();
         var _loc4_:BitmapData = _loc2_.backdropBitmap.bitmapData;
         var _loc5_:Bitmap = new Bitmap(_loc4_);
         false;
         false;
         _loc3_.addChild(_loc5_);
         true;
         true;
         _loc5_.x = -300;
         var _loc6_:MovieClip;
         (_loc6_ = new MovieClip()).graphics.beginFill(0,0.25);
         _loc6_.graphics.drawCircle(0,0,55);
         _loc6_.graphics.endFill();
         _loc6_.scaleY = 0.55;
         true;
         true;
         _loc6_.x = 144;
         _loc6_.y = 328;
         _loc3_.addChild(_loc6_);
         var _loc7_:Worker = new Worker(_loc2_.gameObj,_loc3_,_loc2_.gameObj.workerData,80,60,0.9);
         var _loc8_:BitmapData;
         (_loc8_ = new BitmapData(315,370,false,4278190080)).draw(_loc3_,null,null,null,new Rectangle(0,0,315,370),true);
         _loc2_.photoBitmap = new Bitmap(_loc8_,"auto",true);
         _loc2_.clip.poloroid.holder.addChild(_loc2_.photoBitmap);
         false;
         false;
         _loc2_.photoBitmap.scaleX = 0.8;
         _loc2_.photoBitmap.scaleY = 0.8;
         _loc2_.photoBitmap.x = -14;
         false;
         false;
         _loc2_.photoBitmap.y = 0;
         _loc2_.clip.poloroid.visible = true;
         _loc2_.clip.poloroid.flasher.gotoAndPlay(2);
         true;
         true;
         _loc2_.clip.poloroid.fader.gotoAndPlay(2);
         _loc2_.gameObj.soundManager.playSound("takephoto.wav");
      }
      
      public function clickSavePhoto(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var screen:CharacterEditorScreen;
         var saveBMP:BitmapData;
         var logomc:MovieClip;
         var logobmp:BitmapData;
         var jpgEncoder:class_16;
         var byteArray:ByteArray;
         var fileReference:FileReference;
         true;
         true;
         jpgEncoder = null;
         true;
         true;
         byteArray = null;
         false;
         false;
         fileReference = null;
         e = param1;
         screen = this;
         saveBMP = screen.photoBitmap.bitmapData.clone();
         false;
         false;
         logomc = new poloroid_logo();
         logobmp = new BitmapData(saveBMP.width,saveBMP.height,true,0);
         logobmp.draw(logomc);
         saveBMP.copyPixels(logobmp,logobmp.rect,new Point(0,0),null,null,true);
         logobmp.dispose();
         logobmp = null;
         try
         {
            jpgEncoder = new class_16(90);
            true;
            true;
            false;
            false;
            byteArray = jpgEncoder.method_123(saveBMP);
            false;
            false;
            fileReference = new FileReference();
            true;
            true;
            true;
            true;
            fileReference.save(byteArray,screen.gameObj.userData.myName + ".jpg");
         }
         catch(err:Error)
         {
            class_5.error("Error saving photo: " + err.message);
         }
         screen.clip.poloroid.visible = false;
      }
      
      public function clickClosePhoto(param1:MouseEvent) : void
      {
         var _loc2_:CharacterEditorScreen = this;
         false;
         false;
         _loc2_.clip.poloroid.visible = false;
      }
   }
}
