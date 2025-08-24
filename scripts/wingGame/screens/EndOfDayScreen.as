package wingGame.screens
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Rectangle;
   import mochi.as3.*;
   import package_2.class_8;
   import package_4.*;
   import wingGame.data.UserData;
   import wingGame.models.Worker;
   
   public class EndOfDayScreen
   {
       
      
      public var gameObj:class_4;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var initialRank:Number = 0;
      
      public var newRank:Number = 0;
      
      public var showRankUpgrade:Boolean = false;
      
      public var scoreStopFrame:Number = 24;
      
      public var tipStopFrame:Number = 36;
      
      public var revealTimer:Number = 0;
      
      public var revealTodayLabel:Number = 5;
      
      public var revealTodayPoints:Number = 45;
      
      public var revealTotalLabel:Number = 60;
      
      public var revealTotalPoints:Number = 100;
      
      public var revealRank:Number = 140;
      
      public var revealMax:Number = 200;
      
      public var tipRevealTimer:Number = 0;
      
      public var tipRevealRaise:Number = 15;
      
      public var tipRevealMax:Number = 60;
      
      public var scoreToday:Number = 0;
      
      public var customersToday:Number = 0;
      
      public var endAction:String = "none";
      
      public var worker:Worker;
      
      public var backdropBitmap:Bitmap = null;
      
      public var hasSubmittedScore:Boolean = false;
      
      public function EndOfDayScreen(param1:class_4, param2:MovieClip, param3:Object = null)
      {
         super();
         var _loc4_:EndOfDayScreen;
         (_loc4_ = this).gameObj = param1;
         true;
         true;
         _loc4_.container = param2;
         true;
         true;
         _loc4_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc1_:EndOfDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         false;
         false;
         var _loc3_:Number = _loc2_.getDay();
         _loc1_.clip = new endOfDayMC();
         true;
         true;
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.gameObj.var_10.api.method_54("DAY " + _loc2_.getDay() + " COMPLETE!");
         _loc1_.clip.taco.customers.customers_txt.text = String(_loc2_.todayCustomers);
         false;
         false;
         _loc1_.clip.taco.waiting.waiting_txt.text = _loc2_.getTodayWaitingAverage() + "%";
         _loc1_.clip.taco.building.building_txt.text = _loc2_.getTodayBuildAverage() + "%";
         true;
         true;
         _loc1_.clip.taco.grilling.grilling_txt.text = _loc2_.getTodayGrillAverage() + "%";
         _loc1_.clip.taco.saucing.saucing_txt.text = _loc2_.getTodaySauceAverage() + "%";
         false;
         false;
         _loc1_.clip.taco.percent.percent_txt.text = _loc2_.getTodayTotalAverage() + "%";
         true;
         true;
         _loc1_.gameObj.challengeManager.recordServiceQuality(_loc2_.getTodayTotalAverage());
         false;
         false;
         _loc1_.clip.scoreclip.tips.today_txt.text = _loc2_.getTipsToday(true);
         _loc1_.clip.scoreclip.tips.total_txt.text = _loc2_.getTipsTotal(true,true);
         var _loc4_:Number = Math.floor(_loc2_.getTipsToday() / 100);
         _loc1_.clip.scoreclip.tips.wage_txt.text = _loc2_.getWeeklyWage(true);
         false;
         false;
         _loc1_.clip.scoreclip.tips.payday_txt.text = _loc2_.getPaydayMessage(true);
         _loc1_.clip.scoreclip.points.today_txt.text = class_8.method_31(_loc2_.getTodayTotalScore());
         false;
         false;
         _loc1_.clip.scoreclip.points.total_txt.text = class_8.method_31(_loc2_.getTotalPoints(true));
         true;
         true;
         _loc1_.clip.scoreclip.points.rank_txt.text = _loc2_.getRank();
         _loc1_.clip.scoreclip.points.rank_title.text = _loc2_.getRankTitle();
         _loc1_.initialRank = _loc2_.getRank();
         _loc1_.scoreToday = _loc2_.getTodayTotalScore();
         _loc1_.customersToday = _loc2_.todayCustomers;
         false;
         false;
         false;
         false;
         false;
         false;
         var _loc5_:Number;
         if((_loc5_ = _loc2_.saveScores()) > _loc1_.initialRank)
         {
            false;
            false;
            _loc1_.newRank = _loc5_;
            _loc1_.showRankUpgrade = true;
            true;
            true;
         }
         else
         {
            _loc1_.showRankUpgrade = false;
            false;
            false;
         }
         _loc2_.playedALevel = true;
         false;
         false;
         var _loc6_:Number;
         if((_loc6_ = _loc2_.getPointsUntilNextRank()) < 0)
         {
            _loc6_ = 0;
         }
         _loc1_.clip.scoreclip.points.nextrank.nextrank_txt.text = class_8.method_31(_loc6_);
         _loc1_.clip.scoreclip.gotoAndStop(1);
         _loc1_.clip.scoreclip.points.total_label.visible = false;
         _loc1_.clip.scoreclip.points.today_label.visible = false;
         _loc1_.clip.scoreclip.points.today_txt.visible = false;
         _loc1_.clip.scoreclip.points.total_txt.visible = false;
         true;
         true;
         _loc1_.clip.scoreclip.points.nextrank.visible = false;
         _loc1_.container.addEventListener("clickQuit",_loc1_.clickQuit);
         _loc1_.container.addEventListener("clickContinue",_loc1_.clickContinue);
         true;
         true;
         _loc1_.container.addEventListener("clickSubmitScore",_loc1_.clickSubmitScore);
         false;
         false;
         _loc1_.clip.bg.gotoAndStop(4);
         _loc1_.initBackdrop();
         _loc1_.gameObj.soundManager.switchMusic("other");
         _loc1_.clip.taco.gotoAndPlay(2);
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip.workerholder,_loc1_.gameObj.workerData,130,106,0.8,false,true);
         _loc1_.worker.playAnimation("stand");
         true;
         true;
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         false;
         false;
         true;
         true;
         _loc1_.gameObj.var_10.api.method_39("CompletedDay",_loc3_,"counter");
         if(_loc1_.showRankUpgrade)
         {
            false;
            false;
            _loc1_.gameObj.var_10.api.method_39("ReachedRank",_loc1_.newRank,"counter");
            true;
            true;
            _loc1_.gameObj.var_10.api.method_39("totalMoneyAtRank",_loc1_.newRank,"average",Math.floor(_loc2_.totalMoneyEarned / 100));
            _loc1_.gameObj.var_10.api.method_39("DayReachedRank",_loc1_.newRank,"average",_loc3_);
         }
         _loc1_.gameObj.var_10.api.method_39("TotalMoneyAtDay",_loc3_,"average",Math.floor(_loc2_.totalMoneyEarned / 100));
         _loc1_.gameObj.var_10.api.method_39("MoneyEarnedToday",_loc3_,"average",_loc4_);
         _loc1_.gameObj.var_10.api.method_39("RankAtDay",_loc3_,"average",_loc2_.getRank());
         _loc1_.gameObj.var_10.api.method_143();
      }
      
      public function updateScreen(param1:Event = null) : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc2_:EndOfDayScreen = this;
         false;
         false;
         if(_loc2_.clip)
         {
            if(_loc2_.worker)
            {
               _loc2_.worker.animateModel();
               true;
               true;
            }
            false;
            false;
            §§push(_loc2_.clip.taco.currentFrame == _loc2_.clip.taco.totalFrames);
            if(_loc2_.clip.taco.currentFrame == _loc2_.clip.taco.totalFrames)
            {
               true;
               true;
               §§pop();
               true;
               true;
               §§push(_loc2_.clip.scoreclip.currentFrame == 1);
            }
            if(§§pop())
            {
               _loc2_.clip.scoreclip.gotoAndPlay(2);
            }
            else if(_loc2_.clip.scoreclip.currentFrame == _loc2_.scoreStopFrame)
            {
               false;
               false;
               var _loc4_:*;
               var _loc5_:* = (_loc4_ = _loc2_).revealTimer + 1;
               true;
               true;
               _loc4_.revealTimer = _loc5_;
               if(_loc2_.revealTimer == _loc2_.revealTodayLabel)
               {
                  _loc2_.clip.scoreclip.points.today_label.visible = true;
                  false;
                  false;
                  _loc2_.gameObj.soundManager.playSound("talkbubble.wav");
                  true;
                  true;
               }
               else if(_loc2_.revealTimer == _loc2_.revealTodayPoints)
               {
                  true;
                  true;
                  _loc2_.clip.scoreclip.points.today_txt.visible = true;
                  _loc3_ = _loc2_.scoreToday / _loc2_.customersToday;
                  false;
                  false;
                  if(_loc3_ > 80)
                  {
                     false;
                     false;
                     _loc2_.worker.playAnimation("score_happy");
                  }
                  else if(_loc3_ > 60)
                  {
                     false;
                     false;
                     false;
                     false;
                     _loc2_.worker.playAnimation("score_ok");
                  }
                  else
                  {
                     false;
                     false;
                     _loc2_.worker.playAnimation("score_sad");
                     false;
                     false;
                  }
               }
               else if(_loc2_.revealTimer == _loc2_.revealTotalLabel)
               {
                  _loc2_.clip.scoreclip.points.total_label.visible = true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  true;
                  _loc2_.gameObj.soundManager.playSound("talkbubble.wav");
               }
               else
               {
                  true;
                  true;
                  if(_loc2_.revealTimer == _loc2_.revealTotalPoints)
                  {
                     _loc2_.clip.scoreclip.points.total_txt.visible = true;
                  }
                  else if(_loc2_.revealTimer == _loc2_.revealRank)
                  {
                     if(_loc2_.newRank > _loc2_.initialRank)
                     {
                        _loc2_.clip.scoreclip.points.rank_txt.text = _loc2_.gameObj.userData.getRank();
                        _loc2_.clip.scoreclip.points.rank_title.text = _loc2_.gameObj.userData.getRankTitle();
                        _loc2_.clip.scoreclip.points.fireworks.gotoAndPlay(2);
                        _loc2_.gameObj.soundManager.playSound("customer_overjoyed.wav");
                        _loc2_.worker.playAnimation("levelup");
                     }
                     else
                     {
                        _loc2_.clip.scoreclip.gotoAndPlay("showtips");
                        _loc2_.gameObj.soundManager.playSound("dropticket.wav");
                     }
                  }
                  else if(_loc2_.revealTimer == _loc2_.revealMax)
                  {
                     _loc2_.clip.scoreclip.gotoAndPlay("showtips");
                     true;
                     true;
                     _loc2_.gameObj.soundManager.playSound("dropticket.wav");
                     true;
                     true;
                  }
               }
            }
            else if(_loc2_.clip.scoreclip.currentFrame == _loc2_.tipStopFrame)
            {
               true;
               true;
               false;
               false;
               ++_loc2_.tipRevealTimer;
               if(_loc2_.tipRevealTimer == _loc2_.tipRevealRaise)
               {
                  false;
                  false;
                  false;
                  false;
                  if(_loc2_.newRank > _loc2_.initialRank)
                  {
                     false;
                     false;
                     _loc2_.clip.scoreclip.tips.wage_txt.text = _loc2_.gameObj.userData.getWeeklyWage(true);
                     true;
                     true;
                     _loc2_.clip.scoreclip.tips.fireworks.gotoAndPlay(2);
                     _loc2_.gameObj.soundManager.playSound("getstar.wav");
                     false;
                     false;
                  }
                  else
                  {
                     _loc2_.clip.scoreclip.points.nextrank.visible = true;
                     _loc2_.gameObj.soundManager.playSound("talkbubble.wav");
                     false;
                     false;
                     _loc2_.gameObj.var_10.api.enableButtons();
                  }
               }
               else if(_loc2_.tipRevealTimer == _loc2_.tipRevealMax)
               {
                  _loc2_.clip.scoreclip.points.nextrank.visible = true;
                  _loc2_.gameObj.soundManager.playSound("talkbubble.wav");
                  _loc2_.gameObj.var_10.api.enableButtons();
               }
            }
            else if(_loc2_.clip.scoreclip.currentFrame == _loc2_.clip.scoreclip.totalFrames)
            {
               true;
               true;
               if(_loc2_.endAction == "continue")
               {
                  _loc2_.startNextDay();
                  false;
                  false;
               }
               else if(_loc2_.endAction == "quit")
               {
                  true;
                  true;
                  _loc2_.quitToTitle();
               }
            }
         }
      }
      
      public function clickContinue(param1:Event) : void
      {
         var _loc2_:EndOfDayScreen = this;
         _loc2_.endAction = "continue";
         _loc2_.clip.curtains.gotoAndPlay("close");
         _loc2_.clip.scoreclip.gotoAndPlay("raise");
         true;
         true;
         _loc2_.gameObj.var_10.api.method_34("EndOfDay");
         true;
         true;
         false;
         false;
         _loc2_.gameObj.var_10.method_40();
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickSubmitScore(param1:Event) : void
      {
         false;
         true;
         var _loc2_:EndOfDayScreen = this;
         false;
         false;
         true;
         true;
         if(_loc2_.gameObj.var_10.api.method_91())
         {
            false;
            false;
            _loc2_.gameObj.var_10.method_40();
         }
         else if(!_loc2_.hasSubmittedScore)
         {
            true;
            true;
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            true;
            true;
            true;
            true;
            _loc2_.gameObj.var_10.submitScore(_loc2_.gameObj.userData.getTotalPoints(),_loc2_.gameObj.userData.myName,_loc2_.showButtonsAfterScore,_loc2_.gameObj.workerData.getDataToSave());
            false;
            false;
            _loc2_.hideButtonsDuringScore();
            false;
            false;
            _loc2_.hasSubmittedScore = true;
            _loc2_.gameObj.var_10.api.disableButtons("EndOfDay",["Submit Score"],false,false);
         }
      }
      
      public function hideButtonsDuringScore() : void
      {
         this;
      }
      
      public function showButtonsAfterScore() : void
      {
         this;
      }
      
      public function clickQuit(param1:Event) : void
      {
         var _loc2_:EndOfDayScreen = this;
         _loc2_.endAction = "quit";
         _loc2_.clip.fader.gotoAndPlay("fadeout");
         _loc2_.clip.scoreclip.gotoAndPlay("raise");
         false;
         false;
         _loc2_.gameObj.var_10.api.method_34("EndOfDay");
         _loc2_.gameObj.var_10.method_40();
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function destroy() : void
      {
         var _loc1_:EndOfDayScreen = this;
         _loc1_.worker.destroy();
         _loc1_.worker = null;
         false;
         false;
         if(_loc1_.backdropBitmap != null)
         {
            true;
            true;
            _loc1_.backdropBitmap.bitmapData.dispose();
            try
            {
               _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
            }
            catch(err:Error)
            {
            }
            _loc1_.backdropBitmap = null;
            false;
            false;
         }
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.container.removeEventListener("clickQuit",_loc1_.clickQuit);
         _loc1_.container.removeEventListener("clickContinue",_loc1_.clickContinue);
         _loc1_.container.removeEventListener("clickSubmitScore",_loc1_.clickSubmitScore);
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function startNextDay() : void
      {
         var _loc1_:EndOfDayScreen = this;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         false;
         false;
         _loc1_.gameObj.method_84();
      }
      
      public function quitToTitle() : void
      {
         var _loc1_:EndOfDayScreen = this;
         false;
         false;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         false;
         false;
         _loc1_.gameObj.method_56();
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc1_:EndOfDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new nowindowBackdropMC();
         true;
         true;
         _loc4_ = 1;
         while(true)
         {
            true;
            true;
            true;
            true;
            if(_loc4_ > 10)
            {
               break;
            }
            _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
            _loc4_++;
         }
         _loc4_ = 1;
         false;
         false;
         while(_loc4_ <= 7)
         {
            _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc2_.lobbyFlooring);
            false;
            false;
            _loc4_++;
         }
         false;
         false;
         _loc5_.holder.trim.gotoAndStop(_loc2_.lobbyWallpaper);
         _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
         _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
         var _loc6_:BitmapData;
         (_loc6_ = new BitmapData(706,552,true,0)).draw(_loc5_,null,null,null,new Rectangle(0,0,706,552));
         _loc3_ = new Bitmap(_loc6_);
         _loc5_ = null;
         return _loc3_;
      }
      
      public function initBackdrop() : void
      {
         false;
         true;
         var _loc1_:EndOfDayScreen = this;
         if(_loc1_.backdropBitmap != null)
         {
            _loc1_.backdropBitmap.bitmapData.dispose();
            try
            {
               _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
               false;
               false;
            }
            catch(err:Error)
            {
            }
            _loc1_.backdropBitmap = null;
         }
         _loc1_.backdropBitmap = _loc1_.createLobbyBackdropBitmap();
         false;
         false;
         _loc1_.clip.backdrop_holder.addChild(_loc1_.backdropBitmap);
         _loc1_.backdropBitmap.x = -24;
         true;
         true;
         _loc1_.backdropBitmap.y = -40;
      }
   }
}
