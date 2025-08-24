package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="pachinko_sausage")]
   public dynamic class pachinko_sausage extends MovieClip
   {
       
      
      public function pachinko_sausage()
      {
         false;
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
         gotoAndStop(1);
      }
   }
}
