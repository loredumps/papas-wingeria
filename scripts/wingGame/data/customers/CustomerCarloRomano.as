package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCarloRomano extends CustomerDataFile
   {
       
      
      public function CustomerCarloRomano()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Carlo Romano";
         this.customerClipName = "CarloRomano";
         false;
         false;
         this.thumbColor = "deepred";
         true;
         true;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_PARMESAN,4);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4,FoodData.DISTRO_LEFT);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CELERY,2,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,6,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}
