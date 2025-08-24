package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="sauce_buffalo")]
   public dynamic class sauce_buffalo extends MovieClip
   {
       
      
      public function sauce_buffalo()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         false;
         true;
         stop();
      }
   }
}
