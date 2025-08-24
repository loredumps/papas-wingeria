package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="pachinko_olive")]
   public dynamic class pachinko_olive extends MovieClip
   {
       
      
      public function pachinko_olive()
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
         false;
         false;
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
