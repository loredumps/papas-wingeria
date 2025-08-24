package wingGame.data
{
   import package_2.class_5;
   
   public class WorkerData
   {
      
      public static const GENDER_MALE:String = "male";
      
      public static const GENDER_FEMALE:String = "female";
      
      public static var skinToneOptions:Array = [15977899,15511933,15783334,13537877,9592897,14523505,14132337,16299636,16768959];
      
      public static var hairColorOptions:Array = [4403756,2497293,10837812,16229207,10774566,9525553,5718573,5582342,9856033,8534556,13590576,16227607,16044913,16510613,16119025];
      
      public static var eyeDefaultOptions:Array = [1,13,4,5,6,9,10,11,12];
      
      public static const HEAD_HEIGHT_MIN:Number = -10;
      
      public static const HEAD_HEIGHT_MAX:Number = 20;
      
      public static const HEAD_FORWARD_MIN:Number = -10;
      
      public static const HEAD_FORWARD_MAX:Number = 10;
      
      public static const HEAD_SCALE_MIN:Number = 0.9;
      
      public static const HEAD_SCALE_MAX:Number = 1.1;
      
      public static const EYE_SPACING_MIN:Number = -1;
      
      public static const EYE_SPACING_MAX:Number = 3;
      
      public static const EYE_HEIGHT_MIN:Number = -4;
      
      public static const EYE_HEIGHT_MAX:Number = 4;
      
      public static const MOUTH_HEIGHT_MIN:Number = -3;
      
      public static const MOUTH_HEIGHT_MAX:Number = 3;
      
      public static const EYE_STYLE_MAX:Number = 8;
      
      public static const MOUTH_STYLE_MAX:Number = 1;
      
      public static const MOUTH_DEFAULT_MAX:Number = 21;
      
      {
         false;
         true;
         true;
         true;
         true;
         true;
         false;
         false;
         false;
         false;
         true;
         true;
      }
      
      public var gender:String = "male";
      
      public var skinTone:uint = 15977899;
      
      public var hairColor:uint = 4403756;
      
      public var eyeStyle:Number = 1;
      
      public var eyeDefaultExpression:Number = 1;
      
      public var eyeHeight:Number = 0;
      
      public var eyeSpacing:Number = 0;
      
      public var mouthStyle:Number = 1;
      
      public var mouthDefaultExpression:Number = 1;
      
      public var mouthHeight:Number = 0;
      
      public var headHeight:Number = 0;
      
      public var headScale:Number = 1;
      
      public var headForward:Number = 0;
      
      public var shirt:String = "";
      
      public var jacket:String = "";
      
      public var pants:String = "";
      
      public var hair:String = "";
      
      public var shoes:String = "";
      
      public var facialhair:String = "";
      
      public var acca:String = "";
      
      public var accb:String = "";
      
      public var accc:String = "";
      
      public var accd:String = "";
      
      public function WorkerData(param1:Object = null)
      {
         false;
         true;
         true;
         true;
         super();
         var _loc2_:WorkerData = this;
         true;
         true;
         if(param1 != null)
         {
            false;
            false;
            _loc2_.setupDefaults();
            true;
            true;
            _loc2_.populateWorkerData(param1);
         }
         else
         {
            _loc2_.setupDefaults();
         }
      }
      
      public function populateWorkerData(param1:Object) : void
      {
         var _loc2_:WorkerData = this;
         if(param1.hasOwnProperty("gender"))
         {
            _loc2_.gender = param1.gender;
         }
         if(param1.hasOwnProperty("skinTone"))
         {
            _loc2_.skinTone = param1.skinTone;
         }
         if(param1.hasOwnProperty("hairColor"))
         {
            _loc2_.hairColor = param1.hairColor;
         }
         if(param1.hasOwnProperty("eyeStyle"))
         {
            _loc2_.eyeStyle = param1.eyeStyle;
         }
         if(param1.hasOwnProperty("eyeDefaultExpression"))
         {
            _loc2_.eyeDefaultExpression = param1.eyeDefaultExpression;
         }
         if(param1.hasOwnProperty("eyeHeight"))
         {
            _loc2_.eyeHeight = param1.eyeHeight;
         }
         if(param1.hasOwnProperty("eyeSpacing"))
         {
            true;
            true;
            _loc2_.eyeSpacing = param1.eyeSpacing;
         }
         if(param1.hasOwnProperty("mouthDefaultExpression"))
         {
            _loc2_.mouthDefaultExpression = param1.mouthDefaultExpression;
         }
         if(param1.hasOwnProperty("mouthHeight"))
         {
            _loc2_.mouthHeight = param1.mouthHeight;
         }
         if(param1.hasOwnProperty("headHeight"))
         {
            _loc2_.headHeight = param1.headHeight;
         }
         if(param1.hasOwnProperty("headScale"))
         {
            false;
            false;
            _loc2_.headScale = param1.headScale;
            true;
            true;
         }
         if(param1.hasOwnProperty("headForward"))
         {
            _loc2_.headForward = param1.headForward;
         }
         if(param1.hasOwnProperty("shirt"))
         {
            _loc2_.shirt = param1.shirt;
         }
         if(param1.hasOwnProperty("jacket"))
         {
            _loc2_.jacket = param1.jacket;
         }
         if(param1.hasOwnProperty("pants"))
         {
            true;
            true;
            _loc2_.pants = param1.pants;
         }
         if(param1.hasOwnProperty("hair"))
         {
            _loc2_.hair = param1.hair;
         }
         if(param1.hasOwnProperty("shoes"))
         {
            _loc2_.shoes = param1.shoes;
            false;
            false;
         }
         if(param1.hasOwnProperty("facialhair"))
         {
            _loc2_.facialhair = param1.facialhair;
         }
         if(param1.hasOwnProperty("acca"))
         {
            _loc2_.acca = param1.acca;
         }
         if(param1.hasOwnProperty("accb"))
         {
            true;
            true;
            _loc2_.accb = param1.accb;
         }
         if(param1.hasOwnProperty("accc"))
         {
            _loc2_.accc = param1.accc;
         }
         if(param1.hasOwnProperty("accd"))
         {
            true;
            true;
            _loc2_.accd = param1.accd;
         }
      }
      
      public function getDataToSave() : Object
      {
         false;
         true;
         var _loc1_:WorkerData = this;
         var _loc2_:Object = new Object();
         _loc2_.gender = _loc1_.gender;
         false;
         false;
         _loc2_.skinTone = _loc1_.skinTone;
         _loc2_.hairColor = _loc1_.hairColor;
         _loc2_.eyeStyle = _loc1_.eyeStyle;
         _loc2_.eyeDefaultExpression = _loc1_.eyeDefaultExpression;
         _loc2_.eyeHeight = _loc1_.eyeHeight;
         _loc2_.eyeSpacing = _loc1_.eyeSpacing;
         _loc2_.mouthStyle = _loc1_.mouthStyle;
         true;
         true;
         _loc2_.mouthDefaultExpression = _loc1_.mouthDefaultExpression;
         _loc2_.mouthHeight = _loc1_.mouthHeight;
         false;
         false;
         _loc2_.headHeight = _loc1_.headHeight;
         _loc2_.headScale = _loc1_.headScale;
         true;
         true;
         _loc2_.headForward = _loc1_.headForward;
         _loc2_.shirt = _loc1_.shirt;
         _loc2_.jacket = _loc1_.jacket;
         _loc2_.pants = _loc1_.pants;
         _loc2_.hair = _loc1_.hair;
         _loc2_.shoes = _loc1_.shoes;
         false;
         false;
         _loc2_.facialhair = _loc1_.facialhair;
         _loc2_.acca = _loc1_.acca;
         _loc2_.accb = _loc1_.accb;
         _loc2_.accc = _loc1_.accc;
         _loc2_.accd = _loc1_.accd;
         return _loc2_;
      }
      
      public function setupPremadeMale() : void
      {
         var _loc1_:WorkerData = this;
         true;
         true;
         _loc1_.gender = WorkerData.GENDER_MALE;
         _loc1_.skinTone = 15511933;
         true;
         true;
         _loc1_.hairColor = 10837812;
         false;
         false;
         _loc1_.eyeStyle = 1;
         _loc1_.eyeDefaultExpression = 11;
         _loc1_.eyeHeight = 2;
         _loc1_.eyeSpacing = 2;
         _loc1_.mouthStyle = 1;
         true;
         true;
         _loc1_.mouthDefaultExpression = 1;
         _loc1_.mouthHeight = -1;
         _loc1_.headHeight = 0;
         _loc1_.headScale = 1;
         _loc1_.headForward = 0;
         false;
         false;
         _loc1_.shirt = "shirt_00_male";
         false;
         false;
         _loc1_.jacket = "";
         _loc1_.pants = "pants_01_male";
         true;
         true;
         _loc1_.hair = "hair_chuck_1";
         _loc1_.shoes = "shoes1";
         _loc1_.facialhair = "";
         _loc1_.acca = "body_puka";
         _loc1_.accb = "belt_01_male";
         _loc1_.accc = "pukawrist";
         _loc1_.accd = "";
      }
      
      public function setupPremadeFemale() : void
      {
         false;
         true;
         var _loc1_:WorkerData = this;
         _loc1_.gender = WorkerData.GENDER_FEMALE;
         _loc1_.skinTone = 15714219;
         _loc1_.hairColor = 7684124;
         _loc1_.eyeStyle = 5;
         _loc1_.eyeDefaultExpression = 1;
         _loc1_.eyeHeight = 0;
         _loc1_.eyeSpacing = 1;
         _loc1_.mouthStyle = 1;
         _loc1_.mouthDefaultExpression = 1;
         false;
         false;
         _loc1_.mouthHeight = 0;
         _loc1_.headHeight = 3;
         _loc1_.headScale = 1;
         _loc1_.headForward = 0;
         _loc1_.shirt = "shirt_00_female";
         _loc1_.jacket = "";
         _loc1_.pants = "pants_01_female";
         _loc1_.hair = "hair_mandi_1";
         _loc1_.shoes = "shoes1";
         _loc1_.facialhair = "";
         _loc1_.acca = "";
         _loc1_.accb = "belt_02_female";
         _loc1_.accc = "";
         _loc1_.accd = "";
      }
      
      public function setupDefaults() : void
      {
         false;
         true;
         var _loc1_:WorkerData = this;
         _loc1_.gender = WorkerData.GENDER_MALE;
         _loc1_.skinTone = 15977899;
         _loc1_.hairColor = 4403756;
         _loc1_.eyeStyle = 1;
         _loc1_.eyeDefaultExpression = 1;
         _loc1_.eyeHeight = 0;
         _loc1_.eyeSpacing = 0;
         _loc1_.mouthStyle = 1;
         true;
         true;
         _loc1_.mouthDefaultExpression = 1;
         _loc1_.mouthHeight = 0;
         _loc1_.headHeight = 0;
         _loc1_.headScale = 1;
         _loc1_.headForward = 0;
         _loc1_.shirt = "shirt_00_male";
         _loc1_.jacket = "";
         _loc1_.pants = "pants_01_male";
         _loc1_.hair = "hair_short_1";
         _loc1_.shoes = "shoes1";
         true;
         true;
         _loc1_.facialhair = "";
         _loc1_.acca = "";
         _loc1_.accb = "";
         _loc1_.accc = "";
         _loc1_.accd = "";
      }
      
      public function setGender(param1:String) : void
      {
         var _loc2_:WorkerData = this;
         _loc2_.gender = param1;
         true;
         true;
         if(_loc2_.gender == WorkerData.GENDER_MALE)
         {
            _loc2_.shirt = "shirt_00_male";
            _loc2_.hair = "hair_short_1";
            _loc2_.pants = "pants_01_male";
         }
         else if(_loc2_.gender == WorkerData.GENDER_FEMALE)
         {
            _loc2_.shirt = "shirt_00_female";
            true;
            true;
            _loc2_.hair = "hair_ponytailbangs_1";
            _loc2_.pants = "pants_01_female";
         }
      }
      
      public function adjustValue(param1:String, param2:Number) : void
      {
         false;
         true;
         var _loc3_:WorkerData = this;
         false;
         false;
         if(param1 == "eyeHeight")
         {
            false;
            false;
            true;
            true;
            §§push(param2 >= WorkerData.EYE_HEIGHT_MIN);
            if(param2 >= WorkerData.EYE_HEIGHT_MIN)
            {
               true;
               true;
               §§pop();
               false;
               false;
               false;
               false;
               §§push(param2 <= WorkerData.EYE_HEIGHT_MAX);
            }
            if(§§pop())
            {
               _loc3_.eyeHeight = param2;
            }
            else if(param2 < WorkerData.EYE_HEIGHT_MIN)
            {
               _loc3_.eyeHeight = WorkerData.EYE_HEIGHT_MIN;
               false;
               false;
            }
            else
            {
               true;
               true;
               if(param2 > WorkerData.EYE_HEIGHT_MAX)
               {
                  _loc3_.eyeHeight = WorkerData.EYE_HEIGHT_MAX;
                  false;
                  false;
               }
            }
         }
         else
         {
            true;
            true;
            if(param1 == "eyeSpacing")
            {
               false;
               false;
               true;
               true;
               if(param2 >= WorkerData.EYE_SPACING_MIN && param2 <= WorkerData.EYE_SPACING_MAX)
               {
                  _loc3_.eyeSpacing = param2;
               }
               else
               {
                  true;
                  true;
                  if(param2 < WorkerData.EYE_SPACING_MIN)
                  {
                     _loc3_.eyeSpacing = WorkerData.EYE_SPACING_MIN;
                  }
                  else
                  {
                     true;
                     true;
                     if(param2 > WorkerData.EYE_SPACING_MAX)
                     {
                        true;
                        true;
                        _loc3_.eyeSpacing = WorkerData.EYE_SPACING_MAX;
                     }
                  }
               }
            }
            else if(param1 == "mouthHeight")
            {
               false;
               false;
               true;
               true;
               if(param2 >= WorkerData.MOUTH_HEIGHT_MIN && param2 <= WorkerData.MOUTH_HEIGHT_MAX)
               {
                  _loc3_.mouthHeight = param2;
               }
               else if(param2 < WorkerData.MOUTH_HEIGHT_MIN)
               {
                  _loc3_.mouthHeight = WorkerData.MOUTH_HEIGHT_MIN;
                  false;
                  false;
               }
               else if(param2 > WorkerData.MOUTH_HEIGHT_MAX)
               {
                  _loc3_.mouthHeight = WorkerData.MOUTH_HEIGHT_MAX;
               }
            }
            else if(param1 == "headHeight")
            {
               true;
               true;
               if(param2 >= WorkerData.HEAD_HEIGHT_MIN && param2 <= WorkerData.HEAD_HEIGHT_MAX)
               {
                  true;
                  true;
                  _loc3_.headHeight = param2;
               }
               else if(param2 < WorkerData.HEAD_HEIGHT_MIN)
               {
                  _loc3_.headHeight = WorkerData.HEAD_HEIGHT_MIN;
               }
               else if(param2 > WorkerData.HEAD_HEIGHT_MAX)
               {
                  true;
                  true;
                  _loc3_.headHeight = WorkerData.HEAD_HEIGHT_MAX;
               }
            }
            else if(param1 == "headForward")
            {
               false;
               false;
               if(param2 >= WorkerData.HEAD_FORWARD_MIN && param2 <= WorkerData.HEAD_FORWARD_MAX)
               {
                  _loc3_.headForward = param2;
               }
               else
               {
                  true;
                  true;
                  if(param2 < WorkerData.HEAD_FORWARD_MIN)
                  {
                     _loc3_.headForward = WorkerData.HEAD_FORWARD_MIN;
                     true;
                     true;
                  }
                  else if(param2 > WorkerData.HEAD_FORWARD_MAX)
                  {
                     _loc3_.headForward = WorkerData.HEAD_FORWARD_MAX;
                  }
               }
            }
            else
            {
               true;
               true;
               if(param1 == "headScale")
               {
                  if(param2 >= WorkerData.HEAD_SCALE_MIN && param2 <= WorkerData.HEAD_SCALE_MAX)
                  {
                     _loc3_.headScale = param2;
                  }
                  else
                  {
                     false;
                     false;
                     if(param2 < WorkerData.HEAD_SCALE_MIN)
                     {
                        _loc3_.headScale = WorkerData.HEAD_SCALE_MIN;
                     }
                     else
                     {
                        true;
                        true;
                        if(param2 > WorkerData.HEAD_SCALE_MAX)
                        {
                           _loc3_.headScale = WorkerData.HEAD_SCALE_MAX;
                        }
                     }
                  }
               }
               else
               {
                  true;
                  true;
                  if(param1 == "eyeStyle")
                  {
                     false;
                     false;
                     if(param2 > 0 && param2 <= WorkerData.EYE_STYLE_MAX)
                     {
                        _loc3_.eyeStyle = param2;
                     }
                     else if(param2 < 1)
                     {
                        _loc3_.eyeStyle = 1;
                        false;
                        false;
                     }
                     else
                     {
                        true;
                        true;
                        if(param2 > WorkerData.EYE_STYLE_MAX)
                        {
                           _loc3_.eyeStyle = WorkerData.EYE_STYLE_MAX;
                        }
                     }
                  }
                  else if(param1 == "eyeDefault")
                  {
                     false;
                     false;
                     false;
                     false;
                     if(param2 >= 0 && param2 < WorkerData.eyeDefaultOptions.length)
                     {
                        _loc3_.eyeDefaultExpression = WorkerData.eyeDefaultOptions[param2];
                     }
                     else
                     {
                        false;
                        false;
                        if(param2 < 0)
                        {
                           _loc3_.eyeDefaultExpression = WorkerData.eyeDefaultOptions[0];
                        }
                        else if(param2 >= WorkerData.eyeDefaultOptions.length)
                        {
                           true;
                           true;
                           _loc3_.eyeDefaultExpression = WorkerData.eyeDefaultOptions[WorkerData.eyeDefaultOptions.length - 1];
                        }
                     }
                  }
                  else if(param1 == "mouthDefault")
                  {
                     §§push(param2 > 0);
                     if(param2 > 0)
                     {
                        true;
                        true;
                        §§pop();
                        true;
                        true;
                        §§push(param2 <= WorkerData.MOUTH_DEFAULT_MAX);
                     }
                     if(§§pop())
                     {
                        _loc3_.mouthDefaultExpression = param2;
                     }
                     else if(param2 < 1)
                     {
                        _loc3_.mouthDefaultExpression = 1;
                     }
                     else if(param2 > WorkerData.MOUTH_DEFAULT_MAX)
                     {
                        _loc3_.mouthDefaultExpression = WorkerData.MOUTH_DEFAULT_MAX;
                        true;
                        true;
                     }
                  }
                  else
                  {
                     false;
                     false;
                     false;
                     false;
                     true;
                     true;
                     class_5.error("No such type: " + param1 + " (Value " + param2 + ")");
                  }
               }
            }
         }
      }
   }
}
