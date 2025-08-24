package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerWendy extends CustomerDataFile
   {
       
      
      public function CustomerWendy()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Wendy";
         this.customerClipName = "Wendy";
         this.customerFirstGame = "Papa\'s Pancakeria";
         this.thumbColor = "purple";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_WASABI,4);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WASABI,4);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4,FoodData.DISTRO_LEFT);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
