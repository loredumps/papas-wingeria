package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCaptainCori extends CustomerDataFile
   {
       
      
      public function CustomerCaptainCori()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Captain Cori";
         this.customerClipName = "CaptainCori";
         this.customerFirstGame = "Papa\'s Freezeria";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_BUFFALO,4);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_PARMESAN,4);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_BBQ,4);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         false;
         false;
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
