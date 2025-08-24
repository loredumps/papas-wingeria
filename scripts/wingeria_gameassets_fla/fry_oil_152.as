package wingeria_gameassets_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="wingeria_gameassets_fla.fry_oil_152")]
   public dynamic class fry_oil_152 extends MovieClip
   {
       
      
      public var boostboil:MovieClip;
      
      public function fry_oil_152()
      {
         true;
         true;
         super();
         addFrameScript(0,this.frame1,42,this.frame43,50,this.frame51);
      }
      
      internal function frame1() : *
      {
         false;
         true;
         stop();
      }
      
      internal function frame43() : *
      {
         false;
         true;
         false;
         false;
         gotoAndPlay("loop");
      }
      
      internal function frame51() : *
      {
         false;
         true;
         gotoAndStop("static");
      }
   }
}
