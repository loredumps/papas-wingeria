package package_2
{
   public class class_5
   {
      
      public static var level:Number = 99;
      
      public static const ALL:Number = 99;
      
      public static const OUTPUT_LEVEL:Number = 5;
      
      public static const DEBUG_LEVEL:Number = 4;
      
      public static const INFO_LEVEL:Number = 3;
      
      public static const WARN_LEVEL:Number = 2;
      
      public static const ERROR_LEVEL:Number = 1;
      
      public static const const_3:Number = 0;
      
      {
         false;
         false;
         true;
         true;
      }
      
      public function class_5()
      {
         false;
         true;
         true;
         true;
         super();
      }
      
      public static function debug(... rest) : void
      {
         false;
         true;
         true;
         true;
         if(class_5.level >= class_5.DEBUG_LEVEL)
         {
            true;
            true;
            class_5.traceMessage(rest);
         }
      }
      
      public static function method_25(... rest) : void
      {
         false;
         true;
         true;
         true;
         class_5.debug(rest);
      }
      
      public static function info(... rest) : void
      {
         false;
         false;
         false;
         false;
         if(class_5.level >= class_5.INFO_LEVEL)
         {
            class_5.traceMessage(rest);
         }
      }
      
      public static function warn(... rest) : void
      {
         false;
         true;
         false;
         false;
         true;
         true;
         if(class_5.level >= class_5.WARN_LEVEL)
         {
            class_5.traceMessage(rest);
         }
      }
      
      public static function error(... rest) : void
      {
         false;
         true;
         true;
         true;
         if(class_5.level >= class_5.ERROR_LEVEL)
         {
            false;
            false;
            class_5.traceMessage("3:" + rest);
         }
      }
      
      public static function method_173(... rest) : void
      {
         if(class_5.level >= class_5.OUTPUT_LEVEL)
         {
            false;
            false;
            class_5.traceMessage(rest);
         }
      }
      
      public static function method_176(param1:String, param2:Number = 99) : void
      {
         true;
         true;
         if(class_5.level >= param2)
         {
            true;
            true;
            class_5.traceMessage(param1);
         }
      }
      
      private static function traceMessage(... rest) : void
      {
         false;
         true;
         trace(rest);
      }
      
      public static function method_59(param1:Number) : void
      {
         class_5.level = param1;
      }
   }
}
