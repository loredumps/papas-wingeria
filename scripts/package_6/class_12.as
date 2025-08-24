package package_6
{
   import package_5.class_11;
   
   public class class_12
   {
       
      
      private var api:class_11;
      
      public var label:String;
      
      public var var_95:String;
      
      public var var_146:Boolean;
      
      public var var_173:String;
      
      public var var_153:Boolean;
      
      public var var_175:String;
      
      public var var_159:Boolean = false;
      
      public var var_148:String = "small";
      
      public var var_172:String = "";
      
      public var var_74:String = "";
      
      public var var_152:Boolean = false;
      
      public var var_154:Boolean = false;
      
      public var var_141:String = "small";
      
      public var var_164:String = "";
      
      public var var_70:String = "";
      
      public var var_140:Boolean = false;
      
      public var var_143:Boolean = false;
      
      public var var_161:String = "small";
      
      public var var_166:String = "";
      
      public var var_73:String = "";
      
      public var var_157:Boolean = false;
      
      public var var_101:String = "";
      
      public var var_168:Boolean = false;
      
      public var var_150:String = "";
      
      public var var_109:Boolean = false;
      
      public var var_130:Boolean = false;
      
      public var var_50:Boolean = false;
      
      public var var_137:Boolean = false;
      
      public var var_54:Array;
      
      public var var_23:class_20 = null;
      
      public function class_12(param1:class_11, param2:String, param3:String, param4:Boolean = false, param5:String = "", param6:Boolean = true, param7:String = "top left", param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         false;
         true;
         false;
         false;
         this.var_54 = [];
         super();
         true;
         true;
         this.api = param1;
         this.label = param2;
         this.var_95 = param3;
         false;
         false;
         this.var_146 = param4;
         this.var_173 = param5;
         this.var_153 = param6;
         this.var_175 = param7;
         this.var_109 = param8;
         this.var_130 = param9;
         this.var_50 = param10;
         this.var_137 = param11;
      }
      
      public function method_49(param1:Boolean = true, param2:String = "bottom left", param3:String = "http://www.flipline.com", param4:Boolean = false, param5:String = "small") : void
      {
         false;
         true;
         this.var_159 = param1;
         true;
         true;
         this.var_172 = param2;
         false;
         false;
         this.var_74 = param3;
         this.var_148 = param5;
         false;
         false;
         this.var_152 = param4;
      }
      
      public function method_53(param1:Boolean, param2:String, param3:String, param4:Boolean, param5:String) : void
      {
         false;
         true;
         this.var_154 = param1;
         false;
         false;
         this.var_164 = param2;
         false;
         false;
         this.var_70 = param3;
         true;
         true;
         this.var_140 = param4;
         this.var_141 = param5;
      }
      
      public function method_159(param1:Boolean, param2:String, param3:String, param4:String) : void
      {
         true;
         true;
         this.var_143 = param1;
         this.var_166 = param2;
         this.var_73 = param3;
         true;
         true;
         this.var_161 = param4;
      }
      
      public function method_103(param1:Boolean, param2:String) : void
      {
         false;
         true;
         false;
         false;
         this.var_157 = param1;
         true;
         true;
         this.var_101 = param2;
      }
      
      public function method_102(param1:Boolean, param2:String) : void
      {
         true;
         true;
         this.var_168 = param1;
         false;
         false;
         this.var_150 = param2;
      }
      
      public function method_119(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:String, param6:String, param7:String, param8:*, param9:Boolean, param10:Boolean) : void
      {
         var _loc11_:class_19 = new class_19(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,this.api.var_33);
         this.var_54.push(_loc11_);
      }
      
      public function method_42(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:Number = -1, param6:Boolean = false) : void
      {
         false;
         true;
         var _loc7_:class_19 = new class_19(param1,"large",false,param3,"button",param2,"",null,param4,false,this.api.var_33,param5,param6);
         this.var_54.push(_loc7_);
      }
      
      public function method_45(param1:String, param2:String, param3:Boolean = false) : void
      {
         false;
         true;
         var _loc4_:class_19 = new class_19(param1,"small",param3,false,"button",param2,"",null,false,true,this.api.var_33);
         true;
         true;
         this.var_54.push(_loc4_);
      }
      
      public function method_35(param1:String, param2:String, param3:Boolean = false, param4:Number = -1) : void
      {
         false;
         true;
         var _loc5_:class_19 = new class_19(param1,"small",false,false,"button",param2,"",null,param3,false,this.api.var_33,param4);
         this.var_54.push(_loc5_);
      }
      
      public function method_158(param1:String, param2:String, param3:Boolean = false, param4:Number = -1) : void
      {
         var _loc5_:class_19 = new class_19(param1,"small",false,false,"link","",param2,null,param3,false,this.api.var_33,param4);
         this.var_54.push(_loc5_);
      }
      
      public function method_163(param1:String, param2:*, param3:Boolean = false, param4:Number = -1) : void
      {
         false;
         true;
         var _loc5_:class_19 = new class_19(param1,"small",false,false,"custom","","",param2,param3,false,this.api.var_33,param4);
         false;
         false;
         this.var_54.push(_loc5_);
      }
      
      public function method_107(param1:Boolean = false) : void
      {
         false;
         true;
         this.var_23 = new class_20(this.api,param1);
      }
      
      public function method_112(param1:Boolean = true, param2:String = "", param3:Boolean = true, param4:String = "") : void
      {
         true;
         true;
         true;
         true;
         if(this.var_23)
         {
            true;
            true;
            this.var_23.method_97(param1,param2,param3,param4);
         }
      }
      
      public function method_44(param1:String = "") : void
      {
         false;
         true;
         true;
         true;
         true;
         true;
         if(this.var_23)
         {
            false;
            false;
            this.var_23.method_132(param1);
         }
      }
   }
}
