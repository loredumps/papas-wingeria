package Playtomic
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   internal final class Encode
   {
      
      private static const BASE64_CHARS:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      private static const decodeChars:Array = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1];
      
      private static var crcTable:Array;
      
      private static var crcTableComputed:Boolean = false;
      
      private static var hex_chr:String = "0123456789abcdef";
      
      {
         false;
         false;
         true;
         true;
      }
      
      public function Encode()
      {
         false;
         true;
         super();
      }
      
      internal static function Base64(param1:ByteArray) : String
      {
         false;
         true;
         var _loc3_:Array = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc2_:String = "";
         var _loc4_:Array = new Array(4);
         param1.position = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            false;
            false;
            _loc5_ = 0;
            false;
            false;
            while(true)
            {
               false;
               false;
               false;
               false;
               if(!(_loc5_ < 3 && param1.bytesAvailable > 0))
               {
                  break;
               }
               _loc3_[_loc5_] = param1.readUnsignedByte();
               _loc5_++;
            }
            _loc4_[0] = (_loc3_[0] & 252) >> 2;
            _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
            true;
            true;
            _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
            _loc4_[3] = _loc3_[2] & 63;
            _loc6_ = _loc3_.length;
            while(_loc6_ < 3)
            {
               _loc4_[_loc6_ + 1] = 64;
               true;
               true;
               false;
               false;
               _loc6_++;
            }
            true;
            true;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.length)
            {
               false;
               false;
               _loc2_ += BASE64_CHARS.charAt(_loc4_[_loc7_]);
               true;
               true;
               _loc7_++;
            }
         }
         return _loc2_;
      }
      
      internal static function Base64Decode(param1:String) : ByteArray
      {
         false;
         true;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:ByteArray = null;
         true;
         true;
         _loc7_ = param1.length;
         _loc6_ = 0;
         _loc8_ = new ByteArray();
         loop0:
         while(_loc6_ < _loc7_)
         {
            do
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
               _loc2_ = int(decodeChars[param1.charCodeAt(_loc6_++) & 255]);
               false;
               false;
               true;
               true;
               true;
               true;
            }
            while(_loc6_ < _loc7_ && _loc2_ == -1);
            
            if(_loc2_ == -1)
            {
               break;
            }
            do
            {
               true;
               true;
               false;
               false;
               false;
               false;
               _loc3_ = int(decodeChars[param1.charCodeAt(_loc6_++) & 255]);
               true;
               true;
               §§push(_loc6_ < _loc7_);
               if(_loc6_ < _loc7_)
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  §§push(_loc3_ == -1);
               }
            }
            while(§§pop());
            
            if(_loc3_ == -1)
            {
               break;
            }
            _loc8_.writeByte(_loc2_ << 2 | (_loc3_ & 48) >> 4);
            while(true)
            {
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               if((_loc4_ = param1.charCodeAt(_loc6_++) & 255) == 61)
               {
                  break;
               }
               true;
               true;
               _loc4_ = int(decodeChars[_loc4_]);
               false;
               false;
               true;
               true;
               true;
               true;
               if(!(_loc6_ < _loc7_ && _loc4_ == -1))
               {
                  true;
                  true;
                  if(_loc4_ == -1)
                  {
                     break loop0;
                  }
                  _loc8_.writeByte((_loc3_ & 15) << 4 | (_loc4_ & 60) >> 2);
                  while(true)
                  {
                     false;
                     false;
                     true;
                     true;
                     true;
                     true;
                     if((_loc5_ = param1.charCodeAt(_loc6_++) & 255) == 61)
                     {
                        break;
                     }
                     _loc5_ = int(decodeChars[_loc5_]);
                     false;
                     false;
                     if(!(_loc6_ < _loc7_ && _loc5_ == -1))
                     {
                        if(_loc5_ == -1)
                        {
                           break loop0;
                        }
                        _loc8_.writeByte((_loc4_ & 3) << 6 | _loc5_);
                        continue loop0;
                     }
                  }
                  true;
                  true;
                  return _loc8_;
               }
            }
            return _loc8_;
         }
         return _loc8_;
      }
      
      internal static function PNG(param1:BitmapData) : ByteArray
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUnsignedInt(2303741511);
         false;
         false;
         _loc2_.writeUnsignedInt(218765834);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(param1.width);
         _loc3_.writeInt(param1.height);
         true;
         true;
         _loc3_.writeUnsignedInt(134610944);
         _loc3_.writeByte(0);
         writeChunk(_loc2_,1229472850,_loc3_);
         var _loc4_:ByteArray = new ByteArray();
         var _loc7_:int = 0;
         while(_loc7_ < param1.height)
         {
            _loc4_.writeByte(0);
            false;
            false;
            if(!param1.transparent)
            {
               _loc6_ = 0;
               while(_loc6_ < param1.width)
               {
                  _loc5_ = param1.getPixel(_loc6_,_loc7_);
                  true;
                  true;
                  _loc4_.writeUnsignedInt(uint((_loc5_ & 16777215) << 8 | 255));
                  _loc6_++;
                  true;
                  true;
               }
            }
            else
            {
               false;
               false;
               _loc6_ = 0;
               while(true)
               {
                  true;
                  true;
                  if(_loc6_ >= param1.width)
                  {
                     break;
                  }
                  _loc5_ = param1.getPixel32(_loc6_,_loc7_);
                  _loc4_.writeUnsignedInt(uint((_loc5_ & 16777215) << 8 | _loc5_ >>> 24));
                  _loc6_++;
               }
            }
            _loc7_++;
            false;
            false;
         }
         true;
         true;
         _loc4_.compress();
         true;
         true;
         writeChunk(_loc2_,1229209940,_loc4_);
         writeChunk(_loc2_,1229278788,null);
         return _loc2_;
      }
      
      private static function writeChunk(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         true;
         true;
         if(!crcTableComputed)
         {
            crcTableComputed = true;
            true;
            true;
            crcTable = [];
            false;
            false;
            _loc9_ = 0;
            while(_loc9_ < 256)
            {
               _loc8_ = _loc9_;
               false;
               false;
               _loc10_ = 0;
               while(true)
               {
                  false;
                  false;
                  if(_loc10_ >= 8)
                  {
                     break;
                  }
                  true;
                  true;
                  false;
                  false;
                  if(_loc8_ & 1)
                  {
                     false;
                     false;
                     _loc8_ = uint(uint(3988292384) ^ uint(_loc8_ >>> 1));
                  }
                  else
                  {
                     _loc8_ = uint(_loc8_ >>> 1);
                  }
                  false;
                  false;
                  _loc10_++;
                  true;
                  true;
               }
               crcTable[_loc9_] = _loc8_;
               _loc9_++;
            }
         }
         var _loc4_:uint = 0;
         if(param3 != null)
         {
            true;
            true;
            true;
            true;
            _loc4_ = param3.length;
            true;
            true;
         }
         param1.writeUnsignedInt(_loc4_);
         var _loc5_:uint = param1.position;
         false;
         false;
         param1.writeUnsignedInt(param2);
         if(param3 != null)
         {
            param1.writeBytes(param3);
         }
         var _loc6_:uint = param1.position;
         true;
         true;
         param1.position = _loc5_;
         _loc8_ = 4294967295;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_ - _loc5_)
         {
            false;
            false;
            _loc8_ = uint(crcTable[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8));
            _loc7_++;
            true;
            true;
         }
         _loc8_ = uint(_loc8_ ^ uint(4294967295));
         true;
         true;
         param1.position = _loc6_;
         param1.writeUnsignedInt(_loc8_);
      }
      
      private static function bitOR(param1:Number, param2:Number) : Number
      {
         true;
         true;
         var _loc3_:Number = param1 & 1 | param2 & 1;
         false;
         false;
         var _loc4_:Number;
         return (_loc4_ = param1 >>> 1 | param2 >>> 1) << 1 | _loc3_;
      }
      
      private static function bitXOR(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param1 & 1 ^ param2 & 1;
         false;
         false;
         var _loc4_:Number;
         return (_loc4_ = param1 >>> 1 ^ param2 >>> 1) << 1 | _loc3_;
      }
      
      private static function bitAND(param1:Number, param2:Number) : Number
      {
         false;
         true;
         true;
         true;
         true;
         true;
         var _loc3_:Number = param1 & 1 & (param2 & 1);
         true;
         true;
         var _loc4_:Number;
         return (_loc4_ = param1 >>> 1 & param2 >>> 1) << 1 | _loc3_;
      }
      
      private static function addme(param1:Number, param2:Number) : Number
      {
         true;
         true;
         var _loc3_:Number = (param1 & 65535) + (param2 & 65535);
         false;
         false;
         false;
         false;
         true;
         true;
         var _loc4_:Number;
         return (_loc4_ = (param1 >> 16) + (param2 >> 16) + (_loc3_ >> 16)) << 16 | _loc3_ & 65535;
      }
      
      private static function rhex(param1:Number) : String
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc2_:String = "";
         true;
         true;
         _loc3_ = 0;
         while(_loc3_ <= 3)
         {
            true;
            true;
            true;
            true;
            _loc2_ += hex_chr.charAt(param1 >> _loc3_ * 8 + 4 & 15) + hex_chr.charAt(param1 >> _loc3_ * 8 & 15);
            false;
            false;
            _loc3_++;
         }
         return _loc2_;
      }
      
      private static function str2blks_MD5(param1:String) : Array
      {
         var _loc4_:int = 0;
         var _loc2_:Number = (param1.length + 8 >> 6) + 1;
         var _loc3_:Array = new Array(_loc2_ * 16);
         false;
         false;
         _loc4_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc4_ >= _loc2_ * 16)
            {
               break;
            }
            _loc3_[_loc4_] = 0;
            true;
            true;
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_[_loc4_ >> 2] |= param1.charCodeAt(_loc4_) << (param1.length * 8 + _loc4_) % 4 * 8;
            true;
            true;
            _loc4_++;
            false;
            false;
         }
         _loc3_[_loc4_ >> 2] |= 128 << (param1.length * 8 + _loc4_) % 4 * 8;
         var _loc5_:int = param1.length * 8;
         false;
         false;
         _loc3_[_loc2_ * 16 - 2] = _loc5_ & 255;
         _loc3_[_loc2_ * 16 - 2] |= (_loc5_ >>> 8 & 255) << 8;
         _loc3_[_loc2_ * 16 - 2] |= (_loc5_ >>> 16 & 255) << 16;
         true;
         true;
         _loc3_[_loc2_ * 16 - 2] |= (_loc5_ >>> 24 & 255) << 24;
         return _loc3_;
      }
      
      private static function rol(param1:Number, param2:Number) : Number
      {
         true;
         true;
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      private static function cmn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Number
      {
         return addme(rol(addme(addme(param2,param1),addme(param4,param6)),param5),param3);
      }
      
      private static function ff(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return cmn(bitOR(bitAND(param2,param3),bitAND(~param2,param4)),param1,param2,param5,param6,param7);
      }
      
      private static function gg(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return cmn(bitOR(bitAND(param2,param4),bitAND(param3,~param4)),param1,param2,param5,param6,param7);
      }
      
      private static function hh(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return cmn(bitXOR(bitXOR(param2,param3),param4),param1,param2,param5,param6,param7);
      }
      
      private static function ii(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return cmn(bitXOR(param3,bitOR(param2,~param4)),param1,param2,param5,param6,param7);
      }
      
      internal static function MD5(param1:String) : String
      {
         false;
         true;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc2_:Array = str2blks_MD5(param1);
         var _loc3_:Number = 1732584193;
         var _loc4_:Number = -271733879;
         var _loc5_:Number = -1732584194;
         var _loc6_:Number = 271733878;
         _loc7_ = 0;
         while(_loc7_ < _loc2_.length)
         {
            false;
            false;
            _loc8_ = _loc3_;
            true;
            true;
            false;
            false;
            _loc9_ = _loc4_;
            _loc10_ = _loc5_;
            _loc11_ = _loc6_;
            true;
            true;
            _loc3_ = ff(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 0],7,-680876936);
            false;
            false;
            _loc6_ = ff(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 1],12,-389564586);
            _loc5_ = ff(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 2],17,606105819);
            false;
            false;
            _loc4_ = ff(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 3],22,-1044525330);
            true;
            true;
            _loc3_ = ff(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 4],7,-176418897);
            _loc6_ = ff(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 5],12,1200080426);
            false;
            false;
            _loc5_ = ff(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 6],17,-1473231341);
            false;
            false;
            _loc4_ = ff(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 7],22,-45705983);
            _loc3_ = ff(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 8],7,1770035416);
            true;
            true;
            _loc6_ = ff(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 9],12,-1958414417);
            true;
            true;
            false;
            false;
            _loc5_ = ff(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 10],17,-42063);
            true;
            true;
            _loc4_ = ff(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 11],22,-1990404162);
            _loc3_ = ff(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 12],7,1804603682);
            false;
            false;
            _loc6_ = ff(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 13],12,-40341101);
            false;
            false;
            _loc5_ = ff(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 14],17,-1502002290);
            _loc4_ = ff(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 15],22,1236535329);
            true;
            true;
            false;
            false;
            _loc3_ = gg(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 1],5,-165796510);
            _loc6_ = gg(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 6],9,-1069501632);
            true;
            true;
            _loc5_ = gg(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 11],14,643717713);
            true;
            true;
            _loc4_ = gg(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 0],20,-373897302);
            _loc3_ = gg(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 5],5,-701558691);
            true;
            true;
            _loc6_ = gg(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 10],9,38016083);
            _loc5_ = gg(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 15],14,-660478335);
            _loc4_ = gg(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 4],20,-405537848);
            true;
            true;
            true;
            true;
            _loc3_ = gg(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 9],5,568446438);
            _loc6_ = gg(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 14],9,-1019803690);
            _loc5_ = gg(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 3],14,-187363961);
            false;
            false;
            false;
            false;
            _loc4_ = gg(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 8],20,1163531501);
            _loc3_ = gg(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 13],5,-1444681467);
            true;
            true;
            _loc6_ = gg(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 2],9,-51403784);
            false;
            false;
            _loc5_ = gg(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 7],14,1735328473);
            true;
            true;
            _loc4_ = gg(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 12],20,-1926607734);
            _loc3_ = hh(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 5],4,-378558);
            _loc6_ = hh(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 8],11,-2022574463);
            true;
            true;
            _loc5_ = hh(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 11],16,1839030562);
            false;
            false;
            true;
            true;
            _loc4_ = hh(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 14],23,-35309556);
            true;
            true;
            _loc3_ = hh(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 1],4,-1530992060);
            true;
            true;
            _loc6_ = hh(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 4],11,1272893353);
            _loc5_ = hh(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 7],16,-155497632);
            false;
            false;
            _loc4_ = hh(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 10],23,-1094730640);
            _loc3_ = hh(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 13],4,681279174);
            true;
            true;
            true;
            true;
            _loc6_ = hh(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 0],11,-358537222);
            false;
            false;
            _loc5_ = hh(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 3],16,-722521979);
            false;
            false;
            _loc4_ = hh(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 6],23,76029189);
            true;
            true;
            _loc3_ = hh(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 9],4,-640364487);
            false;
            false;
            _loc6_ = hh(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 12],11,-421815835);
            _loc5_ = hh(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 15],16,530742520);
            true;
            true;
            true;
            true;
            _loc4_ = hh(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 2],23,-995338651);
            false;
            false;
            _loc3_ = ii(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 0],6,-198630844);
            true;
            true;
            false;
            false;
            _loc6_ = ii(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 7],10,1126891415);
            _loc5_ = ii(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 14],15,-1416354905);
            false;
            false;
            _loc4_ = ii(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 5],21,-57434055);
            _loc3_ = ii(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 12],6,1700485571);
            _loc6_ = ii(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 3],10,-1894986606);
            true;
            true;
            _loc5_ = ii(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 10],15,-1051523);
            true;
            true;
            _loc4_ = ii(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 1],21,-2054922799);
            true;
            true;
            _loc3_ = ii(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 8],6,1873313359);
            _loc6_ = ii(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 15],10,-30611744);
            true;
            true;
            _loc5_ = ii(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 6],15,-1560198380);
            _loc4_ = ii(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 13],21,1309151649);
            _loc3_ = ii(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 4],6,-145523070);
            _loc6_ = ii(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 11],10,-1120210379);
            _loc5_ = ii(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 2],15,718787259);
            _loc4_ = ii(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 9],21,-343485551);
            true;
            true;
            _loc3_ = addme(_loc3_,_loc8_);
            _loc4_ = addme(_loc4_,_loc9_);
            _loc5_ = addme(_loc5_,_loc10_);
            _loc6_ = addme(_loc6_,_loc11_);
            true;
            true;
            true;
            true;
            _loc7_ += 16;
         }
         return rhex(_loc3_) + rhex(_loc4_) + rhex(_loc5_) + rhex(_loc6_);
      }
   }
}
