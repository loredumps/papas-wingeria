package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="build_side_ranch")]
   public dynamic class build_side_ranch extends MovieClip
   {
       
      
      public function build_side_ranch()
      {
         true;
         true;
         super();
         addFrameScript(0,this.frame1,4,this.frame5,6,this.frame7);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame5() : *
      {
         false;
         true;
         stop();
      }
      
      internal function frame7() : *
      {
         gotoAndStop(1);
      }
   }
}
