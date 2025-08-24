package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="payday_screen")]
   public dynamic class payday_screen extends MovieClip
   {
       
      
      public var starburst:MovieClip;
      
      public var circleMC:MovieClip;
      
      public function payday_screen()
      {
         true;
         true;
         super();
         addFrameScript(129,this.frame130);
      }
      
      internal function frame130() : *
      {
         stop();
      }
   }
}
