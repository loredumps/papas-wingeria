package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import package_4.class_4;
   import wingGame.data.UserData;
   import wingGame.managers.CustomerManager;
   import wingGame.models.Worker;
   
   public class PayDayScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var moneyFrame:Number = 40;
      
      public var worker:Worker;
      
      public function PayDayScreen(param1:class_4)
      {
         false;
         true;
         super();
         var _loc2_:PayDayScreen = this;
         false;
         false;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc1_:PayDayScreen = this;
         var _loc2_:CustomerManager = _loc1_.gameObj.var_13;
         var _loc3_:UserData = _loc1_.gameObj.userData;
         false;
         false;
         false;
         false;
         _loc1_.gameObj.soundManager.switchMusic("none");
         false;
         false;
         _loc1_.clip = new payday_screen();
         false;
         false;
         _loc1_.gameObj.soundManager.playSound("customer_overjoyed.wav");
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip.circleMC,_loc1_.gameObj.workerData,130,80,1,false,false);
         _loc1_.worker.playAnimation("payday");
         var _loc4_:String = _loc3_.getWeeklyWage(true);
         _loc1_.clip.starburst.burst.money.text = _loc4_;
         true;
         true;
         _loc3_.totalTips += _loc3_.getWeeklyWage();
         false;
         false;
         _loc1_.gameObj.challengeManager.recordPayDay();
         _loc1_.gameObj.var_34.addChild(_loc1_.clip);
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
      }
      
      public function updateScreen(param1:Event) : void
      {
         false;
         true;
         var _loc2_:PayDayScreen = this;
         var _loc3_:CustomerManager = _loc2_.gameObj.var_13;
         if(_loc2_.worker)
         {
            _loc2_.worker.animateModel();
         }
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            false;
            false;
            _loc2_.endAnimation();
         }
         else if(_loc2_.clip.currentFrame == _loc2_.moneyFrame)
         {
            _loc2_.gameObj.soundManager.playSound("multicoin.wav");
            _loc2_.clip.starburst.gotoAndPlay(2);
         }
      }
      
      public function endAnimation() : void
      {
         false;
         true;
         var _loc1_:PayDayScreen = this;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         }
         catch(err:Error)
         {
         }
         true;
         true;
         false;
         false;
         if(_loc1_.gameObj.var_13.showNoPapa || _loc1_.gameObj.var_13.showNewCustomer)
         {
            _loc1_.gameObj.method_60();
         }
         else if(_loc1_.gameObj.userData.getToppingToReveal() != "none")
         {
            _loc1_.gameObj.method_50();
            true;
            true;
         }
         else
         {
            true;
            true;
            _loc1_.gameObj.method_43();
         }
         _loc1_.gameObj.method_133();
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:PayDayScreen = this;
         _loc1_.worker.destroy();
         false;
         false;
         _loc1_.worker = null;
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
