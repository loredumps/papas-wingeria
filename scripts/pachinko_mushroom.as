package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="pachinko_mushroom")]
   public dynamic class pachinko_mushroom extends MovieClip
   {
       
      
      public function pachinko_mushroom()
      {
         true;
         true;
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame10() : *
      {
         false;
         false;
         gotoAndStop(1);
      }
   }
}
