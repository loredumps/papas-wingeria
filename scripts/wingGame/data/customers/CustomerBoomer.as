package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerBoomer extends CustomerDataFile
   {
       
      
      public function CustomerBoomer()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Boomer";
         false;
         false;
         this.customerClipName = "Boomer";
         this.isCloser = true;
         this.thumbColor = "lightred";
         this.customerFirstGame = "Papa\'s Wingeria";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,4);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,4);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,8);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}
