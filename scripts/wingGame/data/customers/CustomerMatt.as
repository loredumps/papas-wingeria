package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMatt extends CustomerDataFile
   {
       
      
      public function CustomerMatt()
      {
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Matt";
         this.customerClipName = "Matt";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "flipline";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_BUFFALO,4);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_ATOMIC,8);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,4);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
