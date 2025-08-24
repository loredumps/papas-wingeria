package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerSasha extends CustomerDataFile
   {
       
      
      public function CustomerSasha()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Sasha";
         this.customerClipName = "Sasha";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_MEDIUM,4);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BUFFALO,8);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}
