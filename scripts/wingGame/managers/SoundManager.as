package wingGame.managers
{
   import flash.events.*;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import package_2.class_5;
   import package_4.*;
   import wingGame.screens.*;
   
   public class SoundManager extends EventDispatcher
   {
       
      
      public var gameObj:class_4;
      
      public var track_boombox:SoundChannel;
      
      public var track_jukebox:SoundChannel;
      
      public var track_phonograph:SoundChannel;
      
      public var track_order:SoundChannel;
      
      public var track_grill:SoundChannel;
      
      public var track_build:SoundChannel;
      
      public var track_topping:SoundChannel;
      
      public var track_title:SoundChannel;
      
      public var track_other:SoundChannel;
      
      public var track_none:SoundChannel;
      
      public var playingWhichTrack:String = "none";
      
      public var fadingWhichTrack:String = "none";
      
      public var isMute:Boolean = false;
      
      private var fadeTimer:Timer;
      
      private var fadeSpeed:Number = 100;
      
      private var fadeAmount:Number = 0.1;
      
      private var maxVolume:Number = 1;
      
      public var trackLength:Number = 1;
      
      public function SoundManager(param1:class_4)
      {
         super();
         var _loc2_:SoundManager = this;
         true;
         true;
         _loc2_.gameObj = param1;
         false;
         false;
         _loc2_.setupEngine();
      }
      
      public function setupEngine() : void
      {
         var _loc1_:SoundManager = this;
         _loc1_.track_none = new SoundChannel();
         var _loc2_:Sound = new boombox_music();
         var _loc3_:Sound = new jukebox_music();
         var _loc4_:Sound = new phonograph_music();
         var _loc5_:Sound = new orderscreen_music();
         var _loc6_:Sound = new grillscreen_music();
         var _loc7_:Sound = new buildscreen_music();
         var _loc8_:Sound = new other_music();
         var _loc9_:Sound = new title_music();
         true;
         true;
         _loc1_.trackLength = _loc5_.length;
         var _loc10_:SoundTransform = new SoundTransform(0,0);
         _loc1_.track_boombox = _loc2_.play(0,int.MAX_VALUE,_loc10_);
         _loc1_.track_jukebox = _loc3_.play(0,int.MAX_VALUE,_loc10_);
         _loc1_.track_phonograph = _loc4_.play(0,int.MAX_VALUE,_loc10_);
         _loc1_.track_order = _loc5_.play(0,int.MAX_VALUE,_loc10_);
         _loc1_.track_grill = _loc6_.play(0,int.MAX_VALUE,_loc10_);
         _loc1_.track_build = _loc7_.play(0,int.MAX_VALUE,_loc10_);
         _loc1_.track_other = _loc8_.play(0,int.MAX_VALUE,_loc10_);
         _loc1_.track_title = _loc9_.play(0,int.MAX_VALUE,_loc10_);
         true;
         true;
         _loc1_.gameObj.var_10.api.addEventListener("muteSound",_loc1_.apiMutedSound);
         _loc1_.gameObj.var_10.api.addEventListener("unmuteSound",_loc1_.apiUnmutedSound);
      }
      
      public function restoreSoundAfterAd() : void
      {
         var boomboxMusic:Sound;
         var jukeboxMusic:Sound;
         var phonographMusic:Sound;
         var orderMusic:Sound;
         var grillMusic:Sound;
         var buildMusic:Sound;
         var otherMusic:Sound;
         var titleMusic:Sound;
         var trans:SoundTransform;
         var manager:SoundManager = this;
         try
         {
            if(manager.track_boombox)
            {
               true;
               true;
               true;
               true;
               manager.track_boombox.stop();
               true;
               true;
            }
            if(manager.track_jukebox)
            {
               manager.track_jukebox.stop();
               true;
               true;
            }
            if(manager.track_phonograph)
            {
               manager.track_phonograph.stop();
               true;
               true;
            }
            if(manager.track_order)
            {
               manager.track_order.stop();
            }
            if(manager.track_build)
            {
               false;
               false;
               false;
               false;
               manager.track_build.stop();
            }
            if(manager.track_grill)
            {
               manager.track_grill.stop();
               false;
               false;
            }
            if(manager.track_title)
            {
               manager.track_title.stop();
            }
            if(manager.track_other)
            {
               true;
               true;
               manager.track_other.stop();
            }
         }
         catch(err:Error)
         {
            class_5.error("Error clearing music tracks after ad");
         }
         false;
         false;
         manager.track_boombox = null;
         false;
         false;
         false;
         false;
         manager.track_jukebox = null;
         manager.track_phonograph = null;
         true;
         true;
         true;
         true;
         manager.track_order = null;
         manager.track_build = null;
         manager.track_grill = null;
         manager.track_title = null;
         manager.track_other = null;
         true;
         true;
         boomboxMusic = new boombox_music();
         jukeboxMusic = new jukebox_music();
         false;
         false;
         false;
         false;
         phonographMusic = new phonograph_music();
         true;
         true;
         true;
         true;
         orderMusic = new orderscreen_music();
         grillMusic = new grillscreen_music();
         buildMusic = new buildscreen_music();
         otherMusic = new other_music();
         titleMusic = new title_music();
         false;
         false;
         manager.trackLength = orderMusic.length;
         true;
         true;
         trans = new SoundTransform(0,0);
         false;
         false;
         true;
         true;
         manager.track_boombox = boomboxMusic.play(0,int.MAX_VALUE,trans);
         manager.track_jukebox = jukeboxMusic.play(0,int.MAX_VALUE,trans);
         manager.track_phonograph = phonographMusic.play(0,int.MAX_VALUE,trans);
         false;
         false;
         true;
         true;
         manager.track_order = orderMusic.play(0,int.MAX_VALUE,trans);
         true;
         true;
         manager.track_grill = grillMusic.play(0,int.MAX_VALUE,trans);
         true;
         true;
         manager.track_build = buildMusic.play(0,int.MAX_VALUE,trans);
         manager.track_other = otherMusic.play(0,int.MAX_VALUE,trans);
         manager.track_title = titleMusic.play(0,int.MAX_VALUE,trans);
         try
         {
            false;
            false;
            if(manager.gameObj.var_11)
            {
               true;
               true;
               false;
               false;
               manager.gameObj.var_11.restoreSoundAfterAd();
            }
            else
            {
               class_5.error("No Build Screen to restore its sounds");
               false;
               false;
            }
         }
         catch(err2:Error)
         {
            class_5.error("Error restoring Build sounds after ad: " + err2.message);
         }
         try
         {
            false;
            false;
            false;
            false;
            true;
            true;
            false;
            false;
            if(manager.gameObj.var_16)
            {
               false;
               false;
               true;
               true;
               manager.gameObj.var_16.restoreSoundAfterAd();
            }
            else
            {
               class_5.error("No Grill Screen to restore its sounds");
            }
         }
         catch(err3:Error)
         {
            class_5.error("Error restoring Grill sounds after ad: " + err3.message);
         }
         try
         {
            true;
            true;
            false;
            false;
            if(manager.gameObj.var_30)
            {
               manager.gameObj.var_30.restoreSoundAfterAd();
            }
            else
            {
               class_5.error("No Sauce Screen to restore its sounds");
            }
         }
         catch(err4:Error)
         {
            class_5.error("Error restoring Drink sounds after ad: " + err4.message);
         }
      }
      
      public function switchMusic(param1:String) : void
      {
         false;
         true;
         var _loc5_:SoundChannel = null;
         var _loc6_:SoundChannel = null;
         var _loc7_:SoundChannel = null;
         var _loc2_:SoundManager = this;
         var _loc3_:String = _loc2_.playingWhichTrack;
         true;
         true;
         var _loc4_:String = param1;
         if(!_loc2_.isMute)
         {
            if(_loc4_ != _loc3_ && _loc2_.fadingWhichTrack == "none" || _loc4_ != _loc2_.fadingWhichTrack)
            {
               if(_loc2_.fadingWhichTrack != "none")
               {
                  if(_loc2_.fadeTimer)
                  {
                     _loc2_.fadeTimer.stop();
                     false;
                     false;
                     _loc2_.fadeTimer.removeEventListener(TimerEvent.TIMER,this.fadeMusic);
                     _loc2_.fadeTimer = null;
                  }
                  _loc5_ = _loc2_.getSoundTrack(_loc2_.playingWhichTrack);
                  _loc6_ = _loc2_.getSoundTrack(_loc2_.fadingWhichTrack);
                  false;
                  false;
                  if(_loc5_)
                  {
                     false;
                     false;
                     _loc5_.soundTransform = new SoundTransform(0);
                  }
                  _loc6_.soundTransform = new SoundTransform(_loc2_.maxVolume);
                  false;
                  false;
                  _loc2_.playingWhichTrack = _loc2_.fadingWhichTrack;
                  true;
                  true;
                  _loc2_.fadingWhichTrack = "none";
               }
               _loc2_.fadingWhichTrack = _loc4_;
               if(!_loc2_.fadeTimer)
               {
                  _loc2_.fadeTimer = new Timer(_loc2_.fadeSpeed,0);
                  false;
                  false;
                  _loc2_.fadeTimer.addEventListener(TimerEvent.TIMER,this.fadeMusic);
                  _loc2_.fadeTimer.start();
               }
            }
         }
         else
         {
            if(_loc7_ = _loc2_.getSoundTrack(_loc2_.playingWhichTrack))
            {
               _loc7_.soundTransform = new SoundTransform(0);
               false;
               false;
            }
            _loc2_.playingWhichTrack = param1;
            _loc2_.getSoundTrack(_loc2_.playingWhichTrack).soundTransform = new SoundTransform(1);
         }
      }
      
      public function muteSound() : void
      {
         var _loc1_:SoundManager = this;
         var _loc2_:SoundTransform = new SoundTransform(0);
         false;
         false;
         SoundMixer.soundTransform = _loc2_;
         _loc1_.isMute = true;
         dispatchEvent(new Event("soundIsMuted",true));
      }
      
      public function unmuteSound() : void
      {
         false;
         true;
         var _loc1_:SoundManager = this;
         var _loc2_:SoundTransform = new SoundTransform(1);
         false;
         false;
         SoundMixer.soundTransform = _loc2_;
         _loc1_.isMute = false;
         dispatchEvent(new Event("soundIsNotMuted",true));
      }
      
      public function apiMutedSound(param1:Event = null) : void
      {
         var _loc2_:SoundManager = this;
         _loc2_.muteSound();
         try
         {
            if(_loc2_.gameObj.hudObj)
            {
               false;
               false;
               _loc2_.gameObj.hudObj.updateMuteButton();
            }
         }
         catch(err:Error)
         {
         }
      }
      
      public function apiUnmutedSound(param1:Event = null) : void
      {
         var _loc2_:SoundManager = this;
         _loc2_.unmuteSound();
         try
         {
            false;
            false;
            if(_loc2_.gameObj.hudObj)
            {
               false;
               false;
               _loc2_.gameObj.hudObj.updateMuteButton();
            }
         }
         catch(err:Error)
         {
         }
      }
      
      public function fadeMusic(param1:TimerEvent) : void
      {
         false;
         true;
         var _loc2_:SoundManager = this;
         var _loc3_:SoundTransform = new SoundTransform();
         var _loc4_:SoundTransform = new SoundTransform();
         var _loc5_:SoundChannel = _loc2_.getSoundTrack(_loc2_.playingWhichTrack);
         var _loc6_:SoundChannel;
         if(_loc6_ = _loc2_.getSoundTrack(_loc2_.fadingWhichTrack))
         {
            _loc3_.volume = _loc6_.soundTransform.volume + _loc2_.fadeAmount;
            false;
            false;
         }
         if(_loc5_)
         {
            false;
            false;
            _loc4_.volume = _loc5_.soundTransform.volume - _loc2_.fadeAmount;
         }
         var _loc7_:Boolean = false;
         if(_loc3_.volume >= _loc2_.maxVolume)
         {
            true;
            true;
            _loc3_.volume = _loc2_.maxVolume;
            _loc4_.volume = 0;
            _loc7_ = true;
            false;
            false;
         }
         if(_loc6_)
         {
            _loc6_.soundTransform = _loc3_;
            true;
            true;
         }
         false;
         false;
         §§push(Boolean(_loc5_));
         if(Boolean(_loc5_))
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(_loc5_ != _loc6_);
         }
         if(§§pop())
         {
            true;
            true;
            _loc5_.soundTransform = _loc4_;
         }
         if(_loc7_)
         {
            if(_loc2_.fadeTimer)
            {
               _loc2_.fadeTimer.stop();
               true;
               true;
               _loc2_.fadeTimer.removeEventListener(TimerEvent.TIMER,this.fadeMusic);
               _loc2_.fadeTimer = null;
            }
            _loc2_.playingWhichTrack = _loc2_.fadingWhichTrack;
            _loc2_.fadingWhichTrack = "none";
         }
      }
      
      public function getSoundTrack(param1:String) : SoundChannel
      {
         false;
         true;
         var _loc2_:SoundManager = this;
         true;
         true;
         if(param1 == "order")
         {
            return _loc2_.track_order;
         }
         true;
         true;
         if(param1 == "grill")
         {
            return _loc2_.track_grill;
         }
         false;
         false;
         if(param1 == "build")
         {
            false;
            false;
            return _loc2_.track_build;
         }
         true;
         true;
         if(param1 == "topping")
         {
            return _loc2_.track_build;
         }
         false;
         false;
         if(param1 == "title")
         {
            return _loc2_.track_title;
         }
         if(param1 == "other")
         {
            false;
            false;
            return _loc2_.track_other;
         }
         return _loc2_.track_none;
      }
      
      public function playSound(param1:String, param2:Boolean = false, param3:Number = -1, param4:Number = 0, param5:Number = 0) : SoundChannel
      {
         false;
         true;
         var _loc9_:Class = null;
         var _loc10_:SoundTransform = null;
         var _loc11_:Number = NaN;
         var _loc6_:SoundManager = this;
         var _loc7_:Sound = null;
         var _loc8_:SoundChannel = null;
         try
         {
            _loc7_ = new (_loc9_ = getDefinitionByName(param1) as Class)();
            (_loc10_ = new SoundTransform()).pan = param4;
            true;
            true;
            if(_loc6_.isMute)
            {
               _loc10_.volume = 0;
            }
            else if(param3 == -1)
            {
               _loc10_.volume = _loc6_.maxVolume;
            }
            else
            {
               _loc10_.volume = param3;
            }
            _loc11_ = 0;
            if(param2)
            {
               _loc11_ = int.MAX_VALUE;
            }
            _loc8_ = _loc7_.play(param5,_loc11_,_loc10_);
         }
         catch(e:Error)
         {
         }
         return _loc8_;
      }
   }
}
