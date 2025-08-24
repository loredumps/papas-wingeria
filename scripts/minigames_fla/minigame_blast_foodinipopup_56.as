package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="minigames_fla.minigame_blast_foodinipopup_56")]
   public dynamic class minigame_blast_foodinipopup_56 extends MovieClip
   {
       
      
      public var inside:MovieClip;
      
      public function minigame_blast_foodinipopup_56()
      {
         super();
         addFrameScript(0,this.frame1,46,this.frame47);
      }
      
      internal function frame1() : *
      {
         false;
         true;
         stop();
      }
      
      internal function frame47() : *
      {
         false;
         true;
         true;
         true;
         gotoAndStop(1);
      }
   }
}
