package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerBrunaRomano extends CustomerDataFile
   {
       
      
      public function CustomerBrunaRomano()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Bruna Romano";
         this.customerClipName = "BrunaRomano";
         this.thumbColor = "deepred";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BBQ,8);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
