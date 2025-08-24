package wingGame.screens
{
   import Playtomic.*;
   import flash.display.*;
   import flash.events.*;
   import package_4.class_4;
   
   public class SponsorLogoScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public function SponsorLogoScreen(param1:class_4)
      {
         false;
         true;
         true;
         true;
         super();
         var _loc2_:SponsorLogoScreen = this;
         _loc2_.gameObj = param1;
         false;
         false;
         _loc2_.setupScreen();
         true;
         true;
         _loc2_.gameObj.var_10.api.method_27("SponsorLogoScreen","PreGame");
      }
      
      public function setupScreen() : void
      {
         var _loc1_:SponsorLogoScreen = this;
         _loc1_.clip = new sponsorLogoMC();
         true;
         true;
         _loc1_.gameObj.addChild(_loc1_.clip);
         _loc1_.gameObj.stage.frameRate = 45;
         false;
         false;
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         true;
         true;
         _loc1_.clip.btn.addEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
      }
      
      public function updateScreen(param1:Event) : void
      {
         false;
         true;
         var _loc2_:SponsorLogoScreen = this;
         true;
         true;
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            false;
            false;
            _loc2_.gameObj.stage.frameRate = 30;
            false;
            false;
            true;
            true;
            _loc2_.gameObj.method_128();
            _loc2_.gameObj.method_144();
         }
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:SponsorLogoScreen = this;
         _loc2_.gameObj.var_10.api.method_28("http://www.papalouie.com?utm_source=game_links&utm_medium=game_intro&utm_campaign=papaswingeria","SponsorPreRoll","LogoLinks");
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:SponsorLogoScreen = this;
         false;
         false;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.clip.btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
         true;
         true;
         _loc1_.gameObj.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
   }
}
