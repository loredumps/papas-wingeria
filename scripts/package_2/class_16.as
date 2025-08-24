package package_2
{
   import flash.display.*;
   import flash.geom.*;
   import flash.utils.*;
   
   public class class_16
   {
       
      
      private var var_71:Array;
      
      private var var_99:Array;
      
      private var var_102:Array;
      
      private var var_136:Array;
      
      private var var_97:Array;
      
      private var var_139:Array;
      
      private var var_118:Array;
      
      private var var_145:Array;
      
      private var var_110:Array;
      
      private var var_119:Array;
      
      private var var_132:Array;
      
      private var var_111:Array;
      
      private var var_129:Array;
      
      private var var_121:Array;
      
      private var var_116:Array;
      
      private var var_123:Array;
      
      private var var_113:Array;
      
      private var var_58:Array;
      
      private var var_89:Array;
      
      private var var_112:ByteArray;
      
      private var var_68:int = 0;
      
      private var var_55:int = 7;
      
      private var var_62:Array;
      
      private var var_125:Array;
      
      private var var_114:Array;
      
      private var var_127:Array;
      
      public function class_16(param1:Number = 50)
      {
         false;
         true;
         this.var_71 = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         this.var_99 = new Array(64);
         this.var_102 = new Array(64);
         true;
         true;
         this.var_136 = new Array(64);
         this.var_97 = new Array(64);
         this.var_119 = [0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0];
         this.var_132 = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.var_111 = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
         this.var_129 = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
         this.var_121 = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
         this.var_116 = [0,1,2,3,4,5,6,7,8,9,10,11];
         true;
         true;
         this.var_123 = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
         false;
         false;
         this.var_113 = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
         this.var_58 = new Array(65535);
         this.var_89 = new Array(65535);
         this.var_62 = new Array(64);
         this.var_125 = new Array(64);
         this.var_114 = new Array(64);
         this.var_127 = new Array(64);
         false;
         false;
         super();
         false;
         false;
         if(param1 <= 0)
         {
            param1 = 1;
         }
         true;
         true;
         if(param1 > 100)
         {
            true;
            true;
            param1 = 100;
         }
         var _loc2_:int = 0;
         true;
         true;
         if(param1 < 50)
         {
            false;
            false;
            _loc2_ = int(5000 / param1);
         }
         else
         {
            _loc2_ = int(200 - param1 * 2);
         }
         this.method_101();
         this.method_115();
         this.method_135(_loc2_);
      }
      
      private function method_135(param1:int) : void
      {
         false;
         true;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc8_:int = 0;
         var _loc4_:Array = [16,11,10,16,24,40,51,61,12,12,14,19,26,58,60,55,14,13,16,24,40,57,69,56,14,17,22,29,51,87,80,62,18,22,37,56,68,109,103,77,24,35,55,64,81,104,113,92,49,64,78,87,103,121,120,101,72,92,95,98,112,100,103,99];
         false;
         false;
         _loc2_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc2_ >= 64)
            {
               break;
            }
            false;
            false;
            _loc3_ = Math.floor((_loc4_[_loc2_] * param1 + 50) / 100);
            true;
            true;
            if(_loc3_ < 1)
            {
               true;
               true;
               _loc3_ = 1;
               false;
               false;
            }
            else if(_loc3_ > 255)
            {
               false;
               false;
               _loc3_ = 255;
            }
            this.var_99[this.var_71[_loc2_]] = _loc3_;
            _loc2_++;
         }
         var _loc5_:Array = [17,18,24,47,99,99,99,99,18,21,26,66,99,99,99,99,24,26,56,99,99,99,99,99,47,66,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99];
         false;
         false;
         _loc2_ = 0;
         while(_loc2_ < 64)
         {
            true;
            true;
            _loc3_ = Math.floor((_loc5_[_loc2_] * param1 + 50) / 100);
            true;
            true;
            if(_loc3_ < 1)
            {
               _loc3_ = 1;
            }
            else if(_loc3_ > 255)
            {
               true;
               true;
               _loc3_ = 255;
            }
            this.var_102[this.var_71[_loc2_]] = _loc3_;
            false;
            false;
            _loc2_++;
            false;
            false;
         }
         var _loc6_:Array = [1,1.387039845,1.306562965,1.175875602,1,0.785694958,0.5411961,0.275899379];
         false;
         false;
         _loc2_ = 0;
         var _loc7_:int = 0;
         true;
         true;
         while(_loc7_ < 8)
         {
            _loc8_ = 0;
            false;
            false;
            while(true)
            {
               false;
               false;
               if(_loc8_ >= 8)
               {
                  break;
               }
               false;
               false;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               this.var_136[_loc2_] = 1 / (this.var_99[this.var_71[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8);
               this.var_97[_loc2_] = 1 / (this.var_102[this.var_71[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8);
               _loc2_++;
               _loc8_++;
            }
            _loc7_++;
         }
      }
      
      private function method_46(param1:Array, param2:Array) : Array
      {
         var _loc7_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = new Array();
         var _loc6_:int = 1;
         while(_loc6_ <= 16)
         {
            _loc7_ = 1;
            true;
            true;
            while(_loc7_ <= param1[_loc6_])
            {
               _loc5_[param2[_loc4_]] = new class_21();
               _loc5_[param2[_loc4_]].val = _loc3_;
               _loc5_[param2[_loc4_]].len = _loc6_;
               _loc4_++;
               _loc3_++;
               _loc7_++;
            }
            true;
            true;
            _loc3_ *= 2;
            _loc6_++;
         }
         return _loc5_;
      }
      
      private function method_101() : void
      {
         false;
         true;
         true;
         true;
         this.var_139 = this.method_46(this.var_119,this.var_132);
         this.var_118 = this.method_46(this.var_121,this.var_116);
         false;
         false;
         this.var_145 = this.method_46(this.var_111,this.var_129);
         false;
         false;
         this.var_110 = this.method_46(this.var_123,this.var_113);
      }
      
      private function method_115() : void
      {
         var _loc3_:int = 0;
         var _loc1_:* = 1;
         var _loc2_:* = 2;
         var _loc4_:int = 1;
         while(_loc4_ <= 15)
         {
            true;
            true;
            _loc3_ = _loc1_;
            while(true)
            {
               true;
               true;
               if(_loc3_ >= _loc2_)
               {
                  break;
               }
               false;
               false;
               true;
               true;
               true;
               true;
               this.var_89[32767 + _loc3_] = _loc4_;
               this.var_58[32767 + _loc3_] = new class_21();
               true;
               true;
               this.var_58[32767 + _loc3_].len = _loc4_;
               this.var_58[32767 + _loc3_].val = _loc3_;
               _loc3_++;
            }
            false;
            false;
            _loc3_ = -(_loc2_ - 1);
            while(true)
            {
               false;
               false;
               if(_loc3_ > -_loc1_)
               {
                  break;
               }
               this.var_89[32767 + _loc3_] = _loc4_;
               false;
               false;
               this.var_58[32767 + _loc3_] = new class_21();
               true;
               true;
               false;
               false;
               true;
               true;
               this.var_58[32767 + _loc3_].len = _loc4_;
               this.var_58[32767 + _loc3_].val = _loc2_ - 1 + _loc3_;
               false;
               false;
               _loc3_++;
            }
            false;
            false;
            _loc1_ <<= 1;
            _loc2_ <<= 1;
            _loc4_++;
         }
      }
      
      private function method_36(param1:class_21) : void
      {
         false;
         true;
         var _loc2_:int = param1.val;
         false;
         false;
         var _loc3_:int = param1.len - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_ & uint(1 << _loc3_))
            {
               true;
               true;
               false;
               false;
               this.var_68 |= uint(1 << this.var_55);
            }
            _loc3_--;
            true;
            true;
            var _loc4_:*;
            var _loc5_:* = (_loc4_ = this).var_55 - 1;
            false;
            false;
            _loc4_.var_55 = _loc5_;
            false;
            false;
            if(this.var_55 < 0)
            {
               false;
               false;
               false;
               false;
               if(this.var_68 == 255)
               {
                  this.writeByte(255);
                  this.writeByte(0);
                  true;
                  true;
               }
               else
               {
                  this.writeByte(this.var_68);
               }
               this.var_55 = 7;
               this.var_68 = 0;
            }
         }
      }
      
      private function writeByte(param1:int) : void
      {
         true;
         true;
         this.var_112.writeByte(param1);
      }
      
      private function method_30(param1:int) : void
      {
         false;
         false;
         this.writeByte(param1 >> 8 & 255);
         this.writeByte(param1 & 255);
      }
      
      private function method_96(param1:Array, param2:Array) : Array
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         false;
         false;
         _loc22_ = 0;
         while(_loc22_ < 8)
         {
            _loc3_ = param1[_loc23_ + 0] + param1[_loc23_ + 7];
            false;
            false;
            _loc10_ = param1[_loc23_ + 0] - param1[_loc23_ + 7];
            true;
            true;
            _loc4_ = param1[_loc23_ + 1] + param1[_loc23_ + 6];
            true;
            true;
            true;
            true;
            _loc9_ = param1[_loc23_ + 1] - param1[_loc23_ + 6];
            false;
            false;
            _loc5_ = param1[_loc23_ + 2] + param1[_loc23_ + 5];
            true;
            true;
            _loc8_ = param1[_loc23_ + 2] - param1[_loc23_ + 5];
            false;
            false;
            _loc6_ = param1[_loc23_ + 3] + param1[_loc23_ + 4];
            _loc7_ = param1[_loc23_ + 3] - param1[_loc23_ + 4];
            false;
            false;
            _loc11_ = _loc3_ + _loc6_;
            _loc14_ = _loc3_ - _loc6_;
            _loc12_ = _loc4_ + _loc5_;
            false;
            false;
            false;
            false;
            true;
            true;
            _loc13_ = _loc4_ - _loc5_;
            param1[_loc23_ + 0] = _loc11_ + _loc12_;
            false;
            false;
            true;
            true;
            param1[_loc23_ + 4] = _loc11_ - _loc12_;
            _loc15_ = (_loc13_ + _loc14_) * 0.707106781;
            true;
            true;
            true;
            true;
            param1[_loc23_ + 2] = _loc14_ + _loc15_;
            true;
            true;
            param1[_loc23_ + 6] = _loc14_ - _loc15_;
            _loc11_ = _loc7_ + _loc8_;
            false;
            false;
            _loc12_ = _loc8_ + _loc9_;
            _loc13_ = _loc9_ + _loc10_;
            false;
            false;
            false;
            false;
            _loc19_ = (_loc11_ - _loc13_) * 0.382683433;
            false;
            false;
            false;
            false;
            true;
            true;
            _loc16_ = 0.5411961 * _loc11_ + _loc19_;
            false;
            false;
            _loc18_ = 1.306562965 * _loc13_ + _loc19_;
            true;
            true;
            _loc17_ = _loc12_ * 0.707106781;
            false;
            false;
            _loc20_ = _loc10_ + _loc17_;
            true;
            true;
            _loc21_ = _loc10_ - _loc17_;
            true;
            true;
            false;
            false;
            param1[_loc23_ + 5] = _loc21_ + _loc16_;
            false;
            false;
            false;
            false;
            param1[_loc23_ + 3] = _loc21_ - _loc16_;
            false;
            false;
            true;
            true;
            false;
            false;
            false;
            false;
            param1[_loc23_ + 1] = _loc20_ + _loc18_;
            param1[_loc23_ + 7] = _loc20_ - _loc18_;
            _loc23_ += 8;
            _loc22_++;
         }
         true;
         true;
         _loc23_ = 0;
         _loc22_ = 0;
         while(_loc22_ < 8)
         {
            _loc3_ = param1[_loc23_ + 0] + param1[_loc23_ + 56];
            true;
            true;
            _loc10_ = param1[_loc23_ + 0] - param1[_loc23_ + 56];
            _loc4_ = param1[_loc23_ + 8] + param1[_loc23_ + 48];
            false;
            false;
            true;
            true;
            true;
            true;
            _loc9_ = param1[_loc23_ + 8] - param1[_loc23_ + 48];
            false;
            false;
            true;
            true;
            _loc5_ = param1[_loc23_ + 16] + param1[_loc23_ + 40];
            _loc8_ = param1[_loc23_ + 16] - param1[_loc23_ + 40];
            _loc6_ = param1[_loc23_ + 24] + param1[_loc23_ + 32];
            _loc7_ = param1[_loc23_ + 24] - param1[_loc23_ + 32];
            _loc11_ = _loc3_ + _loc6_;
            false;
            false;
            _loc14_ = _loc3_ - _loc6_;
            true;
            true;
            _loc12_ = _loc4_ + _loc5_;
            false;
            false;
            false;
            false;
            true;
            true;
            _loc13_ = _loc4_ - _loc5_;
            true;
            true;
            param1[_loc23_ + 0] = _loc11_ + _loc12_;
            false;
            false;
            param1[_loc23_ + 32] = _loc11_ - _loc12_;
            _loc15_ = (_loc13_ + _loc14_) * 0.707106781;
            true;
            true;
            false;
            false;
            false;
            false;
            false;
            false;
            param1[_loc23_ + 16] = _loc14_ + _loc15_;
            true;
            true;
            true;
            true;
            false;
            false;
            param1[_loc23_ + 48] = _loc14_ - _loc15_;
            false;
            false;
            _loc11_ = _loc7_ + _loc8_;
            true;
            true;
            _loc12_ = _loc8_ + _loc9_;
            true;
            true;
            false;
            false;
            _loc13_ = _loc9_ + _loc10_;
            _loc19_ = (_loc11_ - _loc13_) * 0.382683433;
            true;
            true;
            true;
            true;
            _loc16_ = 0.5411961 * _loc11_ + _loc19_;
            true;
            true;
            _loc18_ = 1.306562965 * _loc13_ + _loc19_;
            _loc17_ = _loc12_ * 0.707106781;
            _loc20_ = _loc10_ + _loc17_;
            _loc21_ = _loc10_ - _loc17_;
            true;
            true;
            false;
            false;
            param1[_loc23_ + 40] = _loc21_ + _loc16_;
            false;
            false;
            false;
            false;
            param1[_loc23_ + 24] = _loc21_ - _loc16_;
            true;
            true;
            true;
            true;
            false;
            false;
            param1[_loc23_ + 8] = _loc20_ + _loc18_;
            true;
            true;
            param1[_loc23_ + 56] = _loc20_ - _loc18_;
            _loc23_++;
            _loc22_++;
         }
         _loc22_ = 0;
         while(_loc22_ < 64)
         {
            true;
            true;
            param1[_loc22_] = Math.round(param1[_loc22_] * param2[_loc22_]);
            _loc22_++;
         }
         return param1;
      }
      
      private function method_121() : void
      {
         false;
         false;
         this.method_30(65504);
         this.method_30(16);
         this.writeByte(74);
         this.writeByte(70);
         this.writeByte(73);
         this.writeByte(70);
         this.writeByte(0);
         this.writeByte(1);
         this.writeByte(1);
         this.writeByte(0);
         this.method_30(1);
         this.method_30(1);
         true;
         true;
         this.writeByte(0);
         this.writeByte(0);
      }
      
      private function method_129(param1:int, param2:int) : void
      {
         this.method_30(65472);
         false;
         false;
         this.method_30(17);
         this.writeByte(8);
         this.method_30(param2);
         this.method_30(param1);
         this.writeByte(3);
         this.writeByte(1);
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(2);
         this.writeByte(17);
         this.writeByte(1);
         this.writeByte(3);
         true;
         true;
         this.writeByte(17);
         false;
         false;
         this.writeByte(1);
      }
      
      private function method_147() : void
      {
         var _loc1_:int = 0;
         true;
         true;
         this.method_30(65499);
         this.method_30(132);
         this.writeByte(0);
         true;
         true;
         _loc1_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc1_ >= 64)
            {
               break;
            }
            this.writeByte(this.var_99[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         true;
         true;
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this.var_102[_loc1_]);
            _loc1_++;
         }
      }
      
      private function method_98() : void
      {
         var _loc1_:int = 0;
         this.method_30(65476);
         false;
         false;
         this.method_30(418);
         this.writeByte(0);
         false;
         false;
         _loc1_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc1_ >= 16)
            {
               break;
            }
            this.writeByte(this.var_119[_loc1_ + 1]);
            _loc1_++;
            true;
            true;
         }
         _loc1_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc1_ > 11)
            {
               break;
            }
            this.writeByte(this.var_132[_loc1_]);
            _loc1_++;
         }
         this.writeByte(16);
         false;
         false;
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.var_111[_loc1_ + 1]);
            false;
            false;
            _loc1_++;
         }
         _loc1_ = 0;
         false;
         false;
         while(_loc1_ <= 161)
         {
            this.writeByte(this.var_129[_loc1_]);
            false;
            false;
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc1_ >= 16)
            {
               break;
            }
            this.writeByte(this.var_121[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this.var_116[_loc1_]);
            _loc1_++;
         }
         this.writeByte(17);
         _loc1_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc1_ >= 16)
            {
               break;
            }
            this.writeByte(this.var_123[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         true;
         true;
         while(_loc1_ <= 161)
         {
            this.writeByte(this.var_113[_loc1_]);
            _loc1_++;
         }
      }
      
      private function method_95() : void
      {
         this.method_30(65498);
         true;
         true;
         this.method_30(12);
         this.writeByte(3);
         this.writeByte(1);
         this.writeByte(0);
         this.writeByte(2);
         this.writeByte(17);
         false;
         false;
         this.writeByte(3);
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(63);
         this.writeByte(0);
      }
      
      private function method_62(param1:Array, param2:Array, param3:Number, param4:Array, param5:Array) : Number
      {
         var _loc8_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc6_:class_21 = param5[0];
         var _loc7_:class_21 = param5[240];
         var _loc9_:Array = this.method_96(param1,param2);
         _loc8_ = 0;
         while(_loc8_ < 64)
         {
            false;
            false;
            this.var_62[this.var_71[_loc8_]] = _loc9_[_loc8_];
            _loc8_++;
            false;
            false;
         }
         var _loc10_:int = this.var_62[0] - param3;
         false;
         false;
         param3 = Number(this.var_62[0]);
         false;
         false;
         if(_loc10_ == 0)
         {
            false;
            false;
            this.method_36(param4[0]);
            true;
            true;
         }
         else
         {
            this.method_36(param4[this.var_89[32767 + _loc10_]]);
            this.method_36(this.var_58[32767 + _loc10_]);
         }
         var _loc11_:int = 63;
         false;
         false;
         while(true)
         {
            false;
            false;
            true;
            true;
            if(!(_loc11_ > 0 && this.var_62[_loc11_] == 0))
            {
               break;
            }
            _loc11_--;
         }
         true;
         true;
         if(_loc11_ == 0)
         {
            this.method_36(_loc6_);
            true;
            true;
            return param3;
         }
         true;
         true;
         _loc8_ = 1;
         while(true)
         {
            true;
            true;
            if(_loc8_ > _loc11_)
            {
               break;
            }
            true;
            true;
            _loc12_ = _loc8_;
            true;
            true;
            while(true)
            {
               true;
               true;
               §§push(this.var_62[_loc8_] == 0);
               if(this.var_62[_loc8_] == 0)
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  false;
                  false;
                  §§push(_loc8_ <= _loc11_);
               }
               if(!§§pop())
               {
                  break;
               }
               _loc8_++;
            }
            true;
            true;
            false;
            false;
            true;
            true;
            false;
            false;
            if((_loc13_ = _loc8_ - _loc12_) >= 16)
            {
               false;
               false;
               _loc14_ = 1;
               false;
               false;
               while(true)
               {
                  false;
                  false;
                  if(_loc14_ > _loc13_ / 16)
                  {
                     break;
                  }
                  this.method_36(_loc7_);
                  true;
                  true;
                  _loc14_++;
               }
               _loc13_ = int(_loc13_ & 15);
               true;
               true;
            }
            this.method_36(param5[_loc13_ * 16 + this.var_89[32767 + this.var_62[_loc8_]]]);
            this.method_36(this.var_58[32767 + this.var_62[_loc8_]]);
            true;
            true;
            _loc8_++;
         }
         if(_loc11_ != 63)
         {
            this.method_36(_loc6_);
         }
         return param3;
      }
      
      private function method_148(param1:BitmapData, param2:int, param3:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:uint = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < 8)
         {
            _loc6_ = 0;
            true;
            true;
            while(true)
            {
               false;
               false;
               false;
               false;
               if(_loc6_ >= 8)
               {
                  break;
               }
               _loc7_ = param1.getPixel32(param2 + _loc6_,param3 + _loc5_);
               false;
               false;
               _loc8_ = Number(_loc7_ >> 16 & 255);
               true;
               true;
               _loc9_ = Number(_loc7_ >> 8 & 255);
               _loc10_ = Number(_loc7_ & 255);
               false;
               false;
               false;
               false;
               false;
               false;
               false;
               false;
               false;
               false;
               this.var_125[_loc4_] = 0.299 * _loc8_ + 0.587 * _loc9_ + 0.114 * _loc10_ - 128;
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
               this.var_114[_loc4_] = -0.16874 * _loc8_ + -0.33126 * _loc9_ + 0.5 * _loc10_;
               true;
               true;
               false;
               false;
               true;
               true;
               this.var_127[_loc4_] = 0.5 * _loc8_ + -0.41869 * _loc9_ + -0.08131 * _loc10_;
               _loc4_++;
               _loc6_++;
            }
            _loc5_++;
         }
      }
      
      public function method_123(param1:BitmapData) : ByteArray
      {
         false;
         true;
         var _loc6_:int = 0;
         var _loc7_:class_21 = null;
         true;
         true;
         this.var_112 = new ByteArray();
         this.var_68 = 0;
         this.var_55 = 7;
         this.method_30(65496);
         this.method_121();
         this.method_147();
         this.method_129(param1.width,param1.height);
         this.method_98();
         this.method_95();
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         this.var_68 = 0;
         this.var_55 = 7;
         var _loc5_:int = 0;
         while(_loc5_ < param1.height)
         {
            true;
            true;
            _loc6_ = 0;
            while(_loc6_ < param1.width)
            {
               this.method_148(param1,_loc6_,_loc5_);
               false;
               false;
               _loc2_ = this.method_62(this.var_125,this.var_136,_loc2_,this.var_139,this.var_145);
               true;
               true;
               _loc3_ = this.method_62(this.var_114,this.var_97,_loc3_,this.var_118,this.var_110);
               true;
               true;
               _loc4_ = this.method_62(this.var_127,this.var_97,_loc4_,this.var_118,this.var_110);
               _loc6_ += 8;
            }
            false;
            false;
            _loc5_ += 8;
            false;
            false;
         }
         if(this.var_55 >= 0)
         {
            (_loc7_ = new class_21()).len = this.var_55 + 1;
            true;
            true;
            false;
            false;
            _loc7_.val = (1 << this.var_55 + 1) - 1;
            this.method_36(_loc7_);
         }
         this.method_30(65497);
         return this.var_112;
      }
   }
}
