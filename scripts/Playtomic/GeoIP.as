package Playtomic
{
   public final class GeoIP
   {
      
      private static var SECTION:String;
      
      private static var LOAD:String;
       
      
      public function GeoIP()
      {
         false;
         true;
         super();
      }
      
      internal static function Initialise(param1:String) : void
      {
         false;
         true;
         true;
         true;
         SECTION = Encode.MD5("geoip-" + param1);
         LOAD = Encode.MD5("geoip-lookup-" + param1);
      }
      
      public static function Lookup(param1:Function) : void
      {
         false;
         false;
         PRequest.Load(SECTION,LOAD,LookupComplete,param1);
      }
      
      private static function LookupComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         true;
         true;
         if(param1 == null)
         {
            return;
         }
         var _loc5_:Object = {
            "Code":"N/A",
            "Name":"UNKNOWN"
         };
         if(param4.Success)
         {
            false;
            false;
            _loc5_["Code"] = param3["location"]["code"];
            true;
            true;
            _loc5_["Name"] = param3["location"]["name"];
         }
         param1(_loc5_,param4);
         param2 = param2;
      }
   }
}
