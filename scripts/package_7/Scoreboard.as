package package_7
{
   import Playtomic.*;
   import fl.controls.TextInput;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import package_2.*;
   import package_5.class_11;
   
   public class Scoreboard
   {
       
      
      private var api:class_11;
      
      private var clip:MovieClip;
      
      private var largeScoreboardY:Number = 47;
      
      private var smallScoreboardY:Number = 75;
      
      private var scoresPerPage:Number = 10;
      
      private var submittingScore:Boolean = false;
      
      private var showPlace:Boolean = false;
      
      private var requireName:Boolean = true;
      
      private var playerScore:Number = 0;
      
      private var playerName:String = "Anonymous";
      
      private var playerCustomData:Object = null;
      
      private var scoreboardClassName:String = "flipline_highscoresMC";
      
      private var enterNameText:TextInput;
      
      private var enterNameButton:class_14;
      
      private var closeCallback:Function;
      
      private var scoreTableName:String;
      
      private var todayScores:Array;
      
      private var weeklyScores:Array;
      
      private var monthlyScores:Array;
      
      private var alltimeScores:Array;
      
      private var todayTotal:Number;
      
      private var weeklyTotal:Number;
      
      private var monthlyTotal:Number;
      
      private var alltimeTotal:Number;
      
      private var todayPage:Number = 1;
      
      private var weeklyPage:Number = 1;
      
      private var monthlyPage:Number = 1;
      
      private var alltimePage:Number = 1;
      
      public var askingWhichMode:String = "today";
      
      public var viewingMode:String = "today";
      
      public function Scoreboard(param1:class_11, param2:String, param3:Function = null, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:String = "Anonymous", param8:Number = 0, param9:Object = null)
      {
         var scoreTableName:String;
         var closeCallback:Function;
         var submitScore:Boolean;
         var requireName:Boolean;
         var showPlace:Boolean;
         var playerName:String;
         var playerScore:Number;
         var playerCustomData:Object;
         var ob:Scoreboard;
         var api:class_11 = param1;
         false;
         false;
         false;
         false;
         scoreTableName = param2;
         false;
         false;
         closeCallback = param3;
         true;
         true;
         submitScore = param4;
         true;
         true;
         requireName = param5;
         true;
         true;
         showPlace = param6;
         playerName = param7;
         playerScore = param8;
         false;
         false;
         playerCustomData = param9;
         super();
         true;
         true;
         ob = this;
         ob.api = api;
         ob.scoreTableName = scoreTableName;
         false;
         false;
         ob.submittingScore = submitScore;
         true;
         true;
         ob.requireName = requireName;
         false;
         false;
         ob.showPlace = showPlace;
         false;
         false;
         ob.playerName = playerName;
         ob.playerScore = playerScore;
         ob.playerCustomData = playerCustomData;
         if(closeCallback == null)
         {
            ob.closeCallback = function():void
            {
            };
         }
         else
         {
            ob.closeCallback = closeCallback;
         }
         ob.setupScoreboard();
      }
      
      private function setupScoreboard() : void
      {
         var _loc1_:Scoreboard = this;
         false;
         false;
         _loc1_.clip = _loc1_.api.util.method_26(_loc1_.scoreboardClassName);
         _loc1_.clip.x = (_loc1_.api.var_39 - _loc1_.clip.width) / 2;
         if(_loc1_.showPlace)
         {
            _loc1_.clip.y = _loc1_.largeScoreboardY;
         }
         else
         {
            _loc1_.clip.y = _loc1_.smallScoreboardY;
         }
         _loc1_.clip.close_btn.addEventListener(MouseEvent.CLICK,_loc1_.closeScoreboard);
         false;
         false;
         _loc1_.enterNameText = new TextInput();
         _loc1_.enterNameText.width = 294;
         _loc1_.enterNameText.height = 39;
         _loc1_.clip.entername.addChild(_loc1_.enterNameText);
         var _loc2_:TextFormat = new TextFormat();
         false;
         false;
         _loc2_.font = "Arial";
         false;
         false;
         _loc2_.size = 24;
         _loc2_.bold = true;
         false;
         false;
         _loc2_.align = TextFormatAlign.CENTER;
         _loc1_.enterNameText.setStyle("textFormat",_loc2_);
         _loc1_.enterNameText.maxChars = 16;
         _loc1_.enterNameText.restrict = "0-9A-Za-z \'\\-";
         _loc1_.enterNameButton = new class_14(null,"SUBMIT SCORE","small","button","clickNameOK",null,false,false,false,null,false,180);
         _loc1_.enterNameButton.x = 57;
         _loc1_.enterNameButton.y = 46;
         false;
         false;
         _loc1_.clip.entername.addChild(_loc1_.enterNameButton);
         _loc1_.enterNameButton.addEventListener("clickNameOK",_loc1_.clickEnterNameOK);
         _loc1_.enterNameText.text = _loc1_.playerName;
         _loc1_.clip.content.today_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMode);
         _loc1_.clip.content.weekly_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMode);
         _loc1_.clip.content.monthly_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMode);
         _loc1_.clip.content.alltime_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMode);
         _loc1_.clip.content.today_btn.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverMode);
         _loc1_.clip.content.weekly_btn.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverMode);
         _loc1_.clip.content.monthly_btn.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverMode);
         false;
         false;
         _loc1_.clip.content.alltime_btn.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverMode);
         false;
         false;
         _loc1_.clip.content.today_btn.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutMode);
         true;
         true;
         _loc1_.clip.content.weekly_btn.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutMode);
         _loc1_.clip.content.monthly_btn.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutMode);
         false;
         false;
         _loc1_.clip.content.alltime_btn.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutMode);
         _loc1_.clip.content.today_btn.buttonMode = true;
         _loc1_.clip.content.weekly_btn.buttonMode = true;
         _loc1_.clip.content.monthly_btn.buttonMode = true;
         _loc1_.clip.content.alltime_btn.buttonMode = true;
         _loc1_.clip.content.today_btn.useHandCursor = true;
         _loc1_.clip.content.weekly_btn.useHandCursor = true;
         true;
         true;
         _loc1_.clip.content.monthly_btn.useHandCursor = true;
         _loc1_.clip.content.alltime_btn.useHandCursor = true;
         _loc1_.clip.content.today_btn.mouseChildren = false;
         _loc1_.clip.content.weekly_btn.mouseChildren = false;
         true;
         true;
         _loc1_.clip.content.monthly_btn.mouseChildren = false;
         _loc1_.clip.content.alltime_btn.mouseChildren = false;
         _loc1_.clip.content.next_btn.visible = false;
         true;
         true;
         _loc1_.clip.content.prev_btn.visible = false;
         true;
         true;
         _loc1_.api.container.addChild(_loc1_.clip);
         if(_loc1_.showPlace)
         {
            true;
            true;
            _loc1_.clip.bg.gotoAndStop("large");
         }
         else
         {
            _loc1_.clip.bg.gotoAndStop("small");
            true;
            true;
         }
         §§push(_loc1_.submittingScore);
         if(_loc1_.submittingScore)
         {
            true;
            true;
            §§pop();
            §§push(_loc1_.requireName);
         }
         if(§§pop())
         {
            _loc1_.showEnterName();
         }
         else
         {
            true;
            true;
            if(_loc1_.submittingScore && !_loc1_.requireName)
            {
               _loc1_.submitScore();
            }
            else if(!_loc1_.submittingScore)
            {
               _loc1_.loadScores();
            }
         }
      }
      
      public function clickEnterNameOK(param1:Event = null) : void
      {
         var _loc2_:Scoreboard = this;
         _loc2_.playerName = _loc2_.enterNameText.text;
         true;
         true;
         _loc2_.submitScore();
      }
      
      private function showMessage(param1:String, param2:Boolean = false) : void
      {
         false;
         true;
         var _loc3_:Scoreboard = this;
         if(_loc3_.clip)
         {
            _loc3_.clip.content.visible = false;
            _loc3_.clip.entername.visible = false;
            _loc3_.clip.message.visible = true;
            _loc3_.clip.message.message_txt.text = String(param1);
            _loc3_.clip.message.spinner.visible = param2;
         }
      }
      
      private function showEnterName() : void
      {
         false;
         true;
         var _loc1_:Scoreboard = this;
         _loc1_.clip.content.visible = false;
         true;
         true;
         _loc1_.clip.message.visible = false;
         _loc1_.clip.entername.visible = true;
         false;
         false;
         _loc1_.enterNameText.text = _loc1_.playerName;
         true;
         true;
         _loc1_.enterNameText.setFocus();
      }
      
      private function submitScore() : void
      {
         false;
         true;
         var _loc1_:Scoreboard = this;
         var _loc2_:PlayerScore = new PlayerScore();
         _loc2_.Name = _loc1_.playerName;
         _loc2_.Points = _loc1_.playerScore;
         if(_loc1_.playerCustomData != null)
         {
            _loc2_.CustomData = _loc1_.playerCustomData;
         }
         if(_loc1_.api.var_33)
         {
            Leaderboards.Save(_loc2_,_loc1_.scoreTableName,_loc1_.scoreSubmitCallback);
            _loc1_.showMessage("Submitting Score...",true);
         }
         else
         {
            _loc1_.showMessage("Sorry, Leaderboards are not available for this game.");
         }
      }
      
      public function loadScores() : void
      {
         var _loc1_:Scoreboard = this;
         true;
         true;
         if(_loc1_.api.var_33)
         {
            Leaderboards.List(_loc1_.scoreTableName,_loc1_.loadScoresCallback,{
               "mode":_loc1_.askingWhichMode,
               "perpage":_loc1_.scoresPerPage
            });
            _loc1_.showMessage("Getting High Scores...",true);
         }
         else
         {
            _loc1_.showMessage("Sorry, Leaderboards are not available for this game.");
         }
      }
      
      public function showScores(param1:String = "today") : void
      {
         false;
         true;
         var _loc5_:MovieClip = null;
         var _loc2_:Scoreboard = this;
         true;
         true;
         _loc2_.viewingMode = param1;
         true;
         true;
         _loc2_.clip.content.today_btn.tab.alpha = 0;
         _loc2_.clip.content.weekly_btn.tab.alpha = 0;
         true;
         true;
         _loc2_.clip.content.monthly_btn.tab.alpha = 0;
         _loc2_.clip.content.alltime_btn.tab.alpha = 0;
         _loc2_.clip.content[_loc2_.viewingMode + "_btn"].tab.alpha = 1;
         _loc2_.clip.message.visible = false;
         _loc2_.clip.entername.visible = false;
         _loc2_.clip.content.visible = true;
         var _loc3_:Array = _loc2_[_loc2_.viewingMode + "Scores"];
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.scoresPerPage)
         {
            _loc5_ = _loc2_.clip.content["panel" + _loc4_];
            if(_loc3_.length > _loc4_)
            {
               _loc5_.visible = true;
               _loc5_.place_txt.htmlText = "<B>" + (_loc4_ + 1) + ".</B>";
               _loc5_.name_txt.htmlText = "<B>" + PlayerScore(_loc3_[_loc4_]).Name + "</B>";
               false;
               false;
               _loc5_.score_txt.htmlText = "<B>" + class_8.method_31(PlayerScore(_loc3_[_loc4_]).Points) + "</B>";
            }
            else
            {
               _loc5_.visible = false;
            }
            _loc4_++;
         }
         false;
         false;
         if(_loc2_.showPlace)
         {
            _loc2_.clip.content.yourscore.visible = true;
            _loc2_.clip.content.yourscore.panel.place_txt.htmlText = "";
            _loc2_.clip.content.yourscore.panel.name_txt.htmlText = "<B>" + _loc2_.playerName + "</B>";
            true;
            true;
            _loc2_.clip.content.yourscore.panel.score_txt.htmlText = "<B>" + class_8.method_31(_loc2_.playerScore) + "</B>";
            false;
            false;
         }
         else
         {
            _loc2_.clip.content.yourscore.visible = false;
         }
      }
      
      public function clickMode(param1:MouseEvent) : void
      {
         var _loc2_:Scoreboard = this;
         var _loc3_:String = String(param1.currentTarget.name.split("_")[0]);
         if(_loc3_ != _loc2_.viewingMode)
         {
            false;
            false;
            _loc2_.showScores(_loc3_);
         }
      }
      
      public function rolloverMode(param1:MouseEvent) : void
      {
         var _loc2_:Scoreboard = this;
         var _loc3_:String = String(param1.currentTarget.name.split("_")[0]);
         if(_loc3_ != _loc2_.viewingMode)
         {
            true;
            true;
            _loc2_.clip.content[_loc3_ + "_btn"].tab.alpha = 0.4;
         }
      }
      
      public function rolloutMode(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:Scoreboard = this;
         var _loc3_:String = String(param1.currentTarget.name.split("_")[0]);
         true;
         true;
         if(_loc3_ != _loc2_.viewingMode)
         {
            true;
            true;
            _loc2_.clip.content[_loc3_ + "_btn"].tab.alpha = 0;
         }
      }
      
      public function closeScoreboard(param1:Event = null) : void
      {
         false;
         true;
         var _loc2_:Scoreboard = this;
         _loc2_.api.method_51();
      }
      
      public function destroy() : void
      {
         var ob:Scoreboard;
         false;
         false;
         ob = this;
         ob.clip.close_btn.removeEventListener(MouseEvent.CLICK,ob.closeScoreboard);
         true;
         true;
         ob.clip.content.today_btn.removeEventListener(MouseEvent.CLICK,ob.clickMode);
         ob.clip.content.weekly_btn.removeEventListener(MouseEvent.CLICK,ob.clickMode);
         false;
         false;
         ob.clip.content.monthly_btn.removeEventListener(MouseEvent.CLICK,ob.clickMode);
         ob.clip.content.alltime_btn.removeEventListener(MouseEvent.CLICK,ob.clickMode);
         ob.clip.content.today_btn.removeEventListener(MouseEvent.ROLL_OVER,ob.rolloverMode);
         ob.clip.content.weekly_btn.removeEventListener(MouseEvent.ROLL_OVER,ob.rolloverMode);
         ob.clip.content.monthly_btn.removeEventListener(MouseEvent.ROLL_OVER,ob.rolloverMode);
         ob.clip.content.alltime_btn.removeEventListener(MouseEvent.ROLL_OVER,ob.rolloverMode);
         ob.clip.content.today_btn.removeEventListener(MouseEvent.ROLL_OUT,ob.rolloutMode);
         false;
         false;
         ob.clip.content.weekly_btn.removeEventListener(MouseEvent.ROLL_OUT,ob.rolloutMode);
         ob.clip.content.monthly_btn.removeEventListener(MouseEvent.ROLL_OUT,ob.rolloutMode);
         true;
         true;
         ob.clip.content.alltime_btn.removeEventListener(MouseEvent.ROLL_OUT,ob.rolloutMode);
         true;
         true;
         if(ob.enterNameText)
         {
            true;
            true;
            ob.clip.entername.removeChild(ob.enterNameText);
            true;
            true;
            ob.enterNameText = null;
         }
         true;
         true;
         if(ob.enterNameButton)
         {
            false;
            false;
            ob.enterNameButton.removeEventListener("clickNameOK",ob.clickEnterNameOK);
            ob.clip.entername.removeChild(ob.enterNameButton);
            ob.enterNameButton.destroy();
            ob.enterNameButton = null;
         }
         true;
         true;
         if(ob.api.container.contains(ob.clip))
         {
            true;
            true;
            ob.api.container.removeChild(ob.clip);
         }
         ob.clip = null;
         try
         {
            true;
            true;
            if(ob.closeCallback != null)
            {
               ob.closeCallback();
            }
         }
         catch(err:Error)
         {
            false;
            false;
            class_5.error("Error with close callback.");
         }
      }
      
      public function scoreSubmitCallback(param1:Object) : void
      {
         var _loc2_:Scoreboard = this;
         true;
         true;
         if(param1.Success)
         {
            class_5.method_25("Score Submit - Success");
            false;
            false;
            _loc2_.loadScores();
            false;
            false;
         }
         else
         {
            _loc2_.showMessage("There was an error submitting your score.");
            try
            {
               class_5.method_25("Error:");
               true;
               true;
               class_5.method_25(param1.ErrorCode);
               class_5.method_25(param1.ErrorDescription);
            }
            catch(err:Error)
            {
            }
         }
      }
      
      public function loadScoresCallback(param1:Array, param2:int, param3:Object) : void
      {
         false;
         true;
         var _loc4_:Scoreboard;
         if((_loc4_ = this).askingWhichMode == "today")
         {
            true;
            true;
            _loc4_.todayScores = param1.concat();
            _loc4_.todayTotal = param2;
            _loc4_.askingWhichMode = "last7days";
            _loc4_.loadScores();
         }
         else
         {
            true;
            true;
            if(_loc4_.askingWhichMode == "last7days")
            {
               _loc4_.weeklyScores = param1.concat();
               _loc4_.weeklyTotal = param2;
               _loc4_.askingWhichMode = "last30days";
               true;
               true;
               _loc4_.loadScores();
               true;
               true;
            }
            else
            {
               true;
               true;
               if(_loc4_.askingWhichMode == "last30days")
               {
                  _loc4_.monthlyScores = param1.concat();
                  _loc4_.monthlyTotal = param2;
                  _loc4_.askingWhichMode = "alltime";
                  _loc4_.loadScores();
               }
               else if(_loc4_.askingWhichMode == "alltime")
               {
                  _loc4_.alltimeScores = param1.concat();
                  _loc4_.alltimeTotal = param2;
                  _loc4_.showScores();
               }
            }
         }
      }
      
      public function newestScoresCallback(param1:Array, param2:int, param3:Object) : void
      {
         this;
      }
   }
}
