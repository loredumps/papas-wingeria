package Playtomic
{
   import flash.system.Capabilities;
   
   internal final class SessionID
   {
      
      private static var counter:Number = 0;
      
      private static const Characters:String = "0123456789abcdef";
      
      {
         false;
         false;
      }
      
      public function SessionID()
      {
         true;
         true;
         super();
      }
      
      public static function Create() : String
      {
         var _loc1_:Date = new Date();
         var _loc2_:Number = _loc1_.getTime();
         true;
         true;
         var _loc3_:Number = Math.random() * Number.MAX_VALUE;
         var _loc4_:String = Capabilities.serverString;
         var _loc5_:String = _loc2_ + _loc4_ + _loc3_ + counter++;
         return binb2hex(core_sha1(str2binb(_loc5_),_loc5_.length * 8));
      }
      
      private static function core_sha1(param1:Array, param2:Number) : Array
      {
         false;
         true;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:Number = NaN;
         true;
         true;
         true;
         true;
         true;
         true;
         true;
         true;
         param1[param2 >> 5] |= 128 << 24 - param2 % 32;
         true;
         true;
         true;
         true;
         param1[(param2 + 64 >> 9 << 4) + 15] = param2;
         var _loc3_:Array = new Array(80);
         var _loc4_:Number = 1732584193;
         var _loc5_:Number = -271733879;
         var _loc6_:Number = -1732584194;
         var _loc7_:Number = 271733878;
         var _loc8_:Number = -1009589776;
         var _loc9_:int = 0;
         while(_loc9_ < param1.length)
         {
            false;
            false;
            _loc10_ = _loc4_;
            _loc11_ = _loc5_;
            _loc12_ = _loc6_;
            true;
            true;
            _loc13_ = _loc7_;
            false;
            false;
            _loc14_ = _loc8_;
            _loc15_ = 0;
            while(true)
            {
               false;
               false;
               true;
               true;
               if(_loc15_ >= 80)
               {
                  break;
               }
               true;
               true;
               false;
               false;
               if(_loc15_ < 16)
               {
                  _loc3_[_loc15_] = param1[_loc9_ + _loc15_];
               }
               else
               {
                  _loc3_[_loc15_] = rol(_loc3_[_loc15_ - 3] ^ _loc3_[_loc15_ - 8] ^ _loc3_[_loc15_ - 14] ^ _loc3_[_loc15_ - 16],1);
               }
               true;
               true;
               _loc16_ = safe_add(safe_add(rol(_loc4_,5),sha1_ft(_loc15_,_loc5_,_loc6_,_loc7_)),safe_add(safe_add(_loc8_,_loc3_[_loc15_]),sha1_kt(_loc15_)));
               false;
               false;
               _loc8_ = _loc7_;
               false;
               false;
               _loc7_ = _loc6_;
               _loc6_ = rol(_loc5_,30);
               _loc5_ = _loc4_;
               _loc4_ = _loc16_;
               _loc15_++;
            }
            false;
            false;
            false;
            false;
            _loc4_ = safe_add(_loc4_,_loc10_);
            _loc5_ = safe_add(_loc5_,_loc11_);
            _loc6_ = safe_add(_loc6_,_loc12_);
            true;
            true;
            _loc7_ = safe_add(_loc7_,_loc13_);
            _loc8_ = safe_add(_loc8_,_loc14_);
            true;
            true;
            _loc9_ += 16;
         }
         return new Array(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
      }
      
      private static function sha1_ft(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         false;
         true;
         true;
         true;
         if(param1 < 20)
         {
            true;
            true;
            true;
            true;
            return param2 & param3 | ~param2 & param4;
         }
         false;
         false;
         if(param1 < 40)
         {
            true;
            true;
            false;
            false;
            false;
            false;
            return param2 ^ param3 ^ param4;
         }
         if(param1 < 60)
         {
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
            return param2 & param3 | param2 & param4 | param3 & param4;
         }
         true;
         true;
         return param2 ^ param3 ^ param4;
      }
      
      private static function sha1_kt(param1:Number) : Number
      {
         return param1 < 20 ? (false, false, 1518500249) : (true, true, false, false, param1 < 40 ? (true, true, 1859775393) : (param1 < 60 ? (false, false, -1894007588) : -899497514));
      }
      
      private static function safe_add(param1:Number, param2:Number) : Number
      {
         true;
         true;
         false;
         false;
         var _loc3_:Number = (param1 & 65535) + (param2 & 65535);
         false;
         false;
         var _loc4_:Number;
         return (_loc4_ = (param1 >> 16) + (param2 >> 16) + (_loc3_ >> 16)) << 16 | _loc3_ & 65535;
      }
      
      private static function rol(param1:Number, param2:Number) : Number
      {
         false;
         true;
         false;
         false;
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      private static function str2binb(param1:String) : Array
      {
         var _loc2_:Array = new Array();
         false;
         false;
         (1 << 8) - 1;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length * 8)
         {
            _loc2_[_loc4_ >> 5] |= (param1.charCodeAt(_loc4_ / 8) & 255) << 24 - _loc4_ % 32;
            false;
            false;
            true;
            true;
            _loc4_ += 8;
         }
         return _loc2_;
      }
      
      private static function binb2hex(param1:Array) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length * 4)
         {
            false;
            false;
            _loc2_ += Characters.charAt(param1[_loc3_ >> 2] >> (3 - _loc3_ % 4) * 8 + 4 & 15) + Characters.charAt(param1[_loc3_ >> 2] >> (3 - _loc3_ % 4) * 8 & 15);
            _loc3_++;
            false;
            false;
         }
         return _loc2_;
      }
   }
}
