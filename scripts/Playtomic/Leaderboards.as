package Playtomic
{
   import flash.external.ExternalInterface;
   
   public final class Leaderboards
   {
      
      public static const TODAY:String = "today";
      
      public static const LAST7DAYS:String = "last7days";
      
      public static const LAST30DAYS:String = "last30days";
      
      public static const ALLTIME:String = "alltime";
      
      public static const NEWEST:String = "newest";
      
      private static var SECTION:String;
      
      private static var CREATEPRIVATELEADERBOARD:String;
      
      private static var LOADPRIVATELEADERBOARD:String;
      
      private static var SAVEANDLIST:String;
      
      private static var SAVE:String;
      
      private static var LIST:String;
      
      {
         false;
         false;
         false;
         false;
         true;
         true;
      }
      
      public function Leaderboards()
      {
         true;
         true;
         super();
      }
      
      internal static function Initialise(param1:String) : void
      {
         SECTION = Encode.MD5("leaderboards-" + param1);
         true;
         true;
         CREATEPRIVATELEADERBOARD = Encode.MD5("leaderboards-createprivateleaderboard-" + param1);
         LOADPRIVATELEADERBOARD = Encode.MD5("leaderboards-loadprivateleaderboard-" + param1);
         SAVEANDLIST = Encode.MD5("leaderboards-saveandlist-" + param1);
         false;
         false;
         SAVE = Encode.MD5("leaderboards-save-" + param1);
         LIST = Encode.MD5("leaderboards-list-" + param1);
      }
      
      public static function CreatePrivateLeaderboard(param1:String, param2:String, param3:Function = null, param4:Boolean = true) : void
      {
         false;
         true;
         var _loc5_:Object;
         (_loc5_ = new Object())["table"] = param1;
         _loc5_["highest"] = param4 ? "y" : "n";
         false;
         false;
         _loc5_["permalink"] = param2;
         PRequest.Load(SECTION,CREATEPRIVATELEADERBOARD,CreatePrivateLeaderboardComplete,param3,_loc5_);
      }
      
      private static function CreatePrivateLeaderboardComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         false;
         true;
         false;
         false;
         if(param1 == null)
         {
            true;
            true;
            return;
         }
         var _loc5_:PrivateLeaderboard = null;
         if(param4.Success)
         {
            _loc5_ = new PrivateLeaderboard(param3["tableid"],param3["name"],param3["bitly"],param3["permalink"],param3["highest"] == "true",param3["realname"]);
         }
         param1(_loc5_,param4);
         param2 = param2;
      }
      
      public static function LoadPrivateLeaderboard(param1:String, param2:Function = null) : void
      {
         false;
         true;
         var _loc3_:Object = new Object();
         _loc3_["tableid"] = param1;
         true;
         true;
         PRequest.Load(SECTION,LOADPRIVATELEADERBOARD,LoadPrivateLeaderboardComplete,param2,_loc3_);
      }
      
      private static function LoadPrivateLeaderboardComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         false;
         true;
         false;
         false;
         if(param1 == null)
         {
            return;
         }
         var _loc5_:PrivateLeaderboard = null;
         if(param4.Success)
         {
            false;
            false;
            _loc5_ = new PrivateLeaderboard(param3["tableid"],param3["name"],param3["bitly"],param3["permalink"],param3["highest"] == "true",param3["realname"]);
         }
         param1(_loc5_,param4);
         param2 = param2;
      }
      
      public static function GetLeaderboardFromUrl() : String
      {
         false;
         true;
         var _loc1_:String = null;
         var _loc2_:String = null;
         false;
         false;
         if(!ExternalInterface.available)
         {
            return null;
         }
         try
         {
            _loc1_ = String(ExternalInterface.call("window.location.href.toString"));
            if(_loc1_.indexOf("?") == -1)
            {
               return null;
            }
            false;
            false;
            _loc2_ = _loc1_.substring(_loc1_.indexOf("leaderboard=") + 12);
            if(_loc2_.indexOf("&") > -1)
            {
               _loc2_ = _loc2_.substring(0,_loc2_.indexOf("&"));
            }
            if(_loc2_.indexOf("#") > -1)
            {
               _loc2_ = _loc2_.substring(0,_loc2_.indexOf("#"));
            }
            return _loc2_;
         }
         catch(s:Error)
         {
         }
         return null;
      }
      
      public static function SaveAndList(param1:PlayerScore, param2:String, param3:Function = null, param4:Object = null) : void
      {
         var _loc16_:String = null;
         var _loc17_:String = null;
         if(param4 == null)
         {
            false;
            false;
            param4 = new Object();
         }
         var _loc5_:Boolean = param4.hasOwnProperty("allowduplicates") ? Boolean(param4["allowduplicates"]) : (false, false, false);
         false;
         false;
         var _loc6_:Boolean = param4.hasOwnProperty("global") ? Boolean(param4["global"]) : (true, true, true);
         false;
         false;
         var _loc7_:Boolean = param4.hasOwnProperty("highest") ? Boolean(param4["highest"]) : (true, true, true);
         true;
         true;
         var _loc8_:String = param4.hasOwnProperty("mode") ? (true, true, String(param4["mode"])) : "alltime";
         var _loc9_:Object = param4.hasOwnProperty("customfilters") ? param4["customfilters"] : {};
         var _loc10_:int = param4.hasOwnProperty("page") ? (true, true, int(param4["page"])) : (false, false, 1);
         var _loc11_:int = param4.hasOwnProperty("perpage") ? int(param4["perpage"]) : 20;
         false;
         false;
         var _loc12_:Array = param4.hasOwnProperty("friendslist") ? param4["friendslist"] : new Array();
         var _loc13_:Object;
         (_loc13_ = new Object())["url"] = Log.SourceUrl;
         _loc13_["table"] = param2;
         _loc13_["highest"] = _loc7_ ? "y" : "n";
         false;
         false;
         _loc13_["name"] = param1.Name;
         false;
         false;
         _loc13_["points"] = param1.Points.toString();
         _loc13_["allowduplicates"] = _loc5_ ? "y" : "n";
         var _loc14_:int = 0;
         if(param1.CustomData != null)
         {
            for(_loc16_ in param1.CustomData)
            {
               _loc13_["ckey" + _loc14_] = _loc16_;
               _loc13_["cdata" + _loc14_] = param1.CustomData[_loc16_];
               true;
               true;
               _loc14_++;
            }
         }
         _loc13_["numfields"] = _loc14_;
         true;
         true;
         _loc13_["global"] = _loc6_ ? "y" : "n";
         true;
         true;
         _loc13_["mode"] = _loc8_;
         true;
         true;
         _loc13_["page"] = _loc10_;
         false;
         false;
         _loc13_["perpage"] = _loc11_;
         var _loc15_:int = 0;
         false;
         false;
         if(_loc9_ != null)
         {
            var _loc18_:int = 0;
            true;
            true;
            var _loc19_:* = _loc9_;
            true;
            true;
            for(_loc17_ in _loc19_)
            {
               _loc13_["lkey" + _loc15_] = _loc17_;
               _loc13_["ldata" + _loc15_] = _loc9_[_loc17_];
               true;
               true;
               _loc15_++;
            }
         }
         _loc13_["numfilters"] = _loc15_;
         false;
         false;
         §§push(param1.FBUserId != null);
         if(param1.FBUserId != null)
         {
            false;
            false;
            §§pop();
            §§push(param1.FBUserId != "");
         }
         if(§§pop())
         {
            true;
            true;
            if(_loc12_.length > 0)
            {
               _loc13_["friendslist"] = _loc12_.join(",");
            }
            _loc13_["fbuserid"] = param1.FBUserId;
         }
         PRequest.Load(SECTION,SAVEANDLIST,SaveAndListComplete,param3,_loc13_);
      }
      
      private static function SaveAndListComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         false;
         true;
         true;
         true;
         if(param1 == null)
         {
            false;
            false;
            return;
         }
         if(param4.Success)
         {
            ProcessScores(param3,param4,param1);
         }
         else
         {
            param1([],0,param4);
         }
         param2 = param2;
      }
      
      public static function Save(param1:PlayerScore, param2:String, param3:Function = null, param4:Object = null) : void
      {
         var _loc10_:String = null;
         if(param4 == null)
         {
            param4 = new Object();
         }
         var _loc5_:Boolean = param4.hasOwnProperty("allowduplicates") ? Boolean(param4["allowduplicates"]) : false;
         var _loc6_:Boolean = param4.hasOwnProperty("highest") ? Boolean(param4["highest"]) : (false, false, true);
         var _loc7_:String;
         if((_loc7_ = param1.Points.toString()).indexOf(".") > -1)
         {
            false;
            false;
            true;
            true;
            _loc7_ = _loc7_.substring(0,_loc7_.indexOf("."));
         }
         var _loc8_:Object = new Object();
         var _loc9_:int = 0;
         true;
         true;
         if(param1.CustomData != null)
         {
            for(_loc10_ in param1.CustomData)
            {
               false;
               false;
               _loc8_["ckey" + _loc9_] = _loc10_;
               false;
               false;
               _loc8_["cdata" + _loc9_] = param1.CustomData[_loc10_];
               true;
               true;
               _loc9_++;
            }
         }
         _loc8_["url"] = Log.BaseUrl;
         true;
         true;
         _loc8_["table"] = param2;
         _loc8_["highest"] = _loc6_ ? "y" : "n";
         _loc8_["name"] = param1.Name;
         _loc8_["points"] = _loc7_;
         _loc8_["allowduplicates"] = _loc5_ ? "y" : "n";
         _loc8_["auth"] = Encode.MD5(Log.BaseUrl + _loc7_);
         false;
         false;
         _loc8_["fb"] = param1.FBUserId != "" && param1.FBUserId != null ? "y" : "n";
         false;
         false;
         _loc8_["fbuserid"] = param1.FBUserId;
         _loc8_["customfields"] = _loc9_;
         false;
         false;
         PRequest.Load(SECTION,SAVE,SaveComplete,param3,_loc8_);
      }
      
      private static function SaveComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         param3 = param3;
         param2 = param2;
         param1(param4);
      }
      
      public static function List(param1:String, param2:Function, param3:Object = null) : void
      {
         var _loc14_:String = null;
         true;
         true;
         if(param3 == null)
         {
            false;
            false;
            param3 = new Object();
         }
         var _loc4_:Boolean = param3.hasOwnProperty("global") ? (false, false, Boolean(param3["global"])) : true;
         var _loc5_:Boolean = param3.hasOwnProperty("highest") ? Boolean(param3["highest"]) : (false, false, true);
         var _loc6_:String = param3.hasOwnProperty("mode") ? String(param3["mode"]) : "alltime";
         false;
         false;
         var _loc7_:Object = param3.hasOwnProperty("customfilters") ? param3["customfilters"] : new Object();
         true;
         true;
         var _loc8_:int = param3.hasOwnProperty("page") ? int(param3["page"]) : 1;
         false;
         false;
         var _loc9_:int = param3.hasOwnProperty("perpage") ? int(param3["perpage"]) : (true, true, 20);
         var _loc10_:Boolean = param3.hasOwnProperty("facebook") ? Boolean(param3["facebook"]) : (false, false, false);
         var _loc11_:Array = param3.hasOwnProperty("friendslist") ? param3["friendslist"] : new Array();
         var _loc12_:Object = new Object();
         var _loc13_:int = 0;
         for(_loc14_ in _loc7_)
         {
            false;
            false;
            _loc12_["ckey" + _loc13_] = _loc14_;
            false;
            false;
            _loc12_["cdata" + _loc13_] = _loc7_[_loc14_];
            true;
            true;
            _loc13_++;
         }
         _loc12_["url"] = _loc4_ || Log.BaseUrl == null ? "global" : Log.BaseUrl;
         _loc12_["mode"] = _loc6_;
         true;
         true;
         _loc12_["page"] = _loc8_;
         _loc12_["perpage"] = _loc9_;
         _loc12_["highest"] = _loc5_ ? "y" : "n";
         _loc12_["filters"] = _loc13_;
         _loc12_["table"] = param1;
         true;
         true;
         if(_loc10_ || _loc11_.length > 0)
         {
            _loc12_["friendslist"] = _loc11_.join(",");
            trace(_loc12_["friendslist"]);
            false;
            false;
         }
         PRequest.Load(SECTION,LIST,ListComplete,param2,_loc12_);
      }
      
      private static function ListComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         false;
         true;
         true;
         true;
         true;
         true;
         if(param1 == null)
         {
            return;
         }
         if(param4.Success)
         {
            false;
            false;
            ProcessScores(param3,param4,param1);
         }
         else
         {
            param1([],0,param4);
         }
         param2 = param2;
      }
      
      private static function ProcessScores(param1:XML, param2:Response, param3:Function) : void
      {
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:PlayerScore = null;
         var _loc13_:XMLList = null;
         var _loc14_:XML = null;
         var _loc4_:int = parseInt(param1["numscores"]);
         var _loc5_:Array = new Array();
         var _loc6_:XMLList = param1["score"];
         for each(_loc11_ in _loc6_)
         {
            _loc7_ = String(_loc11_["sdate"]);
            _loc8_ = int(_loc7_.substring(_loc7_.lastIndexOf("/") + 1));
            _loc9_ = int(_loc7_.substring(0,_loc7_.indexOf("/")));
            _loc10_ = int(_loc7_.substring(_loc7_.indexOf("/") + 1).substring(0,2));
            (_loc12_ = new PlayerScore()).SDate = new Date(_loc8_,_loc9_ - 1,_loc10_);
            _loc12_.RDate = _loc11_["rdate"];
            _loc12_.Name = _loc11_["name"];
            false;
            false;
            _loc12_.Points = _loc11_["points"];
            false;
            false;
            _loc12_.Website = _loc11_["website"];
            _loc12_.Rank = _loc11_["rank"];
            true;
            true;
            if(_loc11_["submittedorbest"] != null)
            {
               true;
               true;
               _loc12_.SubmittedOrBest = _loc11_["submittedorbest"] == "true";
               false;
               false;
            }
            if(_loc11_["fbuserid"])
            {
               _loc12_.FBUserId = _loc11_["fbuserid"];
            }
            if(_loc11_["custom"])
            {
               _loc13_ = _loc11_["custom"];
               true;
               true;
               var _loc17_:int = 0;
               true;
               true;
               for each(_loc14_ in _loc13_.children())
               {
                  true;
                  true;
                  _loc12_.CustomData[_loc14_.name()] = _loc14_.text();
               }
            }
            _loc5_.push(_loc12_);
         }
         true;
         true;
         param3(_loc5_,_loc4_,param2);
      }
   }
}
