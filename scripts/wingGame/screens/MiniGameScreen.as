package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getDefinitionByName;
   import package_2.*;
   import package_4.class_4;
   import wingGame.data.*;
   
   public class MiniGameScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var miniGame:MiniGame;
      
      public var forceGame:String = "";
      
      public var whichGame:String = "none";
      
      public var possibleGames:Array;
      
      public var wonPrizeSKU:String = null;
      
      public var wonPrizeAmount:Number = 0;
      
      public var wonPrizeIsClothing:Boolean = false;
      
      public var wonPrizeClothingMode:String = "";
      
      public var clickedPlay:Boolean = false;
      
      public var didPlayApplause:Boolean = false;
      
      public var minigameMusic:SoundChannel;
      
      public var minigameFiller:SoundChannel;
      
      public var musicVolume:Number = 0;
      
      public var musicVolumeSpeed:Number = 0.05;
      
      public var shouldPlayMusic:Boolean = false;
      
      public var mannequinColor:uint = 14540253;
      
      public function MiniGameScreen(param1:class_4, param2:String = "")
      {
         this.possibleGames = [MiniGame.TYPE_CRAVINGS,MiniGame.TYPE_PACHINKO,MiniGame.TYPE_BURGERZILLA,MiniGame.TYPE_HOTSHOT,MiniGame.TYPE_PUTT,MiniGame.TYPE_HALLWAY,MiniGame.TYPE_BLAST];
         super();
         var _loc3_:MiniGameScreen = this;
         false;
         false;
         _loc3_.gameObj = param1;
         _loc3_.forceGame = param2;
         _loc3_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:MiniGameScreen = this;
         _loc1_.clip = new miniGameScreenMC();
         _loc1_.clip.x = 320;
         _loc1_.clip.y = 240;
         _loc1_.gameObj.var_34.addChild(_loc1_.clip);
         if(_loc1_.forceGame != "")
         {
            _loc1_.whichGame = _loc1_.forceGame;
         }
         else
         {
            false;
            false;
            _loc2_ = _loc1_.gameObj.userData.getDay() % 7;
            _loc1_.whichGame = _loc1_.possibleGames[_loc2_];
            true;
            true;
         }
         _loc1_.clip.logo.gotoAndStop(_loc1_.whichGame);
         _loc1_.clip.hud.count.tickets_txt.text = String(_loc1_.gameObj.userData.getTicketsTotal());
         true;
         true;
         _loc1_.clip.skip_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSkip);
         true;
         true;
         _loc1_.clip.play_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPlay);
         _loc1_.clip.hud.gotoAndPlay(2);
         false;
         false;
         _loc1_.clip.hud.title_txt.visible = false;
         _loc1_.clip.hud.stars.visible = false;
         _loc1_.clip.gotoAndPlay("intro");
         _loc1_.clip.foodini.gotoAndPlay("intro");
         false;
         false;
         if(_loc1_.gameObj.userData.getTicketsTotal() <= 0)
         {
            _loc1_.clip.logo.gotoAndStop("notickets");
            false;
            false;
            _loc1_.clip.gotoAndPlay("notickets");
            _loc1_.clip.foodini.gotoAndPlay("lose");
            _loc1_.clip.play_btn.visible = false;
         }
         false;
         false;
         _loc1_.gameObj.soundManager.switchMusic("none");
         _loc1_.gameObj.soundManager.playSound("minigame_theme");
         _loc1_.minigameMusic = _loc1_.gameObj.soundManager.playSound("minigame_music",true,0);
         _loc1_.minigameFiller = _loc1_.gameObj.soundManager.playSound("minigame_fill",true);
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         if(_loc1_.gameObj.userData.hasTrainedMinigame == false)
         {
            _loc1_.clip.trainingclip.visible = true;
            _loc1_.gameObj.userData.hasTrainedMinigame = true;
         }
         else
         {
            _loc1_.clip.trainingclip.visible = false;
         }
      }
      
      public function clickPlay(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:MiniGameScreen = this;
         if(_loc2_.clip.currentLabel == "waiting")
         {
            true;
            true;
            _loc2_.clickedPlay = true;
            true;
            true;
            _loc2_.clip.gotoAndPlay("hidetitle");
            false;
            false;
            _loc2_.clip.trainingclip.visible = false;
         }
      }
      
      public function clickSkip(param1:MouseEvent) : void
      {
         var _loc2_:MiniGameScreen = this;
         false;
         false;
         if(_loc2_.clip.currentLabel == "waiting")
         {
            false;
            false;
            _loc2_.clickedPlay = false;
            _loc2_.clip.gotoAndPlay("hidetitle");
            _loc2_.clip.trainingclip.visible = false;
         }
      }
      
      public function startMiniGame() : void
      {
         false;
         true;
         var _loc1_:MiniGameScreen = this;
         _loc1_.wonPrizeSKU = null;
         _loc1_.wonPrizeAmount = 0;
         _loc1_.gameObj.userData.useTicket(1);
         _loc1_.clip.hud.count.tickets_txt.text = String(_loc1_.gameObj.userData.getTicketsTotal());
         var _loc2_:Number = _loc1_.possibleGames.indexOf(_loc1_.whichGame);
         _loc1_.gameObj.userData.recordMinigamePlayed(_loc2_);
         false;
         false;
         if(_loc1_.whichGame == MiniGame.TYPE_PACHINKO)
         {
            _loc1_.miniGame = new MiniGamePachinko(_loc1_,_loc1_.clip.holder);
         }
         else if(_loc1_.whichGame == MiniGame.TYPE_HALLWAY)
         {
            _loc1_.miniGame = new MiniGameHallway(_loc1_,_loc1_.clip.holder);
         }
         else
         {
            true;
            true;
            if(_loc1_.whichGame == MiniGame.TYPE_CRAVINGS)
            {
               _loc1_.miniGame = new MiniGameCravings(_loc1_,_loc1_.clip.holder);
            }
            else if(_loc1_.whichGame == MiniGame.TYPE_BURGERZILLA)
            {
               _loc1_.miniGame = new MiniGameBurgerzilla(_loc1_,_loc1_.clip.holder);
               true;
               true;
            }
            else
            {
               true;
               true;
               if(_loc1_.whichGame == MiniGame.TYPE_HOTSHOT)
               {
                  _loc1_.miniGame = new MiniGameHotshot(_loc1_,_loc1_.clip.holder);
               }
               else if(_loc1_.whichGame == MiniGame.TYPE_PUTT)
               {
                  _loc1_.miniGame = new MiniGamePutt(_loc1_,_loc1_.clip.holder);
                  false;
                  false;
               }
               else if(_loc1_.whichGame == MiniGame.TYPE_BLAST)
               {
                  _loc1_.miniGame = new MiniGameBlast(_loc1_,_loc1_.clip.holder);
               }
               else
               {
                  _loc1_.miniGame = new MiniGamePachinko(_loc1_,_loc1_.clip.holder);
               }
            }
         }
         _loc1_.shouldPlayMusic = true;
      }
      
      public function removeMiniGame() : void
      {
         false;
         true;
         var _loc1_:MiniGameScreen = this;
         false;
         false;
         if(_loc1_.miniGame != null)
         {
            false;
            false;
            _loc1_.miniGame.destroy();
            _loc1_.miniGame = null;
            false;
            false;
         }
         _loc1_.clip.hud.title_txt.visible = false;
         _loc1_.clip.hud.stars.visible = false;
      }
      
      public function createFurniThumbnail(param1:FurniData) : MovieClip
      {
         false;
         true;
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
         true;
         true;
         false;
         false;
         if(param1.type == FurniData.TYPE_FLOORING)
         {
            false;
            false;
            _loc6_ = Number(String(param1.tag).split("floor")[1]);
            _loc3_ = new MovieClip();
            (_loc7_ = new flooring_chunk()).gotoAndStop(_loc6_);
            (_loc8_ = new flooring_chunk()).gotoAndStop(_loc6_);
            _loc8_.x = _loc7_.width;
            false;
            false;
            _loc3_.addChild(_loc7_);
            _loc3_.addChild(_loc8_);
            _loc3_.scaleX = 0.3;
            _loc3_.scaleY = 0.3;
         }
         else if(param1.type == FurniData.TYPE_WALLPAPER)
         {
            _loc9_ = Number(String(param1.tag).split("wall")[1]);
            _loc3_ = new MovieClip();
            (_loc10_ = new wallpaper_holder()).gotoAndStop(_loc9_);
            (_loc11_ = new wallpaper_holder()).gotoAndStop(_loc9_);
            _loc11_.x = _loc10_.width;
            _loc3_.addChild(_loc10_);
            _loc3_.addChild(_loc11_);
            false;
            false;
            _loc3_.scaleX = 0.28;
            true;
            true;
            _loc3_.scaleY = 0.28;
         }
         else
         {
            _loc14_ = (_loc13_ = new (_loc12_ = getDefinitionByName(param1.tag) as Class)()).height / _loc13_.width;
            true;
            true;
            _loc15_ = _loc13_.width / _loc13_.height;
            if(_loc13_.height > 70 || _loc13_.width > 73)
            {
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
            _loc17_ = (70 - _loc13_.height) / 2;
            false;
            false;
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
      
      private function createColorTransform(param1:Number) : ColorTransform
      {
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.redMultiplier = ((param1 & 16711680) >>> 16) / 255;
         false;
         false;
         _loc2_.greenMultiplier = ((param1 & 65280) >>> 8) / 255;
         false;
         false;
         _loc2_.blueMultiplier = (param1 & 255) / 255;
         return _loc2_;
      }
      
      public function createClothingThumbnail(param1:ClothingItem) : MovieClip
      {
         var item:ClothingItem;
         var screen:MiniGameScreen;
         var data:ClothingData;
         var model:MovieClip;
         var sku:String;
         var skinTrans:ColorTransform;
         var maxWidth:Number;
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
         false;
         true;
         model = null;
         maxWidth = NaN;
         maxHeight = NaN;
         true;
         true;
         bounds = null;
         ratio = NaN;
         torsoPart = null;
         false;
         false;
         bicepPart1 = null;
         bicepPart2 = null;
         forearmPart1 = null;
         false;
         false;
         forearmPart2 = null;
         false;
         false;
         neckPartShirt = null;
         false;
         false;
         true;
         true;
         true;
         true;
         pantsPart = null;
         frontPart = null;
         true;
         true;
         backPart = null;
         accneckPart = null;
         false;
         false;
         armPart = null;
         true;
         true;
         headPart = null;
         true;
         true;
         backhairPart = null;
         false;
         false;
         headaccPart = null;
         false;
         false;
         shoePart = null;
         item = param1;
         true;
         true;
         screen = this;
         false;
         false;
         data = screen.gameObj.var_20;
         sku = item.tag;
         false;
         false;
         skinTrans = screen.createColorTransform(screen.mannequinColor);
         false;
         false;
         if(item == null)
         {
            false;
            false;
            model = new clothesthumb_none();
         }
         else
         {
            false;
            false;
            false;
            false;
            false;
            false;
            if(item.type == ClothingItem.TYPE_SHIRT || item.type == ClothingItem.TYPE_JACKET)
            {
               model = new worker_mannequin_torso();
               true;
               true;
               if(item.gender == WorkerData.GENDER_FEMALE)
               {
                  model.body.male_skin.visible = false;
                  model.body.female_skin.visible = true;
               }
               else
               {
                  model.body.male_skin.visible = true;
                  model.body.female_skin.visible = false;
                  false;
                  false;
               }
               true;
               true;
               torsoPart = class_9.method_26("worker_" + item.tag + "_body",false,false);
               torsoPart.gotoAndStop(1);
               false;
               false;
               true;
               true;
               model.body.addChild(torsoPart);
               true;
               true;
               true;
               true;
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BICEP))
               {
                  bicepPart1 = class_9.method_26("worker_" + item.tag + "_upperarm",false,false);
                  false;
                  false;
                  bicepPart1.gotoAndStop(1);
                  true;
                  true;
                  model.front_bicep.addChild(bicepPart1);
                  false;
                  false;
                  bicepPart2 = class_9.method_26("worker_" + item.tag + "_upperarm",false,false);
                  bicepPart2.gotoAndStop(1);
                  true;
                  true;
                  model.back_bicep.addChild(bicepPart2);
               }
               true;
               true;
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_FOREARM))
               {
                  true;
                  true;
                  forearmPart1 = class_9.method_26("worker_" + item.tag + "_forearm",false,false);
                  forearmPart1.gotoAndStop(1);
                  model.front_forearm.addChild(forearmPart1);
                  forearmPart2 = class_9.method_26("worker_" + item.tag + "_forearm",false,false);
                  forearmPart2.gotoAndStop(1);
                  model.back_forearm.addChild(forearmPart2);
               }
               false;
               false;
               false;
               false;
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
               {
                  neckPartShirt = class_9.method_26("worker_" + item.tag + "_neck",false,false);
                  neckPartShirt.gotoAndStop(1);
                  model.neck.addChild(neckPartShirt);
               }
               model.body.male_skin.transform.colorTransform = skinTrans;
               model.body.female_skin.transform.colorTransform = skinTrans;
               model.neck.skin.transform.colorTransform = skinTrans;
               false;
               false;
               model.front_forearm.skin.transform.colorTransform = skinTrans;
               false;
               false;
               model.front_bicep.skin.transform.colorTransform = skinTrans;
               true;
               true;
               model.back_forearm.skin.transform.colorTransform = skinTrans;
               model.back_bicep.skin.transform.colorTransform = skinTrans;
            }
            else
            {
               false;
               false;
               false;
               false;
               if(item.type == ClothingItem.TYPE_PANTS || item.type == ClothingItem.TYPE_ACC_BELT)
               {
                  false;
                  false;
                  model = new worker_mannequin_pants();
                  true;
                  true;
                  if(item.gender == WorkerData.GENDER_FEMALE)
                  {
                     model.body.male_skin.visible = false;
                     true;
                     true;
                     model.body.female_skin.visible = true;
                  }
                  else
                  {
                     true;
                     true;
                     model.body.male_skin.visible = true;
                     false;
                     false;
                     model.body.female_skin.visible = false;
                     true;
                     true;
                  }
                  pantsPart = class_9.method_26("worker_" + item.tag);
                  true;
                  true;
                  pantsPart.gotoAndStop(1);
                  model.body.addChild(pantsPart);
                  true;
                  true;
                  model.body.male_skin.transform.colorTransform = skinTrans;
                  model.body.female_skin.transform.colorTransform = skinTrans;
                  true;
                  true;
               }
               else if(item.type == ClothingItem.TYPE_ACC_BODY)
               {
                  false;
                  false;
                  model = new worker_mannequin_torso();
                  false;
                  false;
                  if(item.gender == WorkerData.GENDER_FEMALE)
                  {
                     true;
                     true;
                     model.body.male_skin.visible = false;
                     model.body.female_skin.visible = true;
                  }
                  else
                  {
                     true;
                     true;
                     model.body.male_skin.visible = true;
                     model.body.female_skin.visible = false;
                     false;
                     false;
                  }
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_FRONTBODY))
                  {
                     false;
                     false;
                     true;
                     true;
                     frontPart = class_9.method_26("worker_" + item.tag + "_front",false,false);
                     frontPart.gotoAndStop(1);
                     true;
                     true;
                     model.body.addChild(frontPart);
                  }
                  false;
                  false;
                  true;
                  true;
                  if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BACKBODY))
                  {
                     backPart = class_9.method_26("worker_" + item.tag + "_back",false,false);
                     backPart.gotoAndStop(1);
                     model.back_acca.addChild(backPart);
                  }
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
                  {
                     false;
                     false;
                     true;
                     true;
                     accneckPart = class_9.method_26("worker_" + item.tag + "_neck",false,false);
                     accneckPart.gotoAndStop(1);
                     false;
                     false;
                     model.neck.addChild(accneckPart);
                  }
                  true;
                  true;
                  model.body.male_skin.transform.colorTransform = skinTrans;
                  model.body.female_skin.transform.colorTransform = skinTrans;
                  model.neck.skin.transform.colorTransform = skinTrans;
                  model.front_forearm.skin.transform.colorTransform = skinTrans;
                  false;
                  false;
                  false;
                  false;
                  model.front_bicep.skin.transform.colorTransform = skinTrans;
                  model.back_forearm.skin.transform.colorTransform = skinTrans;
                  false;
                  false;
                  true;
                  true;
                  model.back_bicep.skin.transform.colorTransform = skinTrans;
                  false;
                  false;
               }
               else
               {
                  true;
                  true;
                  true;
                  true;
                  if(item.type == ClothingItem.TYPE_ACC_ARMS)
                  {
                     model = new worker_mannequin_forearm();
                     armPart = class_9.method_26("worker_" + item.tag,false,false);
                     armPart.gotoAndStop(1);
                     model.front_forearm.addChild(armPart);
                     model.front_forearm.skin.transform.colorTransform = skinTrans;
                     false;
                     false;
                     model.front_hand.skin.transform.colorTransform = skinTrans;
                  }
                  else if(item.type == ClothingItem.TYPE_HAIR)
                  {
                     true;
                     true;
                     model = new worker_mannequin_head();
                     headPart = class_9.method_26("worker_" + item.tag,false,false);
                     false;
                     false;
                     headPart.gotoAndStop(1);
                     model.head.inside.addChild(headPart);
                     if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BACK_HAIR))
                     {
                        false;
                        false;
                        backhairPart = class_9.method_26("worker_" + item.tag + "_back",false,false);
                        true;
                        true;
                        backhairPart.gotoAndStop(1);
                        model.back_hair.addChild(backhairPart);
                        try
                        {
                           backhairPart.hair.transform.colorTransform = screen.createColorTransform(screen.gameObj.workerData.hairColor);
                        }
                        catch(err:Error)
                        {
                        }
                     }
                     else
                     {
                        model.removeChild(model.back_hair);
                        true;
                        true;
                     }
                     model.head.inside.skin.transform.colorTransform = skinTrans;
                     try
                     {
                        headPart.hair.transform.colorTransform = screen.createColorTransform(screen.gameObj.workerData.hairColor);
                        false;
                        false;
                     }
                     catch(err:Error)
                     {
                        class_5.method_25("Error coloring hair.");
                     }
                  }
                  else
                  {
                     false;
                     false;
                     false;
                     false;
                     if(item.type == ClothingItem.TYPE_ACC_FACE)
                     {
                        false;
                        false;
                        model = new worker_mannequin_head();
                        false;
                        false;
                        headaccPart = class_9.method_26("worker_" + item.tag,false,false);
                        headaccPart.gotoAndStop(1);
                        model.head.inside.addChild(headaccPart);
                        true;
                        true;
                        model.head.inside.skin.transform.colorTransform = skinTrans;
                        false;
                        false;
                        model.removeChild(model.back_hair);
                     }
                     else if(item.type == ClothingItem.TYPE_SHOES)
                     {
                        model = new worker_mannequin_foot();
                        shoePart = class_9.method_26("worker_" + item.tag,false,false);
                        shoePart.gotoAndStop(1);
                        model.front_foot.addChild(shoePart);
                        false;
                        false;
                        true;
                        true;
                        model.front_foot.skin.gotoAndStop(1);
                     }
                  }
               }
            }
            false;
            false;
            maxWidth = 64;
            maxHeight = 64;
            true;
            true;
            true;
            true;
            bounds = model.getBounds(screen.gameObj);
            if(bounds.width > bounds.height)
            {
               true;
               true;
               false;
               false;
               ratio = bounds.height / bounds.width;
               model.width = maxWidth;
               model.height = maxWidth * ratio;
            }
            else
            {
               true;
               true;
               ratio = bounds.width / bounds.height;
               model.height = maxHeight;
               model.width = maxHeight * ratio;
            }
            bounds = model.getBounds(screen.gameObj);
            if(bounds.y + bounds.height > maxHeight / 2)
            {
               model.y = maxHeight / 2 - (bounds.y + bounds.height);
               false;
               false;
            }
            else if(bounds.y < 0 - maxHeight / 2)
            {
               model.y = 0 - maxHeight / 2 - bounds.y;
            }
            false;
            false;
            if(bounds.x + bounds.width > maxWidth / 2)
            {
               model.x = maxWidth / 2 - (bounds.x + bounds.width);
            }
            else if(bounds.x < 0 - maxWidth / 2)
            {
               model.x = 0 - maxWidth / 2 - bounds.x;
            }
         }
         model.x += 32;
         false;
         false;
         model.y += 32;
         model.mouseEnabled = false;
         false;
         false;
         true;
         true;
         model.mouseChildren = false;
         return model;
      }
      
      public function startShowingPrize() : void
      {
         var ob:MiniGameScreen;
         var user:UserData;
         var cents:Number;
         var textCents:String;
         var textDollars:String;
         var clothing:ClothingItem;
         var furniData:FurniData;
         var minigameIndex:Number = NaN;
         var useTips:Number = NaN;
         var dollars:Number = NaN;
         false;
         false;
         false;
         false;
         cents = NaN;
         true;
         true;
         false;
         false;
         textCents = null;
         false;
         false;
         textDollars = null;
         true;
         true;
         clothing = null;
         true;
         true;
         furniData = null;
         ob = this;
         false;
         false;
         true;
         true;
         true;
         true;
         user = ob.gameObj.userData;
         false;
         false;
         if(ob.wonPrizeSKU == "tips")
         {
            true;
            true;
            true;
            true;
            true;
            true;
            user.earnMinigameTips(ob.wonPrizeAmount);
         }
         else
         {
            true;
            true;
            if(ob.wonPrizeSKU == "tickets")
            {
               false;
               false;
               true;
               true;
               user.earnMinigameTickets(ob.wonPrizeAmount);
            }
            else
            {
               false;
               false;
               false;
               false;
               minigameIndex = ob.possibleGames.indexOf(ob.whichGame);
               false;
               false;
               false;
               false;
               if(!ob.wonPrizeIsClothing)
               {
                  false;
                  false;
                  true;
                  true;
                  user.earnMinigameFurniture(ob.wonPrizeSKU,minigameIndex);
               }
               else
               {
                  if(ob.wonPrizeClothingMode == "gender")
                  {
                     false;
                     false;
                     false;
                     false;
                     true;
                     true;
                     true;
                     true;
                     true;
                     true;
                     false;
                     false;
                     false;
                     false;
                     ob.wonPrizeSKU += "_" + ob.gameObj.workerData.gender;
                  }
                  else
                  {
                     true;
                     true;
                     false;
                     false;
                     if(ob.wonPrizeClothingMode == "hat")
                     {
                        false;
                        false;
                        false;
                        false;
                        if(user.whichCharacter == "marty")
                        {
                           true;
                           true;
                           true;
                           true;
                           false;
                           false;
                           ob.wonPrizeSKU += "_premale";
                        }
                        else
                        {
                           true;
                           true;
                           if(user.whichCharacter == "rita")
                           {
                              true;
                              true;
                              false;
                              false;
                              ob.wonPrizeSKU += "_prefemale";
                           }
                           else
                           {
                              ob.wonPrizeSKU += "_" + ob.gameObj.workerData.gender;
                           }
                        }
                     }
                  }
                  user.earnMinigameClothing(ob.wonPrizeSKU,minigameIndex);
               }
            }
         }
         false;
         false;
         if(ob.wonPrizeSKU == "tips")
         {
            false;
            false;
            ob.clip.prizepanel.furnipanel.visible = false;
            ob.clip.prizepanel.ticketpanel.visible = false;
            false;
            false;
            ob.clip.prizepanel.tipspanel.visible = true;
            false;
            false;
            useTips = ob.wonPrizeAmount;
            false;
            false;
            dollars = Math.floor(useTips / 100);
            cents = useTips - dollars * 100;
            true;
            true;
            textCents = String(cents);
            if(textCents.length < 2)
            {
               false;
               false;
               textCents = "0" + textCents;
               false;
               false;
            }
            false;
            false;
            textDollars = class_8.method_31(dollars);
            true;
            true;
            false;
            false;
            ob.clip.prizepanel.tipspanel.tips_txt.text = "$" + textDollars + "." + textCents;
         }
         else
         {
            true;
            true;
            if(ob.wonPrizeSKU == "tickets")
            {
               false;
               false;
               ob.clip.prizepanel.furnipanel.visible = false;
               false;
               false;
               ob.clip.prizepanel.ticketpanel.visible = true;
               ob.clip.prizepanel.tipspanel.visible = false;
               ob.clip.prizepanel.ticketpanel.tickets_txt.text = String(ob.wonPrizeAmount);
            }
            else if(ob.wonPrizeIsClothing)
            {
               ob.clip.prizepanel.furnipanel.visible = true;
               ob.clip.prizepanel.ticketpanel.visible = false;
               false;
               false;
               ob.clip.prizepanel.tipspanel.visible = false;
               clothing = ob.gameObj.var_20.getItemFromSKU(ob.wonPrizeSKU);
               ob.clip.prizepanel.furnipanel.title_txt.text = clothing.title;
               ob.clip.prizepanel.furnipanel.info_txt.text = clothing.description;
               if(clothing.type == ClothingItem.TYPE_SHIRT)
               {
                  ob.clip.prizepanel.furnipanel.effect_txt.text = "Shirt";
               }
               else
               {
                  true;
                  true;
                  if(clothing.type == ClothingItem.TYPE_JACKET)
                  {
                     ob.clip.prizepanel.furnipanel.effect_txt.text = "Jacket";
                  }
                  else
                  {
                     true;
                     true;
                     false;
                     false;
                     true;
                     true;
                     if(clothing.type == ClothingItem.TYPE_SHOES)
                     {
                        false;
                        false;
                        ob.clip.prizepanel.furnipanel.effect_txt.text = "Shoes";
                     }
                     else
                     {
                        true;
                        true;
                        if(clothing.type == ClothingItem.TYPE_PANTS)
                        {
                           false;
                           false;
                           false;
                           false;
                           ob.clip.prizepanel.furnipanel.effect_txt.text = "Pants";
                           false;
                           false;
                        }
                        else
                        {
                           true;
                           true;
                           if(clothing.type == ClothingItem.TYPE_HAIR)
                           {
                              false;
                              false;
                              ob.clip.prizepanel.furnipanel.effect_txt.text = "Hat";
                           }
                           else
                           {
                              true;
                              true;
                              if(clothing.type == ClothingItem.TYPE_ACC_ARMS)
                              {
                                 false;
                                 false;
                                 ob.clip.prizepanel.furnipanel.effect_txt.text = "Arm Accessory";
                              }
                              else
                              {
                                 true;
                                 true;
                                 if(clothing.type == ClothingItem.TYPE_ACC_BELT)
                                 {
                                    true;
                                    true;
                                    ob.clip.prizepanel.furnipanel.effect_txt.text = "Belt Accessory";
                                 }
                                 else
                                 {
                                    false;
                                    false;
                                    if(clothing.type == ClothingItem.TYPE_ACC_BODY)
                                    {
                                       ob.clip.prizepanel.furnipanel.effect_txt.text = "Accessory";
                                    }
                                    else if(clothing.type == ClothingItem.TYPE_ACC_FACE)
                                    {
                                       true;
                                       true;
                                       ob.clip.prizepanel.furnipanel.effect_txt.text = "Face Accessory";
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               ob.clip.prizepanel.furnipanel.own_txt.visible = false;
               ob.clip.prizepanel.furnipanel.own_label.visible = false;
               try
               {
                  if(ob.clip.prizepanel.furnipanel.thumb.numChildren > 0)
                  {
                     ob.clip.prizepanel.furnipanel.thumb.removeChildAt(0);
                  }
               }
               catch(err:Error)
               {
                  true;
                  true;
                  class_5.error("Error removing thumb.");
               }
               true;
               true;
               ob.clip.prizepanel.furnipanel.thumb.addChild(ob.createClothingThumbnail(clothing));
               false;
               false;
            }
            else
            {
               true;
               true;
               ob.clip.prizepanel.furnipanel.visible = true;
               false;
               false;
               ob.clip.prizepanel.ticketpanel.visible = false;
               ob.clip.prizepanel.tipspanel.visible = false;
               furniData = ob.gameObj.var_38.getFurniFromTag(ob.wonPrizeSKU);
               false;
               false;
               true;
               true;
               ob.clip.prizepanel.furnipanel.title_txt.text = furniData.title;
               false;
               false;
               ob.clip.prizepanel.furnipanel.info_txt.text = furniData.description;
               ob.clip.prizepanel.furnipanel.effect_txt.text = furniData.effect;
               ob.clip.prizepanel.furnipanel.own_txt.text = String(user.getFurniAmount(furniData.tag,true));
               false;
               false;
               ob.clip.prizepanel.furnipanel.own_txt.visible = true;
               ob.clip.prizepanel.furnipanel.own_label.visible = true;
               try
               {
                  if(ob.clip.prizepanel.furnipanel.thumb.numChildren > 0)
                  {
                     false;
                     false;
                     true;
                     true;
                     ob.clip.prizepanel.furnipanel.thumb.removeChildAt(0);
                  }
               }
               catch(err:Error)
               {
                  true;
                  true;
                  class_5.error("Error removing thumb.");
               }
               ob.clip.prizepanel.furnipanel.thumb.addChild(ob.createFurniThumbnail(furniData));
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:MiniGameScreen = this;
         true;
         true;
         if(_loc1_.miniGame)
         {
            _loc1_.miniGame.destroy();
            true;
            true;
            _loc1_.miniGame = null;
         }
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.clip.skip_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSkip);
         _loc1_.clip.play_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPlay);
         true;
         true;
         if(_loc1_.minigameMusic)
         {
            _loc1_.minigameMusic.stop();
            _loc1_.minigameMusic = null;
         }
         if(_loc1_.minigameFiller)
         {
            _loc1_.minigameFiller.stop();
            false;
            false;
            _loc1_.minigameFiller = null;
         }
         _loc1_.gameObj.var_34.removeChild(_loc1_.clip);
         true;
         true;
         _loc1_.clip = null;
      }
      
      public function updateScreen(param1:Event = null) : void
      {
         var _loc3_:SoundTransform = null;
         var _loc4_:SoundTransform = null;
         var _loc5_:SoundTransform = null;
         var _loc6_:SoundTransform = null;
         var _loc2_:MiniGameScreen = this;
         false;
         false;
         if(_loc2_.miniGame != null)
         {
            try
            {
               _loc2_.miniGame.updateScreen();
            }
            catch(err:Error)
            {
            }
         }
         true;
         true;
         if(_loc2_.shouldPlayMusic)
         {
            true;
            true;
            false;
            false;
            if(_loc2_.musicVolume < 1)
            {
               _loc2_.musicVolume += _loc2_.musicVolumeSpeed;
               _loc3_ = new SoundTransform(_loc2_.musicVolume);
               true;
               true;
               _loc2_.minigameMusic.soundTransform = _loc3_;
               _loc4_ = new SoundTransform(1 - _loc2_.musicVolume);
               _loc2_.minigameFiller.soundTransform = _loc4_;
            }
         }
         else
         {
            false;
            false;
            true;
            true;
            if(_loc2_.musicVolume > 0)
            {
               _loc2_.musicVolume -= _loc2_.musicVolumeSpeed;
               _loc5_ = new SoundTransform(_loc2_.musicVolume);
               _loc2_.minigameMusic.soundTransform = _loc5_;
               _loc6_ = new SoundTransform(1 - _loc2_.musicVolume);
               true;
               true;
               _loc2_.minigameFiller.soundTransform = _loc6_;
            }
         }
         true;
         true;
         §§push(_loc2_.clip.currentLabel == "waiting");
         if(_loc2_.clip.currentLabel == "waiting")
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(!_loc2_.didPlayApplause);
         }
         if(§§pop())
         {
            false;
            false;
            _loc2_.gameObj.soundManager.playSound("applause.wav");
            _loc2_.didPlayApplause = true;
         }
         if(_loc2_.clip.currentLabel == "decideplay")
         {
            if(_loc2_.clickedPlay)
            {
               _loc2_.clip.gotoAndPlay("showgame");
               _loc2_.startMiniGame();
            }
            else
            {
               _loc2_.clip.gotoAndPlay("fadeout");
               false;
               false;
            }
         }
         else if(_loc2_.clip.currentLabel == "decideprize")
         {
            true;
            true;
            _loc2_.removeMiniGame();
            true;
            true;
            _loc2_.clip.hud.count.tickets_txt.text = String(_loc2_.gameObj.userData.getTicketsTotal());
            if(_loc2_.wonPrizeSKU != null)
            {
               _loc2_.clip.gotoAndPlay("showprize");
               _loc2_.startShowingPrize();
            }
            else
            {
               false;
               false;
               true;
               true;
               true;
               true;
               if(_loc2_.gameObj.userData.getTicketsTotal() > 0)
               {
                  _loc2_.clip.gotoAndPlay("showtitle");
                  true;
                  true;
                  _loc2_.clip.foodini.gotoAndPlay("intro");
               }
               else
               {
                  _loc2_.clip.gotoAndPlay("fadeout");
               }
               false;
               false;
               _loc2_.gameObj.userData.saveData();
            }
         }
         else if(_loc2_.clip.currentLabel == "deciderepeat")
         {
            true;
            true;
            false;
            false;
            if(_loc2_.gameObj.userData.getTicketsTotal() > 0)
            {
               _loc2_.clip.gotoAndPlay("showtitle");
               _loc2_.clip.foodini.gotoAndPlay("intro");
            }
            else
            {
               _loc2_.clip.gotoAndPlay("fadeout");
            }
         }
         else if(_loc2_.clip.currentLabel == "end")
         {
            _loc2_.gameObj.method_67();
         }
      }
      
      public function setTitle(param1:String) : void
      {
         false;
         true;
         var _loc2_:MiniGameScreen = this;
         false;
         false;
         _loc2_.clip.hud.title_txt.visible = true;
         true;
         true;
         _loc2_.clip.hud.title_txt.text = param1;
      }
      
      public function setPrizesAlreadyWon(param1:Number, param2:Number) : void
      {
         var _loc3_:MiniGameScreen = this;
         _loc3_.clip.hud.stars.visible = true;
         var _loc4_:int = 0;
         while(_loc4_ < 14)
         {
            false;
            false;
            if(_loc4_ < param1)
            {
               _loc3_.clip.hud.stars["star" + _loc4_].gotoAndStop("earned");
            }
            else
            {
               _loc3_.clip.hud.stars["star" + _loc4_].gotoAndStop("unearned");
               true;
               true;
            }
            _loc4_++;
            true;
            true;
         }
      }
      
      public function finishMiniGame(param1:String = null, param2:Number = 1, param3:Boolean = false, param4:String = "") : void
      {
         false;
         true;
         var _loc5_:MiniGameScreen;
         (_loc5_ = this).wonPrizeSKU = param1;
         false;
         false;
         _loc5_.wonPrizeAmount = param2;
         _loc5_.wonPrizeIsClothing = param3;
         _loc5_.wonPrizeClothingMode = param4;
         false;
         false;
         _loc5_.gameObj.soundManager.playSound("applause.wav");
         _loc5_.clip.gotoAndPlay("finishgame");
         _loc5_.shouldPlayMusic = false;
      }
   }
}
