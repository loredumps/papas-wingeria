package wingeria_interface_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="wingeria_interface_fla.animated_fader_50")]
   public dynamic class animated_fader_50 extends MovieClip
   {
       
      
      public function animated_fader_50()
      {
         super();
         addFrameScript(6,this.frame7,24,this.frame25);
      }
      
      internal function frame7() : *
      {
         stop();
      }
      
      internal function frame25() : *
      {
         false;
         true;
         true;
         true;
         stop();
      }
   }
}
