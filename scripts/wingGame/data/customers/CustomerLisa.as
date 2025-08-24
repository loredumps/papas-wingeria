package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerLisa extends CustomerDataFile
   {
       
      
      public function CustomerLisa()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Lisa";
         this.customerClipName = "Lisa";
         true;
         true;
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "lime";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_MEDIUM,4);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_BBQ,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,6,FoodData.DISTRO_LEFT);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
