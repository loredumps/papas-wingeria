package wingGame.data
{
   public class CustomerOrder
   {
       
      
      public var wings:Array;
      
      public var sides:Array;
      
      public var dips:Array;
      
      public function CustomerOrder()
      {
         false;
         true;
         true;
         true;
         this.wings = [];
         false;
         false;
         this.sides = [];
         this.dips = [];
         super();
      }
      
      public function getOrderAsArray() : Array
      {
         var _loc3_:Number = NaN;
         var _loc1_:CustomerOrder = this;
         var _loc2_:Array = [];
         _loc3_ = 0;
         while(true)
         {
            false;
            false;
            true;
            true;
            if(_loc3_ >= _loc1_.wings.length)
            {
               break;
            }
            _loc2_.push([_loc1_.wings[_loc3_][0]]);
            true;
            true;
            _loc2_.push([_loc1_.wings[_loc3_][3]]);
            true;
            true;
            _loc3_++;
         }
         _loc3_ = 0;
         true;
         true;
         while(_loc3_ < _loc1_.sides.length)
         {
            _loc2_.push([_loc1_.sides[_loc3_][0]]);
            false;
            false;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc1_.dips.length)
         {
            _loc2_.push([_loc1_.dips[_loc3_][0]]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function addWings(param1:String, param2:String, param3:Number, param4:String = "distroall") : void
      {
         this;
         this.wings.push([param1,param3,param4,param2]);
      }
      
      public function addSide(param1:String, param2:Number, param3:String = "distroall") : void
      {
         this;
         this.sides.push([param1,param2,param3]);
      }
      
      public function addDip(param1:String) : void
      {
         var _loc2_:CustomerOrder = this;
         _loc2_.dips.push([param1]);
      }
      
      public function getAmountForDistro(param1:String, param2:Boolean = false) : Number
      {
         false;
         true;
         var _loc5_:int = 0;
         var _loc3_:CustomerOrder = this;
         var _loc4_:Number = 0;
         true;
         true;
         _loc5_ = 0;
         while(true)
         {
            true;
            true;
            true;
            true;
            if(_loc5_ >= _loc3_.wings.length)
            {
               break;
            }
            if(_loc3_.wings[_loc5_][2] == param1)
            {
               true;
               true;
               false;
               false;
               _loc4_ += Number(_loc3_.wings[_loc5_][1]);
            }
            else
            {
               true;
               true;
               false;
               false;
               if(param2 && _loc3_.wings[_loc5_][2] == FoodData.DISTRO_ALL)
               {
                  true;
                  true;
                  _loc4_ += Number(_loc3_.wings[_loc5_][1]) / 2;
               }
            }
            _loc5_++;
         }
         true;
         true;
         _loc5_ = 0;
         true;
         true;
         while(_loc5_ < _loc3_.sides.length)
         {
            false;
            false;
            if(_loc3_.sides[_loc5_][2] == param1)
            {
               _loc4_ += Number(_loc3_.sides[_loc5_][1]);
            }
            else if(param2 && _loc3_.sides[_loc5_][2] == FoodData.DISTRO_ALL)
            {
               false;
               false;
               true;
               true;
               _loc4_ += Number(_loc3_.sides[_loc5_][1]) / 2;
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public function getTypeAmountForDistro(param1:String) : Number
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc2_:CustomerOrder = this;
         var _loc3_:Number = 0;
         false;
         false;
         _loc4_ = 0;
         while(true)
         {
            false;
            false;
            if(_loc4_ >= _loc2_.wings.length)
            {
               break;
            }
            true;
            true;
            true;
            true;
            if(_loc2_.wings[_loc4_][2] == param1)
            {
               true;
               true;
               false;
               false;
               _loc3_ += 1;
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_.sides.length)
         {
            if(_loc2_.sides[_loc4_][2] == param1)
            {
               _loc3_ += 1;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function clone() : CustomerOrder
      {
         false;
         true;
         var _loc3_:int = 0;
         var _loc1_:CustomerOrder = this;
         var _loc2_:CustomerOrder = new CustomerOrder();
         _loc3_ = 0;
         while(true)
         {
            true;
            true;
            false;
            false;
            if(_loc3_ >= _loc1_.wings.length)
            {
               break;
            }
            _loc2_.addWings(_loc1_.wings[_loc3_][0],_loc1_.wings[_loc3_][3],_loc1_.wings[_loc3_][1],_loc1_.wings[_loc3_][2]);
            _loc3_++;
         }
         true;
         true;
         _loc3_ = 0;
         true;
         true;
         while(true)
         {
            true;
            true;
            if(_loc3_ >= _loc1_.sides.length)
            {
               break;
            }
            _loc2_.addSide(_loc1_.sides[_loc3_][0],_loc1_.sides[_loc3_][1],_loc1_.sides[_loc3_][2]);
            _loc3_++;
            false;
            false;
         }
         false;
         false;
         false;
         false;
         _loc3_ = 0;
         while(_loc3_ < _loc1_.dips.length)
         {
            _loc2_.addDip(_loc1_.dips[_loc3_][0]);
            _loc3_++;
         }
         return _loc2_;
      }
   }
}
