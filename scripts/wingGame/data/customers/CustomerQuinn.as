package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerQuinn extends CustomerDataFile
   {
       
      
      public function CustomerQuinn()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Quinn";
         this.customerClipName = "Quinn";
         this.isCloser = true;
         this.customerFirstGame = "Papa\'s Taco Mia!";
         this.thumbColor = "purple";
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_HONEYMUSTARD,3);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CARROT,9);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
