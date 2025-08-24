package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getDefinitionByName;
   import mochi.as3.*;
   import package_1.class_1;
   import package_2.class_3;
   
   public dynamic class class_2
   {
       
      
      public var container:MovieClip;
      
      public var clip:MovieClip;
      
      public var var_6:Number = 50;
      
      public var var_3:Number = 26;
      
      public var var_2:Number = 544;
      
      public var var_7:Boolean = true;
      
      public var var_8:Boolean = true;
      
      public var var_9:Boolean = true;
      
      public var var_4:Boolean = false;
      
      public var var_1:MovieClip;
      
      public var var_5:Boolean = false;
      
      public var completeFunction:Function = null;
      
      public function class_2(param1:MovieClip, param2:Function)
      {
         var container:MovieClip;
         var completeFunction:Function;
         var screen:class_2;
         var opt:Object;
         var cl:*;
         false;
         true;
         opt = null;
         cl = undefined;
         container = param1;
         completeFunction = param2;
         super();
         true;
         true;
         screen = this;
         true;
         true;
         true;
         true;
         screen.container = container;
         true;
         true;
         screen.completeFunction = completeFunction;
         if(class_3.method_8())
         {
            false;
            false;
            screen.setupScreen();
         }
         else if(screen.container.loaderInfo.loader != null)
         {
            screen.setupScreen();
         }
         else
         {
            opt = new Object();
            true;
            true;
            opt[class_3.method_1("140095010401010108")] = screen.container;
            opt[class_3.method_1("1201010096")] = class_1.method_11();
            opt[class_3.method_1("13011000970111")] = class_3.method_1("170050004800440116004800520044");
            opt[class_3.method_1("2100093009600910111011200930110011200970096")] = function():void
            {
            };
            false;
            false;
            opt[class_3.method_1("21100930096009100980101010601010111010000970096")] = screen.setupScreen;
            true;
            true;
            opt[class_3.method_1("1501060107009100940099")] = true;
            cl = getDefinitionByName(class_3.method_1("21701050107009501000101004200930111004700420073010700950100010100610096")) as Class;
            true;
            true;
            cl[class_3.method_1("2130111010001070115007601100097006700930105009700610096")](opt);
         }
      }
      
      public function method_17() : void
      {
         false;
         true;
         MochiAd.showPreGameAd({
            "clip":this,
            "id":"194fdfab80576799",
            "res":"608x480",
            "background":16770518,
            "color":8501569,
            "outline":5117533
         });
      }
      
      private function method_5() : LoaderInfo
      {
         return this.container.loaderInfo;
      }
      
      public function method_22(param1:Event = null) : void
      {
      }
      
      public function method_15(param1:Event = null) : void
      {
      }
      
      public function setupScreen(param1:Event = null) : void
      {
         false;
         true;
         var _loc2_:class_2 = this;
         _loc2_.clip = new loadingMC();
         _loc2_.container.addChild(_loc2_.clip);
         _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateScreen);
         _loc2_.clip.loader_bar.percent_txt.text = "0%";
         _loc2_.var_1 = new MovieClip();
         _loc2_.var_1.x = 252;
         _loc2_.var_1.y = 379;
         _loc2_.clip.addChild(_loc2_.var_1);
         _loc2_.var_1.visible = false;
         _loc2_.var_1.addEventListener("clickPlayBtn",_loc2_.method_4);
         if(class_3.method_9())
         {
            _loc2_.var_4 = this.var_8;
            false;
            false;
         }
         else
         {
            true;
            true;
            if(class_3.method_2())
            {
               _loc2_.var_4 = this.var_7;
            }
            else
            {
               _loc2_.var_4 = this.var_9;
            }
         }
         _loc2_.clip.license_btn.buttonMode = true;
         _loc2_.clip.license_btn.useHandCursor = true;
         true;
         true;
         _loc2_.clip.license_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.method_3);
         if(class_3.method_2())
         {
            _loc2_.clip.license_btn.visible = false;
         }
         else
         {
            _loc2_.clip.license_btn.visible = false;
         }
      }
      
      public function method_12() : void
      {
         false;
         true;
         var _loc1_:class_2 = this;
         true;
         true;
         false;
         false;
         if(!_loc1_.var_5)
         {
            false;
            false;
            _loc1_.var_5 = true;
            if(_loc1_.var_4)
            {
               if(_loc1_.completeFunction != null)
               {
                  _loc1_.completeFunction();
                  false;
                  false;
               }
            }
            else
            {
               _loc1_.var_1.visible = true;
            }
         }
      }
      
      public function method_4(param1:Event = null) : void
      {
         false;
         true;
         var _loc2_:class_2 = this;
         false;
         false;
         if(_loc2_.completeFunction != null)
         {
            _loc2_.completeFunction();
         }
      }
      
      public function method_20(param1:Event = null) : void
      {
         false;
         true;
         var _loc2_:class_2 = this;
         true;
         true;
         _loc2_.setupScreen();
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:class_2 = this;
         if(_loc2_.clip.currentFrame == 28)
         {
            _loc3_ = _loc2_.method_5().bytesLoaded / _loc2_.method_5().bytesTotal;
            _loc4_ = (_loc2_.clip.loader_bar.x - _loc2_.var_3) / _loc2_.var_2;
            _loc5_ = 0;
            true;
            true;
            false;
            false;
            false;
            false;
            true;
            true;
            false;
            false;
            if(_loc3_ * _loc2_.var_2 - _loc4_ * _loc2_.var_2 <= _loc2_.var_6)
            {
               _loc2_.clip.loader_bar.x = _loc2_.var_3 + _loc3_ * _loc2_.var_2;
               _loc5_ = _loc3_;
               false;
               false;
            }
            else
            {
               _loc2_.clip.loader_bar.x += _loc2_.var_6;
               _loc5_ = (_loc2_.clip.loader_bar.x - _loc2_.var_3) / _loc2_.var_2;
               false;
               false;
            }
            _loc2_.clip.loader_bar.percent_txt.text = String(Math.round(_loc5_ * 100)) + "%";
            false;
            false;
            if(_loc2_.clip.loader_bar.x >= _loc2_.var_3 + _loc2_.var_2)
            {
               _loc2_.clip.loader_bar.x = 2000;
               false;
               false;
               _loc2_.clip.gotoAndPlay("animout");
            }
         }
         else if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            _loc2_.method_12();
         }
      }
      
      public function method_3(param1:MouseEvent) : void
      {
         false;
         true;
         this;
         false;
         false;
         navigateToURL(new URLRequest(class_1.method_7()),"_blank");
      }
      
      public function destroy() : void
      {
         var _loc1_:class_2 = this;
         _loc1_.clip.license_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.method_3);
         true;
         true;
         _loc1_.var_1.removeEventListener("clickPlayBtn",_loc1_.method_4);
         true;
         true;
         _loc1_.var_1 = null;
         true;
         true;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
   }
}
