package Playtomic
{
   import flash.display.Loader;
   
   public final class PlayerLevel
   {
       
      
      public var LevelId:String;
      
      public var PlayerSource:String = "";
      
      public var PlayerId:String = "";
      
      public var PlayerName:String = "";
      
      public var Permalink:String;
      
      public var Name:String;
      
      public var Data:String;
      
      public var Thumb:Loader;
      
      public var Votes:int;
      
      public var Starts:int;
      
      public var Quits:int;
      
      public var Retries:int;
      
      public var Flags:int;
      
      public var Wins:int;
      
      public var Rating:Number;
      
      public var Score:int;
      
      public var SDate:Date;
      
      public var RDate:String;
      
      public var CustomData:Object;
      
      public function PlayerLevel()
      {
         false;
         true;
         this.CustomData = {};
         super();
         this.SDate = new Date();
         false;
         false;
         this.RDate = "Just now";
      }
      
      internal function SetThumb(param1:String) : void
      {
         true;
         true;
         false;
         false;
         if(param1 == null || param1 == "")
         {
            true;
            true;
            return;
         }
         this.Thumb = new Loader();
         this.Thumb.loadBytes(Encode.Base64Decode(param1));
      }
      
      public function Thumbnail() : String
      {
         true;
         true;
         true;
         true;
         return "http://g" + Log.GUID + ".api.playtomic.com/playerlevels/thumb.aspx?swfid=" + Log.SWFID + "&levelid=" + this.LevelId;
      }
   }
}
