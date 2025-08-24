package Playtomic
{
   import flash.utils.describeType;
   
   public class JSONEncoder
   {
       
      
      private var jsonString:String;
      
      public function JSONEncoder(param1:*)
      {
         false;
         true;
         true;
         true;
         super();
         true;
         true;
         this.jsonString = this.convertToString(param1);
      }
      
      public function getString() : String
      {
         return this.jsonString;
      }
      
      private function convertToString(param1:*) : String
      {
         false;
         true;
         false;
         false;
         true;
         true;
         if(param1 is String)
         {
            true;
            true;
            return this.escapeString(param1 as String);
         }
         if(param1 is Number)
         {
            return isFinite(param1 as Number) ? String(param1.toString()) : "null";
         }
         if(param1 is Boolean)
         {
            return !!param1 ? "true" : "false";
         }
         if(param1 is Array)
         {
            false;
            false;
            return this.arrayToString(param1 as Array);
         }
         if(param1 is Object && param1 != null)
         {
            return this.objectToString(param1);
         }
         return "null";
      }
      
      private function escapeString(param1:String) : String
      {
         var _loc3_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            true;
            true;
            _loc3_ = param1.charAt(_loc5_);
            var _loc8_:* = _loc3_;
            true;
            true;
            true;
            true;
            switch(_loc8_)
            {
               case "\"":
            }
            _loc2_ += "\\\"";
            _loc5_++;
            true;
            true;
         }
         return "\"" + _loc2_ + "\"";
      }
      
      private function arrayToString(param1:Array) : String
      {
         false;
         true;
         var _loc2_:* = "";
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            true;
            true;
            if(_loc2_.length > 0)
            {
               true;
               true;
               false;
               false;
               _loc2_ += ",";
               false;
               false;
            }
            _loc2_ += this.convertToString(param1[_loc4_]);
            false;
            false;
            _loc4_++;
            false;
            false;
         }
         true;
         true;
         return "[" + _loc2_ + "]";
      }
      
      private function objectToString(param1:Object) : String
      {
         var value:Object = null;
         var key:String = null;
         var v:XML = null;
         var o:Object = param1;
         var s:String = "";
         var classInfo:XML = describeType(o);
         if(classInfo.@name.toString() == "Object")
         {
            var _loc3_:int = 0;
            var _loc4_:* = o;
            while(true)
            {
               true;
               true;
               if(!(§§hasnext(_loc4_,_loc3_)))
               {
                  break;
               }
            }
            false;
            false;
            false;
            false;
         }
         else
         {
            _loc3_ = 0;
            false;
            false;
            _loc4_ = classInfo..*.(false, false, name() == "variable" || name() == "accessor" && attribute("access").toString().charAt(0) == "r");
            while(§§hasnext(_loc4_,_loc3_))
            {
               false;
               false;
               v = §§nextvalue(_loc3_,_loc4_);
               true;
               true;
               false;
               false;
               if(!(Boolean(v.metadata) && v.metadata.(@name == "Transient").length() > 0))
               {
                  false;
                  false;
                  if(s.length > 0)
                  {
                     true;
                     true;
                     true;
                     true;
                     s += ",";
                  }
                  true;
                  true;
                  true;
                  true;
                  s += this.escapeString(v.@name.toString()) + ":" + this.convertToString(o[v.@name]);
               }
            }
         }
         false;
         false;
         return "{" + s + "}";
      }
   }
}
