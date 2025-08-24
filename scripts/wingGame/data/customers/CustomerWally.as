package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerWally extends CustomerDataFile
   {
       
      
      public function CustomerWally()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Wally";
         this.customerClipName = "Wally";
         this.thumbColor = "brown";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_TERIYAKI,4);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_CALYPSO,4);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,8);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
