package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import package_4.class_4;
   import wingGame.data.UserData;
   import wingGame.managers.CustomerManager;
   
   public class NewToppingScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var customerClip:MovieClip;
      
      public var toppingClip:MovieClip = null;
      
      public function NewToppingScreen(param1:class_4)
      {
         super();
         var _loc2_:NewToppingScreen = this;
         true;
         true;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:NewToppingScreen = this;
         var _loc2_:CustomerManager = _loc1_.gameObj.var_13;
         var _loc3_:UserData = _loc1_.gameObj.userData;
         _loc1_.gameObj.soundManager.switchMusic("none");
         true;
         true;
         _loc1_.clip = new newtopping_screen();
         true;
         true;
         var _loc4_:String = _loc3_.getToppingToReveal();
         var _loc5_:Number = _loc3_.toppingIndexes.indexOf(_loc4_);
         true;
         true;
         _loc1_.gameObj.challengeManager.recordUnlockTopping();
         true;
         true;
         _loc1_.clip.circleMC.customername.text = _loc3_.toppingNames[_loc5_];
         false;
         false;
         _loc1_.toppingClip = new newtopping_topping();
         _loc1_.toppingClip.gotoAndStop(_loc4_);
         false;
         false;
         _loc1_.clip.circleMC.topping.inside.addChild(_loc1_.toppingClip);
         false;
         false;
         _loc3_.rememberRevealedTopping(_loc4_);
         false;
         false;
         _loc1_.gameObj.soundManager.playSound("customer_overjoyed.wav");
         _loc1_.gameObj.var_34.addChild(_loc1_.clip);
         true;
         true;
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc2_:NewToppingScreen = this;
         var _loc3_:CustomerManager = _loc2_.gameObj.var_13;
         false;
         false;
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            true;
            true;
            _loc2_.endAnimation();
         }
      }
      
      public function endAnimation() : void
      {
         false;
         true;
         var _loc1_:NewToppingScreen = this;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            false;
            false;
         }
         catch(err:Error)
         {
         }
         _loc1_.gameObj.method_43();
         false;
         false;
         _loc1_.gameObj.method_117();
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:NewToppingScreen = this;
         if(_loc1_.toppingClip)
         {
            true;
            true;
            _loc1_.toppingClip.parent.removeChild(_loc1_.toppingClip);
            false;
            false;
            _loc1_.toppingClip = null;
            false;
            false;
         }
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         }
         catch(err:Error)
         {
         }
         _loc1_.gameObj.var_34.removeChild(_loc1_.clip);
         true;
         true;
         _loc1_.clip = null;
      }
   }
}
