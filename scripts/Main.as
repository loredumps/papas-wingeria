package
{
   import flash.display.Sprite;
   import flash.events.Event;
   import package_4.class_4;
   
   public class Main extends Sprite
   {
       
      
      public var gameModule:class_4;
      
      public function Main()
      {
         false;
         true;
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.init);
         }
      }
      
      private function init(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         this.gameModule = new class_4();
         this.addChild(this.gameModule);
         this.gameModule.method_141();
      }
   }
}
