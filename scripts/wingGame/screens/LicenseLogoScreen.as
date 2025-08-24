package wingGame.screens
{
   import Playtomic.*;
   import flash.display.*;
   import flash.events.*;
   import package_1.class_1;
   import package_4.class_4;
   
   public class LicenseLogoScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public function LicenseLogoScreen(param1:class_4)
      {
         super();
         var _loc2_:LicenseLogoScreen = this;
         true;
         true;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
         _loc2_.gameObj.var_10.api.method_27("LicenseLogoScreen","PreGame");
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:LicenseLogoScreen = this;
         _loc1_.clip = new licenseLogoMC();
         true;
         true;
         false;
         false;
         _loc1_.gameObj.addChild(_loc1_.clip);
         _loc1_.gameObj.stage.frameRate = 30;
         false;
         false;
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.clip.btn.addEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
         true;
         true;
         _loc1_.clip.btn.visible = false;
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc2_:LicenseLogoScreen = this;
         false;
         false;
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            _loc2_.gameObj.stage.frameRate = 30;
            true;
            true;
            false;
            false;
            _loc2_.gameObj.var_10.api.method_32("SplashScreen");
            false;
            false;
            true;
            true;
            _loc2_.gameObj.var_10.api.method_27("SplashScreen","PreGame");
            true;
            true;
            _loc2_.gameObj.method_138();
         }
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc2_:LicenseLogoScreen = this;
         true;
         true;
         _loc2_.gameObj.var_10.api.method_28(class_1.method_7(),"LicensePreRoll","LogoLinks");
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:LicenseLogoScreen = this;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         false;
         false;
         _loc1_.clip.btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
         _loc1_.gameObj.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
   }
}
