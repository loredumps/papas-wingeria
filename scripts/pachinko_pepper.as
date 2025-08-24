package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="pachinko_pepper")]
   public dynamic class pachinko_pepper extends MovieClip
   {
       
      
      public function pachinko_pepper()
      {
         true;
         true;
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      internal function frame1() : *
      {
         true;
         true;
         stop();
      }
      
      internal function frame10() : *
      {
         true;
         true;
         gotoAndStop(1);
      }
   }
}
