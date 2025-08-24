package wingGame.screens
{
   import Playtomic.*;
   import flash.display.*;
   import flash.events.*;
   import package_4.class_4;
   
   public class FliplineLogoScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public function FliplineLogoScreen(param1:class_4)
      {
         false;
         true;
         super();
         var _loc2_:FliplineLogoScreen = this;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
         true;
         true;
         _loc2_.gameObj.var_10.api.method_27("FliplineLogoScreen","PreGame");
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:FliplineLogoScreen = this;
         true;
         true;
         _loc1_.clip = new fliplineLogoMC();
         _loc1_.gameObj.addChild(_loc1_.clip);
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.clip.btn.addEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
         false;
         false;
         _loc1_.gameObj.stage.frameRate = 24;
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc2_:FliplineLogoScreen = this;
         if(_loc2_.clip.currentLabel == "stopframe")
         {
            _loc2_.clip.stop();
            false;
            false;
            _loc2_.gameObj.stage.frameRate = 30;
            true;
            true;
            false;
            false;
            _loc2_.gameObj.var_10.api.method_32("SplashScreen");
            false;
            false;
            _loc2_.gameObj.var_10.api.method_27("SplashScreen","PreGame");
            _loc2_.gameObj.method_110();
         }
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc2_:FliplineLogoScreen = this;
         false;
         false;
         _loc2_.gameObj.var_10.api.method_28("http://www.flipline.com?utm_source=game_links&utm_medium=game_intro&utm_campaign=papaswingeria","FliplinePreroll","LogoLinks");
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:FliplineLogoScreen = this;
         true;
         true;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.clip.btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
         _loc1_.gameObj.removeChild(_loc1_.clip);
         true;
         true;
         _loc1_.clip = null;
      }
   }
}
