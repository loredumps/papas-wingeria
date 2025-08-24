package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerYippy extends CustomerDataFile
   {
       
      
      public function CustomerYippy()
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
         false;
         this.customerName = "Yippy";
         this.customerClipName = "Yippy";
         this.thumbColor = "lime";
         this.customerFirstGame = "Papa\'s Pancakeria";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,3);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BBQ,3);
         this.customerOrder.addSide(FoodData.SIDE_FRY,6);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}
