package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="putt_cherry")]
   public dynamic class putt_cherry extends MovieClip
   {
       
      
      public function putt_cherry()
      {
         false;
         true;
         super();
         false;
         false;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame10() : *
      {
         gotoAndStop(1);
      }
   }
}
