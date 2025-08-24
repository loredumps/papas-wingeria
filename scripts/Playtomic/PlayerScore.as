package Playtomic
{
   public final class PlayerScore
   {
       
      
      public var Name:String;
      
      public var FBUserId:String;
      
      public var Points:Number;
      
      public var Rank:int;
      
      public var Website:String;
      
      public var SDate:Date;
      
      public var RDate:String;
      
      public var CustomData:Object;
      
      public var SubmittedOrBest:Boolean = false;
      
      public function PlayerScore(param1:String = "", param2:int = 0)
      {
         false;
         true;
         true;
         true;
         this.CustomData = {};
         super();
         this.Name = param1;
         false;
         false;
         this.Points = param2;
      }
      
      public function toString() : String
      {
         false;
         false;
         return "Playtomic.PlayerScore:" + "\nRank: " + this.Rank + "\nName: " + this.Name + "\nPoints: " + this.Points + "\nFBUserId: " + this.FBUserId + "\nRDate: " + this.RDate;
      }
      
      public function toStringAll() : String
      {
         false;
         true;
         var _loc2_:String = null;
         false;
         false;
         true;
         true;
         true;
         true;
         false;
         false;
         false;
         false;
         false;
         false;
         false;
         false;
         var _loc1_:* = "Playtomic.PlayerScore:" + "\nRank: " + this.Rank + "\nName: " + this.Name + "\nFBUserId: " + this.FBUserId + "\nPoints: " + this.Points + "\nWebsite: " + this.Website + "\nSDate: " + this.SDate + "\nRDate: " + this.RDate + "\nCustomData: ";
         for each(_loc2_ in this.CustomData)
         {
            false;
            false;
            _loc1_ += "\n  " + _loc2_ + ": " + this.CustomData[_loc2_];
         }
         return _loc1_;
      }
   }
}
