package mochi.as3
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.Timer;
   
   public class MochiServices
   {
      
      public static const CONNECTED:String = "onConnected";
      
      private static var _id:String;
      
      private static var _container:Object;
      
      private static var _clip:MovieClip;
      
      private static var _loader:Loader;
      
      private static var _timer:Timer;
      
      private static var _preserved:Object;
      
      private static var _servURL:String = "http://www.mochiads.com/static/lib/services/";
      
      private static var _services:String = "services.swf";
      
      private static var _mochiLC:String = "MochiLC.swf";
      
      private static var _swfVersion:String;
      
      private static var _listenChannelName:String = "__ms_";
      
      private static var _sendChannel:LocalConnection;
      
      private static var _sendChannelName:String;
      
      private static var _connecting:Boolean = false;
      
      private static var _connected:Boolean = false;
      
      public static var netup:Boolean = true;
      
      public static var netupAttempted:Boolean = false;
      
      public static var onError:Object;
      
      public static var widget:Boolean = false;
      
      private static var _mochiLocalConnection:MovieClip;
      
      private static var _queue:Array;
      
      private static var _nextCallbackID:Number;
      
      private static var _callbacks:Object;
      
      private static var _dispatcher:MochiEventDispatcher = new MochiEventDispatcher();
      
      {
         false;
         true;
         false;
         false;
         false;
         false;
         false;
         false;
      }
      
      public function MochiServices()
      {
         false;
         true;
         super();
      }
      
      public static function get id() : String
      {
         return _id;
      }
      
      public static function get clip() : Object
      {
         return _container;
      }
      
      public static function get childClip() : Object
      {
         return _clip;
      }
      
      public static function getVersion() : String
      {
         return "3.9.3 as3";
      }
      
      public static function allowDomains(param1:String) : String
      {
         false;
         true;
         var _loc2_:String = null;
         if(Security.sandboxType != "application")
         {
            Security.allowDomain("*");
            Security.allowInsecureDomain("*");
         }
         if(param1.indexOf("http://") != -1)
         {
            _loc2_ = String(param1.split("/")[2].split(":")[0]);
            if(Security.sandboxType != "application")
            {
               Security.allowDomain(_loc2_);
               Security.allowInsecureDomain(_loc2_);
            }
         }
         return _loc2_;
      }
      
      public static function isNetworkAvailable() : Boolean
      {
         return Security.sandboxType != "localWithFile";
      }
      
      public static function set comChannelName(param1:String) : void
      {
         true;
         true;
         if(param1 != null)
         {
            true;
            true;
            if(param1.length > 3)
            {
               _sendChannelName = param1 + "_fromgame";
               initComChannels();
            }
         }
      }
      
      public static function get connected() : Boolean
      {
         return _connected;
      }
      
      public static function warnID(param1:String, param2:Boolean) : void
      {
         false;
         true;
         true;
         true;
         param1 = param1.toLowerCase();
         if(param1.length != 16)
         {
            true;
            true;
            trace("WARNING: " + (param2 ? "board" : "game") + " ID is not the appropriate length");
            false;
            false;
            return;
         }
         false;
         false;
         if(param1 == "1e113c7239048b3f")
         {
            true;
            true;
            if(param2)
            {
               trace("WARNING: Using testing board ID");
            }
            else
            {
               trace("WARNING: Using testing board ID as game ID");
            }
            return;
         }
         if(param1 == "84993a1de4031cd8")
         {
            false;
            false;
            if(param2)
            {
               trace("WARNING: Using testing game ID as board ID");
            }
            else
            {
               trace("WARNING: Using testing game ID");
            }
            return;
         }
         var _loc3_:Number = 0;
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               return;
            }
            var _loc4_:* = param1.charAt(_loc3_);
            switch(_loc4_)
            {
               case "0":
               case "1":
               default:
            }
            false;
            false;
            _loc3_++;
         }
         trace("WARNING: Board ID contains illegal characters: " + param1);
      }
      
      public static function connect(param1:String, param2:Object, param3:Object = null) : void
      {
         var clip:Object;
         var onError:Object;
         var id:String = param1;
         false;
         false;
         clip = param2;
         onError = param3;
         warnID(id,false);
         if(clip is DisplayObject)
         {
            if(clip.stage == null)
            {
               trace("MochiServices connect requires the containing clip be attached to the stage");
            }
            §§push(!_connected);
            if(!_connected)
            {
               false;
               false;
               §§pop();
               false;
               false;
               §§push(_clip == null);
            }
            if(§§pop())
            {
               trace("MochiServices Connecting...");
               true;
               true;
               _connecting = true;
               true;
               true;
               init(id,clip);
            }
         }
         else
         {
            trace("Error, MochiServices requires a Sprite, Movieclip or instance of the stage.");
            false;
            false;
         }
         if(onError != null)
         {
            MochiServices.onError = onError;
            false;
            false;
         }
         else if(MochiServices.onError == null)
         {
            false;
            false;
            MochiServices.onError = function(param1:String):void
            {
               trace(param1);
            };
         }
      }
      
      public static function disconnect() : void
      {
         §§push(_connected);
         if(!_connected)
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(_connecting);
         }
         if(§§pop())
         {
            false;
            false;
            if(_clip != null)
            {
               if(_clip.parent != null)
               {
                  if(_clip.parent is Sprite)
                  {
                     Sprite(_clip.parent).removeChild(_clip);
                     true;
                     true;
                     _clip = null;
                  }
               }
            }
            _connecting = _connected = false;
            flush(true);
            try
            {
               _mochiLocalConnection.close();
            }
            catch(error:Error)
            {
            }
         }
         if(_timer != null)
         {
            try
            {
               _timer.stop();
               true;
               true;
               _timer.removeEventListener(TimerEvent.TIMER,connectWait);
               false;
               false;
               _timer = null;
            }
            catch(error:Error)
            {
            }
         }
      }
      
      public static function stayOnTop() : void
      {
         false;
         true;
         false;
         false;
         _container.addEventListener(Event.ENTER_FRAME,MochiServices.bringToTop,false,0,true);
         true;
         true;
         if(_clip != null)
         {
            _clip.visible = true;
         }
      }
      
      public static function doClose() : void
      {
         false;
         true;
         _container.removeEventListener(Event.ENTER_FRAME,MochiServices.bringToTop);
      }
      
      public static function bringToTop(param1:Event = null) : void
      {
         var e:Event;
         false;
         true;
         e = param1;
         true;
         true;
         §§push(MochiServices.clip != null);
         if(MochiServices.clip != null)
         {
            false;
            false;
            §§pop();
            false;
            false;
            §§push(MochiServices.childClip != null);
         }
         if(§§pop())
         {
            try
            {
               if(MochiServices.clip.numChildren > 1)
               {
                  false;
                  false;
                  MochiServices.clip.setChildIndex(MochiServices.childClip,MochiServices.clip.numChildren - 1);
               }
            }
            catch(errorObject:Error)
            {
               true;
               true;
               trace("Warning: Depth sort error.");
               false;
               false;
               _container.removeEventListener(Event.ENTER_FRAME,MochiServices.bringToTop);
            }
         }
      }
      
      private static function init(param1:String, param2:Object) : void
      {
         false;
         true;
         _id = param1;
         false;
         false;
         if(param2 != null)
         {
            _container = param2;
            loadCommunicator(param1,_container);
         }
      }
      
      public static function setContainer(param1:Object = null, param2:Boolean = true) : void
      {
         false;
         true;
         if(_clip.parent)
         {
            _clip.parent.removeChild(_clip);
         }
         if(param1 != null)
         {
            false;
            false;
            if(param1 is DisplayObjectContainer)
            {
               false;
               false;
               _container = param1;
            }
         }
         if(param2)
         {
            if(_container is DisplayObjectContainer)
            {
               DisplayObjectContainer(_container).addChild(_clip);
            }
         }
      }
      
      private static function loadCommunicator(param1:String, param2:Object) : MovieClip
      {
         false;
         true;
         true;
         true;
         if(_clip != null)
         {
            return _clip;
         }
         if(!MochiServices.isNetworkAvailable())
         {
            false;
            false;
            return null;
         }
         if(urlOptions(param2).servURL)
         {
            _servURL = urlOptions(param2).servURL;
         }
         var _loc3_:String = _servURL + _services;
         if(urlOptions(param2).servicesURL)
         {
            _loc3_ = String(urlOptions(param2).servicesURL);
         }
         _listenChannelName += Math.floor(new Date().time) + "_" + Math.floor(Math.random() * 99999);
         MochiServices.allowDomains(_loc3_);
         _clip = new MovieClip();
         loadLCBridge(_clip);
         _loader = new Loader();
         true;
         true;
         _loader.contentLoaderInfo.addEventListener(Event.COMPLETE,detach);
         _loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,detach);
         _loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         var _loc5_:URLVariables;
         (_loc5_ = new URLVariables()).listenLC = _listenChannelName;
         _loc5_.mochiad_options = param2.loaderInfo.parameters.mochiad_options;
         _loc5_.api_version = getVersion();
         if(widget)
         {
            _loc5_.widget = true;
         }
         _loc4_.data = _loc5_;
         _loader.load(_loc4_);
         true;
         true;
         _clip.addChild(_loader);
         true;
         true;
         _sendChannel = new LocalConnection();
         false;
         false;
         _queue = [];
         _nextCallbackID = 0;
         _callbacks = {};
         _timer = new Timer(10000,1);
         _timer.addEventListener(TimerEvent.TIMER,connectWait);
         _timer.start();
         return _clip;
      }
      
      private static function detach(param1:Event) : void
      {
         false;
         true;
         var _loc2_:LoaderInfo = LoaderInfo(param1.target);
         true;
         true;
         _loc2_.removeEventListener(Event.COMPLETE,detach);
         false;
         false;
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,detach);
         _loc2_.removeEventListener(Event.COMPLETE,loadLCBridgeComplete);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
      }
      
      private static function loadLCBridge(param1:Object) : void
      {
         false;
         true;
         var _loc2_:Loader = new Loader();
         var _loc3_:String = _servURL + _mochiLC;
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,detach);
         _loc2_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,detach);
         _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,loadLCBridgeComplete);
         _loc2_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
         _loc2_.load(_loc4_);
         param1.addChild(_loc2_);
      }
      
      private static function loadLCBridgeComplete(param1:Event) : void
      {
         var _loc2_:Loader = LoaderInfo(param1.target).loader;
         _mochiLocalConnection = MovieClip(_loc2_.content);
         listen();
      }
      
      private static function loadError(param1:Object) : void
      {
         _clip._mochiad_ctr_failed = true;
         trace("MochiServices could not load.");
         MochiServices.disconnect();
         false;
         false;
         MochiServices.onError("IOError");
      }
      
      public static function connectWait(param1:TimerEvent) : void
      {
         false;
         true;
         if(!_connected)
         {
            _clip._mochiad_ctr_failed = true;
            trace("MochiServices could not load. (timeout)");
            MochiServices.disconnect();
            MochiServices.onError("IOError");
            false;
            false;
         }
         else
         {
            _timer.stop();
            _timer.removeEventListener(TimerEvent.TIMER,connectWait);
            true;
            true;
            _timer = null;
         }
      }
      
      private static function listen() : void
      {
         false;
         false;
         _mochiLocalConnection.connect(_listenChannelName);
         _clip.handshake = function(param1:Object):void
         {
            MochiServices.comChannelName = param1.newChannel;
         };
         false;
         false;
         trace("Waiting for MochiAds services to connect...");
      }
      
      private static function initComChannels() : void
      {
         if(!_connected)
         {
            trace("[SERVICES_API] connected!");
            _connecting = false;
            _connected = true;
            false;
            false;
            _mochiLocalConnection.send(_sendChannelName,"onReceive",{"methodName":"handshakeDone"});
            _mochiLocalConnection.send(_sendChannelName,"onReceive",{
               "methodName":"registerGame",
               "preserved":_preserved,
               "id":_id,
               "version":getVersion(),
               "parentURL":_container.loaderInfo.loaderURL
            });
            _clip.onReceive = onReceive;
            true;
            true;
            _clip.onEvent = onEvent;
            _clip.onError = function():void
            {
               MochiServices.onError("IOError");
            };
            while(_queue.length > 0)
            {
               _mochiLocalConnection.send(_sendChannelName,"onReceive",_queue.shift());
               false;
               false;
            }
         }
      }
      
      private static function onReceive(param1:Object) : void
      {
         var pkg:Object;
         var cb:String;
         var cblst:Object;
         var method:*;
         var methodName:String;
         var obj:Object;
         true;
         true;
         true;
         true;
         methodName = null;
         pkg = param1;
         false;
         false;
         cb = String(pkg.callbackID);
         false;
         false;
         cblst = _callbacks[cb];
         if(!cblst)
         {
            return;
         }
         true;
         true;
         method = cblst.callbackMethod;
         true;
         true;
         methodName = "";
         true;
         true;
         true;
         true;
         obj = cblst.callbackObject;
         §§push(Boolean(obj));
         if(Boolean(obj))
         {
            false;
            false;
            §§pop();
            §§push(typeof method == "string");
         }
         if(§§pop())
         {
            true;
            true;
            methodName = method;
            if(obj[method] != null)
            {
               method = obj[method];
            }
            else
            {
               trace("Error: Method  " + method + " does not exist.");
            }
         }
         if(method != undefined)
         {
            try
            {
               method.apply(obj,pkg.args);
               true;
               true;
            }
            catch(error:Error)
            {
               trace("Error invoking callback method \'" + methodName + "\': " + error.toString());
            }
         }
         else
         {
            true;
            true;
            if(obj != null)
            {
               true;
               true;
               try
               {
                  obj(pkg.args);
                  false;
                  false;
               }
               catch(error:Error)
               {
                  trace("Error invoking method on object: " + error.toString());
               }
            }
         }
         delete _callbacks[cb];
      }
      
      private static function onEvent(param1:Object) : void
      {
         var _loc2_:String = String(param1.target);
         var _loc3_:String = String(param1.event);
         var _loc4_:* = _loc2_;
         true;
         true;
         switch("services" === _loc4_ ? (false, false, 0) : ("events" === _loc4_ ? (true, true, 1) : ("coins" === _loc4_ ? (false, false, false, false, 2) : ("social" === _loc4_ ? (false, false, 3) : 4))))
         {
            case 0:
               MochiServices.triggerEvent(param1.event,param1.args);
               false;
               false;
               break;
            case 1:
               MochiEvents.triggerEvent(param1.event,param1.args);
               true;
               true;
               break;
            case 2:
               MochiCoins.triggerEvent(param1.event,param1.args);
               break;
            case 3:
               MochiSocial.triggerEvent(param1.event,param1.args);
         }
      }
      
      private static function flush(param1:Boolean) : void
      {
         false;
         true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         true;
         true;
         false;
         false;
         §§push(Boolean(_clip));
         if(Boolean(_clip))
         {
            true;
            true;
            §§pop();
            §§push(Boolean(_queue));
         }
         if(§§pop())
         {
            while(_queue.length > 0)
            {
               false;
               false;
               _loc2_ = _queue.shift();
               _loc3_ = null;
               if(_loc2_ != null)
               {
                  if(_loc2_.callbackID != null)
                  {
                     _loc3_ = _callbacks[_loc2_.callbackID];
                  }
                  false;
                  false;
                  delete _callbacks[_loc2_.callbackID];
                  true;
                  true;
                  false;
                  false;
                  if(param1 && _loc3_ != null)
                  {
                     false;
                     false;
                     handleError(_loc2_.args,_loc3_.callbackObject,_loc3_.callbackMethod);
                  }
               }
            }
         }
      }
      
      private static function handleError(param1:Object, param2:Object, param3:Object) : void
      {
         false;
         true;
         false;
         false;
         if(param1 != null)
         {
            if(param1.onError != null)
            {
               param1.onError.apply(null,["NotConnected"]);
            }
            false;
            false;
            if(param1.options != null && param1.options.onError != null)
            {
               param1.options.onError.apply(null,["NotConnected"]);
            }
         }
         if(param3 != null)
         {
            param1 = {};
            param1.error = true;
            param1.errorCode = "NotConnected";
            false;
            false;
            if(param2 != null && param3 is String)
            {
               try
               {
                  param2[param3](param1);
               }
               catch(error:Error)
               {
               }
            }
            else if(param3 != null)
            {
               true;
               true;
               try
               {
                  param3.apply(param1);
               }
               catch(error:Error)
               {
               }
            }
         }
      }
      
      public static function send(param1:String, param2:Object = null, param3:Object = null, param4:Object = null) : void
      {
         if(_connected)
         {
            false;
            false;
            _mochiLocalConnection.send(_sendChannelName,"onReceive",{
               "methodName":param1,
               "args":param2,
               "callbackID":_nextCallbackID
            });
         }
         else
         {
            if(_clip == null || !_connecting)
            {
               trace("Error: MochiServices not connected.   Please call MochiServices.connect().  Function: " + param1);
               true;
               true;
               handleError(param2,param3,param4);
               flush(true);
               return;
            }
            _queue.push({
               "methodName":param1,
               "args":param2,
               "callbackID":_nextCallbackID
            });
         }
         if(_clip != null)
         {
            if(_callbacks != null)
            {
               _callbacks[_nextCallbackID] = {
                  "callbackObject":param3,
                  "callbackMethod":param4
               };
               ++_nextCallbackID;
            }
         }
      }
      
      private static function urlOptions(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:Number = NaN;
         var _loc6_:Array = null;
         var _loc2_:Object = {};
         if(param1.stage)
         {
            false;
            false;
            _loc3_ = String(param1.stage.loaderInfo.parameters.mochiad_options);
            true;
            true;
         }
         else
         {
            false;
            false;
            _loc3_ = String(param1.loaderInfo.parameters.mochiad_options);
         }
         false;
         false;
         if(_loc3_)
         {
            _loc4_ = _loc3_.split("&");
            false;
            false;
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length)
            {
               _loc6_ = _loc4_[_loc5_].split("=");
               _loc2_[unescape(_loc6_[0])] = unescape(_loc6_[1]);
               true;
               true;
               false;
               false;
               _loc5_++;
            }
         }
         return _loc2_;
      }
      
      public static function addLinkEvent(param1:String, param2:String, param3:DisplayObjectContainer, param4:Function = null) : void
      {
         var url:String;
         var burl:String;
         var btn:DisplayObjectContainer;
         var onClick:Function;
         var vars:Object;
         var avm1Click:DisplayObject;
         var s:String;
         var i:Number;
         var x:String;
         var req:URLRequest;
         var loader:Loader;
         var setURL:Function;
         var err:Function;
         var complete:Function;
         false;
         true;
         true;
         true;
         avm1Click = null;
         false;
         false;
         x = null;
         true;
         true;
         req = null;
         false;
         false;
         true;
         true;
         loader = null;
         setURL = null;
         false;
         false;
         err = null;
         complete = null;
         false;
         false;
         url = param1;
         true;
         true;
         true;
         true;
         burl = param2;
         false;
         false;
         btn = param3;
         false;
         false;
         onClick = param4;
         false;
         false;
         vars = new Object();
         vars["mav"] = getVersion();
         vars["swfv"] = "9";
         vars["swfurl"] = btn.loaderInfo.loaderURL;
         vars["fv"] = Capabilities.version;
         vars["os"] = Capabilities.os;
         vars["lang"] = Capabilities.language;
         vars["scres"] = Capabilities.screenResolutionX + "x" + Capabilities.screenResolutionY;
         false;
         false;
         s = "?";
         i = 0;
         var _loc6_:int = 0;
         var _loc7_:* = vars;
         while(§§hasnext(_loc7_,_loc6_))
         {
            false;
            false;
            x = §§nextname(_loc6_,_loc7_);
            true;
            true;
            if(i != 0)
            {
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               s += "&";
               true;
               true;
            }
            false;
            false;
            i++;
            true;
            true;
            s = s + x + "=" + escape(vars[x]);
         }
         req = new URLRequest("http://link.mochiads.com/linkping.swf");
         true;
         true;
         loader = new Loader();
         setURL = function(param1:String):void
         {
            if(avm1Click)
            {
               btn.removeChild(avm1Click);
            }
            avm1Click = clickMovie(param1,onClick);
            var _loc2_:Rectangle = btn.getBounds(btn);
            btn.addChild(avm1Click);
            avm1Click.x = _loc2_.x;
            avm1Click.y = _loc2_.y;
            avm1Click.scaleX = 0.01 * _loc2_.width;
            avm1Click.scaleY = 0.01 * _loc2_.height;
         };
         true;
         true;
         err = function(param1:Object):void
         {
            netup = false;
            param1.target.removeEventListener(param1.type,arguments.callee);
            setURL(burl);
         };
         false;
         false;
         complete = function(param1:Object):void
         {
            param1.target.removeEventListener(param1.type,arguments.callee);
         };
         if(netup)
         {
            true;
            true;
            setURL(url + s);
         }
         else
         {
            setURL(burl);
         }
         §§push(netupAttempted);
         if(!netupAttempted)
         {
            true;
            true;
            §§pop();
            §§push(_connected);
         }
         if(!§§pop())
         {
            netupAttempted = true;
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,err);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,complete);
            true;
            true;
            loader.load(req);
         }
      }
      
      private static function clickMovie(param1:String, param2:Function) : MovieClip
      {
         var _loc4_:int = 0;
         var _loc14_:Loader = null;
         var _loc3_:Array = [150,21,0,7,1,0,0,0,0,98,116,110,0,7,2,0,0,0,0,116,104,105,115,0,28,150,22,0,0,99,114,101,97,116,101,69,109,112,116,121,77,111,118,105,101,67,108,105,112,0,82,135,1,0,0,23,150,13,0,4,0,0,111,110,82,101,108,101,97,115,101,0,142,8,0,0,0,0,2,42,0,114,0,150,17,0,0,32,0,7,1,0,0,0,8,0,0,115,112,108,105,116,0,82,135,1,0,1,23,150,7,0,4,1,7,0,0,0,0,78,150,8,0,0,95,98,108,97,110,107,0,154,1,0,0,150,7,0,0,99,108,105,99,107,0,150,7,0,4,1,7,1,0,0,0,78,150,27,0,7,2,0,0,0,7,0,0,0,0,0,76,111,99,97,108,67,111,110,110,101,99,116,105,111,110,0,64,150,6,0,0,115,101,110,100,0,82,79,150,15,0,4,0,0,95,97,108,112,104,97,0,7,0,0,0,0,79,150,23,0,7,255,0,255,0,7,1,0,0,0,4,0,0,98,101,103,105,110,70,105,108,108,0,82,23,150,25,0,7,0,0,0,0,7,0,0,0,0,7,2,0,0,0,4,0,0,109,111,118,101,84,111,0,82,23,150,25,0,7,100,0,0,0,7,0,0,0,0,7,2,0,0,0,4,0,0,108,105,110,101,84,111,0,82,23,150,25,0,7,100,0,0,0,7,100,0,0,0,7,2,0,0,0,4,0,0,108,105,110,101,84,111,0,82,23,150,25,0,7,0,0,0,0,7,100,0,0,0,7,2,0,0,0,4,0,0,108,105,110,101,84,111,0,82,23,150,25,0,7,0,0,0,0,7,0,0,0,0,7,2,0,0,0,4,0,0,108,105,110,101,84,111,0,82,23,150,16,0,7,0,0,0,0,4,0,0,101,110,100,70,105,108,108,0,82,23];
         var _loc5_:Array = [104,0,31,64,0,7,208,0,0,12,1,0,67,2,255,255,255,63,3];
         var _loc6_:Array = [0,64,0,0,0];
         var _loc7_:MovieClip = new MovieClip();
         var _loc8_:LocalConnection = new LocalConnection();
         var _loc9_:String = "_click_" + Math.floor(Math.random() * 999999) + "_" + Math.floor(new Date().time);
         _loc8_ = new LocalConnection();
         false;
         false;
         _loc7_.lc = _loc8_;
         _loc7_.click = param2;
         false;
         false;
         _loc8_.client = _loc7_;
         true;
         true;
         _loc8_.connect(_loc9_);
         var _loc10_:ByteArray = new ByteArray();
         var _loc11_:ByteArray;
         (_loc11_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         false;
         false;
         _loc11_.writeShort(1);
         false;
         false;
         _loc11_.writeUTFBytes(param1 + " " + _loc9_);
         _loc11_.writeByte(0);
         true;
         true;
         var _loc12_:uint;
         var _loc13_:uint = uint((_loc12_ = uint(_loc3_.length + _loc11_.length + 4)) + 35);
         false;
         false;
         _loc10_.endian = Endian.LITTLE_ENDIAN;
         _loc10_.writeUTFBytes("FWS");
         true;
         true;
         _loc10_.writeByte(8);
         _loc10_.writeUnsignedInt(_loc13_);
         var _loc15_:int = 0;
         var _loc16_:* = _loc5_;
         while(true)
         {
            false;
            false;
            for each(_loc4_ in _loc16_)
            {
               false;
               false;
               _loc10_.writeByte(_loc4_);
            }
            break;
         }
         _loc10_.writeUnsignedInt(_loc12_);
         _loc10_.writeByte(136);
         _loc10_.writeShort(_loc11_.length);
         _loc10_.writeBytes(_loc11_);
         true;
         true;
         _loc15_ = 0;
         _loc16_ = _loc3_;
         false;
         false;
         for each(_loc4_ in _loc16_)
         {
            _loc10_.writeByte(_loc4_);
         }
         true;
         true;
         for each(_loc4_ in _loc6_)
         {
            _loc10_.writeByte(_loc4_);
         }
         (_loc14_ = new Loader()).loadBytes(_loc10_);
         true;
         true;
         _loc7_.addChild(_loc14_);
         return _loc7_;
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         true;
         true;
         _dispatcher.addEventListener(param1,param2);
      }
      
      public static function triggerEvent(param1:String, param2:Object) : void
      {
         false;
         true;
         _dispatcher.triggerEvent(param1,param2);
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         false;
         true;
         false;
         false;
         _dispatcher.removeEventListener(param1,param2);
      }
   }
}
