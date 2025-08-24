package wingeria_interface_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="wingeria_interface_fla.customer_comics_92")]
   public dynamic class customer_comics_92 extends MovieClip
   {
       
      
      public function customer_comics_92()
      {
         false;
         true;
         false;
         false;
         super();
         false;
         false;
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         gotoAndStop(1 + Math.ceil(Math.random() * 4));
      }
   }
}
