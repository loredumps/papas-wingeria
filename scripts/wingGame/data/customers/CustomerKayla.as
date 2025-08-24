package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerKayla extends CustomerDataFile
   {
       
      
      public function CustomerKayla()
      {
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Kayla";
         this.customerClipName = "Kayla";
         true;
         true;
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_PARMESAN,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_TERIYAKI,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}
