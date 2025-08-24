package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerXandra extends CustomerDataFile
   {
       
      
      public function CustomerXandra()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Xandra";
         false;
         false;
         this.customerClipName = "Xandra";
         this.customerFirstGame = "Papa\'s Taco Mia!";
         this.thumbColor = "pink";
         true;
         true;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WILDONION,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WASABI,4,FoodData.DISTRO_RIGHT);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_FRY,8);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}
