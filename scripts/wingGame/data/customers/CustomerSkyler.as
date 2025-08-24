package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerSkyler extends CustomerDataFile
   {
       
      
      public function CustomerSkyler()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Skyler";
         this.customerClipName = "Skyler";
         this.thumbColor = "bluepurple";
         this.customerFirstGame = "Papa\'s Wingeria";
         false;
         false;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,3,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,6,FoodData.DISTRO_RIGHT);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,3,FoodData.DISTRO_LEFT);
      }
   }
}
