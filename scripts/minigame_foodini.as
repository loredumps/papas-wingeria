package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="minigame_foodini")]
   public dynamic class minigame_foodini extends MovieClip
   {
       
      
      public function minigame_foodini()
      {
         false;
         true;
         false;
         false;
         super();
         addFrameScript(134,this.frame135,172,this.frame173,199,this.frame200,221,this.frame222,229,this.frame230,237,this.frame238);
      }
      
      internal function frame135() : *
      {
         gotoAndPlay("stand");
      }
      
      internal function frame173() : *
      {
         false;
         true;
         false;
         false;
         stop();
      }
      
      internal function frame200() : *
      {
         stop();
      }
      
      internal function frame222() : *
      {
         stop();
      }
      
      internal function frame230() : *
      {
         false;
         false;
         gotoAndPlay("stand");
      }
      
      internal function frame238() : *
      {
         true;
         true;
         gotoAndPlay("stand");
      }
   }
}
