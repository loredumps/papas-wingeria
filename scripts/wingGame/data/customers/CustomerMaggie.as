package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMaggie extends CustomerDataFile
   {
       
      
      public function CustomerMaggie()
      {
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Maggie";
         false;
         false;
         this.customerClipName = "Maggie";
         this.thumbColor = "yelloworange";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_TERIYAKI,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_ALL);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
