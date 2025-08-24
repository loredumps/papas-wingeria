package wingGame.data
{
   public class FoodData
   {
      
      public static const MEAT_SHRIMP:String = "shrimp";
      
      public static const MEAT_STRIPS:String = "strips";
      
      public static const MEAT_BONELESS:String = "boneless";
      
      public static const MEAT_WING:String = "wing";
      
      public static const SAUCE_PARMESAN:String = "parmesan";
      
      public static const SAUCE_TERIYAKI:String = "teriyaki";
      
      public static const SAUCE_BBQ:String = "bbq";
      
      public static const SAUCE_CALYPSO:String = "calypso";
      
      public static const SAUCE_ATOMIC:String = "atomic";
      
      public static const SAUCE_BUFFALO:String = "buffalo";
      
      public static const SAUCE_MEDIUM:String = "medium";
      
      public static const SAUCE_SPICYGARLIC:String = "spicygarlic";
      
      public static const SAUCE_HONEYMUSTARD:String = "honeymustard";
      
      public static const SAUCE_WILDONION:String = "wildonion";
      
      public static const SAUCE_WASABI:String = "wasabi";
      
      public static const DIP_MANGOCHILI:String = "mangochili";
      
      public static const DIP_RANCH:String = "ranch";
      
      public static const DIP_KUNGPAO:String = "kungpao";
      
      public static const DIP_ZESTYPESTO:String = "zestypesto";
      
      public static const DIP_BLUECHEESE:String = "bluecheese";
      
      public static const DIP_AWESOMESAUCE:String = "awesomesauce";
      
      public static const SIDE_CARROT:String = "carrot";
      
      public static const SIDE_FRY:String = "fry";
      
      public static const SIDE_GREENPEPPER:String = "greenpepper";
      
      public static const SIDE_CELERY:String = "celery";
      
      public static const SIDE_CHEESECUBES:String = "cheesecubes";
      
      public static const SIDE_REDPEPPER:String = "redpepper";
      
      public static const DISTRO_ALL:String = "distroall";
      
      public static const DISTRO_LEFT:String = "distroleft";
      
      public static const DISTRO_RIGHT:String = "distroright";
      
      {
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
         true;
         true;
      }
      
      public function FoodData()
      {
         super();
      }
      
      public static function getMaxCookTime(param1:String) : Number
      {
         false;
         true;
         true;
         true;
         if(param1 == FoodData.MEAT_WING)
         {
            false;
            false;
            return 3600;
         }
         if(param1 == FoodData.MEAT_BONELESS)
         {
            false;
            false;
            return 3600;
         }
         if(param1 == FoodData.MEAT_STRIPS)
         {
            false;
            false;
            return 3600;
         }
         if(param1 == FoodData.MEAT_SHRIMP)
         {
            true;
            true;
            false;
            false;
            return 3600;
         }
         return 3600;
      }
      
      public static function getTargetCookTime(param1:String) : Number
      {
         false;
         true;
         return FoodData.getMaxCookTime(param1) / 2;
      }
      
      public static function getSauceFrame(param1:String) : Number
      {
         if(param1 == FoodData.SAUCE_PARMESAN)
         {
            true;
            true;
            return 1;
         }
         if(param1 == FoodData.SAUCE_TERIYAKI)
         {
            true;
            true;
            return 2;
         }
         if(param1 == FoodData.SAUCE_BBQ)
         {
            return 3;
         }
         false;
         false;
         if(param1 == FoodData.SAUCE_CALYPSO)
         {
            return 4;
         }
         if(param1 == FoodData.SAUCE_ATOMIC)
         {
            return 5;
         }
         if(param1 == FoodData.SAUCE_BUFFALO)
         {
            true;
            true;
            true;
            true;
            return 6;
         }
         false;
         false;
         if(param1 == FoodData.SAUCE_MEDIUM)
         {
            true;
            true;
            false;
            false;
            return 7;
         }
         if(param1 == FoodData.SAUCE_SPICYGARLIC)
         {
            return 8;
         }
         if(param1 == FoodData.SAUCE_HONEYMUSTARD)
         {
            false;
            false;
            return 9;
         }
         false;
         false;
         if(param1 == FoodData.SAUCE_WILDONION)
         {
            return 10;
         }
         if(param1 == FoodData.SAUCE_WASABI)
         {
            return 11;
         }
         return 1;
      }
      
      public static function getSauceNumberAmount(param1:Number) : Number
      {
         var _loc2_:Number = 12;
         12;
         false;
         false;
         360 / 12;
         true;
         true;
         true;
         true;
         if(param1 > 360)
         {
            false;
            false;
            true;
            true;
            param1 -= 360;
         }
         else
         {
            true;
            true;
            if(param1 < 0)
            {
               false;
               false;
               true;
               true;
               param1 += 360;
            }
         }
         var _loc5_:int = 1;
         while(_loc5_ <= 12)
         {
            true;
            true;
            true;
            true;
            false;
            false;
            false;
            false;
            if(param1 >= _loc5_ * 30 - 30 / 2 && param1 < _loc5_ * 30 + 30 / 2)
            {
               true;
               true;
               _loc2_ = _loc5_;
               false;
               false;
               break;
            }
            _loc5_++;
         }
         return _loc2_;
      }
      
      public static function isMeat(param1:String) : Boolean
      {
         false;
         true;
         false;
         false;
         true;
         true;
         false;
         false;
         if(param1 == FoodData.MEAT_WING || param1 == FoodData.MEAT_BONELESS || param1 == FoodData.MEAT_SHRIMP || param1 == FoodData.MEAT_STRIPS)
         {
            false;
            false;
            return true;
         }
         return false;
      }
      
      public static function isSide(param1:String) : Boolean
      {
         false;
         true;
         §§push(param1 == FoodData.SIDE_CARROT || param1 == FoodData.SIDE_CELERY || param1 == FoodData.SIDE_CHEESECUBES || param1 == FoodData.SIDE_FRY);
         if(!(param1 == FoodData.SIDE_CARROT || param1 == FoodData.SIDE_CELERY || param1 == FoodData.SIDE_CHEESECUBES || param1 == FoodData.SIDE_FRY))
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(param1 == FoodData.SIDE_GREENPEPPER);
         }
         if(§§pop() || param1 == FoodData.SIDE_REDPEPPER)
         {
            return true;
         }
         return false;
      }
      
      public static function isDip(param1:String) : Boolean
      {
         false;
         true;
         true;
         true;
         true;
         true;
         false;
         false;
         §§push(param1 == FoodData.DIP_AWESOMESAUCE || param1 == FoodData.DIP_BLUECHEESE || param1 == FoodData.DIP_KUNGPAO || param1 == FoodData.DIP_MANGOCHILI);
         if(!(param1 == FoodData.DIP_AWESOMESAUCE || param1 == FoodData.DIP_BLUECHEESE || param1 == FoodData.DIP_KUNGPAO || param1 == FoodData.DIP_MANGOCHILI))
         {
            false;
            false;
            §§pop();
            true;
            true;
            false;
            false;
            §§push(param1 == FoodData.DIP_RANCH);
         }
         if(§§pop() || param1 == FoodData.DIP_ZESTYPESTO)
         {
            return true;
         }
         return false;
      }
      
      public static function getSauces() : Array
      {
         var _loc1_:Array = [];
         false;
         false;
         _loc1_.push(FoodData.SAUCE_ATOMIC,FoodData.SAUCE_BBQ,FoodData.SAUCE_TERIYAKI,FoodData.SAUCE_CALYPSO,FoodData.SAUCE_MEDIUM,FoodData.SAUCE_BUFFALO,FoodData.SAUCE_SPICYGARLIC,FoodData.SAUCE_HONEYMUSTARD,FoodData.SAUCE_WILDONION,FoodData.SAUCE_WASABI,FoodData.SAUCE_PARMESAN);
         return _loc1_;
      }
   }
}
