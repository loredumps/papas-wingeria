package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMarty extends CustomerDataFile
   {
       
      
      public function CustomerMarty()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Marty";
         this.customerClipName = "Marty";
         this.thumbColor = "midred";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_ATOMIC,3);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_ATOMIC,3);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,12);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
