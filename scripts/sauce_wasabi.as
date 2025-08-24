package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="sauce_wasabi")]
   public dynamic class sauce_wasabi extends MovieClip
   {
       
      
      public function sauce_wasabi()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         true;
         true;
         stop();
      }
   }
}
