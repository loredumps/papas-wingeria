package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   [Embed(source="/_assets/assets.swf", symbol="lobbyEditorMC")]
   public dynamic class lobbyEditorMC extends MovieClip
   {
       
      
      public var putaway_btn:SimpleButton;
      
      public var inventory_btn:SimpleButton;
      
      public var backtogame_btn:SimpleButton;
      
      public var wall_layer:MovieClip;
      
      public var floor2_layer:MovieClip;
      
      public var fader:MovieClip;
      
      public var floor0_layer:MovieClip;
      
      public var inventory:MovieClip;
      
      public var floor1_layer:MovieClip;
      
      public var mute_btn:SimpleButton;
      
      public var unmute_btn:SimpleButton;
      
      public var moving_layer:MovieClip;
      
      public var backdrop_holder:MovieClip;
      
      public function lobbyEditorMC()
      {
         super();
      }
   }
}
