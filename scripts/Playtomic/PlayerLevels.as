package Playtomic
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.net.SharedObject;
   
   public final class PlayerLevels
   {
      
      public static const NEWEST:String = "newest";
      
      public static const POPULAR:String = "popular";
      
      private static var KongAPI:* = null;
      
      private static var KongLevelReceiver:Function;
      
      private static var SECTION:String;
      
      private static var SAVE:String;
      
      private static var LIST:String;
      
      private static var LOAD:String;
      
      private static var RATE:String;
      
      {
         true;
         true;
         false;
         false;
      }
      
      public function PlayerLevels()
      {
         true;
         true;
         super();
      }
      
      internal static function Initialise(param1:String) : void
      {
         SECTION = Encode.MD5("playerlevels-" + param1);
         true;
         true;
         RATE = Encode.MD5("playerlevels-rate-" + param1);
         false;
         false;
         LIST = Encode.MD5("playerlevels-list-" + param1);
         SAVE = Encode.MD5("playerlevels-save-" + param1);
         true;
         true;
         LOAD = Encode.MD5("playerlevels-load-" + param1);
      }
      
      public static function DeferToKongregate(param1:*, param2:Function) : void
      {
         false;
         true;
         KongLevelReceiver = param2;
         false;
         false;
         KongAPI = param1;
         true;
         true;
         KongAPI.sharedContent.addLoadListener("level",KongLevelLoaded);
      }
      
      public static function LogStart(param1:String) : void
      {
         false;
         true;
         Log.PlayerLevelStart(param1);
      }
      
      public static function LogWin(param1:String) : void
      {
         false;
         true;
         false;
         false;
         Log.PlayerLevelWin(param1);
      }
      
      public static function LogQuit(param1:String) : void
      {
         false;
         true;
         Log.PlayerLevelQuit(param1);
      }
      
      public static function LogRetry(param1:String) : void
      {
         Log.PlayerLevelRetry(param1);
      }
      
      public static function Flag(param1:String) : void
      {
         Log.PlayerLevelFlag(param1);
      }
      
      public static function Rate(param1:String, param2:int, param3:Function = null) : void
      {
         false;
         true;
         var _loc4_:SharedObject;
         if((_loc4_ = SharedObject.getLocal("ratings")).data[param1] != null)
         {
            true;
            true;
            true;
            true;
            if(param3 != null)
            {
               param3(new Response(0,402));
            }
            return;
         }
         §§push(param2 < 0);
         if(!(param2 < 0))
         {
            false;
            false;
            §§pop();
            §§push(param2 > 10);
         }
         if(§§pop())
         {
            if(param3 != null)
            {
               param3(new Response(0,401));
            }
            return;
         }
         var _loc5_:Object;
         (_loc5_ = new Object())["levelid"] = param1;
         false;
         false;
         _loc5_["rating"] = param2;
         false;
         false;
         _loc4_.data[param1] = param2;
         true;
         true;
         PRequest.Load(SECTION,RATE,RateComplete,param3,_loc5_);
      }
      
      private static function RateComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         true;
         true;
         true;
         true;
         if(param1 == null)
         {
            true;
            true;
            return;
         }
         param1(param4);
         param3 = param3;
         param2 = param2;
      }
      
      public static function Load(param1:String, param2:Function = null) : void
      {
         false;
         true;
         var _loc3_:Object = new Object();
         _loc3_["levelid"] = param1;
         false;
         false;
         PRequest.Load(SECTION,LOAD,LoadComplete,param2,_loc3_);
      }
      
      private static function LoadComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         false;
         true;
         var _loc6_:XML = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:XMLList = null;
         var _loc12_:XML = null;
         if(param1 == null)
         {
            return;
         }
         var _loc5_:PlayerLevel = null;
         false;
         false;
         if(param4.Success)
         {
            _loc7_ = (_loc6_ = XML(param3["level"]))["sdate"];
            false;
            false;
            true;
            true;
            _loc8_ = int(_loc7_.substring(_loc7_.lastIndexOf("/") + 1));
            _loc9_ = int(_loc7_.substring(0,_loc7_.indexOf("/")));
            _loc10_ = int(_loc7_.substring(_loc7_.indexOf("/") + 1).substring(0,2));
            (_loc5_ = new PlayerLevel()).LevelId = _loc6_["levelid"];
            _loc5_.PlayerName = _loc6_["playername"];
            true;
            true;
            _loc5_.PlayerId = _loc6_["playerid"];
            _loc5_.Name = _loc6_["name"];
            false;
            false;
            _loc5_.Score = _loc6_["score"];
            _loc5_.Votes = _loc6_["votes"];
            _loc5_.Rating = _loc6_["rating"];
            _loc5_.Data = _loc6_["data"];
            true;
            true;
            _loc5_.Wins = _loc6_["wins"];
            _loc5_.Starts = _loc6_["starts"];
            _loc5_.Retries = _loc6_["retries"];
            _loc5_.Quits = _loc6_["quits"];
            _loc5_.Flags = _loc6_["flags"];
            _loc5_.SDate = new Date(_loc8_,_loc9_ - 1,_loc10_);
            _loc5_.RDate = _loc6_["rdate"];
            _loc5_.SetThumb(_loc6_["thumb"]);
            if(_loc6_["custom"])
            {
               _loc11_ = _loc6_["custom"];
               for each(_loc12_ in _loc11_.children())
               {
                  true;
                  true;
                  _loc5_.CustomData[_loc12_.name()] = _loc12_.text();
               }
            }
         }
         param1(_loc5_,param4);
         param2 = param2;
      }
      
      public static function List(param1:Function = null, param2:Object = null) : void
      {
         false;
         true;
         var _loc13_:String = null;
         true;
         true;
         if(param2 == null)
         {
            false;
            false;
            param2 = new Object();
         }
         var _loc3_:String = param2.hasOwnProperty("mode") ? (true, true, String(param2["mode"])) : "popular";
         false;
         false;
         var _loc4_:int = param2.hasOwnProperty("page") ? int(param2["page"]) : (false, false, 1);
         true;
         true;
         var _loc5_:int = param2.hasOwnProperty("perpage") ? (true, true, int(param2["perpage"])) : 20;
         true;
         true;
         var _loc6_:String = param2.hasOwnProperty("datemin") ? String(param2["datemin"]) : "";
         false;
         false;
         var _loc7_:String = param2.hasOwnProperty("datemax") ? String(param2["datemax"]) : "";
         true;
         true;
         var _loc8_:Boolean = param2.hasOwnProperty("data") ? Boolean(param2["data"]) : (false, false, false);
         var _loc9_:Boolean = param2.hasOwnProperty("thumbs") ? Boolean(param2["thumbs"]) : false;
         var _loc10_:Object = param2.hasOwnProperty("customfilters") ? param2["customfilters"] : {};
         false;
         false;
         if(KongAPI != null)
         {
            false;
            false;
            if(_loc3_ == "popular")
            {
               KongAPI.sharedContent.browse("level",KongAPI.sharedContent.BY_RATING);
               false;
               false;
            }
            else
            {
               KongAPI.sharedContent.browse("level",KongAPI.sharedContent.BY_NEWEST);
            }
            return;
         }
         var _loc11_:Object;
         (_loc11_ = new Object())["mode"] = _loc3_;
         _loc11_["page"] = _loc4_;
         _loc11_["perpage"] = _loc5_;
         _loc11_["data"] = _loc8_ ? "y" : "n";
         false;
         false;
         _loc11_["thumbs"] = _loc9_ ? "y" : "n";
         _loc11_["datemin"] = _loc6_;
         _loc11_["datemax"] = _loc7_;
         var _loc12_:int = 0;
         if(_loc10_ != null)
         {
            for(_loc13_ in _loc10_)
            {
               _loc11_["ckey" + _loc12_] = _loc13_;
               false;
               false;
               _loc11_["cdata" + _loc12_] = _loc10_[_loc13_];
               _loc12_++;
            }
            true;
            true;
         }
         _loc11_["filters"] = _loc12_;
         true;
         true;
         PRequest.Load(SECTION,LIST,ListComplete,param1,_loc11_);
      }
      
      private static function ListComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc7_:XMLList = null;
         var _loc8_:XML = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:XML = null;
         var _loc14_:PlayerLevel = null;
         var _loc15_:XMLList = null;
         true;
         true;
         if(param1 == null)
         {
            return;
         }
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         if(param4.Success)
         {
            _loc7_ = param3["level"];
            _loc6_ = int(param3["numresults"]);
            for each(_loc13_ in _loc7_)
            {
               _loc9_ = String(_loc13_["sdate"]);
               true;
               true;
               true;
               true;
               _loc10_ = int(_loc9_.substring(_loc9_.lastIndexOf("/") + 1));
               true;
               true;
               _loc11_ = int(_loc9_.substring(0,_loc9_.indexOf("/")));
               false;
               false;
               _loc12_ = int(_loc9_.substring(_loc9_.indexOf("/") + 1).substring(0,2));
               (_loc14_ = new PlayerLevel()).LevelId = _loc13_["levelid"];
               _loc14_.PlayerId = _loc13_["playerid"];
               _loc14_.PlayerName = _loc13_["playername"];
               _loc14_.Name = _loc13_["name"];
               true;
               true;
               _loc14_.Score = _loc13_["score"];
               true;
               true;
               _loc14_.Rating = _loc13_["rating"];
               _loc14_.Votes = _loc13_["votes"];
               false;
               false;
               _loc14_.Wins = _loc13_["wins"];
               _loc14_.Starts = _loc13_["starts"];
               _loc14_.Retries = _loc13_["retries"];
               _loc14_.Quits = _loc13_["quits"];
               _loc14_.Flags = _loc13_["flags"];
               _loc14_.SDate = new Date(_loc10_,_loc11_ - 1,_loc12_);
               true;
               true;
               _loc14_.RDate = _loc13_["rdate"];
               false;
               false;
               if(_loc13_["data"])
               {
                  _loc14_.Data = _loc13_["data"];
               }
               _loc14_.SetThumb(_loc13_["thumb"]);
               if((_loc15_ = _loc13_["custom"]) != null)
               {
                  false;
                  false;
                  var _loc18_:int = 0;
                  false;
                  false;
                  for each(_loc8_ in _loc15_.children())
                  {
                     true;
                     true;
                     _loc14_.CustomData[_loc8_.name()] = _loc8_.text();
                  }
                  true;
                  true;
               }
               _loc5_.push(_loc14_);
            }
         }
         param1(_loc5_,_loc6_,param4);
         param2 = param2;
      }
      
      public static function Save(param1:PlayerLevel, param2:DisplayObject = null, param3:Function = null) : void
      {
         var level:PlayerLevel;
         var thumb:DisplayObject;
         var callback:Function;
         var postdata:Object;
         var customfields:int;
         var kcallback:Function;
         var scale:Number;
         var w:int;
         var h:int;
         var scaler:Matrix;
         var image:BitmapData;
         var key:String;
         false;
         false;
         kcallback = null;
         true;
         true;
         scale = NaN;
         w = 0;
         h = 0;
         scaler = null;
         image = null;
         key = null;
         level = param1;
         thumb = param2;
         callback = param3;
         true;
         true;
         if(KongAPI != null)
         {
            kcallback = function(param1:Object):void
            {
               level.LevelId = param1["id"];
               level.Permalink = param1["permalink"];
               level.Name = param1["name"];
               if(callback != null)
               {
                  callback(level,new Response(!!param1["success"] ? 1 : 0,0));
               }
            };
            KongAPI.sharedContent.save("level",level.Data,kcallback,thumb,level.Name);
            return;
         }
         postdata = new Object();
         postdata["data"] = level.Data;
         postdata["playerid"] = level.PlayerId;
         postdata["playersource"] = level.PlayerSource;
         postdata["playername"] = level.PlayerName;
         false;
         false;
         postdata["name"] = level.Name;
         true;
         true;
         if(thumb != null)
         {
            scale = 1;
            w = thumb.width;
            h = thumb.height;
            true;
            true;
            §§push(thumb.width > 100);
            if(!(thumb.width > 100))
            {
               true;
               true;
               §§pop();
               false;
               false;
               §§push(thumb.height > 100);
            }
            if(§§pop())
            {
               if(thumb.width >= thumb.height)
               {
                  true;
                  true;
                  true;
                  true;
                  scale = 100 / thumb.width;
                  false;
                  false;
                  w = 100;
                  true;
                  true;
                  false;
                  false;
                  h = Math.ceil(scale * thumb.height);
               }
               else
               {
                  true;
                  true;
                  if(thumb.height > thumb.width)
                  {
                     false;
                     false;
                     true;
                     true;
                     scale = 100 / thumb.height;
                     false;
                     false;
                     true;
                     true;
                     w = Math.ceil(scale * thumb.width);
                     h = 100;
                  }
               }
            }
            false;
            false;
            scaler = new Matrix();
            scaler.scale(scale,scale);
            image = new BitmapData(w,h,true,0);
            true;
            true;
            image.draw(thumb,scaler,null,null,null,true);
            postdata["image"] = Encode.Base64(Encode.PNG(image));
            false;
            false;
            postdata["arrp"] = RandomSample(image);
            postdata["hash"] = Encode.MD5(postdata["image"] + postdata["arrp"]);
         }
         else
         {
            postdata["nothumb"] = "y";
         }
         customfields = 0;
         if(level.CustomData != null)
         {
            for(key in level.CustomData)
            {
               postdata["ckey" + customfields] = key;
               true;
               true;
               postdata["cdata" + customfields] = level.CustomData[key];
               false;
               false;
               true;
               true;
               customfields++;
            }
         }
         postdata["customfields"] = customfields;
         PRequest.Load(SECTION,SAVE,SaveComplete,callback,postdata);
      }
      
      private static function SaveComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(param1 == null)
         {
            false;
            false;
            return;
         }
         var _loc5_:PlayerLevel;
         (_loc5_ = new PlayerLevel()).Data = param2["data"];
         false;
         false;
         _loc5_.PlayerId = param2["playerid"];
         _loc5_.PlayerSource = param2["playersource"];
         _loc5_.PlayerName = param2["playername"];
         true;
         true;
         _loc5_.Name = param2["name"];
         var _loc10_:int = 0;
         var _loc11_:* = param2;
         while(§§hasnext(_loc11_,_loc10_))
         {
            false;
            false;
            _loc6_ = §§nextname(_loc10_,_loc11_);
            if(_loc6_.indexOf("ckey") == 0)
            {
               true;
               true;
               _loc7_ = _loc6_.substring(4);
               _loc8_ = String(param2["ckey" + _loc7_]);
               true;
               true;
               _loc9_ = String(param2["cdata" + _loc7_]);
               _loc5_.CustomData[_loc8_] = _loc9_;
            }
         }
         true;
         true;
         param2["data"] = _loc5_.Data;
         param2["playerid"] = _loc5_.PlayerId;
         param2["playersource"] = _loc5_.PlayerSource;
         param2["playername"] = _loc5_.PlayerName;
         param2["name"] = _loc5_.Name;
         false;
         false;
         true;
         true;
         if(param4.Success || param4.ErrorCode == 406)
         {
            _loc5_.LevelId = param3["levelid"];
            _loc5_.SDate = new Date();
            _loc5_.RDate = "Just now";
         }
         param1(_loc5_,param4);
      }
      
      private static function KongLevelLoaded(param1:Object) : void
      {
         var _loc2_:PlayerLevel = new PlayerLevel();
         _loc2_.Data = param1["content"];
         _loc2_.Permalink = param1["permalink"];
         _loc2_.Name = param1["name"];
         _loc2_.LevelId = param1["id"];
         if(KongLevelReceiver != null)
         {
            true;
            true;
            KongLevelReceiver(_loc2_);
         }
      }
      
      private static function RandomSample(param1:BitmapData) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc2_:Array = new Array();
         while(_loc2_.length < 10)
         {
            false;
            false;
            _loc3_ = Math.random() * param1.width;
            _loc4_ = Math.random() * param1.height;
            true;
            true;
            _loc5_ = param1.getPixel32(_loc3_,_loc4_).toString(16);
            false;
            false;
            while(_loc5_.length < 6)
            {
               false;
               false;
               _loc5_ = "0" + _loc5_;
            }
            _loc2_.push(_loc3_ + "/" + _loc4_ + "/" + _loc5_);
         }
         return _loc2_.join(",");
      }
   }
}
