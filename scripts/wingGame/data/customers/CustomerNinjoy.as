package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerNinjoy extends CustomerDataFile
   {
       
      
      public function CustomerNinjoy()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Ninjoy";
         this.customerClipName = "Ninjoy";
         this.isCloser = true;
         this.customerFirstGame = "Papa\'s Freezeria";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,4);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_CALYPSO,2,FoodData.DISTRO_LEFT);
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_TERIYAKI,2,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,8);
      }
   }
}
