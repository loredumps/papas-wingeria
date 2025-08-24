package package_2
{
   import flash.display.LoaderInfo;
   
   public class class_3
   {
      
      private static var asa:Array = [];
      
      private static var baa:Array = [];
      
      private static var uba:Array = [];
      
      private static var ssa:Array = [];
      
      private static var lsa:Array = [];
      
      private static var ksa:Array = [];
      
      private static var ls:String = "235009801010104009700540043004300430072012000430067009301050097011100430072010100950097010601110097003300460044007900930106009600940107011600432350098010101040097005400430043004300720054004300670093010500970111004300720101009500970106011100970033004600440079009301060096009401070116004323300980101010400970054004300430043007200540043006700930105009701110043007201010095009701060111009700280079009301060096009401070116004322900980101010400970054004300430043006401200043007201010095009701060111009700330046004400790093010600960094010701160043229009801010104009700540043004300430064005400430072010100950097010601110097003300460044007900930106009600940107011600432270098010101040097005400430043004300640054004300720101009500970106011100970028007900930106009600940107011600432290098010101040097005400430043004300700120004300720101009500970106011100970033004600440079009301060096009401070116004322900980101010400970054004300430043007000540043007201010095009701060111009700330046004400790093010600960094010701160043227009801010104009700540043004300430070005400430072010100950097010601110097002800790093010600960094010701160043";
      
      private static var ss:String = "235009801010104009700540043004300430072012000430067009301050097011100430079010801070106011101070110003300460044007900930106009600940107011600432350098010101040097005400430043004300720054004300670093010500970111004300790108010701060111010701100033004600440079009301060096009401070116004323300980101010400970054004300430043007200540043006700930105009701110043007901080107010601110107011000280079009301060096009401070116004322900980101010400970054004300430043006401200043007901080107010601110107011000330046004400790093010600960094010701160043229009801010104009700540043004300430064005400430079010801070106011101070110003300460044007900930106009600940107011600432270098010101040097005400430043004300640054004300790108010701060111010701100028007900930106009600940107011600432290098010101040097005400430043004300700120004300790108010701060111010701100033004600440079009301060096009401070116004322900980101010400970054004300430043007000540043007901080107010601110107011000330046004400790093010600960094010701160043227009801010104009700540043004300430070005400430079010801070106011101070110002800790093010600960094010701160043";
      
      private static var ks:String = "21401030107010600990110009700990093011200970042009501070105";
      
      private static var lsba:Array = [];
      
      private static var ssba:Array = [];
      
      private static var dsba:Array = [];
      
      private static var xad:Boolean = false;
      
      private static var wls:Boolean = false;
      
      private static var loaderInfo:LoaderInfo = null;
      
      {
         false;
         false;
         false;
         false;
         false;
         false;
         true;
         true;
      }
      
      public function class_3()
      {
         true;
         true;
         super();
      }
      
      public static function method_10(param1:LoaderInfo, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:Boolean = false, param9:Boolean = false) : void
      {
         false;
         true;
         class_3.loaderInfo = param1;
         class_3.asa = class_3.gv(param2);
         class_3.baa = class_3.gv(param3);
         class_3.uba = class_3.gv(param4);
         class_3.ssa = class_3.gv(param5);
         class_3.lsa = class_3.gv(param6);
         false;
         false;
         class_3.ksa = class_3.gv(class_3.ks);
         true;
         true;
         class_3.dsba = class_3.gv(param7);
         class_3.lsba = class_3.gv(class_3.ls);
         true;
         true;
         true;
         true;
         class_3.ssba = class_3.gv(class_3.ss);
         false;
         false;
         class_3.xad = param8;
         class_3.wls = param9;
      }
      
      public static function method_5() : LoaderInfo
      {
         return class_3.loaderInfo;
      }
      
      private static function csm(param1:String) : Boolean
      {
         false;
         true;
         var _loc2_:Boolean = false;
         var _loc3_:String = String(class_3.gd());
         true;
         true;
         false;
         false;
         var _loc4_:int;
         if((_loc4_ = _loc3_.indexOf(param1)) != -1 && _loc4_ == _loc3_.length - param1.length && (_loc4_ == 0 || _loc3_.charAt(_loc4_ - 1) == "."))
         {
            false;
            false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      private static function gd() : String
      {
         false;
         true;
         var _loc1_:String = "???";
         false;
         false;
         if(class_3.loaderInfo == null)
         {
            _loc1_ = "UNKNOWN";
         }
         else
         {
            _loc1_ = String(class_3.loaderInfo.url.split("/")[2]);
         }
         return _loc1_;
      }
      
      private static function gfd() : String
      {
         var _loc1_:String = "???";
         false;
         false;
         if(class_3.loaderInfo == null)
         {
            _loc1_ = "UNKNOWN";
         }
         else
         {
            _loc1_ = String(class_3.loaderInfo.url);
         }
         return _loc1_;
      }
      
      private static function il() : Boolean
      {
         false;
         true;
         false;
         false;
         false;
         false;
         false;
         false;
         if(class_3.loaderInfo != null && class_3.loaderInfo.url.split("/")[2] == "")
         {
            false;
            false;
            true;
            true;
            return true;
         }
         return false;
      }
      
      public static function method_21() : Boolean
      {
         false;
         true;
         var _loc3_:String = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.asa.length)
         {
            _loc3_ = String(class_3.asa[_loc2_]);
            true;
            true;
            if(class_3.csm(_loc3_))
            {
               _loc1_ = true;
               break;
            }
            true;
            true;
            if(Boolean(class_3.il()) && (Boolean(class_3.ids()) || Boolean(class_3.ils()) || Boolean(class_3.iss())))
            {
               _loc1_ = true;
               break;
            }
            _loc2_++;
            false;
            false;
         }
         if(class_3.wls)
         {
            _loc1_ = true;
         }
         return _loc1_;
      }
      
      private static function ids() : Boolean
      {
         false;
         true;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.dsba.length)
         {
            if(class_3.gfd().indexOf(class_3.dsba[_loc2_]) == 0)
            {
               false;
               false;
               _loc1_ = true;
               break;
            }
            _loc2_++;
            false;
            false;
         }
         return _loc1_;
      }
      
      private static function ils() : Boolean
      {
         false;
         true;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.lsba.length)
         {
            if(class_3.gfd().indexOf(class_3.lsba[_loc2_]) == 0)
            {
               false;
               false;
               true;
               true;
               _loc1_ = true;
               false;
               false;
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      private static function iss() : Boolean
      {
         false;
         true;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.ssba.length)
         {
            if(class_3.gfd().indexOf(class_3.ssba[_loc2_]) == 0)
            {
               false;
               false;
               _loc1_ = true;
               false;
               false;
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function method_8() : Boolean
      {
         false;
         true;
         var _loc3_:String = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.baa.length)
         {
            _loc3_ = String(class_3.baa[_loc2_]);
            if(class_3.csm(_loc3_))
            {
               true;
               true;
               _loc1_ = true;
               break;
            }
            true;
            true;
            if(Boolean(class_3.il()) && (Boolean(class_3.ils()) || Boolean(class_3.iss())))
            {
               true;
               true;
               _loc1_ = true;
               break;
            }
            true;
            true;
            if(Boolean(class_3.il()) && Boolean(class_3.ids()) && class_3.xad == true)
            {
               _loc1_ = true;
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function method_14() : Boolean
      {
         var _loc3_:String = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.uba.length)
         {
            true;
            true;
            _loc3_ = String(class_3.uba[_loc2_]);
            true;
            true;
            if(class_3.csm(_loc3_))
            {
               false;
               false;
               _loc1_ = true;
               false;
               false;
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function method_9() : Boolean
      {
         false;
         true;
         var _loc3_:String = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.ssa.length)
         {
            true;
            true;
            _loc3_ = String(class_3.ssa[_loc2_]);
            false;
            false;
            if(class_3.csm(_loc3_))
            {
               _loc1_ = true;
               break;
            }
            false;
            false;
            §§push(Boolean(class_3.il()));
            if(Boolean(class_3.il()))
            {
               §§pop();
               false;
               false;
               §§push(Boolean(class_3.ids()));
               if(!Boolean(class_3.ids()))
               {
                  false;
                  false;
                  §§pop();
                  true;
                  true;
                  §§push(Boolean(class_3.iss()));
               }
            }
            if(§§pop())
            {
               false;
               false;
               _loc1_ = true;
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function method_2() : Boolean
      {
         var _loc3_:String = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.lsa.length)
         {
            _loc3_ = String(class_3.lsa[_loc2_]);
            if(class_3.csm(_loc3_))
            {
               false;
               false;
               _loc1_ = true;
               break;
            }
            if(Boolean(class_3.il()) && Boolean(class_3.ils()))
            {
               false;
               false;
               _loc1_ = true;
               break;
            }
            _loc2_++;
            false;
            false;
         }
         return _loc1_;
      }
      
      public static function method_16() : Boolean
      {
         false;
         true;
         var _loc3_:String = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < class_3.ksa.length)
         {
            false;
            false;
            _loc3_ = String(class_3.ksa[_loc2_]);
            true;
            true;
            if(class_3.csm(_loc3_))
            {
               _loc1_ = true;
               break;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function method_1(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:Array = class_3.gv(param1);
         try
         {
            _loc2_ = String(_loc3_[0]);
         }
         catch(err:Error)
         {
         }
         return _loc2_;
      }
      
      public static function gv(param1:String) : Array
      {
         var _loc2_:Array = [];
         4;
         var _loc4_:String = "";
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:String = "";
         var _loc8_:Number = 0;
         var _loc9_:String = "";
         var _loc10_:int = 0;
         while(_loc10_ < param1.length)
         {
            if(_loc4_.length == 0 && _loc8_ == 0)
            {
               true;
               true;
               if(_loc5_ == 0)
               {
                  _loc5_ = Number(param1.charAt(_loc10_));
                  _loc6_ = _loc10_;
               }
               else if(_loc8_ == 0)
               {
                  if(_loc10_ <= _loc5_ + _loc6_)
                  {
                     true;
                     true;
                     false;
                     false;
                     _loc7_ += param1.charAt(_loc10_);
                     false;
                     false;
                     false;
                     false;
                     if(_loc10_ == _loc5_ + _loc6_)
                     {
                        _loc8_ = Number(_loc7_);
                     }
                  }
               }
            }
            else
            {
               true;
               true;
               true;
               true;
               true;
               true;
               if(_loc10_ <= _loc6_ + _loc5_ + _loc8_ * 4)
               {
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  if((_loc9_ += param1.charAt(_loc10_)).length == 4)
                  {
                     _loc4_ += String.fromCharCode(Number(_loc9_) + 4);
                     _loc9_ = "";
                  }
                  if(_loc10_ == _loc6_ + _loc5_ + _loc8_ * 4)
                  {
                     _loc2_.push(_loc4_);
                     _loc4_ = "";
                     _loc5_ = 0;
                     true;
                     true;
                     _loc6_ = 0;
                     true;
                     true;
                     true;
                     true;
                     _loc7_ = "";
                     true;
                     true;
                     _loc8_ = 0;
                     _loc9_ = "";
                  }
               }
            }
            _loc10_++;
         }
         return _loc2_;
      }
   }
}
