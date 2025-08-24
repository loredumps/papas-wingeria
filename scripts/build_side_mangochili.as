package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="build_side_mangochili")]
   public dynamic class build_side_mangochili extends MovieClip
   {
       
      
      public function build_side_mangochili()
      {
         false;
         true;
         false;
         false;
         super();
         addFrameScript(0,this.frame1,4,this.frame5,6,this.frame7);
      }
      
      internal function frame1() : *
      {
         false;
         true;
         true;
         true;
         stop();
      }
      
      internal function frame5() : *
      {
         false;
         false;
         stop();
      }
      
      internal function frame7() : *
      {
         false;
         true;
         false;
         false;
         gotoAndStop(1);
      }
   }
}
