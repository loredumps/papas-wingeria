package wingGame.screens
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import package_2.class_3;
   import package_4.class_4;
   import wingGame.data.UserData;
   import wingGame.data.WorkerData;
   import wingGame.models.Worker;
   
   public class IntroScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var didSkip:Boolean = false;
      
      public var worker:Worker = null;
      
      public var workerFlipped:Worker = null;
      
      public var workerTurned:Worker = null;
      
      public function IntroScreen(param1:class_4)
      {
         true;
         true;
         super();
         var _loc2_:IntroScreen = this;
         true;
         true;
         _loc2_.gameObj = param1;
         false;
         false;
         _loc2_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:IntroScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         _loc1_.clip = new introMC();
         _loc1_.gameObj.var_15.addChild(_loc1_.clip);
         _loc1_.clip.x = 0;
         true;
         true;
         _loc1_.clip.y = 0;
         var _loc3_:WorkerData = new WorkerData(_loc1_.gameObj.workerData.getDataToSave());
         true;
         true;
         if(_loc2_.whichCharacter == "marty")
         {
            _loc3_.shirt = "shirt_01_male";
            false;
            false;
            _loc3_.pants = "pants_03_male";
            _loc3_.accb = "belt_01_male";
         }
         else
         {
            false;
            false;
            if(_loc2_.whichCharacter == "rita")
            {
               false;
               false;
               _loc3_.shirt = "shirt_15_female";
               _loc3_.pants = "pants_03_female";
               _loc3_.accb = "belt_02_female";
            }
            else if(_loc3_.gender == WorkerData.GENDER_FEMALE)
            {
               _loc3_.shirt = "shirt_02_female";
               _loc3_.pants = "pants_04_female";
               _loc3_.accb = "belt_01_female";
               false;
               false;
            }
            else
            {
               _loc3_.shirt = "shirt_02_male";
               _loc3_.pants = "pants_03_male";
               _loc3_.accb = "belt_01_male";
            }
         }
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip,_loc3_,0,0,1);
         true;
         true;
         _loc1_.workerFlipped = new Worker(_loc1_.gameObj,_loc1_.clip,_loc3_,0,0,1,false,true);
         _loc1_.workerTurned = new Worker(_loc1_.gameObj,_loc1_.clip,_loc3_,0,0,1,true);
         _loc1_.worker.clip.visible = false;
         _loc1_.workerFlipped.clip.visible = false;
         _loc1_.workerTurned.clip.visible = false;
         _loc1_.clip.frame0.name_txt.text = String(_loc2_.myName + "\'s");
         §§push(class_3.method_2());
         if(class_3.method_2())
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(_loc2_.whichCharacter != "marty");
         }
         if(§§pop() && _loc2_.whichCharacter != "rita")
         {
            _loc1_.clip.frame0.name_txt.text = "Your";
         }
         _loc1_.clip.frame0.name_txt.cacheAsBitmap = true;
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.checkFrame);
         _loc1_.clip.gotoAndPlay(1);
         _loc1_.clip.skip_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickSkip);
         false;
         false;
         _loc1_.gameObj.soundManager.switchMusic("build");
      }
      
      public function clickSkip(param1:MouseEvent) : void
      {
         var _loc2_:IntroScreen = this;
         false;
         false;
         _loc2_.didSkip = true;
         true;
         true;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.clip.gotoAndStop(_loc2_.clip.totalFrames);
      }
      
      public function checkFrame(param1:Event) : void
      {
         false;
         true;
         var _loc2_:IntroScreen = this;
         if(_loc2_.clip.currentFrame == 101)
         {
            if(_loc2_.clip != null)
            {
               if(_loc2_.clip.frame1 != null)
               {
                  if(_loc2_.clip.frame1.holder != null)
                  {
                  }
               }
            }
            _loc2_.clip.frame1.holder.addChild(_loc2_.workerFlipped.clip);
            true;
            true;
            _loc2_.workerFlipped.clip.visible = true;
            _loc2_.workerFlipped.clip.scaleX = -1.6;
            _loc2_.workerFlipped.clip.scaleY = 1.6;
            _loc2_.workerFlipped.clip.x = 470.7;
            _loc2_.workerFlipped.clip.y = 56.5;
            _loc2_.workerFlipped.clip.gotoAndStop("intro1");
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 201)
         {
            _loc2_.clip.frame2.holder.addChild(_loc2_.workerFlipped.clip);
            true;
            true;
            true;
            true;
            _loc2_.workerFlipped.clip.visible = true;
            _loc2_.workerFlipped.clip.scaleX = -2.3;
            false;
            false;
            _loc2_.workerFlipped.clip.scaleY = 2.3;
            _loc2_.workerFlipped.clip.x = 498;
            _loc2_.workerFlipped.clip.y = 47;
            _loc2_.workerFlipped.clip.gotoAndStop("intro2");
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 300)
         {
            _loc2_.clip.frame3.holder.addChild(_loc2_.worker.clip);
            true;
            true;
            _loc2_.worker.clip.visible = true;
            _loc2_.worker.clip.scaleX = 1.2;
            _loc2_.worker.clip.scaleY = 1.2;
            _loc2_.worker.clip.x = 222;
            true;
            true;
            _loc2_.worker.clip.y = 78;
            true;
            true;
            _loc2_.worker.clip.gotoAndStop("intro3");
            _loc2_.worker.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 600)
         {
            _loc2_.clip.frame6.holder.addChild(_loc2_.worker.clip);
            false;
            false;
            _loc2_.worker.clip.visible = true;
            false;
            false;
            _loc2_.worker.clip.scaleX = 1.57;
            _loc2_.worker.clip.scaleY = 1.57;
            true;
            true;
            _loc2_.worker.clip.x = 186;
            _loc2_.worker.clip.y = 42;
            true;
            true;
            _loc2_.worker.clip.gotoAndStop("intro6");
            _loc2_.worker.animateModel();
            true;
            true;
         }
         else if(_loc2_.clip.currentFrame == 700)
         {
            _loc2_.clip.frame7.holder.addChild(_loc2_.workerFlipped.clip);
            _loc2_.workerFlipped.clip.visible = true;
            _loc2_.workerFlipped.clip.scaleX = -1.22;
            false;
            false;
            _loc2_.workerFlipped.clip.scaleY = 1.22;
            _loc2_.workerFlipped.clip.x = 574;
            _loc2_.workerFlipped.clip.y = 94;
            _loc2_.workerFlipped.clip.gotoAndStop("intro7");
            false;
            false;
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 901)
         {
            _loc2_.clip.frame9.holder.addChild(_loc2_.workerFlipped.clip);
            true;
            true;
            _loc2_.workerFlipped.clip.visible = true;
            _loc2_.workerFlipped.clip.scaleX = -0.82;
            _loc2_.workerFlipped.clip.scaleY = 0.82;
            _loc2_.workerFlipped.clip.x = 520;
            _loc2_.workerFlipped.clip.y = 147;
            false;
            false;
            _loc2_.workerFlipped.clip.gotoAndStop("intro9");
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 1001)
         {
            _loc2_.clip.frame10.holder.addChild(_loc2_.workerTurned.clip);
            _loc2_.workerTurned.clip.visible = true;
            _loc2_.workerTurned.clip.scaleX = 1.36;
            true;
            true;
            _loc2_.workerTurned.clip.scaleY = 1.36;
            _loc2_.workerTurned.clip.x = -24;
            _loc2_.workerTurned.clip.y = 129;
            false;
            false;
            _loc2_.workerTurned.clip.gotoAndStop("intro10");
            false;
            false;
            _loc2_.workerTurned.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 1101)
         {
            _loc2_.clip.frame11.holder.addChild(_loc2_.workerFlipped.clip);
            _loc2_.workerFlipped.clip.visible = true;
            false;
            false;
            _loc2_.workerFlipped.clip.scaleX = -0.93;
            _loc2_.workerFlipped.clip.scaleY = 0.93;
            false;
            false;
            _loc2_.workerFlipped.clip.x = 183;
            false;
            false;
            _loc2_.workerFlipped.clip.y = 123;
            true;
            true;
            _loc2_.workerFlipped.clip.gotoAndStop("intro11");
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 1301)
         {
            _loc2_.clip.frame13.holder.addChild(_loc2_.workerFlipped.clip);
            _loc2_.workerFlipped.clip.visible = true;
            false;
            false;
            _loc2_.workerFlipped.clip.scaleX = -0.36;
            _loc2_.workerFlipped.clip.scaleY = 0.36;
            _loc2_.workerFlipped.clip.x = 225;
            _loc2_.workerFlipped.clip.y = 255;
            _loc2_.workerFlipped.clip.gotoAndStop("intro13");
            true;
            true;
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 1401)
         {
            true;
            true;
            _loc2_.clip.frame14.holder.addChild(_loc2_.workerFlipped.clip);
            _loc2_.workerFlipped.clip.visible = true;
            false;
            false;
            _loc2_.workerFlipped.clip.scaleX = -1.17;
            true;
            true;
            _loc2_.workerFlipped.clip.scaleY = 1.17;
            false;
            false;
            _loc2_.workerFlipped.clip.x = 430;
            _loc2_.workerFlipped.clip.y = 92;
            _loc2_.workerFlipped.clip.gotoAndStop("intro14");
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 1501)
         {
            _loc2_.clip.frame15.holder.addChild(_loc2_.workerFlipped.clip);
            false;
            false;
            false;
            false;
            _loc2_.workerFlipped.clip.visible = true;
            _loc2_.workerFlipped.clip.scaleX = -1.75;
            _loc2_.workerFlipped.clip.scaleY = 1.75;
            _loc2_.workerFlipped.clip.x = 320;
            true;
            true;
            _loc2_.workerFlipped.clip.y = 97;
            _loc2_.workerFlipped.clip.gotoAndStop("intro15");
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 1601)
         {
            _loc2_.clip.frame16.holder.addChild(_loc2_.workerTurned.clip);
            _loc2_.workerTurned.clip.visible = true;
            true;
            true;
            _loc2_.workerTurned.clip.scaleX = 0.59;
            false;
            false;
            _loc2_.workerTurned.clip.scaleY = 0.59;
            _loc2_.workerTurned.clip.x = 150;
            true;
            true;
            _loc2_.workerTurned.clip.y = 272;
            _loc2_.workerTurned.clip.gotoAndStop("intro16");
            _loc2_.workerTurned.animateModel();
            true;
            true;
         }
         else if(_loc2_.clip.currentFrame == 1701)
         {
            _loc2_.clip.frame17.holder.addChild(_loc2_.workerFlipped.clip);
            true;
            true;
            _loc2_.workerFlipped.clip.visible = true;
            _loc2_.workerFlipped.clip.scaleX = -1.95;
            true;
            true;
            _loc2_.workerFlipped.clip.scaleY = 1.95;
            _loc2_.workerFlipped.clip.x = 570;
            _loc2_.workerFlipped.clip.y = 38;
            true;
            true;
            _loc2_.workerFlipped.clip.gotoAndStop("intro17");
            _loc2_.workerFlipped.animateModel();
         }
         else if(_loc2_.clip.currentFrame == 1901)
         {
            _loc2_.clip.frame19.holder.addChild(_loc2_.worker.clip);
            _loc2_.worker.clip.visible = true;
            false;
            false;
            _loc2_.worker.clip.scaleX = 2.78;
            false;
            false;
            _loc2_.worker.clip.scaleY = 2.78;
            _loc2_.worker.clip.x = 109;
            true;
            true;
            _loc2_.worker.clip.y = -12;
            false;
            false;
            _loc2_.worker.clip.gotoAndStop("intro19");
            _loc2_.worker.animateModel();
         }
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            if(_loc2_.didSkip)
            {
               true;
               true;
               _loc2_.gameObj.var_10.api.method_27("SkippedIntro","Screens");
            }
            else
            {
               false;
               false;
               _loc2_.gameObj.var_10.api.method_27("WatchedIntro","Screens");
            }
            _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.checkFrame);
            false;
            false;
            _loc2_.gameObj.method_67();
            _loc2_.gameObj.method_127();
         }
         else if(_loc2_.clip.currentFrame == 700)
         {
            true;
            true;
            _loc2_.gameObj.soundManager.switchMusic("order");
         }
         else if(_loc2_.clip.currentFrame == 1301)
         {
            false;
            false;
            _loc2_.gameObj.soundManager.switchMusic("grill");
         }
         else if(_loc2_.clip.currentFrame == 1801)
         {
            true;
            true;
            _loc2_.gameObj.soundManager.switchMusic("title");
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc1_:IntroScreen = this;
         _loc1_.clip.skip_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickSkip);
         _loc1_.worker.destroy();
         _loc1_.workerTurned.destroy();
         true;
         true;
         _loc1_.workerFlipped.destroy();
         _loc1_.worker = null;
         _loc1_.workerTurned = null;
         false;
         false;
         _loc1_.workerFlipped = null;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.checkFrame);
            false;
            false;
         }
         catch(err:Error)
         {
         }
         _loc1_.gameObj.var_15.removeChild(_loc1_.clip);
         true;
         true;
         _loc1_.clip = null;
      }
   }
}
