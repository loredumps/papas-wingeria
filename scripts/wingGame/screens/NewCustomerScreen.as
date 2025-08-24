package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import package_2.class_5;
   import package_4.class_4;
   import wingGame.data.CustomerData;
   import wingGame.managers.CustomerManager;
   
   public class NewCustomerScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var customerClip:MovieClip;
      
      public function NewCustomerScreen(param1:class_4)
      {
         false;
         true;
         super();
         var _loc2_:NewCustomerScreen = this;
         _loc2_.gameObj = param1;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc1_:NewCustomerScreen = this;
         var _loc2_:CustomerManager = _loc1_.gameObj.var_13;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         false;
         false;
         false;
         false;
         _loc1_.gameObj.soundManager.switchMusic("none");
         if(_loc2_.showNoPapa)
         {
            _loc1_.clip = new newcustomer_nopapa();
            _loc1_.clip.sealMC.seal.gotoAndStop(3);
            _loc1_.clip.sealMC.gotoAndPlay(2);
            true;
            true;
            true;
            true;
            _loc1_.gameObj.soundManager.playSound("endofday.wav");
         }
         else if(_loc2_.showNewCustomer)
         {
            _loc1_.clip = new newcustomer_screen();
            _loc1_.buildCustomer(_loc2_.showNewCustomerNum);
            _loc1_.clip.circleMC.customername.text = _loc3_.getCustomerName(_loc2_.showNewCustomerNum);
            _loc1_.gameObj.soundManager.playSound("customer_overjoyed.wav");
         }
         _loc1_.gameObj.var_34.addChild(_loc1_.clip);
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc2_:NewCustomerScreen = this;
         var _loc3_:CustomerManager = _loc2_.gameObj.var_13;
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            _loc2_.endAnimation();
         }
      }
      
      public function endAnimation() : void
      {
         false;
         true;
         var _loc1_:NewCustomerScreen = this;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         }
         catch(err:Error)
         {
         }
         if(_loc1_.gameObj.userData.getToppingToReveal() != "none")
         {
            false;
            false;
            _loc1_.gameObj.method_50();
            false;
            false;
         }
         else
         {
            false;
            false;
            _loc1_.gameObj.method_43();
            false;
            false;
         }
         _loc1_.gameObj.method_134();
      }
      
      public function destroy() : void
      {
         var screen:NewCustomerScreen = this;
         try
         {
            screen.clip.removeEventListener(Event.ENTER_FRAME,screen.updateScreen);
            true;
            true;
         }
         catch(err:Error)
         {
         }
         if(screen.customerClip)
         {
            try
            {
               screen.customerClip.stop();
               screen.customerClip.body.removeChildAt(0);
               false;
               false;
               screen.customerClip.head.removeChildAt(0);
               screen.customerClip.eyes.removeChildAt(0);
               true;
               true;
               screen.customerClip.mouth.removeChildAt(0);
               screen.customerClip.neck.removeChildAt(0);
               true;
               true;
               screen.customerClip.front_shoe.removeChildAt(0);
               false;
               false;
               false;
               false;
               screen.customerClip.back_shoe.removeChildAt(0);
               true;
               true;
               screen.customerClip.fronthand.removeChildAt(0);
               true;
               true;
               screen.customerClip.backhand.removeChildAt(0);
               true;
               true;
               true;
               true;
               false;
               false;
               screen.customerClip.front_upperarm.removeChildAt(0);
               false;
               false;
               screen.customerClip.back_upperarm.removeChildAt(0);
               true;
               true;
               screen.customerClip.front_forearm.removeChildAt(0);
               screen.customerClip.back_forearm.removeChildAt(0);
            }
            catch(err:Error)
            {
               false;
               false;
               class_5.error("Error removing parts of customer");
            }
            try
            {
               screen.customerClip.hair.removeChildAt(0);
            }
            catch(err:Error)
            {
            }
            try
            {
               true;
               true;
               screen.customerClip.back_hair.removeChildAt(0);
            }
            catch(err:Error)
            {
            }
            screen.clip.circleMC.removeChild(screen.customerClip);
            true;
            true;
            screen.customerClip = null;
         }
         screen.gameObj.var_34.removeChild(screen.clip);
         screen.clip = null;
      }
      
      public function buildCustomer(param1:Number) : void
      {
         false;
         true;
         var _loc27_:Class = null;
         var _loc28_:MovieClip = null;
         var _loc29_:Class = null;
         var _loc30_:MovieClip = null;
         var _loc2_:NewCustomerScreen = this;
         false;
         false;
         _loc2_.customerClip = new customerMC();
         false;
         false;
         var _loc3_:String = _loc2_.gameObj.customerData.getCustomerClipName(param1);
         var _loc5_:MovieClip;
         var _loc4_:Class;
         (_loc5_ = new (_loc4_ = getDefinitionByName("customer_" + _loc3_ + "_body") as Class)()).name = "clip";
         true;
         true;
         _loc2_.customerClip.body.addChild(_loc5_);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = getDefinitionByName("customer_" + _loc3_ + "_head") as Class)()).name = "clip";
         false;
         false;
         _loc2_.customerClip.head.addChild(_loc7_);
         var _loc9_:MovieClip;
         var _loc8_:Class;
         (_loc9_ = new (_loc8_ = getDefinitionByName("customer_" + _loc3_ + "_eyes") as Class)()).name = "clip";
         _loc2_.customerClip.eyes.addChild(_loc9_);
         var _loc11_:MovieClip;
         var _loc10_:Class;
         (_loc11_ = new (_loc10_ = getDefinitionByName("customer_" + _loc3_ + "_mouth") as Class)()).name = "clip";
         false;
         false;
         _loc2_.customerClip.mouth.addChild(_loc11_);
         var _loc13_:MovieClip;
         var _loc12_:Class;
         (_loc13_ = new (_loc12_ = getDefinitionByName("customer_" + _loc3_ + "_neck") as Class)()).name = "clip";
         false;
         false;
         _loc2_.customerClip.neck.addChild(_loc13_);
         try
         {
            (_loc28_ = new (_loc27_ = getDefinitionByName("customer_" + _loc3_ + "_hair") as Class)()).name = "clip";
            false;
            false;
            _loc2_.customerClip.hair.addChild(_loc28_);
         }
         catch(err:Error)
         {
         }
         try
         {
            (_loc30_ = new (_loc29_ = getDefinitionByName("customer_" + _loc3_ + "_back_hair") as Class)()).name = "clip";
            false;
            false;
            _loc2_.customerClip.back_hair.addChild(_loc30_);
         }
         catch(err:Error)
         {
         }
         var _loc15_:MovieClip;
         var _loc14_:Class;
         (_loc15_ = new (_loc14_ = getDefinitionByName("customer_" + _loc3_ + "_foot") as Class)()).name = "clip";
         false;
         false;
         _loc2_.customerClip.front_shoe.addChild(_loc15_);
         var _loc16_:MovieClip;
         (_loc16_ = new _loc14_()).name = "clip";
         false;
         false;
         _loc2_.customerClip.back_shoe.addChild(_loc16_);
         var _loc18_:MovieClip;
         var _loc17_:Class;
         (_loc18_ = new (_loc17_ = getDefinitionByName("customer_" + _loc3_ + "_hand") as Class)()).name = "clip";
         _loc2_.customerClip.fronthand.addChild(_loc18_);
         var _loc20_:MovieClip;
         var _loc19_:Class;
         (_loc20_ = new (_loc19_ = getDefinitionByName("customer_" + _loc3_ + "_hand2") as Class)()).name = "clip";
         true;
         true;
         _loc2_.customerClip.backhand.addChild(_loc20_);
         var _loc22_:MovieClip;
         var _loc21_:Class;
         (_loc22_ = new (_loc21_ = getDefinitionByName("customer_" + _loc3_ + "_upperarm") as Class)()).name = "clip";
         false;
         false;
         _loc2_.customerClip.front_upperarm.addChild(_loc22_);
         var _loc23_:MovieClip;
         (_loc23_ = new _loc21_()).name = "clip";
         _loc2_.customerClip.back_upperarm.addChild(_loc23_);
         var _loc25_:MovieClip;
         var _loc24_:Class;
         (_loc25_ = new (_loc24_ = getDefinitionByName("customer_" + _loc3_ + "_forearm") as Class)()).name = "clip";
         true;
         true;
         _loc2_.customerClip.front_forearm.addChild(_loc25_);
         var _loc26_:MovieClip;
         (_loc26_ = new _loc24_()).name = "clip";
         true;
         true;
         _loc2_.customerClip.back_forearm.addChild(_loc26_);
         true;
         true;
         _loc2_.customerClip.gotoAndPlay("overjoyed");
         _loc2_.customerClip.scaleX = 0.8;
         _loc2_.customerClip.scaleY = 0.8;
         _loc2_.customerClip.x = 141;
         true;
         true;
         _loc2_.customerClip.y = 75;
         _loc2_.clip.circleMC.addChild(_loc2_.customerClip);
      }
   }
}
