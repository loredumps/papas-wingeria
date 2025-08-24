package mochi.as3
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.Security;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class MochiAd
   {
       
      
      public function MochiAd()
      {
         false;
         false;
         super();
      }
      
      public static function getVersion() : String
      {
         return MochiServices.getVersion();
      }
      
      public static function doOnEnterFrame(param1:MovieClip) : void
      {
         var mc:MovieClip = param1;
         var f:Function = function(param1:Object):void
         {
            if("onEnterFrame" in mc && Boolean(mc.onEnterFrame))
            {
               mc.onEnterFrame();
            }
            else
            {
               param1.target.removeEventListener(param1.type,arguments.callee);
            }
         };
         mc.addEventListener(Event.ENTER_FRAME,f);
      }
      
      public static function createEmptyMovieClip(param1:Object, param2:String, param3:Number) : MovieClip
      {
         false;
         true;
         var _loc4_:MovieClip = new MovieClip();
         true;
         true;
         §§push(false);
         if(false)
         {
            true;
            true;
            §§pop();
            §§push(Boolean(param3));
         }
         if(§§pop())
         {
            param1.addChildAt(_loc4_,param3);
         }
         else
         {
            param1.addChild(_loc4_);
         }
         param1[param2] = _loc4_;
         _loc4_["_name"] = param2;
         return _loc4_;
      }
      
      public static function showPreGameAd(param1:Object) : void
      {
         var options:Object;
         var DEFAULTS:Object;
         var clip:Object;
         var ad_msec:Number;
         var ad_timeout:Number;
         var fadeout_time:Number;
         var mc:MovieClip;
         var wh:Array;
         var w:Number;
         var h:Number;
         var chk:MovieClip;
         var bar:MovieClip;
         var bar_w:Number;
         var bar_color:Number;
         var bar_background:Number;
         var bar_outline:Number;
         var backing_mc:MovieClip;
         var backing:Object;
         var inside_mc:MovieClip;
         var inside:Object;
         var outline_mc:MovieClip;
         var outline:Object;
         var complete:Boolean;
         var unloaded:Boolean;
         var progress:Number;
         var f:Function;
         var sendHostProgress:Boolean;
         var fn:Function;
         var r:MovieClip;
         false;
         false;
         clip = null;
         mc = null;
         chk = null;
         true;
         true;
         complete = false;
         unloaded = false;
         sendHostProgress = false;
         true;
         true;
         fn = null;
         r = null;
         options = param1;
         false;
         false;
         DEFAULTS = {
            "ad_timeout":5500,
            "fadeout_time":250,
            "regpt":"o",
            "method":"showPreloaderAd",
            "color":16747008,
            "background":16777161,
            "outline":13994812,
            "no_progress_bar":false,
            "ad_started":function():void
            {
               if(this.clip is MovieClip)
               {
                  this.clip.stop();
                  return;
               }
               throw new Error("MochiAd.showPreGameAd requires a clip that is a MovieClip or is an instance of a class that extends MovieClip.  If your clip is a Sprite, then you must provide custom ad_started and ad_finished handlers.");
            },
            "ad_finished":function():void
            {
               if(this.clip is MovieClip)
               {
                  this.clip.play();
                  return;
               }
               throw new Error("MochiAd.showPreGameAd requires a clip that is a MovieClip or is an instance of a class that extends MovieClip.  If your clip is a Sprite, then you must provide custom ad_started and ad_finished handlers.");
            },
            "ad_loaded":function(param1:Number, param2:Number):void
            {
            },
            "ad_failed":function():void
            {
               trace("[MochiAd] Couldn\'t load an ad, make sure your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
            },
            "ad_skipped":function():void
            {
            },
            "ad_progress":function(param1:Number):void
            {
            },
            "progress_override":function(param1:Object):Number
            {
               return NaN;
            },
            "bar_offset":0
         };
         false;
         false;
         options = MochiAd._parseOptions(options,DEFAULTS);
         if("c862232051e0a94e1c3609b3916ddb17".substr(0) == "dfeada81ac97cde83665f81c12da7def")
         {
            options.ad_started();
            true;
            true;
            fn = function():void
            {
               options.ad_finished();
            };
            setTimeout(fn,100);
            return;
         }
         clip = options.clip;
         false;
         false;
         ad_msec = 11000;
         ad_timeout = Number(options.ad_timeout);
         true;
         true;
         if(options.skip)
         {
            ad_timeout = 0;
         }
         true;
         true;
         delete options.ad_timeout;
         false;
         false;
         fadeout_time = Number(options.fadeout_time);
         true;
         true;
         delete options.fadeout_time;
         false;
         false;
         if(!MochiAd.load(options))
         {
            options.ad_failed();
            options.ad_finished();
            return;
         }
         options.ad_started();
         mc = clip._mochiad;
         true;
         true;
         mc["onUnload"] = function():void
         {
            var fn:Function;
            MochiAd._cleanup(mc);
            fn = function():void
            {
               options.ad_finished();
            };
            setTimeout(fn,100);
         };
         wh = MochiAd._getRes(options,clip);
         false;
         false;
         false;
         false;
         w = Number(wh[0]);
         false;
         false;
         h = Number(wh[1]);
         mc.x = w * 0.5;
         mc.y = h * 0.5;
         chk = createEmptyMovieClip(mc,"_mochiad_wait",3);
         true;
         true;
         chk.x = w * -0.5;
         chk.y = h * -0.5;
         false;
         false;
         bar = createEmptyMovieClip(chk,"_mochiad_bar",4);
         if(options.no_progress_bar)
         {
            true;
            true;
            bar.visible = false;
            false;
            false;
            delete options.no_progress_bar;
         }
         else
         {
            bar.x = 10 + options.bar_offset;
            true;
            true;
            bar.y = h - 20;
         }
         false;
         false;
         false;
         false;
         true;
         true;
         bar_w = w - bar.x - 10;
         true;
         true;
         bar_color = Number(options.color);
         false;
         false;
         delete options.color;
         bar_background = Number(options.background);
         delete options.background;
         true;
         true;
         true;
         true;
         bar_outline = Number(options.outline);
         false;
         false;
         delete options.outline;
         backing_mc = createEmptyMovieClip(bar,"_outline",1);
         backing = backing_mc.graphics;
         true;
         true;
         backing.beginFill(bar_background);
         backing.moveTo(0,0);
         backing.lineTo(bar_w,0);
         backing.lineTo(bar_w,10);
         backing.lineTo(0,10);
         false;
         false;
         backing.lineTo(0,0);
         true;
         true;
         true;
         true;
         backing.endFill();
         false;
         false;
         inside_mc = createEmptyMovieClip(bar,"_inside",2);
         inside = inside_mc.graphics;
         true;
         true;
         inside.beginFill(bar_color);
         inside.moveTo(0,0);
         true;
         true;
         true;
         true;
         inside.lineTo(bar_w,0);
         inside.lineTo(bar_w,10);
         inside.lineTo(0,10);
         inside.lineTo(0,0);
         true;
         true;
         true;
         true;
         inside.endFill();
         inside_mc.scaleX = 0;
         true;
         true;
         outline_mc = createEmptyMovieClip(bar,"_outline",3);
         outline = outline_mc.graphics;
         outline.lineStyle(0,bar_outline,100);
         outline.moveTo(0,0);
         outline.lineTo(bar_w,0);
         false;
         false;
         true;
         true;
         outline.lineTo(bar_w,10);
         outline.lineTo(0,10);
         false;
         false;
         outline.lineTo(0,0);
         chk.ad_msec = ad_msec;
         chk.ad_timeout = ad_timeout;
         false;
         false;
         chk.started = getTimer();
         chk.showing = false;
         chk.last_pcnt = 0;
         chk.fadeout_time = fadeout_time;
         false;
         false;
         chk.fadeFunction = function():void
         {
            var _loc1_:Number = 100 * (1 - (getTimer() - this.fadeout_start) / this.fadeout_time);
            if(_loc1_ > 0)
            {
               this.parent.alpha = _loc1_ * 0.01;
            }
            else
            {
               MochiAd.unload(clip);
               delete this["onEnterFrame"];
            }
         };
         false;
         false;
         complete = false;
         false;
         false;
         true;
         true;
         unloaded = false;
         true;
         true;
         progress = Math.min(1,options.progress_override(clip));
         f = function(param1:Event):void
         {
            param1.target.removeEventListener(param1.type,arguments.callee);
            complete = true;
            if(unloaded)
            {
               MochiAd.unload(clip);
            }
         };
         if(!isNaN(progress))
         {
            true;
            true;
            complete = progress == 1;
         }
         else if(clip.loaderInfo.bytesLoaded == clip.loaderInfo.bytesTotal)
         {
            complete = true;
         }
         else if(clip.root is MovieClip)
         {
            false;
            false;
            r = clip.root as MovieClip;
            true;
            true;
            if(r.framesLoaded >= r.totalFrames)
            {
               true;
               true;
               complete = true;
            }
            else
            {
               clip.loaderInfo.addEventListener(Event.COMPLETE,f);
            }
         }
         else
         {
            clip.loaderInfo.addEventListener(Event.COMPLETE,f);
         }
         mc.unloadAd = function():void
         {
            unloaded = true;
            if(complete)
            {
               MochiAd.unload(clip);
            }
         };
         mc.adLoaded = options.ad_loaded;
         true;
         true;
         false;
         false;
         mc.adSkipped = options.ad_skipped;
         mc.adjustProgress = function(param1:Number):void
         {
            var _loc2_:Object = mc._mochiad_wait;
            _loc2_.server_control = true;
            _loc2_.showing = true;
            _loc2_.started = getTimer();
            _loc2_.ad_msec = param1;
         };
         mc.rpc = function(param1:Number, param2:Object):void
         {
            MochiAd.rpc(clip,param1,param2);
         };
         mc.rpcTestFn = function(param1:String):Object
         {
            trace("[MOCHIAD rpcTestFn] " + param1);
            return param1;
         };
         sendHostProgress = false;
         mc.sendHostLoadProgress = function(param1:String):void
         {
            sendHostProgress = true;
         };
         false;
         false;
         chk["onEnterFrame"] = function():void
         {
            var _loc12_:Number = NaN;
            if(!this.parent || !this.parent.parent)
            {
               delete this["onEnterFrame"];
               return;
            }
            var _loc1_:Object = this.parent.parent.root;
            var _loc2_:Object = this.parent._mochiad_ctr;
            var _loc3_:Number = getTimer() - this.started;
            var _loc4_:Boolean = false;
            var _loc5_:Number = Number(_loc1_.loaderInfo.bytesTotal);
            var _loc6_:Number = Number(_loc1_.loaderInfo.bytesLoaded);
            var _loc7_:Number;
            if((_loc7_ = Math.min(1,options.progress_override(_loc1_))) == 1)
            {
               complete = true;
            }
            if(complete)
            {
               _loc5_ = _loc6_ = Math.max(1,_loc6_);
            }
            var _loc8_:Number = 100 * _loc6_ / _loc5_;
            if(!isNaN(_loc7_))
            {
               _loc8_ = 100 * _loc7_;
            }
            var _loc9_:Number = 100 * _loc3_ / chk.ad_msec;
            var _loc10_:Object = this._mochiad_bar._inside;
            var _loc11_:Number = Math.min(100,Math.min(_loc8_ || 0,_loc9_));
            _loc11_ = Math.max(this.last_pcnt,_loc11_);
            this.last_pcnt = _loc11_;
            _loc10_.scaleX = _loc11_ * 0.01;
            options.ad_progress(_loc11_);
            if(sendHostProgress)
            {
               clip._mochiad.lc.send(clip._mochiad._containerLCName,"notify",{
                  "id":"hostLoadPcnt",
                  "pcnt":_loc8_
               });
               if(_loc8_ >= 100)
               {
                  sendHostProgress = false;
               }
            }
            if(!chk.showing)
            {
               if((_loc12_ = Number(this.parent._mochiad_ctr.contentLoaderInfo.bytesTotal)) > 0)
               {
                  chk.showing = true;
                  chk.started = getTimer();
                  MochiAd.adShowing(clip);
               }
               else if(_loc3_ > chk.ad_timeout && _loc8_ == 100)
               {
                  options.ad_failed();
                  _loc4_ = true;
               }
            }
            if(_loc3_ > chk.ad_msec)
            {
               _loc4_ = true;
            }
            if(complete && _loc4_)
            {
               if(unloaded)
               {
                  MochiAd.unload(_loc1_);
               }
               else if(this.server_control)
               {
                  delete this.onEnterFrame;
               }
               else
               {
                  this.fadeout_start = getTimer();
                  this.onEnterFrame = chk.fadeFunction;
               }
            }
         };
         doOnEnterFrame(chk);
      }
      
      public static function showClickAwayAd(param1:Object) : void
      {
         var options:Object;
         var DEFAULTS:Object;
         var ad_timeout:Number;
         var mc:MovieClip;
         var wh:Array;
         var w:Number;
         var h:Number;
         var chk:MovieClip;
         var clip:Object = null;
         false;
         false;
         mc = null;
         true;
         true;
         true;
         true;
         chk = null;
         false;
         false;
         options = param1;
         true;
         true;
         DEFAULTS = {
            "ad_timeout":5500,
            "regpt":"o",
            "method":"showClickAwayAd",
            "res":"300x250",
            "no_bg":true,
            "ad_started":function():void
            {
            },
            "ad_finished":function():void
            {
            },
            "ad_loaded":function(param1:Number, param2:Number):void
            {
            },
            "ad_failed":function():void
            {
               trace("[MochiAd] Couldn\'t load an ad, make sure your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
            },
            "ad_skipped":function():void
            {
            }
         };
         true;
         true;
         options = MochiAd._parseOptions(options,DEFAULTS);
         clip = options.clip;
         ad_timeout = Number(options.ad_timeout);
         delete options.ad_timeout;
         if(!MochiAd.load(options))
         {
            options.ad_failed();
            options.ad_finished();
            return;
         }
         options.ad_started();
         mc = clip._mochiad;
         mc["onUnload"] = function():void
         {
            MochiAd._cleanup(mc);
            options.ad_finished();
         };
         wh = MochiAd._getRes(options,clip);
         false;
         false;
         w = Number(wh[0]);
         false;
         false;
         h = Number(wh[1]);
         mc.x = w * 0.5;
         mc.y = h * 0.5;
         false;
         false;
         chk = createEmptyMovieClip(mc,"_mochiad_wait",3);
         chk.ad_timeout = ad_timeout;
         chk.started = getTimer();
         chk.showing = false;
         true;
         true;
         mc.unloadAd = function():void
         {
            MochiAd.unload(clip);
         };
         false;
         false;
         mc.adLoaded = options.ad_loaded;
         mc.adSkipped = options.ad_skipped;
         false;
         false;
         mc.rpc = function(param1:Number, param2:Object):void
         {
            MochiAd.rpc(clip,param1,param2);
         };
         chk["onEnterFrame"] = function():void
         {
            var _loc4_:Number = NaN;
            if(!this.parent)
            {
               delete this.onEnterFrame;
               return;
            }
            var _loc1_:Object = this.parent._mochiad_ctr;
            var _loc2_:Number = getTimer() - this.started;
            var _loc3_:Boolean = false;
            if(!chk.showing)
            {
               if((_loc4_ = Number(this.parent._mochiad_ctr.contentLoaderInfo.bytesTotal)) > 0)
               {
                  chk.showing = true;
                  _loc3_ = true;
                  chk.started = getTimer();
               }
               else if(_loc2_ > chk.ad_timeout)
               {
                  options.ad_failed();
                  _loc3_ = true;
               }
            }
            if(this.root == null)
            {
               _loc3_ = true;
            }
            if(_loc3_)
            {
               delete this.onEnterFrame;
            }
         };
         doOnEnterFrame(chk);
      }
      
      public static function showInterLevelAd(param1:Object) : void
      {
         var options:Object;
         var DEFAULTS:Object;
         var clip:Object;
         var ad_msec:Number;
         var ad_timeout:Number;
         var fadeout_time:Number;
         var mc:MovieClip;
         var wh:Array;
         var w:Number;
         var h:Number;
         var chk:MovieClip;
         false;
         true;
         clip = null;
         mc = null;
         chk = null;
         options = param1;
         DEFAULTS = {
            "ad_timeout":5500,
            "fadeout_time":250,
            "regpt":"o",
            "method":"showTimedAd",
            "ad_started":function():void
            {
               if(this.clip is MovieClip)
               {
                  this.clip.stop();
                  return;
               }
               throw new Error("MochiAd.showInterLevelAd requires a clip that is a MovieClip or is an instance of a class that extends MovieClip.  If your clip is a Sprite, then you must provide custom ad_started and ad_finished handlers.");
            },
            "ad_finished":function():void
            {
               if(this.clip is MovieClip)
               {
                  this.clip.play();
                  return;
               }
               throw new Error("MochiAd.showInterLevelAd requires a clip that is a MovieClip or is an instance of a class that extends MovieClip.  If your clip is a Sprite, then you must provide custom ad_started and ad_finished handlers.");
            },
            "ad_loaded":function(param1:Number, param2:Number):void
            {
            },
            "ad_failed":function():void
            {
               trace("[MochiAd] Couldn\'t load an ad, make sure your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
            },
            "ad_skipped":function():void
            {
            }
         };
         true;
         true;
         true;
         true;
         false;
         false;
         options = MochiAd._parseOptions(options,DEFAULTS);
         true;
         true;
         clip = options.clip;
         true;
         true;
         true;
         true;
         ad_msec = 11000;
         false;
         false;
         true;
         true;
         ad_timeout = Number(options.ad_timeout);
         true;
         true;
         delete options.ad_timeout;
         false;
         false;
         true;
         true;
         fadeout_time = Number(options.fadeout_time);
         false;
         false;
         delete options.fadeout_time;
         if(!MochiAd.load(options))
         {
            options.ad_failed();
            options.ad_finished();
            return;
         }
         options.ad_started();
         true;
         true;
         mc = clip._mochiad;
         mc["onUnload"] = function():void
         {
            MochiAd._cleanup(mc);
            options.ad_finished();
         };
         wh = MochiAd._getRes(options,clip);
         true;
         true;
         true;
         true;
         w = Number(wh[0]);
         h = Number(wh[1]);
         false;
         false;
         mc.x = w * 0.5;
         false;
         false;
         mc.y = h * 0.5;
         chk = createEmptyMovieClip(mc,"_mochiad_wait",3);
         chk.ad_msec = ad_msec;
         false;
         false;
         chk.ad_timeout = ad_timeout;
         chk.started = getTimer();
         chk.showing = false;
         false;
         false;
         chk.fadeout_time = fadeout_time;
         chk.fadeFunction = function():void
         {
            if(!this.parent)
            {
               delete this.onEnterFrame;
               delete this.fadeFunction;
               return;
            }
            var _loc1_:Number = 100 * (1 - (getTimer() - this.fadeout_start) / this.fadeout_time);
            if(_loc1_ > 0)
            {
               this.parent.alpha = _loc1_ * 0.01;
            }
            else
            {
               MochiAd.unload(clip);
               delete this["onEnterFrame"];
            }
         };
         mc.unloadAd = function():void
         {
            MochiAd.unload(clip);
         };
         mc.adLoaded = options.ad_loaded;
         mc.adSkipped = options.ad_skipped;
         mc.adjustProgress = function(param1:Number):void
         {
            var _loc2_:Object = mc._mochiad_wait;
            _loc2_.server_control = true;
            _loc2_.showing = true;
            _loc2_.started = getTimer();
            _loc2_.ad_msec = param1 - 250;
         };
         mc.rpc = function(param1:Number, param2:Object):void
         {
            MochiAd.rpc(clip,param1,param2);
         };
         chk["onEnterFrame"] = function():void
         {
            var _loc4_:Number = NaN;
            if(!this.parent)
            {
               delete this.onEnterFrame;
               delete this.fadeFunction;
               return;
            }
            var _loc1_:Object = this.parent._mochiad_ctr;
            var _loc2_:Number = getTimer() - this.started;
            var _loc3_:Boolean = false;
            if(!chk.showing)
            {
               if((_loc4_ = Number(this.parent._mochiad_ctr.contentLoaderInfo.bytesTotal)) > 0)
               {
                  chk.showing = true;
                  chk.started = getTimer();
                  MochiAd.adShowing(clip);
               }
               else if(_loc2_ > chk.ad_timeout)
               {
                  options.ad_failed();
                  _loc3_ = true;
               }
            }
            if(_loc2_ > chk.ad_msec)
            {
               _loc3_ = true;
            }
            if(_loc3_)
            {
               if(this.server_control)
               {
                  delete this.onEnterFrame;
               }
               else
               {
                  this.fadeout_start = getTimer();
                  this.onEnterFrame = this.fadeFunction;
               }
            }
         };
         doOnEnterFrame(chk);
      }
      
      public static function showPreloaderAd(param1:Object) : void
      {
         false;
         false;
         trace("[MochiAd] DEPRECATED: showPreloaderAd was renamed to showPreGameAd in 2.0");
         false;
         false;
         MochiAd.showPreGameAd(param1);
      }
      
      public static function showTimedAd(param1:Object) : void
      {
         trace("[MochiAd] DEPRECATED: showTimedAd was renamed to showInterLevelAd in 2.0");
         true;
         true;
         MochiAd.showInterLevelAd(param1);
      }
      
      public static function _allowDomains(param1:String) : String
      {
         var _loc2_:String = String(param1.split("/")[2].split(":")[0]);
         if(Security.sandboxType == "application")
         {
            true;
            true;
            return _loc2_;
         }
         Security.allowDomain("*");
         Security.allowDomain(_loc2_);
         Security.allowInsecureDomain("*");
         false;
         false;
         Security.allowInsecureDomain(_loc2_);
         return _loc2_;
      }
      
      public static function load(param1:Object) : MovieClip
      {
         var options:Object;
         var DEFAULTS:Object;
         var clip:Object;
         var depth:Number;
         var mc:MovieClip;
         var wh:Array;
         var lv:URLVariables;
         var k:String;
         var server:String;
         var hostname:String;
         var lc:LocalConnection;
         var name:String;
         var loader:Loader;
         var g:Function;
         var req:URLRequest;
         var v:Object;
         true;
         true;
         clip = null;
         mc = null;
         true;
         true;
         k = null;
         true;
         true;
         server = null;
         false;
         false;
         hostname = null;
         false;
         false;
         lc = null;
         name = null;
         loader = null;
         g = null;
         false;
         false;
         req = null;
         v = null;
         options = param1;
         DEFAULTS = {
            "server":"http://x.mochiads.com/srv/1/",
            "method":"load",
            "depth":10333,
            "id":"_UNKNOWN_"
         };
         options = MochiAd._parseOptions(options,DEFAULTS);
         options.swfv = 9;
         options.mav = MochiAd.getVersion();
         false;
         false;
         clip = options.clip;
         true;
         true;
         if(!(clip is DisplayObject))
         {
            trace("Warning: Object passed as container clip not a descendant of the DisplayObject type");
            return null;
         }
         if(MovieClip(clip).stage == null)
         {
            true;
            true;
            trace("Warning: Container clip for ad is not attached to the stage");
            false;
            false;
            return null;
         }
         if(!MochiAd._isNetworkAvailable())
         {
            true;
            true;
            return null;
         }
         try
         {
            if(clip._mochiad_loaded)
            {
               return null;
            }
         }
         catch(e:Error)
         {
            throw new Error("MochiAd requires a clip that is an instance of a dynamic class.  If your class extends Sprite or MovieClip, you must make it dynamic.");
         }
         true;
         true;
         depth = Number(options.depth);
         false;
         false;
         true;
         true;
         delete options.depth;
         mc = createEmptyMovieClip(clip,"_mochiad",depth);
         wh = MochiAd._getRes(options,clip);
         false;
         false;
         false;
         false;
         options.res = wh[0] + "x" + wh[1];
         false;
         false;
         false;
         false;
         options.server += options.id;
         true;
         true;
         false;
         false;
         delete options.id;
         true;
         true;
         clip._mochiad_loaded = true;
         if(clip.loaderInfo.loaderURL.indexOf("http") == 0)
         {
            true;
            true;
            options.as3_swf = clip.loaderInfo.loaderURL;
         }
         else
         {
            trace("[MochiAd] NOTE: Security Sandbox Violation errors below are normal");
         }
         true;
         true;
         lv = new URLVariables();
         var _loc3_:int = 0;
         true;
         true;
         var _loc4_:* = options;
         true;
         true;
         while(§§hasnext(_loc4_,_loc3_))
         {
            false;
            false;
            k = §§nextname(_loc3_,_loc4_);
            false;
            false;
            v = options[k];
            false;
            false;
            if(!(v is Function))
            {
               lv[k] = v;
            }
         }
         true;
         true;
         true;
         true;
         server = String(lv.server);
         delete lv.server;
         true;
         true;
         hostname = _allowDomains(server);
         false;
         false;
         lc = new LocalConnection();
         lc.client = mc;
         name = ["",Math.floor(new Date().getTime()),Math.floor(Math.random() * 999999)].join("_");
         lc.allowDomain("*","localhost");
         false;
         false;
         lc.allowInsecureDomain("*","localhost");
         lc.connect(name);
         true;
         true;
         mc.lc = lc;
         mc.lcName = name;
         true;
         true;
         true;
         true;
         lv.lc = name;
         true;
         true;
         lv.st = getTimer();
         mc.regContLC = function(param1:String):void
         {
            mc._containerLCName = param1;
         };
         true;
         true;
         loader = new Loader();
         g = function(param1:Object):void
         {
            param1.target.removeEventListener(param1.type,arguments.callee);
            MochiAd.unload(clip);
         };
         false;
         false;
         loader.contentLoaderInfo.addEventListener(Event.UNLOAD,g);
         false;
         false;
         req = new URLRequest(server + ".swf?cacheBust=" + new Date().getTime());
         req.contentType = "application/x-www-form-urlencoded";
         req.method = URLRequestMethod.POST;
         req.data = lv;
         loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):void
         {
            trace("[MochiAds] Blocked URL");
         });
         if(!options.skip)
         {
            true;
            true;
            loader.load(req);
         }
         mc.addChild(loader);
         mc._mochiad_ctr = loader;
         return mc;
      }
      
      public static function unload(param1:Object) : Boolean
      {
         false;
         true;
         if(Boolean(param1.clip) && Boolean(param1.clip._mochiad))
         {
            param1 = param1.clip;
         }
         if(param1.origFrameRate != undefined)
         {
            param1.stage.frameRate = param1.origFrameRate;
            true;
            true;
         }
         if(!param1._mochiad)
         {
            return false;
         }
         if(param1._mochiad._containerLCName != undefined)
         {
            param1._mochiad.lc.send(param1._mochiad._containerLCName,"notify",{"id":"unload"});
         }
         if(param1._mochiad.onUnload)
         {
            param1._mochiad.onUnload();
         }
         delete param1._mochiad_loaded;
         delete param1._mochiad;
         return true;
      }
      
      public static function _cleanup(param1:Object) : void
      {
         var mc:Object;
         var idx:Number;
         var k:String;
         var lc:LocalConnection;
         var f:Function;
         false;
         true;
         false;
         false;
         k = null;
         lc = null;
         false;
         false;
         f = null;
         mc = param1;
         if("lc" in mc)
         {
            lc = mc.lc;
            false;
            false;
            f = function():void
            {
               try
               {
                  lc.client = null;
                  lc.close();
               }
               catch(e:Error)
               {
               }
            };
            setTimeout(f,0);
            true;
            true;
         }
         idx = DisplayObjectContainer(mc).numChildren;
         while(idx > 0)
         {
            false;
            false;
            true;
            true;
            idx--;
            DisplayObjectContainer(mc).removeChildAt(idx);
            false;
            false;
         }
         var _loc3_:int = 0;
         var _loc4_:* = mc;
         true;
         true;
         while(§§hasnext(_loc4_,_loc3_))
         {
            false;
            false;
            k = §§nextname(_loc3_,_loc4_);
            true;
            true;
            delete mc[k];
         }
      }
      
      public static function _isNetworkAvailable() : Boolean
      {
         true;
         true;
         return Security.sandboxType != "localWithFile";
      }
      
      public static function _getRes(param1:Object, param2:Object) : Array
      {
         false;
         true;
         var _loc6_:Array = null;
         var _loc3_:Object = param2.getBounds(param2.root);
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         false;
         false;
         if(typeof param1.res != "undefined")
         {
            true;
            true;
            _loc6_ = param1.res.split("x");
            _loc4_ = parseFloat(_loc6_[0]);
            _loc5_ = parseFloat(_loc6_[1]);
         }
         else
         {
            false;
            false;
            _loc4_ = _loc3_.right - _loc3_.left;
            true;
            true;
            false;
            false;
            _loc5_ = _loc3_.top - _loc3_.bottom;
         }
         false;
         false;
         if(_loc4_ == 0 || _loc5_ == 0)
         {
            _loc4_ = Number(param2.stage.stageWidth);
            _loc5_ = Number(param2.stage.stageHeight);
         }
         return [_loc4_,_loc5_];
      }
      
      public static function _parseOptions(param1:Object, param2:Object) : Object
      {
         false;
         true;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:Number = NaN;
         var _loc7_:Array = null;
         var _loc3_:Object = {};
         var _loc8_:int = 0;
         var _loc9_:* = param2;
         while(true)
         {
            false;
            false;
            for(_loc4_ in _loc9_)
            {
               false;
               false;
               _loc3_[_loc4_] = param2[_loc4_];
            }
            break;
         }
         true;
         true;
         if(param1)
         {
            _loc8_ = 0;
            true;
            true;
            _loc9_ = param1;
            true;
            true;
            for(_loc4_ in _loc9_)
            {
               false;
               false;
               _loc3_[_loc4_] = param1[_loc4_];
            }
         }
         if(_loc3_.clip == undefined)
         {
            false;
            false;
            throw new Error("MochiAd is missing the \'clip\' parameter.  This should be a MovieClip, Sprite or an instance of a class that extends MovieClip or Sprite.");
         }
         param1 = _loc3_.clip.loaderInfo.parameters.mochiad_options;
         if(param1)
         {
            true;
            true;
            _loc5_ = param1.split("&");
            false;
            false;
            _loc6_ = 0;
            true;
            true;
            while(_loc6_ < _loc5_.length)
            {
               _loc7_ = _loc5_[_loc6_].split("=");
               true;
               true;
               _loc3_[unescape(_loc7_[0])] = unescape(_loc7_[1]);
               false;
               false;
               _loc6_++;
            }
         }
         if(_loc3_.id == "test")
         {
            trace("[MochiAd] WARNING: Using the MochiAds test identifier, make sure to use the code from your dashboard, not this example!");
         }
         return _loc3_;
      }
      
      public static function rpc(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:* = param3.id;
         switch("setValue" === _loc6_ ? (true, true, 0) : ("getValue" === _loc6_ ? (false, false, 1) : ("runMethod" === _loc6_ ? (false, false, 2) : 3)))
         {
            case 0:
               false;
               false;
               MochiAd.setValue(param1,param3.objectName,param3.value);
               break;
            case 1:
               _loc4_ = MochiAd.getValue(param1,param3.objectName);
               param1._mochiad.lc.send(param1._mochiad._containerLCName,"rpcResult",param2,_loc4_);
               break;
            case 2:
               _loc5_ = MochiAd.runMethod(param1,param3.method,param3.args);
               param1._mochiad.lc.send(param1._mochiad._containerLCName,"rpcResult",param2,_loc5_);
               break;
            default:
               trace("[mochiads rpc] unknown rpc id: " + param3.id);
         }
      }
      
      public static function setValue(param1:Object, param2:String, param3:Object) : void
      {
         false;
         true;
         var _loc4_:Array = param2.split(".");
         var _loc5_:Number = 0;
         while(_loc5_ < _loc4_.length - 1)
         {
            false;
            false;
            §§push(param1[_loc4_[_loc5_]] == undefined);
            if(!(param1[_loc4_[_loc5_]] == undefined))
            {
               false;
               false;
               §§pop();
               true;
               true;
               §§push(param1[_loc4_[_loc5_]] == null);
            }
            if(§§pop())
            {
               return;
            }
            param1 = param1[_loc4_[_loc5_]];
            false;
            false;
            true;
            true;
            _loc5_++;
         }
         param1[_loc4_[_loc5_]] = param3;
      }
      
      public static function getValue(param1:Object, param2:String) : Object
      {
         var _loc3_:Array = param2.split(".");
         var _loc4_:Number = 0;
         while(_loc4_ < _loc3_.length - 1)
         {
            §§push(param1[_loc3_[_loc4_]] == undefined);
            if(!(param1[_loc3_[_loc4_]] == undefined))
            {
               true;
               true;
               §§pop();
               false;
               false;
               §§push(param1[_loc3_[_loc4_]] == null);
            }
            if(§§pop())
            {
               true;
               true;
               return undefined;
            }
            param1 = param1[_loc3_[_loc4_]];
            false;
            false;
            _loc4_++;
         }
         return param1[_loc3_[_loc4_]];
      }
      
      public static function runMethod(param1:Object, param2:String, param3:Array) : Object
      {
         false;
         true;
         var _loc4_:Array = param2.split(".");
         var _loc5_:Number = 0;
         while(_loc5_ < _loc4_.length - 1)
         {
            if(param1[_loc4_[_loc5_]] == undefined || param1[_loc4_[_loc5_]] == null)
            {
               return undefined;
            }
            param1 = param1[_loc4_[_loc5_]];
            false;
            false;
            false;
            false;
            _loc5_++;
         }
         if(typeof param1[_loc4_[_loc5_]] == "function")
         {
            return param1[_loc4_[_loc5_]].apply(param1,param3);
         }
         return undefined;
      }
      
      public static function adShowing(param1:Object) : void
      {
         false;
         true;
         param1.origFrameRate = param1.stage.frameRate;
         false;
         false;
         param1.stage.frameRate = 30;
      }
   }
}
