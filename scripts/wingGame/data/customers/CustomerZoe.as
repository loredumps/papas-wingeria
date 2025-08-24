package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerZoe extends CustomerDataFile
   {
       
      
      public function CustomerZoe()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         false;
         this.customerName = "Zoe";
         true;
         true;
         this.customerClipName = "Zoe";
         this.customerFirstGame = "Papa\'s Taco Mia!";
         this.thumbColor = "yellow";
         true;
         true;
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_ATOMIC,4);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,2,FoodData.DISTRO_LEFT);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}
