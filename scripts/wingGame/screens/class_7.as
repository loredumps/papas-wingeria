package wingGame.screens
{
   import Playtomic.*;
   import flash.display.*;
   import flash.events.*;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import package_4.class_4;
   
   public class class_7
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public function class_7(param1:class_4)
      {
         true;
         true;
         super();
         var _loc2_:class_7 = this;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
         false;
         false;
         _loc2_.gameObj.var_10.api.method_27("StolenScreen","PreGame");
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:class_7 = this;
         true;
         true;
         _loc1_.clip = new lockScreenMC();
         false;
         false;
         _loc1_.gameObj.addChild(_loc1_.clip);
         _loc1_.clip.btn.addEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
         true;
         true;
         _loc1_.clip.license_btn.addEventListener(MouseEvent.CLICK,_loc1_.method_3);
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:class_7 = this;
         false;
         false;
         if(_loc2_.gameObj.var_10.api.var_33)
         {
            false;
            false;
            Link.Open("http://www.flipline.com","StolenScreenPlayLink","LogoLinks");
         }
         else
         {
            navigateToURL(new URLRequest("http://www.flipline.com"),"_blank");
         }
      }
      
      public function method_3(param1:MouseEvent) : void
      {
         var _loc2_:class_7 = this;
         if(_loc2_.gameObj.var_10.api.var_33)
         {
            false;
            false;
            Link.Open("http://www.flipline.com/papaswingeria_licenseredirect.html","StolenScreenLicenseLink","LogoLinks");
            false;
            false;
         }
         else
         {
            navigateToURL(new URLRequest("http://www.flipline.com/papaswingeria_licenseredirect.html"),"_blank");
         }
      }
   }
}
