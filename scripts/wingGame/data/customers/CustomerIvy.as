package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerIvy extends CustomerDataFile
   {
       
      
      public function CustomerIvy()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Ivy";
         false;
         false;
         this.customerClipName = "Ivy";
         this.customerFirstGame = "Papa\'s Freezeria";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_TERIYAKI,6);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_MEDIUM,2);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CARROT,2);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,2);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
