package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   [Embed(source="/_assets/assets.swf", symbol="startDayPanelMC")]
   public dynamic class startDayPanelMC extends MovieClip
   {
       
      
      public var hotshot_btn:SimpleButton;
      
      public var clickawayMC:MovieClip;
      
      public var fader:MovieClip;
      
      public var paradetip:MovieClip;
      
      public var paradestar:MovieClip;
      
      public var cravings_btn:SimpleButton;
      
      public var furnistar:MovieClip;
      
      public var clickaway_btn:SimpleButton;
      
      public var blast_btn:SimpleButton;
      
      public var pachinko_btn:SimpleButton;
      
      public var putt_btn:SimpleButton;
      
      public var hallway_btn:SimpleButton;
      
      public var burgerzilla_btn:SimpleButton;
      
      public var backdrop_holder:MovieClip;
      
      public function startDayPanelMC()
      {
         true;
         true;
         super();
         addFrameScript(9,this.frame10,20,this.frame21,24,this.frame25);
      }
      
      internal function frame10() : *
      {
         stop();
      }
      
      internal function frame21() : *
      {
         false;
         true;
         false;
         false;
         stop();
      }
      
      internal function frame25() : *
      {
         true;
         true;
         stop();
      }
   }
}
