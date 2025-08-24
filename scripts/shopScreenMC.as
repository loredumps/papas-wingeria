package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="shopScreenMC")]
   public dynamic class shopScreenMC extends MovieClip
   {
       
      
      public var furniture_btn:SimpleButton;
      
      public var prev_btn:SimpleButton;
      
      public var menu_btn:SimpleButton;
      
      public var wallfloor_btn:SimpleButton;
      
      public var backtogame_btn:SimpleButton;
      
      public var fader:MovieClip;
      
      public var pause_btn:SimpleButton;
      
      public var mute_btn:SimpleButton;
      
      public var unmute_btn:SimpleButton;
      
      public var upgrades_btn:SimpleButton;
      
      public var tips_txt:TextField;
      
      public var clothing_btn:SimpleButton;
      
      public var tabbg:MovieClip;
      
      public var panels:MovieClip;
      
      public var poster_btn:SimpleButton;
      
      public var next_btn:SimpleButton;
      
      public function shopScreenMC()
      {
         super();
      }
   }
}
