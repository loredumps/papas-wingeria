package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="minigames_fla.minigame_hallway_door_96")]
   public dynamic class minigame_hallway_door_96 extends MovieClip
   {
       
      
      public function minigame_hallway_door_96()
      {
         super();
         true;
         true;
         addFrameScript(0,this.frame1,12,this.frame13);
      }
      
      internal function frame1() : *
      {
         false;
         false;
         stop();
      }
      
      internal function frame13() : *
      {
         stop();
      }
   }
}
