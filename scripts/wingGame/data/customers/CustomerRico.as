package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerRico extends CustomerDataFile
   {
       
      
      public function CustomerRico()
      {
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Rico";
         this.customerClipName = "Rico";
         this.customerFirstGame = "Papa\'s Taco Mia!";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_ATOMIC,8);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BUFFALO,8);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}
