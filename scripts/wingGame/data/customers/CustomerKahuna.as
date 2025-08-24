package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerKahuna extends CustomerDataFile
   {
       
      
      public function CustomerKahuna()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Kahuna";
         this.customerClipName = "Kahuna";
         this.customerFirstGame = "Papa\'s Freezeria";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_ATOMIC,6,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_CARROT,6,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
