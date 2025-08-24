package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerGremmie extends CustomerDataFile
   {
       
      
      public function CustomerGremmie()
      {
         false;
         true;
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Gremmie";
         this.customerClipName = "Gremmie";
         this.customerFirstGame = "Papa\'s Freezeria";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_MEDIUM,6);
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_CALYPSO,3);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,3);
      }
   }
}
