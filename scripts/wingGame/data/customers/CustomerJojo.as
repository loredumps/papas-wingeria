package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerJojo extends CustomerDataFile
   {
       
      
      public function CustomerJojo()
      {
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Jojo";
         this.customerClipName = "Jojo";
         false;
         false;
         this.isCloser = true;
         this.customerFirstGame = "Papa\'s Taco Mia!";
         this.thumbColor = "emerald";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,6,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,6,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
