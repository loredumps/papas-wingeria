package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerPenny extends CustomerDataFile
   {
       
      
      public function CustomerPenny()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Penny";
         this.customerClipName = "Penny";
         this.thumbColor = "dustyblue";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_CALYPSO,6);
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,3,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,6,FoodData.DISTRO_LEFT);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}
