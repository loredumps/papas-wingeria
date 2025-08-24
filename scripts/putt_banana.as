package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="putt_banana")]
   public dynamic class putt_banana extends MovieClip
   {
       
      
      public function putt_banana()
      {
         false;
         true;
         true;
         true;
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      internal function frame1() : *
      {
         false;
         true;
         stop();
      }
      
      internal function frame10() : *
      {
         gotoAndStop(1);
      }
   }
}
