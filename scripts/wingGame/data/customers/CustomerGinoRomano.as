package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerGinoRomano extends CustomerDataFile
   {
       
      
      public function CustomerGinoRomano()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         false;
         false;
         this.customerName = "Gino Romano";
         this.customerClipName = "GinoRomano";
         false;
         false;
         this.thumbColor = "deepred";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_WASABI,4);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_PARMESAN,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_TERIYAKI,2,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_RIGHT);
      }
   }
}
