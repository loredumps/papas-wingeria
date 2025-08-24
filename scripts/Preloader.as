package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.utils.getDefinitionByName;
   import package_1.class_1;
   import wingGame.screens.class_2;
   
   public dynamic class Preloader extends MovieClip
   {
       
      
      private var loadingScreen:class_2;
      
      public function Preloader()
      {
         false;
         true;
         super();
         false;
         false;
         stop();
         true;
         true;
         this.addEventListener(Event.ENTER_FRAME,this.initPreloader);
      }
      
      private function initPreloader(param1:Event) : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.initPreloader);
         class_1.init(loaderInfo);
         loaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioError);
         stop();
         this.graphics.beginFill(0);
         this.graphics.drawRect(0,0,1024,768);
         this.graphics.endFill();
         this.loadingScreen = new class_2(this,this.loadingFinished);
      }
      
      private function ioError(param1:IOErrorEvent) : void
      {
         true;
         true;
         trace(param1.text);
      }
      
      private function loadingFinished() : void
      {
         false;
         true;
         true;
         true;
         gotoAndStop(2);
         false;
         false;
         loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioError);
         false;
         false;
         this.startup();
      }
      
      private function startup() : void
      {
         false;
         true;
         var _loc1_:Class = getDefinitionByName("Main") as Class;
         false;
         false;
         addChild(new _loc1_() as DisplayObject);
         true;
         true;
         if(this.loadingScreen)
         {
            false;
            false;
            this.loadingScreen.destroy();
            this.loadingScreen = null;
         }
      }
   }
}
