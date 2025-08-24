package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerHank extends CustomerDataFile
   {
       
      
      public function CustomerHank()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Hank";
         this.customerClipName = "Hank";
         this.customerFirstGame = "Papa\'s Pancakeria";
         this.thumbColor = "yelloworange";
         true;
         true;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,4,FoodData.DISTRO_ALL);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_ALL);
         this.customerOrder.addSide(FoodData.SIDE_FRY,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
