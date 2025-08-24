package wingeria_gameassets_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="wingeria_gameassets_fla.build_bin_fry_9")]
   public dynamic class build_bin_fry_9 extends MovieClip
   {
       
      
      public function build_bin_fry_9()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,7,this.frame8);
      }
      
      internal function frame1() : *
      {
         false;
         false;
         stop();
      }
      
      internal function frame5() : *
      {
         true;
         true;
         stop();
      }
      
      internal function frame8() : *
      {
         false;
         true;
         true;
         true;
         gotoAndStop(1);
      }
   }
}
