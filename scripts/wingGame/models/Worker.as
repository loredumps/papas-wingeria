package wingGame.models
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import package_2.class_5;
   import package_2.class_9;
   import package_4.*;
   import wingGame.data.*;
   
   public class Worker
   {
       
      
      public var gameObj:class_4;
      
      public var workerData:WorkerData;
      
      public var holder:MovieClip;
      
      public var clip:MovieClip;
      
      public var x:Number;
      
      public var y:Number;
      
      public var scale:Number;
      
      public var flipped:Boolean = false;
      
      public var backwards:Boolean = false;
      
      public var skinToneTransform:ColorTransform = null;
      
      public var hairColorTransform:ColorTransform = null;
      
      public var blinkTimer:Number = 0;
      
      public var blinkTimerMax:Number = 100;
      
      public var eyesOffsetY:Number = -23;
      
      public var eyesOffsetX:Number = -18;
      
      public var mouthOffsetY:Number = -9;
      
      public var mouthOffsetX:Number = -26;
      
      public var beardBackwardsX:Number = -13;
      
      public var mouthClip:MovieClip;
      
      public var eyeLeftClip:MovieClip;
      
      public var eyeRightClip:MovieClip;
      
      public var hairClip:MovieClip = null;
      
      public var backHairClip:MovieClip = null;
      
      public var facialHairMouthClip:MovieClip = null;
      
      public var facialHairBaseClip:MovieClip = null;
      
      public var faceAccClip:MovieClip = null;
      
      public var faceAccBackClip:MovieClip = null;
      
      public var lastEyeFrame:Number = 0;
      
      public var lastMouthFrame:Number = 0;
      
      public var lastFrontShoeFrame:Number = 1;
      
      public var lastBackShoeFrame:Number = 1;
      
      public var lastFrontHandFrame:Number = 1;
      
      public var lastBackHandFrame:Number = 1;
      
      public function Worker(param1:class_4, param2:MovieClip, param3:WorkerData, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Boolean = false)
      {
         false;
         true;
         false;
         false;
         super();
         var _loc9_:Worker;
         (_loc9_ = this).gameObj = param1;
         _loc9_.holder = param2;
         _loc9_.workerData = param3;
         _loc9_.x = param4;
         _loc9_.y = param5;
         false;
         false;
         _loc9_.scale = param6;
         true;
         true;
         _loc9_.flipped = param8;
         _loc9_.backwards = param7;
         _loc9_.createModel();
      }
      
      public function playAnimation(param1:String) : void
      {
         false;
         true;
         var _loc2_:Worker = this;
         false;
         false;
         _loc2_.clip.gotoAndPlay(param1);
      }
      
      public function createModel() : void
      {
         var _loc1_:Worker = this;
         _loc1_.clip = new workerModel();
         if(_loc1_.workerData.gender == WorkerData.GENDER_MALE)
         {
            _loc1_.clip.body.male_skin.visible = true;
            true;
            true;
            _loc1_.clip.body.female_skin.visible = false;
         }
         else
         {
            _loc1_.clip.body.male_skin.visible = false;
            _loc1_.clip.body.female_skin.visible = true;
         }
         _loc1_.updateSkinTone();
         _loc1_.updateHairColor();
         _loc1_.updateFacialParts();
         _loc1_.redoClothing(ClothingItem.TYPE_SHIRT);
         _loc1_.redoClothing(ClothingItem.TYPE_HAIR);
         _loc1_.redoClothing(ClothingItem.TYPE_SHOES);
         true;
         true;
         if(_loc1_.backwards)
         {
            true;
            true;
            _loc1_.clip.body.male_skin.gotoAndStop(2);
            false;
            false;
            _loc1_.clip.body.female_skin.gotoAndStop(2);
            _loc1_.clip.neck.skin.gotoAndStop(2);
            false;
            false;
            _loc1_.clip.front_hand.skin.gotoAndStop(3);
            _loc1_.clip.back_hand.skin.gotoAndStop(4);
            _loc1_.clip.gotoAndPlay("turnaround");
            false;
            false;
         }
         else
         {
            _loc1_.clip.body.male_skin.gotoAndStop(1);
            _loc1_.clip.body.female_skin.gotoAndStop(1);
            _loc1_.clip.neck.skin.gotoAndStop(1);
            _loc1_.clip.front_hand.skin.gotoAndStop(1);
            _loc1_.clip.back_hand.skin.gotoAndStop(1);
            _loc1_.clip.gotoAndPlay("stand");
         }
         _loc1_.clip.x = _loc1_.x;
         false;
         false;
         _loc1_.clip.y = _loc1_.y;
         true;
         true;
         _loc1_.clip.scaleX = _loc1_.scale;
         _loc1_.clip.scaleY = _loc1_.scale;
         if(_loc1_.flipped)
         {
            _loc1_.clip.scaleX *= -1;
            true;
            true;
         }
         _loc1_.holder.addChild(_loc1_.clip);
         true;
         true;
         _loc1_.clip.eyeFrame = 0;
         _loc1_.clip.mouthFrame = 0;
         true;
         true;
         _loc1_.clip.frontShoeFrame = 1;
         _loc1_.clip.backShoeFrame = 1;
         _loc1_.clip.frontHandFrame = 1;
         _loc1_.clip.backHandFrame = 1;
         _loc1_.lastEyeFrame = 0;
         _loc1_.lastMouthFrame = 0;
         _loc1_.lastFrontShoeFrame = 1;
         false;
         false;
         _loc1_.lastBackShoeFrame = 1;
         _loc1_.lastFrontHandFrame = 1;
         _loc1_.lastBackHandFrame = 1;
         _loc1_.gameObj.var_10.api.addEventListener("workerChange",_loc1_.updateModelLook);
      }
      
      public function animateModel(param1:Event = null) : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc2_:Worker = this;
         if(_loc2_.clip.eyeFrame != _loc2_.lastEyeFrame)
         {
            _loc2_.lastEyeFrame = _loc2_.clip.eyeFrame;
            true;
            true;
            false;
            false;
            if(_loc2_.lastEyeFrame == 0)
            {
               false;
               false;
               _loc2_.eyeLeftClip.gotoAndStop(_loc2_.gameObj.workerData.eyeDefaultExpression);
               _loc2_.eyeRightClip.gotoAndStop(_loc2_.gameObj.workerData.eyeDefaultExpression);
            }
            else
            {
               _loc2_.eyeLeftClip.gotoAndStop(_loc2_.lastEyeFrame);
               _loc2_.eyeRightClip.gotoAndStop(_loc2_.lastEyeFrame);
            }
         }
         if(_loc2_.clip.mouthFrame != _loc2_.lastMouthFrame)
         {
            _loc2_.lastMouthFrame = _loc2_.clip.mouthFrame;
            false;
            false;
            true;
            true;
            false;
            false;
            if(_loc2_.lastMouthFrame == 0)
            {
               true;
               true;
               _loc2_.mouthClip.gotoAndStop(_loc2_.gameObj.workerData.mouthDefaultExpression);
            }
            else
            {
               _loc2_.mouthClip.gotoAndStop(_loc2_.lastMouthFrame);
            }
            true;
            true;
            if(_loc2_.facialHairMouthClip != null && !_loc2_.backwards)
            {
               false;
               false;
               if(_loc2_.lastMouthFrame == 0)
               {
                  _loc2_.facialHairMouthClip.gotoAndStop(_loc2_.workerData.mouthDefaultExpression);
               }
               else
               {
                  _loc2_.facialHairMouthClip.gotoAndStop(_loc2_.lastMouthFrame);
               }
            }
         }
         if(_loc2_.clip.frontHandFrame != _loc2_.lastFrontHandFrame)
         {
            _loc2_.lastFrontHandFrame = _loc2_.clip.frontHandFrame;
            _loc2_.clip.front_hand.gotoAndStop(_loc2_.lastFrontHandFrame);
            true;
            true;
            _loc2_.clip.front_hand.skin.gotoAndStop(_loc2_.lastFrontHandFrame);
         }
         if(_loc2_.clip.backHandFrame != _loc2_.lastBackHandFrame)
         {
            _loc2_.lastBackHandFrame = _loc2_.clip.backHandFrame;
            false;
            false;
            _loc2_.clip.back_hand.gotoAndStop(_loc2_.lastBackHandFrame);
            _loc2_.clip.back_hand.skin.gotoAndStop(_loc2_.lastBackHandFrame);
            false;
            false;
         }
         if(_loc2_.clip.frontShoeFrame != _loc2_.lastFrontShoeFrame && !_loc2_.backwards)
         {
            _loc2_.lastFrontShoeFrame = _loc2_.clip.frontShoeFrame;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.clip.front_foot.numChildren)
            {
               _loc2_.clip.front_foot.getChildAt(_loc3_).gotoAndStop(_loc2_.lastFrontShoeFrame);
               _loc3_++;
            }
         }
         if(_loc2_.clip.backShoeFrame != _loc2_.lastBackShoeFrame && !_loc2_.backwards)
         {
            _loc2_.lastBackShoeFrame = _loc2_.clip.backShoeFrame;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.clip.back_foot.numChildren)
            {
               _loc2_.clip.back_foot.getChildAt(_loc3_).gotoAndStop(_loc2_.lastBackShoeFrame);
               true;
               true;
               _loc3_++;
            }
         }
         if(_loc2_.lastEyeFrame == 0)
         {
            false;
            false;
            var _loc4_:*;
            var _loc5_:* = (_loc4_ = _loc2_).blinkTimer + 1;
            true;
            true;
            _loc4_.blinkTimer = _loc5_;
            false;
            false;
            true;
            true;
            if(_loc2_.blinkTimer == _loc2_.blinkTimerMax || _loc2_.blinkTimer == _loc2_.blinkTimerMax + 3)
            {
               true;
               true;
               _loc2_.eyeLeftClip.gotoAndStop(2);
               _loc2_.eyeRightClip.gotoAndStop(2);
               false;
               false;
            }
            else
            {
               true;
               true;
               true;
               true;
               false;
               false;
               if(_loc2_.blinkTimer == _loc2_.blinkTimerMax + 1 || _loc2_.blinkTimer == _loc2_.blinkTimerMax + 2)
               {
                  true;
                  true;
                  _loc2_.eyeLeftClip.gotoAndStop(3);
                  _loc2_.eyeRightClip.gotoAndStop(3);
               }
               else if(_loc2_.blinkTimer == _loc2_.blinkTimerMax + 4)
               {
                  _loc2_.eyeLeftClip.gotoAndStop(_loc2_.workerData.eyeDefaultExpression);
                  _loc2_.eyeRightClip.gotoAndStop(_loc2_.workerData.eyeDefaultExpression);
                  _loc2_.blinkTimer = 0;
               }
            }
         }
      }
      
      public function runOwnAnimations() : void
      {
         var _loc1_:Worker = this;
         true;
         true;
         if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            false;
            false;
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.animateModel);
         }
      }
      
      public function updateModelLook(param1:Event = null) : void
      {
         false;
         true;
         var _loc2_:Worker = this;
         if(_loc2_.workerData.gender == WorkerData.GENDER_MALE)
         {
            _loc2_.clip.body.male_skin.visible = true;
            _loc2_.clip.body.female_skin.visible = false;
         }
         else
         {
            _loc2_.clip.body.male_skin.visible = false;
            _loc2_.clip.body.female_skin.visible = true;
         }
         _loc2_.updateSkinTone();
         _loc2_.updateHairColor();
         _loc2_.updateFacialParts();
         _loc2_.redoClothing(ClothingItem.TYPE_SHIRT);
         _loc2_.redoClothing(ClothingItem.TYPE_HAIR);
         _loc2_.redoClothing(ClothingItem.TYPE_SHOES);
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:Worker = this;
         _loc1_.gameObj.var_10.api.removeEventListener("workerChange",_loc1_.updateModelLook);
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.animateModel);
         _loc1_.removeExistingHeadItems();
         _loc1_.removeExistingClothing(_loc1_.clip.front_foot);
         _loc1_.removeExistingClothing(_loc1_.clip.back_foot);
         _loc1_.removeExistingClothing(_loc1_.clip.body);
         _loc1_.removeExistingClothing(_loc1_.clip.front_bicep);
         _loc1_.removeExistingClothing(_loc1_.clip.front_forearm);
         _loc1_.removeExistingClothing(_loc1_.clip.back_bicep);
         _loc1_.removeExistingClothing(_loc1_.clip.back_forearm);
         _loc1_.removeExistingClothing(_loc1_.clip.neck);
         _loc1_.removeExistingClothing(_loc1_.clip.back_acca);
         true;
         true;
         _loc1_.removeExistingClothing(_loc1_.clip.front_acca);
         if(_loc1_.holder)
         {
            try
            {
               _loc1_.holder.removeChild(_loc1_.clip);
            }
            catch(err:Error)
            {
            }
            _loc1_.clip = null;
         }
      }
      
      public function updateSkinTone() : void
      {
         false;
         true;
         var _loc1_:Worker = this;
         _loc1_.skinToneTransform = _loc1_.createColorTransform(_loc1_.workerData.skinTone);
         _loc1_.clip.head.inside.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.neck.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.front_bicep.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.back_bicep.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.front_forearm.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.back_forearm.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.front_hand.skin.transform.colorTransform = _loc1_.skinToneTransform;
         true;
         true;
         _loc1_.clip.back_hand.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.body.male_skin.transform.colorTransform = _loc1_.skinToneTransform;
         true;
         true;
         _loc1_.clip.body.female_skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.redoClothing(ClothingItem.TYPE_HAIR);
      }
      
      public function updateHairColor() : void
      {
         var _loc1_:Worker = this;
         true;
         true;
         _loc1_.hairColorTransform = _loc1_.createColorTransform(_loc1_.workerData.hairColor);
         false;
         false;
         if(_loc1_.hairClip != null)
         {
            try
            {
               _loc1_.hairClip.hair.transform.colorTransform = _loc1_.hairColorTransform;
            }
            catch(err:Error)
            {
            }
         }
         if(_loc1_.backHairClip != null)
         {
            try
            {
               _loc1_.backHairClip.hair.transform.colorTransform = _loc1_.hairColorTransform;
            }
            catch(err:Error)
            {
            }
         }
         if(_loc1_.facialHairBaseClip != null)
         {
            try
            {
               _loc1_.facialHairBaseClip.transform.colorTransform = _loc1_.hairColorTransform;
               true;
               true;
            }
            catch(err:Error)
            {
            }
         }
         if(_loc1_.facialHairMouthClip != null)
         {
            true;
            true;
            try
            {
               _loc1_.facialHairMouthClip.transform.colorTransform = _loc1_.hairColorTransform;
               false;
               false;
            }
            catch(err:Error)
            {
            }
         }
         try
         {
            _loc1_.eyeLeftClip.hair.inside.transform.colorTransform = _loc1_.hairColorTransform;
            _loc1_.eyeRightClip.hair.inside.transform.colorTransform = _loc1_.hairColorTransform;
         }
         catch(err:Error)
         {
         }
      }
      
      public function updateFacialParts(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = true) : void
      {
         var _loc6_:Worker = this;
         var _loc7_:Number = WorkerData.skinToneOptions.indexOf(_loc6_.workerData.skinTone);
         var _loc8_:String = "light";
         var _loc9_:String = "light";
         false;
         false;
         false;
         false;
         true;
         true;
         if(_loc7_ == 3 || _loc7_ == 5 || _loc7_ == 6)
         {
            false;
            false;
            _loc8_ = "med";
            false;
            false;
         }
         else if(_loc7_ == 4)
         {
            _loc8_ = "dark";
            _loc9_ = "dark";
         }
         if(_loc6_.workerData.gender == WorkerData.GENDER_FEMALE)
         {
            _loc9_ = "female";
         }
         true;
         true;
         if(param1)
         {
            if(_loc6_.eyeLeftClip != null)
            {
               _loc6_.eyeLeftClip.parent.removeChild(_loc6_.eyeLeftClip);
               _loc6_.eyeLeftClip = null;
               true;
               true;
            }
            if(_loc6_.eyeRightClip != null)
            {
               _loc6_.eyeRightClip.parent.removeChild(_loc6_.eyeRightClip);
               true;
               true;
               _loc6_.eyeRightClip = null;
            }
            true;
            true;
            _loc6_.eyeLeftClip = class_9.method_26("worker_eyes_" + _loc8_ + "_L_" + _loc6_.workerData.eyeStyle);
            false;
            false;
            _loc6_.eyeRightClip = class_9.method_26("worker_eyes_" + _loc8_ + "_R_" + _loc6_.workerData.eyeStyle);
            _loc6_.eyeLeftClip.stop();
            false;
            false;
            _loc6_.eyeRightClip.stop();
            _loc6_.clip.head.inside.addChild(_loc6_.eyeLeftClip);
            false;
            false;
            _loc6_.clip.head.inside.addChild(_loc6_.eyeRightClip);
         }
         if(param2)
         {
            if(_loc6_.mouthClip != null)
            {
               _loc6_.mouthClip.parent.removeChild(_loc6_.mouthClip);
               _loc6_.mouthClip = null;
            }
            false;
            false;
            true;
            true;
            _loc6_.mouthClip = class_9.method_26("worker_mouth_" + _loc9_ + "_" + _loc6_.workerData.mouthStyle);
            _loc6_.mouthClip.stop();
            false;
            false;
            _loc6_.clip.head.inside.addChild(_loc6_.mouthClip);
         }
         _loc6_.updateFacialLayout();
      }
      
      public function updateFacialLayout() : void
      {
         false;
         true;
         var _loc1_:Worker = this;
         _loc1_.eyeLeftClip.x = _loc1_.eyesOffsetX - _loc1_.workerData.eyeSpacing;
         _loc1_.eyeLeftClip.y = _loc1_.eyesOffsetY + _loc1_.workerData.eyeHeight;
         _loc1_.eyeRightClip.x = _loc1_.eyesOffsetX + _loc1_.workerData.eyeSpacing;
         false;
         false;
         _loc1_.eyeRightClip.y = _loc1_.eyesOffsetY + _loc1_.workerData.eyeHeight;
         _loc1_.mouthClip.x = _loc1_.mouthOffsetX;
         _loc1_.mouthClip.y = _loc1_.mouthOffsetY + _loc1_.workerData.mouthHeight;
         _loc1_.clip.head.inside.y = _loc1_.workerData.headHeight;
         _loc1_.clip.head.inside.x = _loc1_.workerData.headForward;
         _loc1_.clip.head.inside.scaleX = _loc1_.workerData.headScale;
         true;
         true;
         _loc1_.clip.head.inside.scaleY = _loc1_.workerData.headScale;
         _loc1_.clip.back_hair.inside.y = _loc1_.workerData.headHeight;
         _loc1_.clip.back_hair.inside.x = _loc1_.workerData.headForward;
         _loc1_.clip.back_hair.inside.scaleX = _loc1_.workerData.headScale;
         _loc1_.clip.back_hair.inside.scaleY = _loc1_.workerData.headScale;
         _loc1_.clip.back_beard.inside.y = _loc1_.workerData.headHeight;
         _loc1_.clip.back_beard.inside.x = _loc1_.workerData.headForward;
         _loc1_.clip.back_beard.inside.scaleX = _loc1_.workerData.headScale;
         _loc1_.clip.back_beard.inside.scaleY = _loc1_.workerData.headScale;
         _loc1_.eyeLeftClip.gotoAndStop(_loc1_.workerData.eyeDefaultExpression);
         _loc1_.eyeRightClip.gotoAndStop(_loc1_.workerData.eyeDefaultExpression);
         _loc1_.mouthClip.gotoAndStop(_loc1_.workerData.mouthDefaultExpression);
         true;
         true;
         if(_loc1_.facialHairMouthClip != null)
         {
            false;
            false;
            if(!_loc1_.backwards)
            {
               true;
               true;
               _loc1_.facialHairMouthClip.gotoAndStop(_loc1_.workerData.mouthDefaultExpression);
            }
            else
            {
               _loc1_.facialHairMouthClip.gotoAndStop(23);
            }
            _loc1_.facialHairMouthClip.x = _loc1_.mouthOffsetX;
            true;
            true;
            _loc1_.facialHairMouthClip.y = _loc1_.mouthOffsetY + _loc1_.workerData.mouthHeight;
         }
         if(_loc1_.faceAccClip != null && _loc1_.gameObj.var_20.clothingHasOption(_loc1_.workerData.accd,ClothingItem.OPTIONS_TRACKEYES))
         {
            _loc1_.faceAccClip.y = _loc1_.workerData.eyeHeight;
            _loc1_.faceAccBackClip.y = _loc1_.workerData.eyeHeight;
         }
         if(_loc1_.backwards)
         {
            _loc1_.eyeLeftClip.visible = false;
            _loc1_.eyeRightClip.visible = false;
            _loc1_.mouthClip.visible = false;
            _loc1_.clip.head.inside.x = _loc1_.workerData.headForward * -1;
            _loc1_.clip.back_hair.inside.x = _loc1_.workerData.headForward * -1;
            _loc1_.clip.back_beard.inside.x = _loc1_.workerData.headForward * -1;
         }
      }
      
      private function createColorTransform(param1:Number) : ColorTransform
      {
         this;
         var _loc3_:ColorTransform = new ColorTransform();
         _loc3_.redMultiplier = ((param1 & 16711680) >>> 16) / 255;
         false;
         false;
         _loc3_.greenMultiplier = ((param1 & 65280) >>> 8) / 255;
         _loc3_.blueMultiplier = (param1 & 255) / 255;
         return _loc3_;
      }
      
      public function redoClothing(param1:String) : void
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc2_:Worker = this;
         var _loc3_:ClothingData = _loc2_.gameObj.var_20;
         false;
         false;
         false;
         false;
         if(param1 == ClothingItem.TYPE_FACIALHAIR || param1 == ClothingItem.TYPE_HAIR || param1 == ClothingItem.TYPE_ACC_FACE)
         {
            _loc2_.removeExistingHeadItems();
            if(_loc2_.workerData.facialhair != "")
            {
               if(_loc3_.clothingHasOption(_loc2_.workerData.facialhair,ClothingItem.OPTIONS_HAS_BASE_FACIALHAIR))
               {
                  false;
                  false;
                  false;
                  false;
                  _loc2_.facialHairBaseClip = class_9.method_26("worker_" + _loc2_.workerData.facialhair + "_base",false,false);
                  _loc2_.clip.head.inside.addChild(_loc2_.facialHairBaseClip);
                  if(_loc2_.backwards)
                  {
                     _loc2_.facialHairBaseClip.gotoAndStop(2);
                  }
                  else
                  {
                     _loc2_.facialHairBaseClip.gotoAndStop(1);
                  }
               }
            }
            _loc2_.updateFacialParts();
            if(_loc2_.workerData.facialhair != "")
            {
               if(_loc3_.clothingHasOption(_loc2_.workerData.facialhair,ClothingItem.OPTIONS_HAS_MOUTH_FACIALHAIR))
               {
                  true;
                  true;
                  _loc2_.facialHairMouthClip = class_9.method_26("worker_" + _loc2_.workerData.facialhair + "_mouth",false,false);
                  false;
                  false;
                  if(_loc2_.backwards)
                  {
                     _loc2_.facialHairMouthClip.gotoAndStop(23);
                     false;
                     false;
                     _loc2_.clip.back_beard.inside.addChild(_loc2_.facialHairMouthClip);
                     false;
                     false;
                  }
                  else
                  {
                     _loc2_.facialHairMouthClip.gotoAndStop(_loc2_.workerData.mouthDefaultExpression);
                     false;
                     false;
                     _loc2_.clip.head.inside.addChild(_loc2_.facialHairMouthClip);
                  }
                  _loc2_.facialHairMouthClip.x = _loc2_.mouthOffsetX;
                  _loc2_.facialHairMouthClip.y = _loc2_.mouthOffsetY + _loc2_.workerData.mouthHeight;
               }
            }
            true;
            true;
            if(_loc2_.workerData.accd != "")
            {
               _loc2_.faceAccClip = class_9.method_26("worker_" + _loc2_.workerData.accd,false,false);
               _loc2_.clip.head.inside.addChild(_loc2_.faceAccClip);
               true;
               true;
               _loc2_.faceAccBackClip = class_9.method_26("worker_" + _loc2_.workerData.accd + "_back",false,false);
               _loc2_.clip.head.inside.addChildAt(_loc2_.faceAccBackClip,0);
               if(_loc2_.backwards)
               {
                  _loc2_.faceAccClip.gotoAndStop(2);
                  _loc2_.faceAccBackClip.gotoAndStop(2);
                  true;
                  true;
               }
               else
               {
                  _loc2_.faceAccClip.gotoAndStop(1);
                  _loc2_.faceAccBackClip.gotoAndStop(1);
               }
               false;
               false;
               if(_loc3_.clothingHasOption(_loc2_.workerData.accd,ClothingItem.OPTIONS_TRACKEYES))
               {
                  _loc2_.faceAccClip.y = _loc2_.workerData.eyeHeight;
                  _loc2_.faceAccBackClip.y = _loc2_.workerData.eyeHeight;
               }
            }
            if(_loc2_.workerData.hair != "")
            {
               _loc2_.hairClip = class_9.method_26("worker_" + _loc2_.workerData.hair,false,false);
               _loc2_.clip.head.inside.addChild(_loc2_.hairClip);
               true;
               true;
               if(_loc2_.backwards)
               {
                  _loc2_.hairClip.gotoAndStop(2);
               }
               else
               {
                  _loc2_.hairClip.gotoAndStop(1);
               }
               if(_loc3_.clothingHasOption(_loc2_.workerData.hair,ClothingItem.OPTIONS_HAS_BACK_HAIR))
               {
                  true;
                  true;
                  true;
                  true;
                  _loc2_.backHairClip = class_9.method_26("worker_" + _loc2_.workerData.hair + "_back",false,false);
                  _loc2_.clip.back_hair.inside.addChild(_loc2_.backHairClip);
                  true;
                  true;
                  if(_loc2_.backwards)
                  {
                     _loc2_.backHairClip.gotoAndStop(2);
                  }
                  else
                  {
                     _loc2_.backHairClip.gotoAndStop(1);
                  }
               }
            }
            _loc2_.updateHairColor();
         }
         else if(param1 == ClothingItem.TYPE_SHOES)
         {
            true;
            true;
            _loc2_.removeExistingClothing(_loc2_.clip.front_foot);
            _loc2_.removeExistingClothing(_loc2_.clip.back_foot);
            if(_loc2_.workerData.shoes != "")
            {
               true;
               true;
               true;
               true;
               false;
               false;
               _loc4_ = 1;
               true;
               true;
               if(_loc2_.backwards)
               {
                  _loc4_ = 4;
                  false;
                  false;
               }
               _loc2_.addClothing(_loc2_.clip.front_foot,_loc2_.workerData.shoes,_loc4_);
               _loc2_.addClothing(_loc2_.clip.back_foot,_loc2_.workerData.shoes,_loc4_);
               false;
               false;
               _loc2_.clip.front_foot.skin.visible = false;
               _loc2_.clip.back_foot.skin.visible = false;
               true;
               true;
            }
         }
         else
         {
            _loc2_.removeExistingClothing(_loc2_.clip.body);
            _loc2_.removeExistingClothing(_loc2_.clip.front_bicep);
            _loc2_.removeExistingClothing(_loc2_.clip.front_forearm);
            false;
            false;
            _loc2_.removeExistingClothing(_loc2_.clip.back_bicep);
            _loc2_.removeExistingClothing(_loc2_.clip.back_forearm);
            _loc2_.removeExistingClothing(_loc2_.clip.neck);
            _loc2_.removeExistingClothing(_loc2_.clip.back_acca);
            _loc2_.removeExistingClothing(_loc2_.clip.front_acca);
            false;
            false;
            if(_loc2_.workerData.acca != "")
            {
               if(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_BACKBODY))
               {
                  false;
                  false;
                  §§push(_loc2_.backwards);
                  if(_loc2_.backwards)
                  {
                     false;
                     false;
                     §§pop();
                     §§push(!_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_ACCSTAYSBACK));
                  }
                  if(§§pop())
                  {
                     _loc2_.addClothing(_loc2_.clip.front_acca,_loc2_.workerData.acca + "_back");
                  }
                  else
                  {
                     _loc2_.addClothing(_loc2_.clip.back_acca,_loc2_.workerData.acca + "_back");
                  }
               }
            }
            if(!_loc3_.clothingExists(_loc2_.workerData.pants))
            {
               false;
               false;
               if(_loc2_.workerData.gender == WorkerData.GENDER_FEMALE)
               {
                  _loc2_.workerData.pants = "pants_01_female";
                  true;
                  true;
               }
               else
               {
                  _loc2_.workerData.pants = "pants_01_male";
               }
            }
            true;
            true;
            true;
            true;
            true;
            true;
            if(_loc2_.workerData.pants != "")
            {
               _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.pants);
            }
            if(_loc2_.workerData.accb != "")
            {
               _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.accb);
            }
            if(_loc2_.workerData.acca != "")
            {
               if(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_NECK) && _loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_BEHINDCOLLAR))
               {
                  _loc2_.addClothing(_loc2_.clip.neck,_loc2_.workerData.acca + "_neck");
               }
            }
            if(!_loc3_.clothingExists(_loc2_.workerData.shirt))
            {
               false;
               false;
               if(_loc2_.workerData.gender == WorkerData.GENDER_FEMALE)
               {
                  false;
                  false;
                  _loc2_.workerData.shirt = "shirt_00_female";
                  false;
                  false;
               }
               else
               {
                  _loc2_.workerData.shirt = "shirt_00_male";
               }
            }
            false;
            false;
            if(_loc2_.workerData.shirt != "")
            {
               _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.shirt + "_body");
               true;
               true;
               if(_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HAS_NECK) && !_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HIDE_SHIRTNECK) && !_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HIDE_SHIRTNECK))
               {
                  _loc2_.addClothing(_loc2_.clip.neck,_loc2_.workerData.shirt + "_neck");
                  true;
                  true;
               }
               true;
               true;
               true;
               true;
               if(_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HAS_BICEP) && !_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HIDE_SHIRTBICEP) && !_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HIDE_SHIRTBICEP))
               {
                  _loc2_.addClothing(_loc2_.clip.front_bicep,_loc2_.workerData.shirt + "_upperarm");
                  _loc2_.addClothing(_loc2_.clip.back_bicep,_loc2_.workerData.shirt + "_upperarm");
               }
               if(_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HAS_FOREARM) && !_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HIDE_SHIRTFOREARM) && !_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HIDE_SHIRTFOREARM))
               {
                  _loc2_.addClothing(_loc2_.clip.front_forearm,_loc2_.workerData.shirt + "_forearm");
                  _loc2_.addClothing(_loc2_.clip.back_forearm,_loc2_.workerData.shirt + "_forearm");
               }
            }
            false;
            false;
            if(_loc2_.workerData.accc != "")
            {
               false;
               false;
               _loc2_.addClothing(_loc2_.clip.front_forearm,_loc2_.workerData.accc);
               false;
               false;
               if(!_loc3_.clothingHasOption(_loc2_.workerData.accc,ClothingItem.OPTIONS_ONLYONEARM))
               {
                  false;
                  false;
                  _loc2_.addClothing(_loc2_.clip.back_forearm,_loc2_.workerData.accc);
               }
            }
            true;
            true;
            if(_loc2_.workerData.jacket != "")
            {
               _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.jacket + "_body");
               true;
               true;
               false;
               false;
               §§push(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HAS_NECK));
               if(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HAS_NECK))
               {
                  true;
                  true;
                  §§pop();
                  §§push(!_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HIDE_JACKETNECK));
               }
               if(§§pop())
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  §§push(!_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HIDE_JACKETNECK));
               }
               if(§§pop())
               {
                  _loc2_.addClothing(_loc2_.clip.neck,_loc2_.workerData.jacket + "_neck");
                  false;
                  false;
               }
               if(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HAS_BICEP))
               {
                  _loc2_.addClothing(_loc2_.clip.front_bicep,_loc2_.workerData.jacket + "_upperarm");
                  _loc2_.addClothing(_loc2_.clip.back_bicep,_loc2_.workerData.jacket + "_upperarm");
                  true;
                  true;
               }
               true;
               true;
               if(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HAS_FOREARM))
               {
                  true;
                  true;
                  _loc2_.addClothing(_loc2_.clip.front_forearm,_loc2_.workerData.jacket + "_forearm");
                  _loc2_.addClothing(_loc2_.clip.back_forearm,_loc2_.workerData.jacket + "_forearm");
                  true;
                  true;
               }
            }
            if(_loc2_.workerData.acca != "")
            {
               if(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_FRONTBODY))
               {
                  _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.acca + "_front");
               }
               §§push(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_NECK));
               if(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_NECK))
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  §§push(!_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_BEHINDCOLLAR));
               }
               if(§§pop())
               {
                  _loc2_.addClothing(_loc2_.clip.neck,_loc2_.workerData.acca + "_neck");
               }
            }
         }
      }
      
      public function removeExistingHeadItems() : void
      {
         var _loc1_:Worker = this;
         if(_loc1_.hairClip != null)
         {
            _loc1_.clip.head.inside.removeChild(_loc1_.hairClip);
            true;
            true;
            _loc1_.hairClip = null;
         }
         if(_loc1_.facialHairBaseClip != null)
         {
            _loc1_.clip.head.inside.removeChild(_loc1_.facialHairBaseClip);
            _loc1_.facialHairBaseClip = null;
         }
         if(_loc1_.facialHairMouthClip != null)
         {
            _loc1_.facialHairMouthClip.parent.removeChild(_loc1_.facialHairMouthClip);
            true;
            true;
            _loc1_.facialHairMouthClip = null;
         }
         if(_loc1_.faceAccClip != null)
         {
            _loc1_.clip.head.inside.removeChild(_loc1_.faceAccClip);
            false;
            false;
            _loc1_.faceAccClip = null;
         }
         if(_loc1_.faceAccBackClip != null)
         {
            _loc1_.clip.head.inside.removeChild(_loc1_.faceAccBackClip);
            _loc1_.faceAccBackClip = null;
         }
         if(_loc1_.backHairClip != null)
         {
            true;
            true;
            _loc1_.clip.back_hair.inside.removeChild(_loc1_.backHairClip);
            _loc1_.backHairClip = null;
         }
      }
      
      public function removeExistingClothing(param1:MovieClip) : void
      {
         false;
         true;
         this;
         var _loc3_:int = param1.numChildren - 1;
         while(_loc3_ >= 0)
         {
            if(param1.getChildAt(_loc3_).name.indexOf("skin") == -1)
            {
               param1.removeChildAt(_loc3_);
            }
            true;
            true;
            _loc3_--;
            false;
            false;
         }
      }
      
      public function addClothing(param1:MovieClip, param2:String, param3:Number = -1) : void
      {
         var whichClip:MovieClip;
         var tag:String;
         var forceFrame:Number;
         var ob:Worker;
         var part:MovieClip = null;
         true;
         true;
         whichClip = param1;
         true;
         true;
         tag = param2;
         false;
         false;
         true;
         true;
         forceFrame = param3;
         false;
         false;
         true;
         true;
         ob = this;
         tag = "worker_" + tag;
         try
         {
            part = class_9.method_26(tag,false,false);
            true;
            true;
            if(forceFrame > -1)
            {
               false;
               false;
               part.gotoAndStop(forceFrame);
            }
            else if(ob.backwards)
            {
               false;
               false;
               part.gotoAndStop(2);
               false;
               false;
            }
            else
            {
               true;
               true;
               part.gotoAndStop(1);
               false;
               false;
            }
            whichClip.addChild(part);
         }
         catch(err:Error)
         {
            false;
            false;
            class_5.error("Error adding clothing " + tag + " to " + whichClip + ": Error: " + err.message);
         }
      }
   }
}
