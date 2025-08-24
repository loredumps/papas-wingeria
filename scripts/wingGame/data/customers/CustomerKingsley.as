package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerKingsley extends CustomerDataFile
   {
       
      
      public function CustomerKingsley()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Kingsley";
         false;
         false;
         this.customerClipName = "Kingsley";
         false;
         false;
         this.thumbColor = "skyblue";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,4);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,8);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}
