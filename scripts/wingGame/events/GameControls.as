package wingGame.events
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getTimer;
   import package_4.class_4;
   
   public class GameControls
   {
       
      
      public var gameObj:class_4;
      
      public var gameplayTimer:Number = 0;
      
      public var lastTime:Number = 0;
      
      public var alreadyCheated:Boolean = false;
      
      public function GameControls(param1:class_4)
      {
         true;
         true;
         super();
         var _loc2_:GameControls = this;
         _loc2_.gameObj = param1;
      }
      
      public function setupGameCycle() : void
      {
         false;
         true;
         var _loc1_:GameControls = this;
         _loc1_.gameObj.var_15.addEventListener(Event.ENTER_FRAME,_loc1_.gameCycle);
         true;
         true;
         _loc1_.gameObj.stage.focus = _loc1_.gameObj.stage;
         _loc1_.gameObj.stage.addEventListener(KeyboardEvent.KEY_UP,_loc1_.keyListener);
         true;
         true;
         _loc1_.alreadyCheated = false;
      }
      
      public function removeGameCycle() : void
      {
         var _loc1_:GameControls = this;
         false;
         false;
         if(_loc1_.gameObj.var_15.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.gameObj.var_15.removeEventListener(Event.ENTER_FRAME,_loc1_.gameCycle);
            true;
            true;
         }
         _loc1_.gameObj.stage.removeEventListener(KeyboardEvent.KEY_UP,_loc1_.keyListener);
      }
      
      public function resetKeyFocus() : void
      {
         var _loc1_:GameControls = this;
         _loc1_.gameObj.stage.focus = _loc1_.gameObj.stage;
      }
      
      public function keyListener(param1:KeyboardEvent) : void
      {
         this;
      }
      
      public function gameCycle(param1:Event) : void
      {
         false;
         true;
         var _loc2_:GameControls = this;
         var _loc3_:class_4 = _loc2_.gameObj;
         true;
         true;
         true;
         true;
         if(!_loc3_.var_56)
         {
            ++_loc2_.gameplayTimer;
            if(_loc3_.hud)
            {
               _loc3_.hud.updateHUD();
               true;
               true;
            }
            if(!_loc3_.var_103)
            {
               _loc3_.var_13.updateManager();
               _loc3_.var_59.updateScreen();
               _loc3_.var_53.updateScreen();
               _loc3_.var_21.updateScreen();
               _loc3_.var_11.updateScreen();
               _loc3_.var_16.updateScreen();
               _loc3_.var_30.updateScreen();
            }
         }
         var _loc4_:Number = getTimer();
         var _loc5_:Number = Math.round(1000 / (_loc4_ - this.lastTime));
         false;
         false;
         true;
         true;
         §§push(Boolean(_loc3_.hud));
         if(Boolean(_loc3_.hud))
         {
            false;
            false;
            §§pop();
            §§push(Boolean(_loc3_.hud.clip));
         }
         if(§§pop())
         {
            _loc3_.hud.clip.fps_txt.text = _loc5_ + " fps";
         }
         _loc2_.lastTime = _loc4_;
      }
      
      public function destroy() : void
      {
         var _loc1_:GameControls = this;
         false;
         false;
         _loc1_.removeGameCycle();
      }
   }
}
