package package_7
{
   import Playtomic.*;
   import flash.display.*;
   import flash.events.*;
   import flash.filters.GlowFilter;
   import flash.geom.*;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.*;
   import flash.utils.getDefinitionByName;
   import flipline.api.events.*;
   import package_5.*;
   import package_6.class_19;
   
   public class class_14 extends MovieClip
   {
      
      private static var var_86:Array = ["api_smallbutton_left","api_smallbutton_middle","api_smallbutton_right"];
      
      private static var var_77:Array = ["api_largebutton_left","api_largebutton_middle","api_largebutton_right"];
      
      private static var var_75:Array = ["api_redbutton_left","api_redbutton_middle","api_redbutton_right"];
      
      private static var var_63:Array = ["api_smallbutton_left_overlay","api_smallbutton_middle_overlay","api_smallbutton_right_overlay"];
      
      private static var var_84:Array = ["api_largebutton_left_overlay","api_largebutton_middle_overlay","api_largebutton_right_overlay"];
      
      private static var var_149:Array = ["api_smallbutton_left_overlay","api_smallbutton_middle_overlay","api_smallbutton_right_overlay"];
      
      {
         false;
         true;
         false;
         false;
      }
      
      private var label:String;
      
      private var size:String;
      
      private var type:String;
      
      private var var_105:String = null;
      
      private var var_144:*;
      
      private var var_47:Boolean = false;
      
      private var var_92:Boolean = false;
      
      private var var_96:Boolean = false;
      
      private var var_124:Boolean = false;
      
      private var var_81:Number = 0;
      
      private var var_120:String;
      
      private var var_33:Boolean = false;
      
      private var var_46:Number = 16;
      
      private var var_52:Number = 23;
      
      private var var_221:Number = 3;
      
      private var var_220:Number = 3;
      
      private var var_217:Number = 7;
      
      private var var_41:MovieClip;
      
      private var var_36:MovieClip;
      
      private var var_22:TextField;
      
      private var var_66:Boolean = true;
      
      private var var_57:Boolean = false;
      
      private var var_45:MovieClip = null;
      
      public function class_14(param1:class_19 = null, param2:String = null, param3:String = null, param4:String = "button", param5:String = null, param6:String = null, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:* = null, param11:Boolean = false, param12:Number = 0, param13:Boolean = false)
      {
         false;
         true;
         super();
         var _loc14_:class_14 = this;
         if(param1 != null)
         {
            _loc14_.label = param1.label;
            _loc14_.size = param1.size;
            _loc14_.type = param1.var_162;
            _loc14_.var_120 = param1.var_120;
            _loc14_.var_105 = param1.var_105;
            _loc14_.var_92 = param1.var_92;
            _loc14_.var_96 = param1.var_96;
            _loc14_.var_124 = param1.var_124;
            _loc14_.var_144 = param1.var_144;
            true;
            true;
            _loc14_.var_47 = param1.var_47;
            _loc14_.var_66 = !_loc14_.var_47;
            _loc14_.var_33 = param1.var_33;
            false;
            false;
            _loc14_.var_81 = param1.var_81;
            _loc14_.var_57 = param1.var_57;
         }
         else
         {
            _loc14_.label = param2;
            _loc14_.size = param3;
            _loc14_.type = param4;
            _loc14_.var_120 = param5;
            _loc14_.var_105 = param6;
            _loc14_.var_92 = param7;
            _loc14_.var_96 = param8;
            _loc14_.var_124 = param9;
            true;
            true;
            _loc14_.var_144 = param10;
            _loc14_.var_47 = param11;
            true;
            true;
            false;
            false;
            _loc14_.var_66 = !param11;
            true;
            true;
            _loc14_.var_81 = param12;
            false;
            false;
            _loc14_.var_57 = param13;
         }
         _loc14_.method_119();
      }
      
      private function method_119() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc5_:Class = null;
         var _loc6_:Class = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Class = null;
         var _loc12_:Class = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc15_:MovieClip = null;
         var _loc16_:MovieClip = null;
         var _loc17_:MovieClip = null;
         var _loc18_:MovieClip = null;
         var _loc19_:MovieClip = null;
         var _loc1_:class_14 = this;
         if(_loc1_.var_96)
         {
            false;
            false;
            _loc1_.var_81 = 184;
         }
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.mouseEnabled = true;
         _loc1_.mouseChildren = false;
         false;
         false;
         _loc1_.tabEnabled = false;
         _loc1_.addEventListener(MouseEvent.CLICK,_loc1_.method_73);
         _loc1_.addEventListener(MouseEvent.ROLL_OVER,_loc1_.method_81);
         _loc1_.addEventListener(MouseEvent.ROLL_OUT,_loc1_.method_89);
         _loc1_.var_22 = new TextField();
         true;
         true;
         _loc1_.var_22.embedFonts = true;
         _loc1_.var_22.antiAliasType = AntiAliasType.ADVANCED;
         _loc1_.var_22.gridFitType = GridFitType.SUBPIXEL;
         _loc1_.var_22.wordWrap = false;
         _loc1_.var_22.multiline = false;
         _loc1_.var_22.text = _loc1_.label;
         _loc1_.var_22.setTextFormat(_loc1_.method_66(_loc1_.var_47));
         false;
         false;
         _loc1_.var_22.height = _loc1_.var_22.textHeight + 4;
         false;
         false;
         _loc1_.method_63(_loc1_.var_47);
         var _loc3_:Number = _loc1_.var_22.textWidth + 4 + _loc1_.var_217 * 2;
         if(_loc1_.var_81 > 0)
         {
            true;
            true;
            _loc3_ = _loc1_.var_81;
            true;
            true;
         }
         if(_loc1_.size == "small")
         {
            _loc1_.var_22.width = Math.ceil(_loc3_ / _loc1_.var_46) * _loc1_.var_46;
            _loc1_.var_22.x = 0;
            _loc1_.var_22.y = _loc1_.var_221;
            false;
            false;
         }
         else if(_loc1_.size == "large")
         {
            _loc1_.var_22.width = Math.ceil(_loc3_ / _loc1_.var_52) * _loc1_.var_52;
            _loc1_.var_22.x = 0;
            false;
            false;
            _loc1_.var_22.y = _loc1_.var_220;
         }
         _loc1_.var_41 = new MovieClip();
         true;
         true;
         _loc1_.var_36 = new MovieClip();
         _loc1_.var_36.blendMode = "overlay";
         false;
         false;
         _loc1_.var_36.alpha = 0.5;
         _loc1_.var_36.visible = false;
         _loc1_.addChild(_loc1_.var_41);
         _loc1_.addChild(_loc1_.var_22);
         _loc1_.addChild(_loc1_.var_36);
         if(_loc1_.var_57)
         {
            _loc1_.var_45 = new api_button_flasher();
            false;
            false;
            _loc1_.var_45.blendMode = "overlay";
            _loc1_.var_45.alpha = 0.4;
            _loc1_.var_45.visible = true;
            _loc1_.addChild(_loc1_.var_45);
         }
         var _loc4_:Number = 1;
         if(_loc1_.var_92)
         {
            true;
            true;
            true;
            true;
            _loc4_ = Math.ceil(_loc1_.var_22.width / this.var_46) - 2;
            _loc8_ = new (_loc5_ = getDefinitionByName(class_14.var_75[0]) as Class)();
            _loc14_ = new (_loc11_ = getDefinitionByName(class_14.var_63[0]) as Class)();
            _loc1_.var_41.addChild(_loc8_);
            _loc1_.var_36.addChild(_loc14_);
            if(_loc1_.var_47)
            {
               true;
               true;
               _loc8_.gotoAndStop("disabled");
            }
            else
            {
               _loc8_.gotoAndStop("up");
            }
            _loc6_ = getDefinitionByName(class_14.var_75[1]) as Class;
            (_loc15_ = new (_loc13_ = getDefinitionByName(class_14.var_63[1]) as Class)()).x = _loc1_.var_46;
            _loc15_.width = _loc1_.var_46 * _loc4_;
            _loc1_.var_36.addChild(_loc15_);
            true;
            true;
            _loc2_ = 0;
            while(_loc2_ < _loc4_)
            {
               (_loc9_ = new _loc6_()).x = _loc1_.var_46 + _loc2_ * _loc1_.var_46;
               _loc1_.var_41.addChild(_loc9_);
               false;
               false;
               if(_loc1_.var_47)
               {
                  _loc9_.gotoAndStop("disabled");
                  false;
                  false;
               }
               else
               {
                  _loc9_.gotoAndStop("up");
               }
               _loc2_++;
            }
            _loc10_ = new (_loc7_ = getDefinitionByName(class_14.var_75[2]) as Class)();
            _loc16_ = new (_loc12_ = getDefinitionByName(class_14.var_63[2]) as Class)();
            _loc10_.x = _loc1_.var_46 * (_loc4_ + 1);
            _loc16_.x = _loc10_.x;
            false;
            false;
            _loc1_.var_41.addChild(_loc10_);
            _loc1_.var_36.addChild(_loc16_);
            false;
            false;
            if(_loc1_.var_47)
            {
               _loc10_.gotoAndStop("disabled");
            }
            else
            {
               _loc10_.gotoAndStop("up");
            }
         }
         else
         {
            true;
            true;
            if(_loc1_.size == "small")
            {
               true;
               true;
               true;
               true;
               _loc4_ = Math.ceil(_loc1_.var_22.width / this.var_46) - 2;
               true;
               true;
               _loc8_ = new (_loc5_ = getDefinitionByName(class_14.var_86[0]) as Class)();
               _loc14_ = new (_loc11_ = getDefinitionByName(class_14.var_63[0]) as Class)();
               _loc1_.var_41.addChild(_loc8_);
               false;
               false;
               _loc1_.var_36.addChild(_loc14_);
               false;
               false;
               if(_loc1_.var_47)
               {
                  false;
                  false;
                  _loc8_.gotoAndStop("disabled");
               }
               else
               {
                  _loc8_.gotoAndStop("up");
               }
               _loc6_ = getDefinitionByName(class_14.var_86[1]) as Class;
               (_loc15_ = new (_loc13_ = getDefinitionByName(class_14.var_63[1]) as Class)()).x = _loc1_.var_46;
               true;
               true;
               _loc15_.width = _loc1_.var_46 * _loc4_;
               false;
               false;
               _loc1_.var_36.addChild(_loc15_);
               true;
               true;
               false;
               false;
               _loc2_ = 0;
               while(_loc2_ < _loc4_)
               {
                  (_loc9_ = new _loc6_()).x = _loc1_.var_46 + _loc2_ * _loc1_.var_46;
                  true;
                  true;
                  _loc1_.var_41.addChild(_loc9_);
                  if(_loc1_.var_47)
                  {
                     true;
                     true;
                     _loc9_.gotoAndStop("disabled");
                  }
                  else
                  {
                     _loc9_.gotoAndStop("up");
                     true;
                     true;
                  }
                  _loc2_++;
               }
               _loc10_ = new (_loc7_ = getDefinitionByName(class_14.var_86[2]) as Class)();
               _loc16_ = new (_loc12_ = getDefinitionByName(class_14.var_63[2]) as Class)();
               _loc10_.x = _loc1_.var_46 * (_loc4_ + 1);
               _loc16_.x = _loc10_.x;
               _loc1_.var_41.addChild(_loc10_);
               _loc1_.var_36.addChild(_loc16_);
               false;
               false;
               if(_loc1_.var_47)
               {
                  _loc10_.gotoAndStop("disabled");
                  true;
                  true;
               }
               else
               {
                  _loc10_.gotoAndStop("up");
               }
            }
            else if(_loc1_.size == "large")
            {
               true;
               true;
               _loc4_ = Math.ceil(_loc1_.var_22.width / this.var_52) - 2;
               _loc8_ = new (_loc5_ = getDefinitionByName(class_14.var_77[0]) as Class)();
               _loc14_ = new (_loc11_ = getDefinitionByName(class_14.var_84[0]) as Class)();
               _loc1_.var_41.addChild(_loc8_);
               true;
               true;
               _loc1_.var_36.addChild(_loc14_);
               true;
               true;
               if(_loc1_.var_57)
               {
                  _loc17_ = new _loc11_();
                  _loc1_.var_45.inside.addChild(_loc17_);
               }
               if(_loc1_.var_47)
               {
                  _loc8_.gotoAndStop("disabled");
               }
               else
               {
                  _loc8_.gotoAndStop("up");
               }
               _loc6_ = getDefinitionByName(class_14.var_77[1]) as Class;
               (_loc15_ = new (_loc13_ = getDefinitionByName(class_14.var_84[1]) as Class)()).x = _loc1_.var_52;
               _loc15_.width = _loc1_.var_52 * _loc4_;
               true;
               true;
               _loc1_.var_36.addChild(_loc15_);
               false;
               false;
               if(_loc1_.var_57)
               {
                  true;
                  true;
                  (_loc18_ = new _loc13_()).x = _loc1_.var_52;
                  false;
                  false;
                  _loc18_.width = _loc1_.var_52 * _loc4_;
                  _loc1_.var_45.inside.addChild(_loc18_);
               }
               _loc2_ = 0;
               while(_loc2_ < _loc4_)
               {
                  (_loc9_ = new _loc6_()).x = _loc1_.var_52 + _loc2_ * _loc1_.var_52;
                  _loc1_.var_41.addChild(_loc9_);
                  true;
                  true;
                  if(_loc1_.var_47)
                  {
                     false;
                     false;
                     _loc9_.gotoAndStop("disabled");
                  }
                  else
                  {
                     _loc9_.gotoAndStop("up");
                  }
                  _loc2_++;
               }
               _loc10_ = new (_loc7_ = getDefinitionByName(class_14.var_77[2]) as Class)();
               _loc16_ = new (_loc12_ = getDefinitionByName(class_14.var_84[2]) as Class)();
               true;
               true;
               _loc10_.x = _loc1_.var_52 * (_loc4_ + 1);
               _loc16_.x = _loc10_.x;
               _loc1_.var_41.addChild(_loc10_);
               _loc1_.var_36.addChild(_loc16_);
               if(_loc1_.var_47)
               {
                  _loc10_.gotoAndStop("disabled");
                  false;
                  false;
               }
               else
               {
                  _loc10_.gotoAndStop("up");
                  true;
                  true;
               }
               if(_loc1_.var_57)
               {
                  (_loc19_ = new _loc12_()).x = _loc10_.x;
                  true;
                  true;
                  _loc1_.var_45.inside.addChild(_loc19_);
               }
            }
         }
         if(_loc1_.var_57)
         {
         }
      }
      
      private function method_63(param1:Boolean = false) : void
      {
         var _loc3_:GlowFilter = null;
         var _loc2_:class_14 = this;
         true;
         true;
         if(param1)
         {
            _loc2_.var_22.filters = [];
         }
         else
         {
            _loc3_ = new GlowFilter(16774818,1,2,2,255);
            true;
            true;
            if(_loc2_.var_92)
            {
               _loc3_.color = 15258579;
               false;
               false;
            }
            _loc2_.var_22.filters = [_loc3_];
         }
      }
      
      private function method_66(param1:Boolean = false) : TextFormat
      {
         false;
         true;
         var _loc2_:class_14 = this;
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.font = class_11.const_1;
         false;
         false;
         if(param1)
         {
            true;
            true;
            _loc3_.color = class_11.const_7;
         }
         else if(_loc2_.var_92)
         {
            true;
            true;
            _loc3_.color = class_11.const_11;
         }
         else
         {
            _loc3_.color = class_11.const_2;
         }
         if(_loc2_.size == "large")
         {
            _loc3_.size = class_11.const_4;
            true;
            true;
         }
         else
         {
            _loc3_.size = class_11.const_5;
            true;
            true;
         }
         _loc3_.bold = class_11.const_9;
         _loc3_.align = TextFormatAlign.CENTER;
         false;
         false;
         _loc3_.kerning = true;
         _loc3_.letterSpacing = -0.5;
         return _loc3_;
      }
      
      public function destroy() : void
      {
         var _loc1_:class_14 = this;
         false;
         false;
         true;
         true;
         if(Boolean(_loc1_.parent) && _loc1_.parent.contains(_loc1_))
         {
            _loc1_.parent.removeChild(_loc1_);
            false;
            false;
         }
         _loc1_.removeChild(_loc1_.var_41);
         _loc1_.removeChild(_loc1_.var_36);
         _loc1_.removeChild(_loc1_.var_22);
         false;
         false;
         if(_loc1_.var_45 != null)
         {
            true;
            true;
            _loc1_.removeChild(_loc1_.var_45);
            _loc1_.var_45 = null;
         }
         _loc1_.var_41 = null;
         _loc1_.var_36 = null;
         _loc1_.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.method_81);
         _loc1_.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.method_89);
         false;
         false;
         _loc1_.removeEventListener(MouseEvent.CLICK,_loc1_.method_73);
      }
      
      private function method_73(param1:MouseEvent) : void
      {
         var _loc2_:class_14 = this;
         false;
         false;
         if(_loc2_.var_66)
         {
            if(_loc2_.type == "link")
            {
               if(_loc2_.var_33)
               {
                  Link.Open(_loc2_.var_105,_loc2_.label,"LinkButtons");
                  false;
                  false;
               }
               else
               {
                  navigateToURL(new URLRequest(_loc2_.var_105),"_blank");
                  false;
                  false;
               }
            }
            else
            {
               false;
               false;
               if(_loc2_.type == "button")
               {
                  dispatchEvent(new MenuButtonEvent(_loc2_.var_120,true));
               }
               else if(_loc2_.type == "custom")
               {
               }
            }
         }
      }
      
      private function method_81(param1:MouseEvent) : void
      {
         var _loc2_:class_14 = this;
         true;
         true;
         if(_loc2_.var_66)
         {
            true;
            true;
            _loc2_.var_36.visible = true;
            true;
            true;
            if(_loc2_.var_57 && _loc2_.var_45 != null)
            {
               _loc2_.var_45.visible = false;
            }
         }
      }
      
      private function method_89(param1:MouseEvent) : void
      {
         var _loc2_:class_14 = this;
         false;
         false;
         if(_loc2_.var_66)
         {
            _loc2_.var_36.visible = false;
            false;
            false;
            if(_loc2_.var_57 && _loc2_.var_45 != null)
            {
               _loc2_.var_45.visible = true;
            }
         }
      }
      
      public function method_68() : void
      {
         var _loc1_:class_14 = this;
         _loc1_.var_66 = true;
         _loc1_.var_22.setTextFormat(_loc1_.method_66());
         false;
         false;
         _loc1_.method_63();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.var_41.numChildren)
         {
            MovieClip(_loc1_.var_41.getChildAt(_loc2_)).gotoAndStop("up");
            true;
            true;
            _loc2_++;
            false;
            false;
         }
      }
      
      public function method_64() : void
      {
         var _loc1_:class_14 = this;
         _loc1_.var_66 = false;
         true;
         true;
         _loc1_.var_36.visible = false;
         _loc1_.var_22.setTextFormat(_loc1_.method_66(true));
         _loc1_.method_63(true);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.var_41.numChildren)
         {
            MovieClip(_loc1_.var_41.getChildAt(_loc2_)).gotoAndStop("disabled");
            _loc2_++;
            false;
            false;
         }
      }
      
      public function getLabel() : String
      {
         var _loc1_:class_14 = this;
         return _loc1_.label;
      }
   }
}
