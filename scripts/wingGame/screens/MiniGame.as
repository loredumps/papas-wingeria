package wingGame.screens
{
   import flash.display.*;
   import package_2.class_5;
   import wingGame.data.ClothingItem;
   import wingGame.data.FurniData;
   import wingGame.data.UserData;
   
   public class MiniGame
   {
      
      public static const TYPE_BURGERZILLA:String = "burgerzilla";
      
      public static const TYPE_HOTSHOT:String = "hotshot";
      
      public static const TYPE_PUTT:String = "putt";
      
      public static const TYPE_PACHINKO:String = "pachinko";
      
      public static const TYPE_CRAVINGS:String = "cravings";
      
      public static const TYPE_HALLWAY:String = "hallway";
      
      public static const TYPE_BLAST:String = "blast";
      
      {
         true;
         true;
         true;
         true;
      }
      
      public var screen:MiniGameScreen;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public function MiniGame(param1:MiniGameScreen, param2:MovieClip)
      {
         false;
         true;
         super();
         var _loc3_:MiniGame = this;
         false;
         false;
         _loc3_.screen = param1;
         true;
         true;
         _loc3_.container = param2;
         false;
         false;
         _loc3_.setupScreen();
      }
      
      public function setupScreen() : void
      {
      }
      
      public function updateScreen() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function getStartingLevel(param1:Array, param2:Array, param3:Array) : Number
      {
         var _loc8_:* = null;
         var _loc4_:MiniGame;
         var _loc5_:UserData = (_loc4_ = this).screen.gameObj.userData;
         var _loc6_:Number = 0;
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            false;
            false;
            if(param2[_loc7_] == false)
            {
               false;
               false;
               if(!_loc5_.alreadyOwnsFurniture(param1[_loc7_]))
               {
                  break;
               }
               _loc6_++;
            }
            else
            {
               true;
               true;
               true;
               true;
               _loc8_ = String(param1[_loc7_]);
               false;
               false;
               if(param3[_loc7_] == "gender")
               {
                  true;
                  true;
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
                  _loc8_ += "_" + _loc4_.screen.gameObj.workerData.gender;
               }
               else if(param3[_loc7_] == "hat")
               {
                  if(_loc5_.whichCharacter == "marty")
                  {
                     false;
                     false;
                     _loc8_ += "_premale";
                  }
                  else if(_loc5_.whichCharacter == "rita")
                  {
                     false;
                     false;
                     false;
                     false;
                     _loc8_ += "_prefemale";
                     true;
                     true;
                  }
                  else
                  {
                     _loc8_ += "_" + _loc4_.screen.gameObj.workerData.gender;
                  }
               }
               if(!_loc5_.alreadyOwnsClothing(_loc8_))
               {
                  break;
               }
               false;
               false;
               _loc6_++;
            }
            _loc7_++;
         }
         true;
         true;
         class_5.method_25("Start at Round " + (_loc6_ + 1));
         return _loc6_;
      }
      
      public function tempCheckPrizes(param1:Array, param2:Array, param3:Array) : void
      {
         var _loc7_:int = 0;
         var _loc9_:FurniData = null;
         var _loc10_:String = null;
         var _loc11_:Array = null;
         var _loc12_:ClothingItem = null;
         var _loc4_:MiniGame;
         var _loc5_:UserData = (_loc4_ = this).screen.gameObj.userData;
         0;
         class_5.method_25("____CHECK PRIZES IN STORE______");
         var _loc8_:int = 0;
         loop0:
         for(; _loc8_ < param1.length; _loc8_++)
         {
            true;
            true;
            if(param2[_loc8_] != false)
            {
               _loc10_ = String(param1[_loc8_]);
               _loc11_ = [];
               true;
               true;
               if(param3[_loc8_] == "gender")
               {
                  _loc11_.push(_loc10_ + "_male");
                  false;
                  false;
                  _loc11_.push(_loc10_ + "_female");
               }
               else
               {
                  true;
                  true;
                  if(param3[_loc8_] == "hat")
                  {
                     _loc11_.push(_loc10_ + "_premale");
                     _loc11_.push(_loc10_ + "_prefemale");
                     _loc11_.push(_loc10_ + "_male");
                     _loc11_.push(_loc10_ + "_female");
                     false;
                     false;
                  }
                  else
                  {
                     _loc11_.push(_loc10_);
                  }
               }
               _loc7_ = 0;
               while(_loc7_ < _loc4_.screen.gameObj.var_20.clothing.length)
               {
                  _loc12_ = _loc4_.screen.gameObj.var_20.clothing[_loc7_];
                  false;
                  false;
                  if(_loc11_.indexOf(_loc12_.tag) > -1)
                  {
                     if(_loc12_.inStore == true)
                     {
                        false;
                        false;
                        true;
                        true;
                        true;
                        true;
                        class_5.error("WARNING!!! " + _loc12_.tag + " -- inStore = " + _loc12_.inStore);
                        false;
                        false;
                     }
                  }
                  _loc7_++;
               }
               continue;
            }
            false;
            false;
            false;
            false;
            _loc7_ = 0;
            true;
            true;
            while(true)
            {
               true;
               true;
               true;
               true;
               if(_loc7_ >= _loc4_.screen.gameObj.var_38.furniItems.length)
               {
                  continue loop0;
               }
               if((_loc9_ = _loc4_.screen.gameObj.var_38.furniItems[_loc7_]).tag == param1[_loc8_])
               {
                  if(_loc9_.inStore == true)
                  {
                     true;
                     true;
                     true;
                     true;
                     class_5.error("WARNING!!! " + _loc9_.tag + " -- inStore = " + _loc9_.inStore);
                     true;
                     true;
                  }
                  continue loop0;
               }
               _loc7_++;
            }
         }
      }
      
      public function getPrizesAlreadyWon(param1:Array, param2:Array, param3:Array) : Number
      {
         var _loc8_:* = null;
         var _loc4_:MiniGame;
         var _loc5_:UserData = (_loc4_ = this).screen.gameObj.userData;
         var _loc6_:Number = 0;
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            if(param2[_loc7_] == false)
            {
               true;
               true;
               if(_loc5_.alreadyOwnsFurniture(param1[_loc7_]))
               {
                  false;
                  false;
                  _loc6_++;
               }
            }
            else
            {
               true;
               true;
               true;
               true;
               _loc8_ = String(param1[_loc7_]);
               false;
               false;
               if(param3[_loc7_] == "gender")
               {
                  false;
                  false;
                  false;
                  false;
                  false;
                  false;
                  false;
                  false;
                  true;
                  true;
                  true;
                  true;
                  false;
                  false;
                  _loc8_ += "_" + _loc4_.screen.gameObj.workerData.gender;
               }
               else if(param3[_loc7_] == "hat")
               {
                  true;
                  true;
                  false;
                  false;
                  if(_loc5_.whichCharacter == "marty")
                  {
                     _loc8_ += "_premale";
                  }
                  else if(_loc5_.whichCharacter == "rita")
                  {
                     _loc8_ += "_prefemale";
                     true;
                     true;
                  }
                  else
                  {
                     _loc8_ += "_" + _loc4_.screen.gameObj.workerData.gender;
                  }
               }
               if(_loc5_.alreadyOwnsClothing(_loc8_))
               {
                  _loc6_++;
                  true;
                  true;
               }
            }
            _loc7_++;
         }
         return _loc6_;
      }
   }
}
