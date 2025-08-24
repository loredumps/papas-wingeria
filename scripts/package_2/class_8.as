package package_2
{
   public class class_8
   {
       
      
      public function class_8()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      public static function method_31(param1:Number) : String
      {
         var _loc5_:Number = NaN;
         var _loc2_:String = String(param1);
         var _loc3_:String = "";
         var _loc4_:int = _loc2_.length - 1;
         while(_loc4_ >= 0)
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
            false;
            false;
            if((_loc5_ = _loc2_.length - 1 - _loc4_) % 3 == 0 && _loc5_ > 0 && _loc2_.charAt(_loc4_) != "-")
            {
               false;
               false;
               true;
               true;
               _loc3_ = "," + _loc3_;
            }
            true;
            true;
            true;
            true;
            _loc3_ = _loc2_.charAt(_loc4_) + _loc3_;
            true;
            true;
            false;
            false;
            _loc4_--;
            false;
            false;
         }
         return _loc3_;
      }
      
      public static function method_57(param1:Number) : String
      {
         var _loc2_:String = "";
         var _loc3_:Number = Math.floor(param1 / 100);
         true;
         true;
         var _loc4_:Number = param1 - _loc3_ * 100;
         var _loc5_:String;
         if((_loc5_ = String(_loc4_)).length < 2)
         {
            true;
            true;
            false;
            false;
            _loc5_ = "0" + _loc5_;
            false;
            false;
         }
         false;
         false;
         true;
         true;
         return "$" + _loc3_ + "." + _loc5_;
      }
      
      public static function method_155(param1:Number, param2:Boolean = true, param3:Boolean = false) : String
      {
         false;
         true;
         true;
         true;
         var _loc4_:Number = param1;
         var _loc5_:* = "";
         var _loc6_:Number = 0;
         true;
         true;
         if(param3)
         {
            false;
            false;
            _loc6_ = Math.floor(param1 / 30 / 60 / 60);
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
            false;
            false;
            true;
            true;
            _loc4_ -= _loc6_ * 30 * 60 * 60;
         }
         var _loc7_:Number = Math.floor(_loc4_ / 30 / 60);
         false;
         false;
         false;
         false;
         true;
         true;
         false;
         false;
         _loc4_ -= _loc7_ * 30 * 60;
         var _loc8_:Number = Math.floor(_loc4_ / 30);
         false;
         false;
         _loc4_ -= _loc8_ * 30;
         var _loc9_:Number = Math.round(_loc4_ / 30 * 100);
         true;
         true;
         true;
         true;
         if(param3)
         {
            false;
            false;
            false;
            false;
            if(_loc6_ < 10)
            {
               _loc5_ += "0";
            }
            false;
            false;
            true;
            true;
            _loc5_ += String(_loc6_) + ":";
         }
         false;
         false;
         true;
         true;
         if(_loc7_ < 10)
         {
            false;
            false;
            true;
            true;
            _loc5_ += "0";
         }
         false;
         false;
         _loc5_ += String(_loc7_) + ":";
         true;
         true;
         false;
         false;
         if(_loc8_ < 10)
         {
            true;
            true;
            true;
            true;
            _loc5_ += "0";
         }
         _loc5_ += String(_loc8_);
         false;
         false;
         if(param2)
         {
            _loc5_ += ":";
            false;
            false;
            if(_loc9_ < 10)
            {
               _loc5_ += "0";
               false;
               false;
            }
            false;
            false;
            true;
            true;
            _loc5_ += String(_loc9_);
         }
         return _loc5_;
      }
   }
}
