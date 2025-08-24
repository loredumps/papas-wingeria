package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   import package_2.class_5;
   import package_2.class_8;
   import package_2.class_9;
   import package_4.class_4;
   import wingGame.data.ClothingData;
   import wingGame.data.ClothingItem;
   import wingGame.data.FurniData;
   import wingGame.data.GameData;
   import wingGame.data.Upgrade;
   import wingGame.data.UserData;
   import wingGame.data.WorkerData;
   
   public class ShopScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var whichSet:Number = 1;
      
      public var panelsPerSet:Number = 6;
      
      public var workingArray:Array;
      
      public var shouldShowNext:Boolean = false;
      
      public var shouldShowPrev:Boolean = false;
      
      public var purchasedToday:Array;
      
      public var lastPurchaseTag:String = "none";
      
      public var mode:String = "upgrades";
      
      public var mannequinColor:uint = 14540253;
      
      public function ShopScreen(param1:class_4, param2:MovieClip, param3:Object = null)
      {
         false;
         true;
         false;
         false;
         this.workingArray = [];
         this.purchasedToday = [];
         super();
         var _loc4_:ShopScreen;
         (_loc4_ = this).gameObj = param1;
         true;
         true;
         _loc4_.container = param2;
         false;
         false;
         _loc4_.gameObj.var_10.api.method_27("ShopScreen","Screens");
         true;
         true;
         if(_loc4_.gameObj.userData.hasVisitedUpgradeShop == false)
         {
            false;
            false;
            _loc4_.gameObj.var_10.api.method_27("NoticedShop","Screens",true);
            _loc4_.gameObj.userData.hasVisitedUpgradeShop = true;
         }
         _loc4_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:ShopScreen = this;
         false;
         false;
         class_5.method_25("Setup Shop Screen!");
         true;
         true;
         _loc1_.clip = new shopScreenMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.clip.tips_txt.text = _loc1_.gameObj.userData.getTipsTotal(true);
         _loc1_.clip.next_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickNext);
         _loc1_.clip.prev_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPrevious);
         false;
         false;
         _loc1_.clip.upgrades_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.furniture_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.poster_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         false;
         false;
         _loc1_.clip.wallfloor_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.clothing_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         var _loc2_:int = 1;
         while(_loc2_ <= 6)
         {
            _loc1_.clip.panels["panel" + _loc2_].purchase_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPurchase);
            _loc1_.clip.panels["panel" + _loc2_].confirm.yes_btn.addEventListener(MouseEvent.CLICK,_loc1_.confirmPurchase);
            false;
            false;
            _loc1_.clip.panels["panel" + _loc2_].confirm.no_btn.addEventListener(MouseEvent.CLICK,_loc1_.cancelPurchase);
            true;
            true;
            _loc2_++;
         }
         _loc1_.clip.next_btn.visible = false;
         _loc1_.clip.prev_btn.visible = false;
         _loc1_.container.addEventListener("clickBackToGame",_loc1_.clickBackToGame);
         _loc1_.container.addEventListener("clickQuit",_loc1_.clickQuit);
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.gameObj.soundManager.switchMusic("other");
         false;
         false;
         _loc1_.selectMode("upgrades",true);
      }
      
      public function clickChangeMode(param1:MouseEvent) : void
      {
         var _loc2_:ShopScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:String = String(_loc3_[0]);
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(_loc2_.mode != _loc4_)
         {
            _loc2_.selectMode(_loc4_);
         }
      }
      
      public function selectMode(param1:String, param2:Boolean = false) : void
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc3_:ShopScreen = this;
         _loc3_.mode = param1;
         _loc3_.clip.tabbg.gotoAndStop(_loc3_.mode);
         _loc3_.workingArray = _loc3_.gameObj.var_38.getStoreTags(_loc3_.mode);
         _loc3_.purchasedToday = [];
         if(_loc3_.workingArray.length > 0)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.workingArray.length)
            {
               _loc3_.purchasedToday.push(0);
               _loc4_++;
               false;
               false;
            }
            false;
            false;
         }
         class_5.method_25("MODE: " + _loc3_.mode);
         false;
         false;
         class_5.method_25("Working Array: " + _loc3_.workingArray);
         _loc3_.whichSet = 1;
         false;
         false;
         if(!param2)
         {
            _loc3_.clip.panels.gotoAndPlay("nextset");
            _loc3_.clip.next_btn.visible = false;
            _loc3_.clip.prev_btn.visible = false;
         }
         else
         {
            _loc3_.populatePanels();
            _loc3_.clip.panels.gotoAndPlay(1);
            false;
            false;
            _loc3_.clip.next_btn.visible = false;
            _loc3_.clip.prev_btn.visible = false;
         }
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc2_:ShopScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         if(_loc2_.clip.panels.currentFrame == 6 || _loc2_.clip.panels.currentFrame == 17)
         {
            _loc2_.clip.panels.stop();
            if(_loc2_.shouldShowNext)
            {
               _loc2_.clip.next_btn.visible = true;
            }
            else
            {
               _loc2_.clip.next_btn.visible = false;
            }
            if(_loc2_.shouldShowPrev)
            {
               _loc2_.clip.prev_btn.visible = true;
            }
            else
            {
               _loc2_.clip.prev_btn.visible = false;
            }
         }
         else
         {
            _loc2_.clip.next_btn.visible = false;
            false;
            false;
            _loc2_.clip.prev_btn.visible = false;
         }
         if(_loc2_.clip.panels.currentFrame == 11)
         {
            _loc2_.populatePanels();
            _loc2_.clip.panels.gotoAndPlay(1);
            true;
            true;
         }
         else if(_loc2_.clip.panels.currentFrame == 22)
         {
            _loc2_.populatePanels();
            _loc2_.clip.panels.gotoAndPlay(12);
         }
      }
      
      public function populatePanels() : void
      {
         var screen:ShopScreen;
         var data:UserData;
         var gamedata:GameData;
         var offset:Number;
         var i:int;
         var whichTag:String;
         var alreadyPurchased:Number;
         var furniData:FurniData;
         var upgrade:Upgrade;
         var upgradeThumb:MovieClip;
         var clothing:ClothingItem;
         var index:Number = NaN;
         var mypanel:MovieClip = null;
         false;
         false;
         whichTag = null;
         true;
         true;
         alreadyPurchased = NaN;
         true;
         true;
         furniData = null;
         false;
         false;
         upgrade = null;
         false;
         false;
         true;
         true;
         upgradeThumb = null;
         clothing = null;
         true;
         true;
         screen = this;
         data = screen.gameObj.userData;
         false;
         false;
         false;
         false;
         gamedata = screen.gameObj.var_38;
         true;
         true;
         offset = screen.panelsPerSet * (screen.whichSet - 1);
         i = 0;
         while(i < screen.panelsPerSet)
         {
            false;
            false;
            index = i + offset;
            false;
            false;
            false;
            false;
            false;
            false;
            mypanel = screen.clip.panels["panel" + (i + 1)];
            false;
            false;
            if(index < screen.workingArray.length)
            {
               true;
               true;
               true;
               true;
               true;
               true;
               whichTag = String(screen.workingArray[index]);
               true;
               true;
               false;
               false;
               alreadyPurchased = Number(screen.purchasedToday[index]);
               false;
               false;
               false;
               false;
               if(screen.mode == "furniture" || screen.mode == "poster" || screen.mode == "wallfloor")
               {
                  true;
                  true;
                  true;
                  true;
                  furniData = gamedata.getFurniFromTag(whichTag);
                  false;
                  false;
                  false;
                  false;
                  mypanel.visible = true;
                  mypanel.title_txt.text = furniData.title;
                  mypanel.info_txt.text = furniData.description;
                  false;
                  false;
                  mypanel.effect_txt.text = furniData.effect;
                  false;
                  false;
                  false;
                  false;
                  mypanel.own_txt.text = String(data.getFurniAmount(whichTag,true));
                  false;
                  false;
                  mypanel.own_txt.visible = true;
                  mypanel.own_label.visible = true;
                  false;
                  false;
                  false;
                  false;
                  if(data.getFurniAmount(whichTag,true) == 0)
                  {
                     mypanel.purchasedbg.visible = false;
                  }
                  else
                  {
                     mypanel.purchasedbg.visible = true;
                  }
                  mypanel.price_txt.text = class_8.method_57(furniData.price);
                  true;
                  true;
                  false;
                  false;
                  false;
                  false;
                  if(furniData.price <= data.getTipsTotal())
                  {
                     mypanel.purchase_btn.visible = true;
                     false;
                     false;
                     mypanel.needmoretips_btn.visible = false;
                     false;
                     false;
                  }
                  else
                  {
                     mypanel.purchase_btn.visible = false;
                     mypanel.needmoretips_btn.visible = true;
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
                     class_5.error("Error removing thumb.");
                  }
                  true;
                  true;
                  mypanel.thumb.addChild(screen.createFurniThumbnail(furniData));
                  true;
                  true;
                  if(screen.lastPurchaseTag == furniData.tag)
                  {
                     mypanel.fireworks.gotoAndPlay(2);
                     true;
                     true;
                     screen.lastPurchaseTag = "none";
                  }
                  §§push(data.getFurniAmount(whichTag,true) > 0);
                  if(data.getFurniAmount(whichTag,true) > 0)
                  {
                     §§pop();
                     true;
                     true;
                     true;
                     true;
                     §§push(furniData.type == FurniData.TYPE_WALLPAPER);
                     if(!(furniData.type == FurniData.TYPE_WALLPAPER))
                     {
                        false;
                        false;
                        §§pop();
                        true;
                        true;
                        §§push(furniData.type == FurniData.TYPE_FLOORING);
                     }
                  }
                  if(§§pop())
                  {
                     mypanel.purchase_btn.visible = false;
                     false;
                     false;
                     mypanel.needmoretips_btn.visible = false;
                  }
                  true;
                  true;
                  mypanel.confirm.visible = false;
                  mypanel.cover.visible = false;
                  if(screen.mode == "wallfloor" && Boolean(alreadyPurchased))
                  {
                     mypanel.cover.visible = true;
                     false;
                     false;
                  }
               }
               else if(screen.mode == "upgrades")
               {
                  false;
                  false;
                  upgrade = gamedata.getUpgradeFromTag(whichTag);
                  mypanel.visible = true;
                  false;
                  false;
                  mypanel.title_txt.text = upgrade.title;
                  mypanel.info_txt.text = upgrade.description;
                  mypanel.effect_txt.text = upgrade.effect;
                  true;
                  true;
                  true;
                  true;
                  if(whichTag == "napkin")
                  {
                     mypanel.own_txt.text = String(data.numNapkins);
                     mypanel.own_label.visible = true;
                     false;
                     false;
                     false;
                     false;
                     true;
                     true;
                     true;
                     true;
                     if(data.numNapkins > 0)
                     {
                        mypanel.purchasedbg.visible = true;
                     }
                     else
                     {
                        mypanel.purchasedbg.visible = false;
                        false;
                        false;
                     }
                  }
                  else
                  {
                     mypanel.own_txt.visible = false;
                     true;
                     true;
                     mypanel.own_label.visible = false;
                     mypanel.purchasedbg.visible = false;
                  }
                  mypanel.price_txt.text = class_8.method_57(upgrade.price);
                  false;
                  false;
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  if(whichTag != "napkin" || data.hasBonus("napkinholder"))
                  {
                     true;
                     true;
                     false;
                     false;
                     true;
                     true;
                     if(upgrade.price <= data.getTipsTotal())
                     {
                        mypanel.purchase_btn.visible = true;
                        mypanel.needmoretips_btn.visible = false;
                     }
                     else
                     {
                        mypanel.purchase_btn.visible = false;
                        true;
                        true;
                        mypanel.needmoretips_btn.visible = true;
                     }
                  }
                  else
                  {
                     mypanel.purchase_btn.visible = false;
                     true;
                     true;
                     mypanel.needmoretips_btn.visible = false;
                     true;
                     true;
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
                     true;
                     true;
                     class_5.error("Error removing thumb.");
                  }
                  upgradeThumb = new shop_panel_thumb();
                  true;
                  true;
                  upgradeThumb.gotoAndStop(upgrade.tag);
                  mypanel.thumb.addChild(upgradeThumb);
                  mypanel.confirm.visible = false;
                  mypanel.cover.visible = false;
                  false;
                  false;
                  if(Boolean(alreadyPurchased) && whichTag != "napkin")
                  {
                     mypanel.cover.visible = true;
                  }
               }
               else
               {
                  false;
                  false;
                  if(screen.mode == "clothing")
                  {
                     clothing = screen.gameObj.var_20.getItemFromSKU(whichTag);
                     mypanel.visible = true;
                     mypanel.title_txt.text = clothing.title;
                     mypanel.info_txt.text = clothing.description;
                     if(clothing.type == ClothingItem.TYPE_SHIRT)
                     {
                        true;
                        true;
                        mypanel.effect_txt.text = "Shirt";
                     }
                     else
                     {
                        false;
                        false;
                        if(clothing.type == ClothingItem.TYPE_JACKET)
                        {
                           true;
                           true;
                           true;
                           true;
                           mypanel.effect_txt.text = "Jacket";
                        }
                        else
                        {
                           true;
                           true;
                           if(clothing.type == ClothingItem.TYPE_SHOES)
                           {
                              mypanel.effect_txt.text = "Shoes";
                              true;
                              true;
                           }
                           else if(clothing.type == ClothingItem.TYPE_PANTS)
                           {
                              mypanel.effect_txt.text = "Pants";
                           }
                           else
                           {
                              false;
                              false;
                              false;
                              false;
                              if(clothing.type == ClothingItem.TYPE_HAIR)
                              {
                                 false;
                                 false;
                                 mypanel.effect_txt.text = "Hat";
                                 true;
                                 true;
                              }
                              else if(clothing.type == ClothingItem.TYPE_ACC_ARMS)
                              {
                                 false;
                                 false;
                                 true;
                                 true;
                                 mypanel.effect_txt.text = "Arm Accessory";
                              }
                              else if(clothing.type == ClothingItem.TYPE_ACC_BELT)
                              {
                                 mypanel.effect_txt.text = "Belt Accessory";
                              }
                              else
                              {
                                 false;
                                 false;
                                 if(clothing.type == ClothingItem.TYPE_ACC_BODY)
                                 {
                                    mypanel.effect_txt.text = "Accessory";
                                 }
                                 else if(clothing.type == ClothingItem.TYPE_ACC_FACE)
                                 {
                                    mypanel.effect_txt.text = "Face Accessory";
                                 }
                              }
                           }
                        }
                     }
                     mypanel.own_txt.visible = false;
                     mypanel.own_label.visible = false;
                     mypanel.purchasedbg.visible = false;
                     false;
                     false;
                     mypanel.price_txt.text = class_8.method_57(clothing.price);
                     false;
                     false;
                     if(clothing.price <= data.getTipsTotal())
                     {
                        false;
                        false;
                        mypanel.purchase_btn.visible = true;
                        false;
                        false;
                        mypanel.needmoretips_btn.visible = false;
                     }
                     else
                     {
                        mypanel.purchase_btn.visible = false;
                        mypanel.needmoretips_btn.visible = true;
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
                        class_5.error("Error removing thumb.");
                     }
                     false;
                     false;
                     mypanel.thumb.addChild(screen.createClothingThumbnail(clothing));
                     mypanel.confirm.visible = false;
                     mypanel.cover.visible = false;
                     true;
                     true;
                     true;
                     true;
                     if(alreadyPurchased)
                     {
                        mypanel.cover.visible = true;
                     }
                  }
               }
            }
            else
            {
               false;
               false;
               mypanel.visible = false;
            }
            false;
            false;
            false;
            false;
            i++;
         }
         true;
         true;
         if(screen.workingArray.length > offset + screen.panelsPerSet)
         {
            true;
            true;
            screen.shouldShowNext = true;
         }
         else
         {
            screen.shouldShowNext = false;
         }
         true;
         true;
         if(screen.whichSet > 1)
         {
            true;
            true;
            screen.shouldShowPrev = true;
         }
         else
         {
            screen.shouldShowPrev = false;
         }
      }
      
      public function createClothingThumbnail(param1:ClothingItem) : MovieClip
      {
         var item:ClothingItem;
         var screen:ShopScreen;
         var data:ClothingData;
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
         var model:MovieClip = null;
         true;
         true;
         maxWidth = NaN;
         true;
         true;
         maxHeight = NaN;
         true;
         true;
         bounds = null;
         ratio = NaN;
         false;
         false;
         torsoPart = null;
         true;
         true;
         bicepPart1 = null;
         true;
         true;
         bicepPart2 = null;
         forearmPart1 = null;
         false;
         false;
         false;
         false;
         forearmPart2 = null;
         neckPartShirt = null;
         true;
         true;
         pantsPart = null;
         false;
         false;
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
         headaccPart = null;
         shoePart = null;
         item = param1;
         true;
         true;
         screen = this;
         false;
         false;
         data = screen.gameObj.var_20;
         false;
         false;
         sku = item.tag;
         true;
         true;
         skinTrans = screen.createColorTransform(screen.mannequinColor);
         true;
         true;
         if(item == null)
         {
            false;
            false;
            model = new clothesthumb_none();
         }
         else
         {
            true;
            true;
            false;
            false;
            false;
            false;
            true;
            true;
            §§push(item.type == ClothingItem.TYPE_SHIRT);
            if(!(item.type == ClothingItem.TYPE_SHIRT))
            {
               true;
               true;
               §§pop();
               true;
               true;
               §§push(item.type == ClothingItem.TYPE_JACKET);
            }
            if(§§pop())
            {
               model = new worker_mannequin_torso();
               if(item.gender == WorkerData.GENDER_FEMALE)
               {
                  model.body.male_skin.visible = false;
                  model.body.female_skin.visible = true;
               }
               else
               {
                  model.body.male_skin.visible = true;
                  model.body.female_skin.visible = false;
               }
               torsoPart = class_9.method_26("worker_" + item.tag + "_body",false,false);
               torsoPart.gotoAndStop(1);
               true;
               true;
               model.body.addChild(torsoPart);
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BICEP))
               {
                  bicepPart1 = class_9.method_26("worker_" + item.tag + "_upperarm",false,false);
                  bicepPart1.gotoAndStop(1);
                  true;
                  true;
                  model.front_bicep.addChild(bicepPart1);
                  false;
                  false;
                  bicepPart2 = class_9.method_26("worker_" + item.tag + "_upperarm",false,false);
                  false;
                  false;
                  bicepPart2.gotoAndStop(1);
                  model.back_bicep.addChild(bicepPart2);
               }
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_FOREARM))
               {
                  forearmPart1 = class_9.method_26("worker_" + item.tag + "_forearm",false,false);
                  forearmPart1.gotoAndStop(1);
                  model.front_forearm.addChild(forearmPart1);
                  true;
                  true;
                  forearmPart2 = class_9.method_26("worker_" + item.tag + "_forearm",false,false);
                  forearmPart2.gotoAndStop(1);
                  true;
                  true;
                  model.back_forearm.addChild(forearmPart2);
               }
               if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
               {
                  true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  neckPartShirt = class_9.method_26("worker_" + item.tag + "_neck",false,false);
                  neckPartShirt.gotoAndStop(1);
                  true;
                  true;
                  false;
                  false;
                  model.neck.addChild(neckPartShirt);
               }
               model.body.male_skin.transform.colorTransform = skinTrans;
               model.body.female_skin.transform.colorTransform = skinTrans;
               model.neck.skin.transform.colorTransform = skinTrans;
               model.front_forearm.skin.transform.colorTransform = skinTrans;
               true;
               true;
               false;
               false;
               model.front_bicep.skin.transform.colorTransform = skinTrans;
               model.back_forearm.skin.transform.colorTransform = skinTrans;
               false;
               false;
               model.back_bicep.skin.transform.colorTransform = skinTrans;
               false;
               false;
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
                  if(item.gender == WorkerData.GENDER_FEMALE)
                  {
                     model.body.male_skin.visible = false;
                     model.body.female_skin.visible = true;
                  }
                  else
                  {
                     model.body.male_skin.visible = true;
                     model.body.female_skin.visible = false;
                  }
                  pantsPart = class_9.method_26("worker_" + item.tag);
                  false;
                  false;
                  pantsPart.gotoAndStop(1);
                  model.body.addChild(pantsPart);
                  false;
                  false;
                  model.body.male_skin.transform.colorTransform = skinTrans;
                  true;
                  true;
                  model.body.female_skin.transform.colorTransform = skinTrans;
                  false;
                  false;
               }
               else
               {
                  true;
                  true;
                  if(item.type == ClothingItem.TYPE_ACC_BODY)
                  {
                     model = new worker_mannequin_torso();
                     if(screen.gameObj.workerData.gender == WorkerData.GENDER_FEMALE)
                     {
                        model.body.male_skin.visible = false;
                        model.body.female_skin.visible = true;
                     }
                     else
                     {
                        model.body.male_skin.visible = true;
                        true;
                        true;
                        model.body.female_skin.visible = false;
                     }
                     false;
                     false;
                     true;
                     true;
                     if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_FRONTBODY))
                     {
                        false;
                        false;
                        frontPart = class_9.method_26("worker_" + item.tag + "_front",false,false);
                        true;
                        true;
                        frontPart.gotoAndStop(1);
                        model.body.addChild(frontPart);
                        true;
                        true;
                     }
                     if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BACKBODY))
                     {
                        true;
                        true;
                        backPart = class_9.method_26("worker_" + item.tag + "_back",false,false);
                        true;
                        true;
                        backPart.gotoAndStop(1);
                        true;
                        true;
                        model.back_acca.addChild(backPart);
                     }
                     false;
                     false;
                     if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
                     {
                        true;
                        true;
                        accneckPart = class_9.method_26("worker_" + item.tag + "_neck",false,false);
                        accneckPart.gotoAndStop(1);
                        true;
                        true;
                        model.neck.addChild(accneckPart);
                     }
                     model.body.male_skin.transform.colorTransform = skinTrans;
                     true;
                     true;
                     model.body.female_skin.transform.colorTransform = skinTrans;
                     true;
                     true;
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
                  else if(item.type == ClothingItem.TYPE_ACC_ARMS)
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
                     headPart = class_9.method_26("worker_" + item.tag,false,false);
                     headPart.gotoAndStop(1);
                     model.head.inside.addChild(headPart);
                     true;
                     true;
                     if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BACK_HAIR))
                     {
                        backhairPart = class_9.method_26("worker_" + item.tag + "_back",false,false);
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
                     }
                     model.head.inside.skin.transform.colorTransform = skinTrans;
                     try
                     {
                        headPart.hair.transform.colorTransform = screen.createColorTransform(screen.gameObj.workerData.hairColor);
                        true;
                        true;
                     }
                     catch(err:Error)
                     {
                        class_5.method_25("Error coloring hair.");
                     }
                  }
                  else
                  {
                     true;
                     true;
                     false;
                     false;
                     if(item.type == ClothingItem.TYPE_ACC_FACE)
                     {
                        model = new worker_mannequin_head();
                        false;
                        false;
                        headaccPart = class_9.method_26("worker_" + item.tag,false,false);
                        true;
                        true;
                        headaccPart.gotoAndStop(1);
                        model.head.inside.addChild(headaccPart);
                        false;
                        false;
                        model.head.inside.skin.transform.colorTransform = skinTrans;
                        model.removeChild(model.back_hair);
                     }
                     else if(item.type == ClothingItem.TYPE_SHOES)
                     {
                        model = new worker_mannequin_foot();
                        shoePart = class_9.method_26("worker_" + item.tag,false,false);
                        shoePart.gotoAndStop(1);
                        model.front_foot.addChild(shoePart);
                        model.front_foot.skin.gotoAndStop(1);
                     }
                  }
               }
            }
            true;
            true;
            true;
            true;
            maxWidth = 64;
            true;
            true;
            false;
            false;
            maxHeight = 64;
            bounds = model.getBounds(screen.gameObj);
            if(bounds.width > bounds.height)
            {
               true;
               true;
               false;
               false;
               ratio = bounds.height / bounds.width;
               false;
               false;
               model.width = maxWidth;
               model.height = maxWidth * ratio;
            }
            else
            {
               ratio = bounds.width / bounds.height;
               model.height = maxHeight;
               false;
               false;
               model.width = maxHeight * ratio;
               true;
               true;
            }
            bounds = model.getBounds(screen.gameObj);
            true;
            true;
            if(bounds.y + bounds.height > maxHeight / 2)
            {
               model.y = maxHeight / 2 - (bounds.y + bounds.height);
            }
            else
            {
               false;
               false;
               if(bounds.y < 0 - maxHeight / 2)
               {
                  model.y = 0 - maxHeight / 2 - bounds.y;
               }
            }
            if(bounds.x + bounds.width > maxWidth / 2)
            {
               model.x = maxWidth / 2 - (bounds.x + bounds.width);
            }
            else if(bounds.x < 0 - maxWidth / 2)
            {
               false;
               false;
               model.x = 0 - maxWidth / 2 - bounds.x;
            }
         }
         model.x += 32;
         model.y += 32;
         false;
         false;
         true;
         true;
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
         true;
         true;
         _loc2_.greenMultiplier = ((param1 & 65280) >>> 8) / 255;
         true;
         true;
         _loc2_.blueMultiplier = (param1 & 255) / 255;
         return _loc2_;
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
         false;
         false;
         if(param1.type == FurniData.TYPE_FLOORING)
         {
            _loc6_ = Number(String(param1.tag).split("floor")[1]);
            _loc3_ = new MovieClip();
            (_loc7_ = new flooring_chunk()).gotoAndStop(_loc6_);
            (_loc8_ = new flooring_chunk()).gotoAndStop(_loc6_);
            _loc8_.x = _loc7_.width;
            _loc3_.addChild(_loc7_);
            false;
            false;
            _loc3_.addChild(_loc8_);
            true;
            true;
            _loc3_.scaleX = 0.3;
            true;
            true;
            _loc3_.scaleY = 0.3;
         }
         else if(param1.type == FurniData.TYPE_WALLPAPER)
         {
            _loc9_ = Number(String(param1.tag).split("wall")[1]);
            _loc3_ = new MovieClip();
            (_loc10_ = new wallpaper_holder()).gotoAndStop(_loc9_);
            (_loc11_ = new wallpaper_holder()).gotoAndStop(_loc9_);
            false;
            false;
            _loc11_.x = _loc10_.width;
            true;
            true;
            _loc3_.addChild(_loc10_);
            false;
            false;
            _loc3_.addChild(_loc11_);
            true;
            true;
            _loc3_.scaleX = 0.28;
            false;
            false;
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
                  true;
                  true;
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
            true;
            true;
            _loc16_ = (73 - _loc13_.width) / 2;
            false;
            false;
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
      
      public function clickBackToGame(param1:Event) : void
      {
         false;
         true;
         var _loc2_:ShopScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.gameObj.method_47();
         _loc2_.gameObj.method_85();
      }
      
      public function clickQuit(param1:Event) : void
      {
         false;
         true;
         var _loc2_:ShopScreen = this;
         true;
         true;
         _loc2_.gameObj.quitToTitle();
      }
      
      public function clickPrevious(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:ShopScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         false;
         false;
         --_loc2_.whichSet;
         true;
         true;
         _loc2_.clip.panels.gotoAndPlay("prevset");
         true;
         true;
         _loc2_.clip.next_btn.visible = false;
         true;
         true;
         _loc2_.clip.prev_btn.visible = false;
      }
      
      public function clickNext(param1:MouseEvent) : void
      {
         var _loc2_:ShopScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         ++_loc2_.whichSet;
         true;
         true;
         _loc2_.clip.panels.gotoAndPlay("nextset");
         _loc2_.clip.next_btn.visible = false;
         _loc2_.clip.prev_btn.visible = false;
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:ShopScreen = this;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         }
         catch(err:Error)
         {
         }
         var _loc2_:int = 1;
         while(_loc2_ <= 6)
         {
            _loc1_.clip.panels["panel" + _loc2_].purchase_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPurchase);
            true;
            true;
            _loc1_.clip.panels["panel" + _loc2_].confirm.yes_btn.removeEventListener(MouseEvent.CLICK,_loc1_.confirmPurchase);
            false;
            false;
            _loc1_.clip.panels["panel" + _loc2_].confirm.no_btn.removeEventListener(MouseEvent.CLICK,_loc1_.cancelPurchase);
            _loc2_++;
         }
         _loc1_.clip.upgrades_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.furniture_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         true;
         true;
         _loc1_.clip.poster_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         true;
         true;
         _loc1_.clip.wallfloor_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.clothing_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.next_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickNext);
         _loc1_.clip.prev_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPrevious);
         _loc1_.container.removeEventListener("clickBackToGame",_loc1_.clickBackToGame);
         _loc1_.container.removeEventListener("clickQuit",_loc1_.clickQuit);
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function cancelPurchase(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:ShopScreen = this;
         var _loc3_:Number = -1;
         if(param1.currentTarget == _loc2_.clip.panels.panel1.confirm.no_btn)
         {
            true;
            true;
            _loc3_ = 1;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel2.confirm.no_btn)
         {
            true;
            true;
            true;
            true;
            _loc3_ = 2;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel3.confirm.no_btn)
         {
            false;
            false;
            _loc3_ = 3;
            true;
            true;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel4.confirm.no_btn)
         {
            true;
            true;
            _loc3_ = 4;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel5.confirm.no_btn)
         {
            true;
            true;
            _loc3_ = 5;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel6.confirm.no_btn)
         {
            _loc3_ = 6;
         }
         if(_loc3_ > -1)
         {
            _loc2_.clip.panels["panel" + _loc3_].confirm.visible = false;
         }
      }
      
      public function clickPurchase(param1:MouseEvent) : void
      {
         var _loc2_:ShopScreen = this;
         var _loc3_:Number = -1;
         if(param1.currentTarget == _loc2_.clip.panels.panel1.purchase_btn)
         {
            true;
            true;
            true;
            true;
            _loc3_ = 1;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel2.purchase_btn)
         {
            _loc3_ = 2;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel3.purchase_btn)
         {
            true;
            true;
            _loc3_ = 3;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel4.purchase_btn)
         {
            true;
            true;
            _loc3_ = 4;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel5.purchase_btn)
         {
            true;
            true;
            _loc3_ = 5;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel6.purchase_btn)
         {
            _loc3_ = 6;
            false;
            false;
         }
         if(_loc3_ > -1)
         {
            _loc2_.clip.panels["panel" + _loc3_].confirm.visible = true;
         }
      }
      
      public function confirmPurchase(param1:MouseEvent) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc2_:ShopScreen = this;
         var _loc3_:String = null;
         var _loc4_:Number = -1;
         false;
         false;
         if(param1.currentTarget == _loc2_.clip.panels.panel1.confirm.yes_btn)
         {
            _loc4_ = 1;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel2.confirm.yes_btn)
         {
            _loc4_ = 2;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel3.confirm.yes_btn)
         {
            _loc4_ = 3;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel4.confirm.yes_btn)
         {
            true;
            true;
            _loc4_ = 4;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel5.confirm.yes_btn)
         {
            false;
            false;
            _loc4_ = 5;
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel6.confirm.yes_btn)
         {
            false;
            false;
            _loc4_ = 6;
         }
         if(_loc4_ > -1)
         {
            _loc5_ = _loc2_.panelsPerSet * (_loc2_.whichSet - 1);
            false;
            false;
            false;
            false;
            _loc6_ = _loc4_ - 1 + _loc5_;
            false;
            false;
            true;
            true;
            _loc3_ = String(_loc2_.workingArray[_loc6_]);
            false;
            false;
            _loc7_ = false;
            if(_loc2_.mode == "clothing")
            {
               true;
               true;
               _loc7_ = _loc2_.gameObj.userData.purchaseClothing(_loc3_);
            }
            else if(_loc2_.mode == "upgrades")
            {
               false;
               false;
               true;
               true;
               false;
               false;
               _loc7_ = _loc2_.gameObj.userData.purchaseBonus(_loc3_);
               true;
               true;
            }
            else
            {
               _loc7_ = _loc2_.gameObj.userData.purchaseFurniture(_loc3_);
            }
            if(_loc7_)
            {
               _loc2_.lastPurchaseTag = _loc3_;
               _loc2_.gameObj.soundManager.playSound("multicoin.wav");
               _loc2_.purchasedToday[_loc6_] = 1;
               _loc2_.clip.tips_txt.text = _loc2_.gameObj.userData.getTipsTotal(true);
               _loc2_.populatePanels();
               false;
               false;
            }
            else
            {
               class_5.error("(Error Purchasing)");
            }
         }
      }
   }
}
