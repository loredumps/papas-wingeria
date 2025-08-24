package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerEdna extends CustomerDataFile
   {
       
      
      public function CustomerEdna()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Edna";
         this.customerClipName = "Edna";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "fire";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,4);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,6,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}
