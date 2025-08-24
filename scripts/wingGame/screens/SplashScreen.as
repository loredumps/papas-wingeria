package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.ui.*;
   import package_2.class_3;
   import package_4.class_4;
   
   public class SplashScreen
   {
       
      
      public var gameObj:class_4;
      
      public var container:MovieClip;
      
      public var clip:MovieClip;
      
      public var cloudSpeed:Number = 2;
      
      public var cloudWidth:Number = 640;
      
      public var isShowingCredits:Boolean = false;
      
      public var creditsDivisor:Number = 4;
      
      public function SplashScreen(param1:class_4, param2:MovieClip, param3:Object = null)
      {
         true;
         true;
         super();
         var _loc4_:SplashScreen;
         (_loc4_ = this).gameObj = param1;
         _loc4_.container = param2;
         _loc4_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc1_:SplashScreen = this;
         _loc1_.clip = new splashScreenMC();
         _loc1_.clip.iris.gotoAndStop(1);
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.container.addEventListener("clickStart",_loc1_.clickStart);
         _loc1_.container.addEventListener("clickCredits",_loc1_.clickCredits);
         _loc1_.container.addEventListener("clickHighScores",_loc1_.clickHighScores);
         _loc1_.clip.fader.mouseEnabled = false;
         _loc1_.clip.credits.y = 480;
         _loc1_.clip.credits.addEventListener(MouseEvent.CLICK,_loc1_.hideCredits);
         _loc1_.setupCredits(true);
         _loc1_.clip.version_txt.text = _loc1_.gameObj.var_10.var_158;
         _loc1_.gameObj.soundManager.switchMusic("title");
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.animateScreen);
         false;
         false;
         _loc1_.clip.promo_holder.promo_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPromo);
         false;
         false;
         if(class_3.method_2())
         {
            _loc1_.clip.promo_holder.visible = false;
         }
         _loc1_.gameObj.stage.frameRate = 30;
      }
      
      public function animateScreen(param1:Event) : void
      {
         var _loc2_:SplashScreen = this;
         true;
         true;
         _loc2_.clip.clouds.x -= _loc2_.cloudSpeed;
         false;
         false;
         if(_loc2_.clip.clouds.x <= 0 - _loc2_.cloudWidth)
         {
            false;
            false;
            _loc2_.clip.clouds.x += _loc2_.cloudWidth;
         }
         var _loc3_:Number = 999;
         false;
         false;
         false;
         false;
         if(_loc2_.isShowingCredits && _loc2_.clip.credits.y > 0)
         {
            false;
            false;
            true;
            true;
            _loc3_ = Number(_loc2_.clip.credits.y);
            _loc2_.clip.credits.y -= _loc3_ / _loc2_.creditsDivisor;
         }
         else if(!_loc2_.isShowingCredits && _loc2_.clip.credits.y < 480)
         {
            _loc3_ = 480 - _loc2_.clip.credits.y;
            _loc2_.clip.credits.y += _loc3_ / _loc2_.creditsDivisor;
         }
         if(_loc2_.clip.iris.currentFrame == _loc2_.clip.iris.totalFrames)
         {
            _loc2_.closeSplashScreen();
         }
      }
      
      public function clickStart(param1:Event) : void
      {
         var _loc2_:SplashScreen = this;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         true;
         true;
         _loc2_.gameObj.stage.frameRate = 30;
         false;
         false;
         if(_loc2_.isShowingCredits)
         {
            _loc2_.hideCredits();
            true;
            true;
         }
         _loc2_.gameObj.var_10.method_40();
         _loc2_.gameObj.var_10.api.method_106();
         _loc2_.clip.iris.gotoAndPlay("irisout");
         _loc2_.gameObj.var_10.api.method_34("SplashScreen");
      }
      
      public function clickHighScores(param1:Event) : void
      {
         var _loc2_:SplashScreen = this;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(_loc2_.gameObj.var_10.api.method_91())
         {
            false;
            false;
            _loc2_.gameObj.var_10.method_40();
         }
         else
         {
            _loc2_.gameObj.var_10.method_124();
         }
      }
      
      public function clickCredits(param1:Event) : void
      {
         false;
         true;
         var _loc2_:SplashScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.gameObj.var_10.method_40();
         true;
         true;
         _loc2_.isShowingCredits = !_loc2_.isShowingCredits;
      }
      
      public function hideCredits(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:SplashScreen = this;
         false;
         false;
         _loc2_.isShowingCredits = false;
      }
      
      public function clickPromo(param1:MouseEvent) : void
      {
         var _loc2_:SplashScreen = this;
         _loc2_.gameObj.var_10.api.method_28("http://itunes.apple.com/us/app/papas-burgeria/id514634235?ls=1&mt=8","iPadPromoSplash","Links");
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:SplashScreen = this;
         _loc1_.clip.promo_holder.promo_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPromo);
         _loc1_.setupCredits(false);
         _loc1_.container.removeEventListener("clickStart",_loc1_.clickStart);
         _loc1_.container.removeEventListener("clickCredits",_loc1_.clickCredits);
         true;
         true;
         _loc1_.container.removeEventListener("clickHighScores",_loc1_.clickHighScores);
         _loc1_.clip.credits.removeEventListener(MouseEvent.CLICK,_loc1_.hideCredits);
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.animateScreen);
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function closeSplashScreen(param1:MouseEvent = null) : void
      {
         var _loc2_:SplashScreen = this;
         false;
         false;
         _loc2_.gameObj.var_10.api.method_32("SlotSelect");
         false;
         false;
         _loc2_.gameObj.var_10.api.method_33("SplashScreen");
      }
      
      public function setupCredits(param1:Boolean = true) : void
      {
         var _loc2_:SplashScreen = this;
         if(param1)
         {
            _loc2_.clip.credits.inside.flipline1_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.flipline2_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.links.flipline3_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.links.papalouie_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsPapaLouie);
            _loc2_.clip.credits.inside.facebook_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickFacebook);
            _loc2_.clip.credits.inside.twitter_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickTwitter);
         }
         else
         {
            _loc2_.clip.credits.inside.flipline1_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            false;
            false;
            _loc2_.clip.credits.inside.flipline2_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.links.flipline3_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.links.papalouie_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsPapaLouie);
            _loc2_.clip.credits.inside.facebook_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickFacebook);
            _loc2_.clip.credits.inside.twitter_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickTwitter);
         }
      }
      
      public function clickCreditsFlipline(param1:MouseEvent) : void
      {
         var _loc2_:SplashScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         true;
         true;
         _loc2_.gameObj.var_10.api.method_28("http://www.flipline.com","CreditsFlipline","Links");
      }
      
      public function clickCreditsPapaLouie(param1:MouseEvent) : void
      {
         var _loc2_:SplashScreen = this;
         false;
         false;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.gameObj.var_10.api.method_28("http://www.papalouie.com","CreditsPapaLouie","Links");
      }
      
      public function clickFacebook(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:SplashScreen = this;
         false;
         false;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.gameObj.var_10.api.method_28("http://www.facebook.com/pages/Flipline-Studios/121045844606187","CreditsFliplineFacebook","Links");
      }
      
      public function clickTwitter(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:SplashScreen = this;
         true;
         true;
         false;
         false;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.gameObj.var_10.api.method_28("http://www.twitter.com/FliplineStudios","CreditsFliplineTwitter","Links");
      }
   }
}
