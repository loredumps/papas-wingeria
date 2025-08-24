package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerRoy extends CustomerDataFile
   {
       
      
      public function CustomerRoy()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Roy";
         this.customerClipName = "Roy";
         false;
         false;
         this.thumbColor = "lightred";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WASABI,3,FoodData.DISTRO_ALL);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_TERIYAKI,6,FoodData.DISTRO_ALL);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,3,FoodData.DISTRO_ALL);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         false;
         false;
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
