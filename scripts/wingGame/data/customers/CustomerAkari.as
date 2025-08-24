package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerAkari extends CustomerDataFile
   {
       
      
      public function CustomerAkari()
      {
         false;
         true;
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Akari";
         this.customerClipName = "Akari";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "yellow";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_MEDIUM,4);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
