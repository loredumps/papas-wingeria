package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerJohnny extends CustomerDataFile
   {
       
      
      public function CustomerJohnny()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         true;
         true;
         this.customerName = "Johnny";
         this.customerClipName = "Johnny";
         this.customerFirstGame = "Papa\'s Pancakeria";
         this.thumbColor = "dustyblue";
         this.isCloser = true;
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_CALYPSO,3);
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_BUFFALO,9);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
