package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="putt_fence3")]
   public dynamic class putt_fence3 extends MovieClip
   {
       
      
      public function putt_fence3()
      {
         super();
         false;
         false;
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
         false;
         true;
         gotoAndStop(1);
      }
   }
}
