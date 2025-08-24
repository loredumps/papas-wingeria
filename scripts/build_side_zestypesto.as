package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="build_side_zestypesto")]
   public dynamic class build_side_zestypesto extends MovieClip
   {
       
      
      public function build_side_zestypesto()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,6,this.frame7);
      }
      
      internal function frame1() : *
      {
         false;
         true;
         false;
         false;
         stop();
      }
      
      internal function frame5() : *
      {
         stop();
      }
      
      internal function frame7() : *
      {
         false;
         true;
         gotoAndStop(1);
      }
   }
}
