package package_5
{
   import Playtomic.*;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import package_2.*;
   import package_6.class_12;
   import package_7.*;
   
   public class class_11 extends EventDispatcher
   {
      
      public static const const_1:String = "Arial Black";
      
      public static const const_2:uint = 7224074;
      
      public static const const_7:uint = 3355443;
      
      public static const const_11:uint = 9904417;
      
      public static const const_5:Number = 12;
      
      public static const const_4:Number = 24;
      
      public static const const_9:Boolean = false;
      
      public static const const_6:String = "Arial";
      
      public static const const_10:uint = 11513774;
      
      public static const const_8:Number = 10;
      
      public static const const_12:Boolean = false;
      
      {
         false;
         false;
         false;
         false;
         false;
         false;
      }
      
      public var var_138:*;
      
      public var container:DisplayObjectContainer;
      
      public var util:class_15;
      
      public var var_39:Number = 1;
      
      public var var_31:Number = 1;
      
      public var var_72:Array;
      
      public var var_19:Array;
      
      public var var_91:Boolean = false;
      
      private var var_69:Scoreboard;
      
      public var var_33:Boolean = false;
      
      public var var_230:Number = -1;
      
      public var var_216:String = "";
      
      public function class_11(param1:*, param2:DisplayObjectContainer, param3:Number, param4:Number)
      {
         false;
         true;
         this.var_72 = [];
         this.var_19 = [];
         super();
         this.var_138 = param1;
         this.container = param2;
         this.var_39 = param3;
         this.var_31 = param4;
         this.method_65();
      }
      
      public function method_65() : void
      {
         this;
         this.util = new class_15();
         class_5.info("[Flipline API]: API Initialized.");
      }
      
      public function method_58(param1:*) : void
      {
         false;
         true;
         var _loc2_:class_11 = this;
         false;
         false;
         param1.addEventListener("soundIsMuted",_loc2_.method_149);
         param1.addEventListener("soundIsNotMuted",_loc2_.method_151);
      }
      
      public function method_113(param1:Number, param2:String, param3:String = null) : void
      {
         var _loc4_:class_11;
         (_loc4_ = this).var_33 = true;
         true;
         true;
         _loc4_.var_230 = param1;
         _loc4_.var_216 = param2;
         if(param3 != null)
         {
            true;
            true;
            Log.View(param1,param2,param3,_loc4_.method_5());
         }
         else
         {
            class_5.error("OLD PLAYTOMIC");
         }
      }
      
      public function method_39(param1:String, param2:Number, param3:String = "counter", param4:Number = -1) : void
      {
         this;
         if(this.var_33)
         {
            true;
            true;
            if(param3 == "counter")
            {
               Log.LevelCounterMetric(param1,param2);
            }
            else
            {
               false;
               false;
               if(param3 == "average")
               {
                  true;
                  true;
                  Log.LevelAverageMetric(param1,param2,param4);
               }
               else if(param3 == "ranged")
               {
                  Log.LevelRangedMetric(param1,param2,param4);
               }
            }
         }
      }
      
      public function method_27(param1:String, param2:String = null, param3:Boolean = false) : void
      {
         false;
         true;
         this;
         if(this.var_33)
         {
            false;
            false;
            Log.CustomMetric(param1,param2,param3);
         }
      }
      
      public function method_171(param1:String, param2:String, param3:Number, param4:Number) : void
      {
         this;
         if(this.var_33)
         {
            Log.Heatmap(param1,param2,param3,param4);
         }
      }
      
      public function method_106() : void
      {
         false;
         true;
         var _loc1_:class_11 = this;
         false;
         false;
         if(_loc1_.var_33)
         {
            true;
            true;
            Log.Play();
         }
      }
      
      public function method_143() : void
      {
         false;
         true;
         var _loc1_:class_11 = this;
         if(_loc1_.var_33)
         {
            Log.ForceSend();
         }
      }
      
      public function method_28(param1:String, param2:String, param3:String = "Links") : void
      {
         false;
         true;
         this;
         if(this.var_33)
         {
            Link.Open(param1,param2,param3);
            false;
            false;
         }
         else
         {
            navigateToURL(new URLRequest(param1),"_blank");
         }
      }
      
      public function method_37(param1:String, param2:String, param3:Boolean = false, param4:String = "", param5:Boolean = true, param6:String = "top right", param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false) : class_12
      {
         var _loc11_:class_11 = this;
         var _loc12_:class_12 = new class_12(_loc11_,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         false;
         false;
         _loc11_.var_72.push(_loc12_);
         return _loc12_;
      }
      
      public function method_32(param1:String, param2:Object = null) : void
      {
         var _loc5_:class_12 = null;
         var _loc3_:class_11 = this;
         if(_loc3_.var_72.length > 0)
         {
            false;
            false;
            if((_loc5_ = _loc3_.method_139(param1)) != null)
            {
               false;
               false;
               _loc3_.method_152(_loc5_,param2);
               true;
               true;
            }
            else
            {
               this.method_69("Could not find a Menu Screen for " + param1 + ".");
            }
         }
         else
         {
            this.method_69("No Menu Screens are set up!");
         }
      }
      
      public function method_152(param1:class_12, param2:Object) : void
      {
         false;
         true;
         var _loc3_:class_11 = this;
         var _loc4_:class_18 = new class_18(_loc3_,param1,param2);
         _loc3_.var_19.push(_loc4_);
      }
      
      public function method_139(param1:String) : class_12
      {
         var _loc4_:int = 0;
         var _loc5_:class_12 = null;
         var _loc2_:class_11 = this;
         var _loc3_:class_12 = null;
         if(_loc2_.var_72.length > 0)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_.var_72.length)
            {
               if((_loc5_ = _loc2_.var_72[_loc4_]).label == param1)
               {
                  _loc3_ = _loc5_;
                  break;
               }
               _loc4_++;
            }
         }
         return _loc3_;
      }
      
      public function method_33(param1:String = null, param2:class_12 = null, param3:class_18 = null) : void
      {
         false;
         true;
         var _loc5_:Number = NaN;
         var _loc4_:class_11 = this;
         var _loc6_:Number = -1;
         var _loc7_:class_18 = null;
         if(param1 != null)
         {
            false;
            false;
            _loc5_ = 0;
            while(true)
            {
               false;
               false;
               if(_loc5_ >= _loc4_.var_19.length)
               {
                  false;
                  false;
               }
               else
               {
                  true;
                  true;
                  false;
                  false;
                  if(_loc4_.var_19[_loc5_].getLabel() != param1)
                  {
                     continue;
                  }
                  _loc7_ = _loc4_.var_19[_loc5_];
                  true;
                  true;
                  false;
                  false;
                  _loc6_ = _loc5_;
               }
            }
         }
         else if(param2 != null)
         {
            _loc5_ = 0;
            while(true)
            {
               if(_loc5_ < _loc4_.var_19.length)
               {
                  if(_loc4_.var_19[_loc5_].getLabel() != param2.label)
                  {
                     continue;
                  }
                  false;
                  false;
                  _loc7_ = _loc4_.var_19[_loc5_];
                  false;
                  false;
                  _loc6_ = _loc5_;
               }
            }
         }
         else if(param3 != null)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc4_.var_19.length)
            {
               false;
               false;
               if(_loc4_.var_19[_loc5_].getLabel() == param3.getLabel())
               {
                  _loc7_ = _loc4_.var_19[_loc5_];
                  true;
                  true;
                  _loc6_ = _loc5_;
                  break;
               }
               _loc5_++;
               false;
               false;
            }
         }
         if(_loc7_)
         {
            false;
            false;
            _loc7_.destroy();
            _loc7_ = null;
         }
         if(_loc6_ > -1)
         {
            false;
            false;
            _loc4_.var_19.splice(_loc6_,1);
         }
      }
      
      public function method_156(param1:String) : Boolean
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc2_:class_11 = this;
         var _loc3_:Boolean = false;
         true;
         true;
         if(_loc2_.var_19.length > 0)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_.var_19.length)
            {
               if(_loc2_.var_19[_loc4_].getLabel() == param1)
               {
                  true;
                  true;
                  _loc3_ = true;
                  true;
                  true;
                  break;
               }
               _loc4_++;
               false;
               false;
            }
         }
         return _loc3_;
      }
      
      public function disableButtons(param1:String = "all", param2:Array = null, param3:Boolean = true, param4:Boolean = true) : void
      {
         var _loc6_:int = 0;
         var _loc5_:class_11;
         if((_loc5_ = this).var_19.length > 0)
         {
            false;
            false;
            _loc6_ = 0;
            while(_loc6_ < _loc5_.var_19.length)
            {
               §§push(_loc5_.var_19[_loc6_].getLabel() == param1);
               if(!(_loc5_.var_19[_loc6_].getLabel() == param1))
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  true;
                  true;
                  §§push(param1 == "all");
               }
               if(§§pop())
               {
                  _loc5_.var_19[_loc6_].disableButtons(param2,param3,param4);
                  if(param1 != "all")
                  {
                     break;
                  }
               }
               _loc6_++;
               true;
               true;
            }
         }
      }
      
      public function enableButtons(param1:String = "all", param2:Array = null) : void
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc3_:class_11 = this;
         true;
         true;
         if(_loc3_.var_19.length > 0)
         {
            true;
            true;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.var_19.length)
            {
               true;
               true;
               false;
               false;
               §§push(_loc3_.var_19[_loc4_].getLabel() == param1);
               if(!(_loc3_.var_19[_loc4_].getLabel() == param1))
               {
                  false;
                  false;
                  §§pop();
                  true;
                  true;
                  §§push(param1 == "all");
               }
               if(§§pop())
               {
                  _loc3_.var_19[_loc4_].enableButtons(param2);
                  true;
                  true;
                  if(param1 != "all")
                  {
                     break;
                  }
               }
               _loc4_++;
               false;
               false;
            }
         }
      }
      
      public function method_54(param1:String, param2:String = "all") : void
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc3_:class_11 = this;
         false;
         false;
         if(_loc3_.var_19.length > 0)
         {
            false;
            false;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.var_19.length)
            {
               if(_loc3_.var_19[_loc4_].getLabel() == param2 || param2 == "all")
               {
                  _loc3_.var_19[_loc4_].setTitle(param1);
                  if(param2 != "all")
                  {
                     break;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      public function method_34(param1:String = "all") : void
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc2_:class_11 = this;
         true;
         true;
         if(_loc2_.var_19.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.var_19.length)
            {
               false;
               false;
               false;
               false;
               §§push(_loc2_.var_19[_loc3_].getLabel() == param1);
               if(!(_loc2_.var_19[_loc3_].getLabel() == param1))
               {
                  false;
                  false;
                  §§pop();
                  true;
                  true;
                  false;
                  false;
                  §§push(param1 == "all");
               }
               if(§§pop())
               {
                  _loc2_.var_19[_loc3_].startTransitionOut();
                  true;
                  true;
                  if(param1 != "all")
                  {
                     break;
                  }
               }
               _loc3_++;
               false;
               false;
            }
         }
      }
      
      public function method_69(param1:String) : void
      {
         false;
         true;
         this;
         false;
         false;
         class_5.debug("[Flipline API]: " + param1);
      }
      
      public function method_120(param1:String) : void
      {
         this;
         class_5.info("Broadcast an event: " + param1);
         true;
         true;
         dispatchEvent(new Event(param1,true));
      }
      
      public function method_149(param1:Event) : void
      {
         false;
         true;
         var _loc2_:class_11 = this;
         _loc2_.var_91 = true;
      }
      
      public function method_151(param1:Event) : void
      {
         var _loc2_:class_11 = this;
         true;
         true;
         _loc2_.var_91 = false;
      }
      
      public function method_108() : void
      {
         false;
         true;
         var _loc1_:class_11 = this;
         dispatchEvent(new Event("muteSound",true));
         _loc1_.var_91 = true;
      }
      
      public function method_136() : void
      {
         false;
         true;
         var _loc1_:class_11 = this;
         true;
         true;
         dispatchEvent(new Event("unmuteSound",true));
         _loc1_.var_91 = false;
      }
      
      private function method_5() : LoaderInfo
      {
         var _loc1_:LoaderInfo = this.container.root.loaderInfo;
         if(_loc1_.loader != null)
         {
            _loc1_ = _loc1_.loader.loaderInfo;
         }
         return _loc1_;
      }
      
      public function method_48(param1:String, param2:Function, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:String = "Anonymous", param7:Number = 0, param8:Object = null) : void
      {
         var _loc9_:class_11;
         if((_loc9_ = this).var_69)
         {
            class_5.method_25("Scoreboard Already Existed, Remove.");
            _loc9_.method_51();
            true;
            true;
            if(param3)
            {
               true;
               true;
               _loc9_.var_69 = new Scoreboard(_loc9_,param1,param2,param3,param4,param5,param6,param7,param8);
               false;
               false;
            }
         }
         else
         {
            _loc9_.var_69 = new Scoreboard(_loc9_,param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public function method_51() : void
      {
         var _loc1_:class_11 = this;
         false;
         false;
         false;
         false;
         if(_loc1_.var_69)
         {
            _loc1_.var_69.destroy();
            false;
            false;
            _loc1_.var_69 = null;
         }
      }
      
      public function method_91() : Boolean
      {
         var _loc1_:class_11 = this;
         true;
         true;
         if(_loc1_.var_69)
         {
            false;
            false;
            false;
            false;
            return true;
         }
         return false;
      }
   }
}
