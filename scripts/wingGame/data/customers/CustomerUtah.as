package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerUtah extends CustomerDataFile
   {
       
      
      public function CustomerUtah()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Utah";
         this.customerClipName = "Utah";
         this.customerFirstGame = "Papa\'s Freezeria";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,6);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,6);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
