package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="pachinko_anchovy")]
   public dynamic class pachinko_anchovy extends MovieClip
   {
       
      
      public function pachinko_anchovy()
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
         true;
         true;
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
