package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerTohru extends CustomerDataFile
   {
       
      
      public function CustomerTohru()
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
         false;
         false;
         this.customerName = "Tohru";
         this.customerClipName = "Tohru";
         true;
         true;
         this.thumbColor = "lime";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,2);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,2);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_MEDIUM,4);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,8);
      }
   }
}
