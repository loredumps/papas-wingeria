package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   [Embed(source="/_assets/assets.swf", symbol="miniGameScreenMC")]
   public dynamic class miniGameScreenMC extends MovieClip
   {
       
      
      public var skip_btn:SimpleButton;
      
      public var logo:MovieClip;
      
      public var foodini:minigame_foodini;
      
      public var hud:MovieClip;
      
      public var holder:MovieClip;
      
      public var trainingclip:MovieClip;
      
      public var play_btn:SimpleButton;
      
      public var prizepanel:MovieClip;
      
      public function miniGameScreenMC()
      {
         false;
         true;
         true;
         true;
         super();
         true;
         true;
         addFrameScript(94,this.frame95,174,this.frame175,335,this.frame336,407,this.frame408);
      }
      
      internal function frame95() : *
      {
         false;
         true;
         stop();
      }
      
      internal function frame175() : *
      {
         true;
         true;
         stop();
      }
      
      internal function frame336() : *
      {
         true;
         true;
         stop();
      }
      
      internal function frame408() : *
      {
         gotoAndPlay("fadeout");
      }
   }
}
