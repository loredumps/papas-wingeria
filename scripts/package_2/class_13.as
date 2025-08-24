package package_2
{
   public class class_13
   {
       
      
      public function class_13()
      {
         false;
         true;
         super();
      }
      
      public static function method_38(param1:Array) : Array
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(param1 != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               if(param1[_loc3_] is Array)
               {
                  false;
                  false;
                  _loc2_[_loc3_] = class_13.method_38(param1[_loc3_]);
                  true;
                  true;
               }
               else
               {
                  _loc2_[_loc3_] = param1[_loc3_];
                  true;
                  true;
               }
               _loc3_++;
               true;
               true;
            }
         }
         return _loc2_;
      }
      
      public static function method_177(param1:Array) : *
      {
         return param1[Math.floor(Math.random() * param1.length)];
      }
   }
}
