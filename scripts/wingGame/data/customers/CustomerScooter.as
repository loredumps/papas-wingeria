package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerScooter extends CustomerDataFile
   {
       
      
      public function CustomerScooter()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Scooter";
         this.customerClipName = "Scooter";
         false;
         false;
         this.thumbColor = "bluepurple";
         this.customerFirstGame = "Papa\'s Wingeria";
         true;
         true;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_HONEYMUSTARD,3,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,3,FoodData.DISTRO_LEFT);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CARROT,6,FoodData.DISTRO_RIGHT);
      }
   }
}
