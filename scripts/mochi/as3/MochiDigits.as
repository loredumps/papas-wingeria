package mochi.as3
{
   public final class MochiDigits
   {
       
      
      private var Fragment:Number;
      
      private var Sibling:MochiDigits;
      
      private var Encoder:Number;
      
      public function MochiDigits(param1:Number = 0, param2:uint = 0)
      {
         false;
         false;
         super();
         false;
         false;
         this.Encoder = 0;
         this.setValue(param1,param2);
      }
      
      public function get value() : Number
      {
         return Number(this.toString());
      }
      
      public function set value(param1:Number) : void
      {
         false;
         true;
         this.setValue(param1);
      }
      
      public function addValue(param1:Number) : void
      {
         false;
         true;
         this.value += param1;
      }
      
      public function setValue(param1:Number = 0, param2:uint = 0) : void
      {
         var _loc3_:String = param1.toString();
         true;
         true;
         false;
         false;
         this.Fragment = _loc3_.charCodeAt(param2++) ^ this.Encoder;
         if(param2 < _loc3_.length)
         {
            true;
            true;
            this.Sibling = new MochiDigits(param1,param2);
            false;
            false;
         }
         else
         {
            this.Sibling = null;
         }
         this.reencode();
      }
      
      public function reencode() : void
      {
         var _loc1_:uint = uint(int(2147483647 * Math.random()));
         this.Fragment ^= _loc1_ ^ this.Encoder;
         false;
         false;
         this.Encoder = _loc1_;
      }
      
      public function toString() : String
      {
         false;
         true;
         var _loc1_:String = String.fromCharCode(this.Fragment ^ this.Encoder);
         false;
         false;
         if(this.Sibling != null)
         {
            false;
            false;
            false;
            false;
            _loc1_ += this.Sibling.toString();
         }
         return _loc1_;
      }
   }
}
