package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="minigames_fla.minigame_putt_hole_143")]
   public dynamic class minigame_putt_hole_143 extends MovieClip
   {
       
      
      public function minigame_putt_hole_143()
      {
         true;
         true;
         super();
         addFrameScript(0,this.frame1,17,this.frame18);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame18() : *
      {
         false;
         true;
         gotoAndPlay("looper");
      }
   }
}
