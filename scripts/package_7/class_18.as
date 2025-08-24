package package_7
{
   import Playtomic.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import package_2.class_5;
   import package_5.class_11;
   import package_6.*;
   
   public class class_18
   {
       
      
      private var api:class_11;
      
      private var data:class_12;
      
      private var var_142:Object = null;
      
      private var clip:MovieClip;
      
      private var var_17:MovieClip;
      
      private var var_26:MovieClip;
      
      private var var_32:MovieClip;
      
      private var var_126:Number = 4;
      
      private var var_214:Number = 0;
      
      private var var_231:Number = 45;
      
      private var var_199:Number = 11;
      
      private var var_187:Number = 6;
      
      private var var_156:Number = -15;
      
      private var var_201:Number = 45;
      
      private var var_228:Number = 7;
      
      private var var_180:Number = 3;
      
      private var var_181:Number = 10;
      
      private var var_171:Number = 10;
      
      private var var_209:Number = 7;
      
      private var var_234:Number = 10;
      
      private var var_207:Number = 78;
      
      private var var_189:Number = 3;
      
      private var var_191:Number = 6;
      
      private var var_193:Number = 8;
      
      private var var_178:Number = -1;
      
      private var var_185:Number = 2;
      
      private var var_49:class_14 = null;
      
      private var var_61:class_14;
      
      private var var_24:MovieClip;
      
      private var var_25:MovieClip;
      
      private var var_35:MovieClip;
      
      private var var_29:SimpleButton;
      
      private var var_48:SimpleButton;
      
      private var var_43:MovieClip;
      
      private var var_215:MovieClip;
      
      private var var_160:Boolean = false;
      
      private var var_197:String = "api_menu_top_panel";
      
      private var var_194:String = "api_menu_bottom_panel";
      
      private var var_212:String = "startgame_bg";
      
      private var var_218:Number = -13;
      
      private var var_174:Number = -5;
      
      private var var_196:String = "flip_logo_large";
      
      private var var_224:String = "flip_logo_small";
      
      private var var_206:String = "sponsor_logo_large";
      
      private var var_229:String = "sponsor_logo_small";
      
      private var var_205:String = "license_logo_large";
      
      private var var_190:String = "license_logo_small";
      
      private var var_219:String = "developedby_tag";
      
      private var var_200:String = "sponsoredby_tag";
      
      private var var_195:String = "api_mute_btn";
      
      private var var_188:String = "api_unmute_btn";
      
      private var var_213:String = "api_getthisgame_button";
      
      private var var_225:String = "api_getthisgame_bigbutton";
      
      private var var_226:String = "api_promopanel_license";
      
      private var var_177:String = "api_promopanel_sponsor";
      
      private var var_40:MovieClip;
      
      private var var_182:Number = 46;
      
      private var var_65:Number = 12;
      
      private var var_133:Number = 15;
      
      private var var_131:Number = 10;
      
      private var var_241:Number = 2;
      
      private var var_208:Number = 73;
      
      private var var_203:Number = 120;
      
      private var var_184:Number = 43;
      
      private var var_223:Number = 101;
      
      private var var_204:Number = 43;
      
      private var var_179:Number = 60;
      
      private var var_192:Number = 0;
      
      private var var_183:Number = 60;
      
      private var var_198:Number = 73;
      
      private var var_176:Number = 137;
      
      private var var_44:Number = 0;
      
      private var var_42:Number = 0;
      
      private var var_165:Number = 4;
      
      private var var_202:Number = 0;
      
      private var var_122:Number = 0;
      
      private var var_151:Boolean = false;
      
      private var var_37:TextField;
      
      private var var_95:*;
      
      public function class_18(param1:class_11, param2:class_12, param3:Object = null)
      {
         false;
         true;
         false;
         false;
         super();
         false;
         false;
         this.api = param1;
         false;
         false;
         this.data = param2;
         this.var_142 = param3;
         this.setupScreen();
      }
      
      public function setupScreen() : void
      {
         false;
         true;
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:class_19 = null;
         var _loc5_:class_14 = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Array = null;
         var _loc8_:TextField = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:int = 0;
         var _loc12_:MovieClip = null;
         var _loc1_:class_18 = this;
         _loc1_.clip = new MovieClip();
         _loc1_.var_17 = this.api.util.method_26(this.var_197);
         true;
         true;
         _loc1_.var_26 = this.api.util.method_26(this.var_194);
         if(this.data.var_109)
         {
            _loc1_.var_44 = 0 - (_loc1_.var_17.height - this.var_208);
            _loc1_.var_42 = this.api.var_31 - this.var_203;
            _loc1_.var_17.y = 0 - _loc1_.var_17.height + this.api.var_31 / 2 - 30;
            _loc1_.var_26.y = this.api.var_31 - this.api.var_31 / 2 + 30;
         }
         else if(this.data.var_50)
         {
            _loc1_.var_44 = 0 - (_loc1_.var_17.height - this.var_198);
            _loc1_.var_42 = this.api.var_31 - this.var_176;
            _loc1_.var_17.y = 0 - _loc1_.var_17.height + this.api.var_31 / 2 - 30;
            false;
            false;
            _loc1_.var_26.y = this.api.var_31 - this.api.var_31 / 2 + 30;
         }
         else
         {
            true;
            true;
            if(this.data.var_130)
            {
               _loc1_.var_44 = 0 - (_loc1_.var_17.height - this.var_204);
               false;
               false;
               _loc1_.var_42 = this.api.var_31 - this.var_179;
               true;
               true;
               _loc1_.var_17.y = 0 - _loc1_.var_17.height;
               _loc1_.var_26.y = this.api.var_31;
            }
            else if(this.data.var_137)
            {
               _loc1_.var_44 = 0 - (_loc1_.var_17.height - this.var_192);
               false;
               false;
               _loc1_.var_42 = this.api.var_31 - this.var_183;
               _loc1_.var_17.y = 0 - _loc1_.var_17.height;
               _loc1_.var_26.y = this.api.var_31;
            }
            else
            {
               _loc1_.var_44 = 0 - (_loc1_.var_17.height - this.var_184);
               _loc1_.var_42 = this.api.var_31 - this.var_223;
               _loc1_.var_17.y = 0 - _loc1_.var_17.height;
               _loc1_.var_26.y = this.api.var_31;
            }
         }
         _loc1_.var_37 = new TextField();
         _loc1_.var_37.embedFonts = true;
         false;
         false;
         _loc1_.var_37.antiAliasType = AntiAliasType.ADVANCED;
         true;
         true;
         _loc1_.var_37.gridFitType = GridFitType.SUBPIXEL;
         _loc1_.var_37.wordWrap = false;
         _loc1_.var_37.multiline = false;
         _loc1_.var_37.defaultTextFormat = _loc1_.method_66();
         _loc1_.var_37.text = "";
         true;
         true;
         _loc1_.var_37.mouseEnabled = false;
         _loc1_.var_37.y = 0 - _loc1_.var_44 + _loc1_.var_214;
         true;
         true;
         true;
         true;
         if(_loc1_.data.var_146)
         {
            false;
            false;
            _loc1_.var_37.text = _loc1_.data.var_173;
         }
         _loc1_.var_37.height = _loc1_.var_37.textHeight + 4;
         _loc1_.var_37.width = _loc1_.api.var_39;
         _loc1_.var_17.addChild(_loc1_.var_37);
         _loc1_.var_32 = new MovieClip();
         false;
         false;
         false;
         false;
         if(this.data.var_109)
         {
            _loc1_.var_32.y = _loc1_.var_231;
         }
         else if(this.data.var_50)
         {
            _loc1_.var_32.y = _loc1_.var_187;
         }
         else
         {
            _loc1_.var_32.y = _loc1_.var_199;
         }
         if(_loc1_.data.var_54.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc1_.data.var_54.length)
            {
               _loc4_ = _loc1_.data.var_54[_loc3_];
               _loc5_ = new class_14(_loc4_);
               true;
               true;
               if(_loc4_.var_124)
               {
                  _loc5_.x = _loc1_.var_65;
                  false;
                  false;
                  _loc5_.y = 0 - _loc1_.var_44 + _loc1_.var_209;
                  _loc1_.var_17.addChild(_loc5_);
                  _loc1_.var_61 = _loc5_;
               }
               else if(_loc4_.size == "large")
               {
                  _loc5_.x = Math.floor((_loc1_.api.var_39 - _loc5_.width) / 2);
                  true;
                  true;
                  if(_loc4_.var_96)
                  {
                     _loc5_.y = _loc1_.var_156;
                  }
                  else
                  {
                     false;
                     false;
                     if(this.data.var_130 || this.data.var_137)
                     {
                        _loc5_.y = _loc1_.var_228;
                     }
                     else
                     {
                        _loc5_.y = _loc1_.var_201;
                     }
                  }
                  if(_loc4_.var_96)
                  {
                     (_loc6_ = this.api.util.method_26(_loc1_.var_212)).x = _loc5_.x + _loc1_.var_218;
                     true;
                     true;
                     _loc6_.y = _loc5_.y + _loc1_.var_174;
                     _loc1_.var_26.addChild(_loc6_);
                     false;
                     false;
                     _loc1_.var_215 = _loc6_;
                     _loc1_.var_160 = true;
                  }
                  _loc1_.var_26.addChild(_loc5_);
                  _loc1_.var_49 = _loc5_;
                  if(this.data.var_50)
                  {
                     _loc1_.var_32.graphics.lineStyle(0,0,0);
                     _loc1_.var_32.graphics.beginFill(0,0);
                     _loc1_.var_32.graphics.drawRect(0,0,1,1);
                     _loc1_.var_32.graphics.drawRect(this.api.var_39 - 1,0,1,1);
                     false;
                     false;
                  }
               }
               else
               {
                  _loc5_.x = _loc1_.var_32.width + _loc1_.var_126;
                  if(_loc1_.var_32.width == 0)
                  {
                     _loc5_.x = 0;
                  }
                  if(this.data.var_50 && _loc1_.var_49 != null)
                  {
                     true;
                     true;
                     true;
                     true;
                     if(_loc3_ == 1)
                     {
                        _loc5_.x = _loc1_.var_49.x - _loc1_.var_126 - _loc5_.width;
                     }
                     else
                     {
                        false;
                        false;
                        true;
                        true;
                        if(_loc3_ == 0)
                        {
                           true;
                           true;
                           class_5.error("API ERROR: You must define the Large Button first for a Promo screen.");
                        }
                        else
                        {
                           false;
                           false;
                           if(_loc3_ == 2)
                           {
                              _loc5_.x = _loc1_.var_49.x + _loc1_.var_49.width + _loc1_.var_126;
                           }
                           else
                           {
                              class_5.error("API ERROR: Too many extra buttons for a Promo screen.");
                              _loc5_.x = 0;
                           }
                        }
                     }
                  }
                  _loc1_.var_32.addChild(_loc5_);
               }
               false;
               false;
               _loc3_++;
            }
            false;
            false;
         }
         _loc1_.var_26.addChild(_loc1_.var_32);
         _loc1_.var_32.x = Math.floor((_loc1_.api.var_39 - _loc1_.var_32.width) / 2);
         if(this.data.var_153)
         {
            _loc7_ = this.data.var_175.split(" ");
            _loc1_.var_29 = _loc1_.api.util.method_77(_loc1_.var_195);
            false;
            false;
            _loc1_.var_48 = _loc1_.api.util.method_77(_loc1_.var_188);
            _loc1_.var_29.addEventListener(MouseEvent.CLICK,_loc1_.method_74);
            _loc1_.var_48.addEventListener(MouseEvent.CLICK,_loc1_.method_80);
            false;
            false;
            if(_loc1_.api.var_91)
            {
               false;
               false;
               _loc1_.var_29.visible = false;
               _loc1_.var_48.visible = true;
               true;
               true;
            }
            else
            {
               _loc1_.var_29.visible = true;
               _loc1_.var_48.visible = false;
            }
            if(_loc7_.indexOf("top") > -1)
            {
               _loc1_.var_29.y = 0 - _loc1_.var_44 + _loc1_.var_180;
            }
            else if(_loc7_.indexOf("bottom") > -1)
            {
               _loc1_.var_29.y = _loc1_.api.var_31 - _loc1_.var_42 - _loc1_.var_29.height - _loc1_.var_181;
               true;
               true;
               if(this.data.var_50)
               {
                  _loc1_.var_29.y = _loc1_.var_185;
                  true;
                  true;
               }
            }
            if(_loc7_.indexOf("left") > -1)
            {
               _loc1_.var_29.x = _loc1_.var_171;
            }
            else if(_loc7_.indexOf("right") > -1)
            {
               _loc1_.var_29.x = _loc1_.api.var_39 - _loc1_.var_171 - _loc1_.var_29.width;
               if(this.data.var_50)
               {
                  _loc1_.var_29.x = _loc1_.api.var_39 - _loc1_.var_178 - _loc1_.var_29.width;
               }
            }
            else if(_loc7_.indexOf("center") > -1)
            {
               false;
               false;
               _loc1_.var_29.x = (_loc1_.api.var_39 - _loc1_.var_29.width) / 2;
            }
            _loc1_.var_48.x = _loc1_.var_29.x;
            true;
            true;
            _loc1_.var_48.y = _loc1_.var_29.y;
            if(_loc7_.indexOf("top") > -1)
            {
               _loc1_.var_17.addChild(_loc1_.var_48);
               _loc1_.var_17.addChild(_loc1_.var_29);
            }
            else if(_loc7_.indexOf("bottom") > -1)
            {
               _loc1_.var_26.addChild(_loc1_.var_48);
               _loc1_.var_26.addChild(_loc1_.var_29);
            }
         }
         false;
         false;
         if(this.data.var_157)
         {
            if(this.data.var_50)
            {
               _loc1_.var_43 = _loc1_.api.util.method_26(_loc1_.var_225);
            }
            else
            {
               _loc1_.var_43 = _loc1_.api.util.method_26(_loc1_.var_213);
            }
            _loc1_.var_43.buttonMode = true;
            _loc1_.var_43.mouseEnabled = true;
            _loc1_.var_43.mouseChildren = false;
            true;
            true;
            _loc1_.var_43.useHandCursor = true;
            false;
            false;
            _loc1_.var_43.addEventListener(MouseEvent.CLICK,_loc1_.method_76);
            false;
            false;
            _loc1_.var_43.y = _loc1_.var_207;
            true;
            true;
            _loc1_.var_43.x = (_loc1_.api.var_39 - _loc1_.var_43.width) / 2;
            if(this.data.var_50)
            {
               _loc1_.var_43.y = _loc1_.var_193;
               _loc1_.var_43.x = _loc1_.var_191;
            }
            _loc1_.var_26.addChild(_loc1_.var_43);
         }
         if(this.data.var_168)
         {
            false;
            false;
            (_loc8_ = new TextField()).embedFonts = true;
            _loc8_.antiAliasType = AntiAliasType.ADVANCED;
            _loc8_.gridFitType = GridFitType.PIXEL;
            _loc8_.wordWrap = false;
            _loc8_.multiline = false;
            _loc8_.defaultTextFormat = _loc1_.method_93();
            _loc8_.text = this.data.var_150;
            _loc8_.mouseEnabled = false;
            _loc8_.tabEnabled = false;
            _loc8_.height = _loc8_.textHeight + 4;
            _loc8_.width = _loc8_.textWidth + 6;
            _loc8_.y = _loc1_.api.var_31 - _loc1_.var_42 - _loc8_.height - _loc1_.var_189;
            _loc8_.x = (_loc1_.api.var_39 - _loc8_.width) / 2;
            _loc1_.var_26.addChild(_loc8_);
         }
         if(this.data.var_159)
         {
            true;
            true;
            if(this.data.var_148 == "small")
            {
               false;
               false;
               _loc1_.var_24 = _loc1_.api.util.method_26(_loc1_.var_224);
            }
            else
            {
               _loc1_.var_24 = _loc1_.api.util.method_26(_loc1_.var_196);
            }
            _loc2_ = this.data.var_172.split(" ");
            if(_loc2_.indexOf("top") > -1)
            {
               _loc1_.var_24.y = _loc1_.var_133 - _loc1_.var_44;
               true;
               true;
            }
            else if(_loc2_.indexOf("bottom") > -1)
            {
               _loc1_.var_24.y = _loc1_.api.var_31 - _loc1_.var_42 - _loc1_.var_24.height - _loc1_.var_131;
            }
            if(_loc2_.indexOf("left") > -1)
            {
               _loc1_.var_24.x = _loc1_.var_65;
            }
            else if(_loc2_.indexOf("right") > -1)
            {
               false;
               false;
               _loc1_.var_24.x = _loc1_.api.var_39 - _loc1_.var_24.width - _loc1_.var_65;
            }
            else if(_loc2_.indexOf("center") > -1)
            {
               _loc1_.var_24.x = (_loc1_.api.var_39 - _loc1_.var_24.width) / 2;
            }
            true;
            true;
            true;
            true;
            §§push(this.data.var_74 != null);
            if(this.data.var_74 != null)
            {
               false;
               false;
               §§pop();
               true;
               true;
               true;
               true;
               §§push(this.data.var_74 != "");
            }
            if(§§pop())
            {
               _loc1_.var_24.buttonMode = true;
               _loc1_.var_24.mouseEnabled = true;
               _loc1_.var_24.mouseChildren = false;
               _loc1_.var_24.useHandCursor = true;
               _loc1_.var_24.addEventListener(MouseEvent.CLICK,_loc1_.method_70);
               false;
               false;
            }
            if(this.data.var_152)
            {
               false;
               false;
               (_loc9_ = _loc1_.api.util.method_26(_loc1_.var_219)).y = this.var_24.y - _loc9_.height;
               if(_loc2_.indexOf("left") > -1)
               {
                  true;
                  true;
                  _loc9_.x = this.var_24.x;
               }
               else if(_loc2_.indexOf("center") > -1)
               {
                  _loc9_.x = this.var_24.x + (this.var_24.width - _loc9_.width) / 2;
               }
               else if(_loc2_.indexOf("right") > -1)
               {
                  true;
                  true;
                  _loc9_.x = this.var_24.x + this.var_24.width - _loc9_.width;
               }
               if(_loc2_.indexOf("top") > -1)
               {
                  false;
                  false;
                  _loc1_.var_17.addChild(_loc9_);
               }
               else if(_loc2_.indexOf("bottom") > -1)
               {
                  _loc1_.var_26.addChild(_loc9_);
               }
            }
            if(_loc2_.indexOf("top") > -1)
            {
               _loc1_.var_17.addChild(_loc1_.var_24);
               false;
               false;
            }
            else if(_loc2_.indexOf("bottom") > -1)
            {
               _loc1_.var_26.addChild(_loc1_.var_24);
            }
         }
         if(this.data.var_154)
         {
            false;
            false;
            if(this.data.var_141 == "small")
            {
               _loc1_.var_25 = _loc1_.api.util.method_26(_loc1_.var_229);
            }
            else
            {
               _loc1_.var_25 = _loc1_.api.util.method_26(_loc1_.var_206);
            }
            false;
            false;
            _loc2_ = this.data.var_164.split(" ");
            if(_loc2_.indexOf("top") > -1)
            {
               _loc1_.var_25.y = _loc1_.var_133 - _loc1_.var_44;
            }
            else if(_loc2_.indexOf("bottom") > -1)
            {
               _loc1_.var_25.y = _loc1_.api.var_31 - _loc1_.var_42 - _loc1_.var_25.height - _loc1_.var_131;
            }
            if(_loc2_.indexOf("left") > -1)
            {
               _loc1_.var_25.x = _loc1_.var_65;
            }
            else if(_loc2_.indexOf("right") > -1)
            {
               _loc1_.var_25.x = _loc1_.api.var_39 - _loc1_.var_25.width - _loc1_.var_65;
            }
            else if(_loc2_.indexOf("center") > -1)
            {
               false;
               false;
               _loc1_.var_25.x = (_loc1_.api.var_39 - _loc1_.var_25.width) / 2;
            }
            false;
            false;
            §§push(this.data.var_70 != null);
            if(this.data.var_70 != null)
            {
               false;
               false;
               §§pop();
               true;
               true;
               false;
               false;
               §§push(this.data.var_70 != "");
            }
            if(§§pop())
            {
               true;
               true;
               _loc1_.var_25.buttonMode = true;
               true;
               true;
               _loc1_.var_25.mouseEnabled = true;
               _loc1_.var_25.mouseChildren = false;
               _loc1_.var_25.useHandCursor = true;
               _loc1_.var_25.addEventListener(MouseEvent.CLICK,_loc1_.method_72);
            }
            if(this.data.var_140)
            {
               (_loc10_ = _loc1_.api.util.method_26(_loc1_.var_200)).y = this.var_25.y - _loc10_.height;
               if(_loc2_.indexOf("left") > -1)
               {
                  _loc10_.x = this.var_25.x;
               }
               else if(_loc2_.indexOf("center") > -1)
               {
                  _loc10_.x = this.var_25.x + (this.var_25.width - _loc10_.width) / 2;
               }
               else if(_loc2_.indexOf("right") > -1)
               {
                  _loc10_.x = this.var_25.x + this.var_25.width - _loc10_.width;
               }
               if(_loc2_.indexOf("top") > -1)
               {
                  _loc1_.var_17.addChild(_loc10_);
               }
               else if(_loc2_.indexOf("bottom") > -1)
               {
                  _loc1_.var_26.addChild(_loc10_);
               }
            }
            if(_loc2_.indexOf("top") > -1)
            {
               _loc1_.var_17.addChild(_loc1_.var_25);
            }
            else if(_loc2_.indexOf("bottom") > -1)
            {
               _loc1_.var_26.addChild(_loc1_.var_25);
            }
         }
         false;
         false;
         false;
         false;
         if(this.data.var_143)
         {
            if(this.data.var_161 == "small")
            {
               _loc1_.var_35 = _loc1_.api.util.method_26(_loc1_.var_190);
            }
            else
            {
               _loc1_.var_35 = _loc1_.api.util.method_26(_loc1_.var_205);
            }
            false;
            false;
            _loc2_ = this.data.var_166.split(" ");
            if(_loc2_.indexOf("top") > -1)
            {
               true;
               true;
               _loc1_.var_35.y = _loc1_.var_133 - _loc1_.var_44;
            }
            else if(_loc2_.indexOf("bottom") > -1)
            {
               _loc1_.var_35.y = _loc1_.api.var_31 - _loc1_.var_42 - _loc1_.var_35.height - _loc1_.var_131;
            }
            if(_loc2_.indexOf("left") > -1)
            {
               _loc1_.var_35.x = _loc1_.var_65;
               true;
               true;
            }
            else if(_loc2_.indexOf("right") > -1)
            {
               _loc1_.var_35.x = _loc1_.api.var_39 - _loc1_.var_35.width - _loc1_.var_65;
            }
            else if(_loc2_.indexOf("center") > -1)
            {
               _loc1_.var_35.x = (_loc1_.api.var_39 - _loc1_.var_35.width) / 2;
            }
            true;
            true;
            true;
            true;
            if(this.data.var_73 != null && this.data.var_73 != "")
            {
               _loc1_.var_35.buttonMode = true;
               _loc1_.var_35.mouseEnabled = true;
               _loc1_.var_35.mouseChildren = false;
               _loc1_.var_35.useHandCursor = true;
               _loc1_.var_35.addEventListener(MouseEvent.CLICK,_loc1_.method_87);
            }
            if(_loc2_.indexOf("top") > -1)
            {
               true;
               true;
               _loc1_.var_17.addChild(_loc1_.var_35);
            }
            else if(_loc2_.indexOf("bottom") > -1)
            {
               _loc1_.var_26.addChild(_loc1_.var_35);
            }
         }
         if(this.data.var_50 && this.data.var_23 != null)
         {
            true;
            true;
            if(this.data.var_23.var_80)
            {
               _loc1_.var_40 = _loc1_.api.util.method_26(_loc1_.var_226);
            }
            else
            {
               _loc1_.var_40 = _loc1_.api.util.method_26(_loc1_.var_177);
            }
            _loc1_.var_40.facebook_btn.addEventListener(MouseEvent.CLICK,_loc1_.method_92);
            true;
            true;
            _loc1_.var_40.twitter_btn.addEventListener(MouseEvent.CLICK,_loc1_.method_86);
            if(this.data.var_23.var_128 == false)
            {
               _loc1_.var_40.facebook_btn.visible = false;
               _loc1_.var_40.twitter_btn.y = 0;
               false;
               false;
            }
            false;
            false;
            if(this.data.var_23.var_134 == false)
            {
               _loc1_.var_40.twitter_btn.visible = false;
            }
            false;
            false;
            true;
            true;
            if(this.data.var_23.var_128 == false && this.data.var_23.var_134 == false)
            {
               _loc1_.var_40.inside.x = 0;
            }
            _loc11_ = 0;
            while(_loc11_ < this.data.var_23.var_90.length)
            {
               (_loc12_ = _loc1_.var_40.inside["gamepanel" + (_loc11_ + 1)]).buttonMode = true;
               _loc12_.mouseEnabled = true;
               _loc12_.mouseChildren = false;
               false;
               false;
               _loc12_.useHandCursor = true;
               true;
               true;
               _loc12_.addEventListener(MouseEvent.CLICK,_loc1_.method_79);
               true;
               true;
               _loc11_++;
            }
            _loc1_.var_40.y = _loc1_.var_182;
            _loc1_.var_40.x = Math.floor((_loc1_.api.var_39 - _loc1_.var_40.width) / 2);
            _loc1_.var_26.addChild(_loc1_.var_40);
         }
         if(this.data.var_95 != null && this.data.var_95 != "")
         {
            false;
            false;
            _loc1_.var_95 = _loc1_.api.util.method_94(this.data.var_95,_loc1_.api.var_138,_loc1_.clip,_loc1_.var_142);
            true;
            true;
         }
         _loc1_.clip.addChild(_loc1_.var_17);
         _loc1_.clip.addChild(_loc1_.var_26);
         _loc1_.var_17.addEventListener(Event.ENTER_FRAME,_loc1_.method_61);
         _loc1_.api.container.addChild(_loc1_.clip);
      }
      
      public function startTransitionOut() : void
      {
         false;
         true;
         var _loc1_:class_18 = this;
         _loc1_.var_151 = true;
         true;
         true;
         _loc1_.disableButtons();
         _loc1_.var_44 = 0 - _loc1_.var_17.height;
         _loc1_.var_42 = this.api.var_31;
         if(_loc1_.var_160)
         {
            true;
            true;
            true;
            true;
            true;
            true;
            _loc1_.var_42 += (_loc1_.var_156 + _loc1_.var_174) * -1;
         }
         if(!_loc1_.var_17.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.var_17.addEventListener(Event.ENTER_FRAME,_loc1_.method_61);
         }
      }
      
      public function method_61(param1:Event) : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:class_18 = this;
         var _loc5_:*;
         var _loc6_:* = (_loc5_ = _loc2_).var_122 + 1;
         true;
         true;
         _loc5_.var_122 = _loc6_;
         false;
         false;
         if(_loc2_.var_122 > _loc2_.var_202 || _loc2_.var_151)
         {
            false;
            false;
            false;
            false;
            _loc3_ = _loc2_.var_44 - _loc2_.var_17.y;
            true;
            true;
            false;
            false;
            _loc4_ = _loc2_.var_42 - _loc2_.var_26.y;
            if(Math.abs(_loc3_) > 1)
            {
               _loc2_.var_17.y += _loc3_ / _loc2_.var_165;
               false;
               false;
            }
            else
            {
               _loc2_.var_17.y = _loc2_.var_44;
            }
            if(Math.abs(_loc4_) > 1)
            {
               _loc2_.var_26.y += _loc4_ / _loc2_.var_165;
            }
            else
            {
               _loc2_.var_26.y = _loc2_.var_42;
            }
            §§push(_loc2_.var_17.y == _loc2_.var_44);
            if(_loc2_.var_17.y == _loc2_.var_44)
            {
               true;
               true;
               §§pop();
               §§push(_loc2_.var_26.y == _loc2_.var_42);
            }
            if(§§pop())
            {
               _loc2_.var_17.removeEventListener(Event.ENTER_FRAME,_loc2_.method_61);
            }
         }
      }
      
      public function method_70(param1:MouseEvent) : void
      {
         var _loc2_:class_18 = this;
         if(Boolean(_loc2_.data.var_74) && _loc2_.data.var_74 != "")
         {
            _loc2_.api.method_28(_loc2_.data.var_74,"FliplineLogo","LogoLinks");
         }
      }
      
      public function method_72(param1:MouseEvent) : void
      {
         var _loc2_:class_18 = this;
         false;
         false;
         true;
         true;
         if(Boolean(_loc2_.data.var_70) && _loc2_.data.var_70 != "")
         {
            _loc2_.api.method_28(_loc2_.data.var_70,"SponsorLogo","LogoLinks");
         }
      }
      
      public function method_87(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:class_18 = this;
         true;
         true;
         §§push(Boolean(_loc2_.data.var_73));
         if(Boolean(_loc2_.data.var_73))
         {
            true;
            true;
            §§pop();
            false;
            false;
            false;
            false;
            §§push(_loc2_.data.var_73 != "");
         }
         if(§§pop())
         {
            _loc2_.api.method_28(_loc2_.data.var_73,"LicenseLogo","LogoLinks");
         }
      }
      
      public function method_76(param1:MouseEvent) : void
      {
         var _loc2_:class_18 = this;
         true;
         true;
         if(Boolean(_loc2_.data.var_101) && _loc2_.data.var_101 != "")
         {
            false;
            false;
            _loc2_.api.method_28(_loc2_.data.var_101,"GetThisGame","LogoLinks");
         }
      }
      
      public function method_74(param1:MouseEvent) : void
      {
         var _loc2_:class_18 = this;
         false;
         false;
         true;
         true;
         _loc2_.api.method_27("ClickMute","Screens",true);
         _loc2_.api.method_108();
         false;
         false;
         _loc2_.var_29.visible = false;
         _loc2_.var_48.visible = true;
      }
      
      public function method_80(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:class_18 = this;
         true;
         true;
         _loc2_.api.method_27("ClickUnmute","Screens",true);
         _loc2_.api.method_136();
         false;
         false;
         _loc2_.var_29.visible = true;
         false;
         false;
         _loc2_.var_48.visible = false;
      }
      
      public function method_92(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc3_:String = null;
         var _loc2_:class_18 = this;
         true;
         true;
         false;
         false;
         §§push(_loc2_.data.var_23);
         if(_loc2_.data.var_23)
         {
            false;
            false;
            §§pop();
            false;
            false;
            false;
            false;
            false;
            false;
            false;
            false;
            false;
            false;
            §§push(_loc2_.data.var_23.var_100);
         }
         if(§§pop())
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(_loc2_.data.var_23.var_100 != "");
         }
         if(§§pop())
         {
            _loc3_ = "PromoFacebook";
            if(_loc2_.data.var_23.var_80)
            {
               true;
               true;
               _loc3_ = "PromoFacebookLicense";
            }
            _loc2_.api.method_28(_loc2_.data.var_23.var_100,_loc3_,"PromoLinks");
         }
      }
      
      public function method_86(param1:MouseEvent) : void
      {
         var _loc3_:String = null;
         var _loc2_:class_18 = this;
         false;
         false;
         false;
         false;
         false;
         false;
         false;
         false;
         if(_loc2_.data.var_23 && _loc2_.data.var_23.var_98 && _loc2_.data.var_23.var_98 != "")
         {
            _loc3_ = "PromoTwitter";
            if(_loc2_.data.var_23.var_80)
            {
               _loc3_ = "PromoTwitterLicense";
            }
            _loc2_.api.method_28(_loc2_.data.var_23.var_98,_loc3_,"PromoLinks");
         }
      }
      
      public function method_79(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:class_18 = this;
         var _loc3_:Number = -1;
         var _loc4_:Array;
         if((_loc4_ = String(param1.currentTarget.name).split("gamepanel")).length > 1)
         {
            true;
            true;
            _loc3_ = Number(_loc4_[1]);
         }
         if(_loc3_ > -1)
         {
            false;
            false;
            true;
            true;
            if(Boolean(_loc2_.data.var_23) && _loc2_.data.var_23.var_90.length >= _loc3_)
            {
               true;
               true;
               _loc5_ = String(_loc2_.data.var_23.var_90[_loc3_ - 1]);
               _loc6_ = "PromoGameLink";
               true;
               true;
               if(_loc2_.data.var_23.var_80)
               {
                  true;
                  true;
                  _loc6_ = "PromoGameLinkLicense";
               }
               true;
               true;
               true;
               true;
               §§push(_loc5_ != null);
               if(_loc5_ != null)
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  §§push(_loc5_ != "");
               }
               if(§§pop())
               {
                  _loc2_.api.method_28(_loc5_,_loc6_,"PromoLinks");
               }
            }
         }
      }
      
      public function destroy() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:class_14 = null;
         var _loc1_:class_18 = this;
         true;
         true;
         if(_loc1_.var_95)
         {
            false;
            false;
            _loc1_.var_95.destroy();
            _loc1_.var_95 = null;
         }
         if(_loc1_.var_40)
         {
            try
            {
               _loc1_.var_40.facebook_btn.removeEventListener(MouseEvent.CLICK,_loc1_.method_92);
               _loc1_.var_40.twitter_btn.removeEventListener(MouseEvent.CLICK,_loc1_.method_86);
               false;
               false;
            }
            catch(err:Error)
            {
            }
            try
            {
               _loc3_ = 0;
               while(true)
               {
                  false;
                  false;
                  if(_loc3_ >= _loc1_.var_40.inside.numChildren)
                  {
                     break;
                  }
                  _loc1_.var_40.inside["gamepanel" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,_loc1_.method_79);
                  _loc3_++;
               }
            }
            catch(err:Error)
            {
            }
         }
         _loc2_ = 0;
         while(_loc2_ < _loc1_.var_32.numChildren)
         {
            (_loc4_ = _loc1_.var_32.getChildAt(_loc2_) as class_14).destroy();
            _loc4_ = null;
            false;
            false;
            _loc2_++;
         }
         false;
         false;
         if(_loc1_.var_49)
         {
            _loc1_.var_49.destroy();
            _loc1_.var_49 = null;
         }
         if(_loc1_.var_61)
         {
            _loc1_.var_61.destroy();
            _loc1_.var_61 = null;
         }
         if(Boolean(_loc1_.var_24) && _loc1_.var_24.hasEventListener(MouseEvent.CLICK))
         {
            _loc1_.var_24.removeEventListener(MouseEvent.CLICK,_loc1_.method_70);
         }
         true;
         true;
         true;
         true;
         §§push(Boolean(_loc1_.var_25));
         if(Boolean(_loc1_.var_25))
         {
            false;
            false;
            §§pop();
            §§push(_loc1_.var_25.hasEventListener(MouseEvent.CLICK));
         }
         if(§§pop())
         {
            _loc1_.var_25.removeEventListener(MouseEvent.CLICK,_loc1_.method_72);
            false;
            false;
         }
         if(Boolean(_loc1_.var_35) && _loc1_.var_35.hasEventListener(MouseEvent.CLICK))
         {
            _loc1_.var_35.removeEventListener(MouseEvent.CLICK,_loc1_.method_87);
         }
         if(Boolean(_loc1_.var_29) && _loc1_.var_29.hasEventListener(MouseEvent.CLICK))
         {
            true;
            true;
            _loc1_.var_29.removeEventListener(MouseEvent.CLICK,_loc1_.method_74);
         }
         true;
         true;
         if(Boolean(_loc1_.var_48) && _loc1_.var_48.hasEventListener(MouseEvent.CLICK))
         {
            _loc1_.var_48.removeEventListener(MouseEvent.CLICK,_loc1_.method_80);
            true;
            true;
         }
         true;
         true;
         if(Boolean(_loc1_.var_43) && _loc1_.var_43.hasEventListener(MouseEvent.CLICK))
         {
            _loc1_.var_43.removeEventListener(MouseEvent.CLICK,_loc1_.method_76);
         }
         _loc1_.api.container.removeChild(_loc1_.clip);
      }
      
      public function getLabel() : String
      {
         var _loc1_:class_18 = this;
         return _loc1_.data.label;
      }
      
      public function disableButtons(param1:Array = null, param2:Boolean = true, param3:Boolean = true) : void
      {
         false;
         true;
         var _loc6_:class_14 = null;
         true;
         true;
         false;
         false;
         var _loc4_:class_18;
         if(Boolean((_loc4_ = this).var_49) && param2)
         {
            false;
            false;
            _loc4_.var_49.method_64();
         }
         true;
         true;
         false;
         false;
         §§push(Boolean(_loc4_.var_61));
         if(Boolean(_loc4_.var_61))
         {
            false;
            false;
            §§pop();
            false;
            false;
            §§push(param3);
         }
         if(§§pop())
         {
            false;
            false;
            _loc4_.var_61.method_64();
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.var_32.numChildren)
         {
            _loc6_ = _loc4_.var_32.getChildAt(_loc5_) as class_14;
            false;
            false;
            §§push(param1 == null);
            if(!(param1 == null))
            {
               true;
               true;
               §§pop();
               false;
               false;
               §§push(param1.indexOf(_loc6_.getLabel()) > -1);
            }
            if(§§pop())
            {
               false;
               false;
               _loc6_.method_64();
            }
            _loc5_++;
         }
      }
      
      public function enableButtons(param1:Array = null) : void
      {
         false;
         true;
         var _loc4_:class_14 = null;
         var _loc2_:class_18 = this;
         false;
         false;
         if(_loc2_.var_49)
         {
            true;
            true;
            _loc2_.var_49.method_68();
            true;
            true;
         }
         false;
         false;
         if(_loc2_.var_61)
         {
            _loc2_.var_61.method_68();
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.var_32.numChildren)
         {
            _loc4_ = _loc2_.var_32.getChildAt(_loc3_) as class_14;
            §§push(param1 == null);
            if(!(param1 == null))
            {
               false;
               false;
               §§pop();
               false;
               false;
               §§push(param1.indexOf(_loc4_.getLabel()) > -1);
            }
            if(§§pop())
            {
               _loc4_.method_68();
            }
            _loc3_++;
         }
      }
      
      public function setTitle(param1:String) : void
      {
         false;
         true;
         var _loc2_:class_18 = this;
         _loc2_.var_37.text = param1;
         _loc2_.var_37.height = _loc2_.var_37.textHeight + 4;
      }
      
      private function method_66() : TextFormat
      {
         this;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.font = class_11.const_1;
         true;
         true;
         _loc2_.color = 11447982;
         _loc2_.size = 30;
         _loc2_.align = TextFormatAlign.CENTER;
         _loc2_.kerning = true;
         true;
         true;
         _loc2_.letterSpacing = -0.5;
         return _loc2_;
      }
      
      private function method_93() : TextFormat
      {
         false;
         true;
         this;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.font = class_11.const_6;
         true;
         true;
         _loc2_.color = class_11.const_10;
         _loc2_.size = class_11.const_8;
         _loc2_.bold = class_11.const_12;
         _loc2_.align = TextFormatAlign.CENTER;
         _loc2_.kerning = true;
         _loc2_.letterSpacing = 0;
         return _loc2_;
      }
   }
}
