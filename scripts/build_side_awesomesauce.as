package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="build_side_awesomesauce")]
   public dynamic class build_side_awesomesauce extends MovieClip
   {
       
      
      public function build_side_awesomesauce()
      {
         false;
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
