package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerDoan extends CustomerDataFile
   {
       
      
      public function CustomerDoan()
      {
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Doan";
         this.customerClipName = "Doan";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "midblue";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_MEDIUM,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_CALYPSO,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,8,FoodData.DISTRO_ALL);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
