package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerRita extends CustomerDataFile
   {
       
      
      public function CustomerRita()
      {
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Rita";
         this.customerClipName = "Rita";
         true;
         true;
         this.thumbColor = "lime";
         true;
         true;
         this.customerFirstGame = "Papa Louie";
         false;
         false;
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,3);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,3);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BBQ,3);
         false;
         false;
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         false;
         false;
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
