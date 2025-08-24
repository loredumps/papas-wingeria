package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerAlberto extends CustomerDataFile
   {
       
      
      public function CustomerAlberto()
      {
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         true;
         true;
         this.customerName = "Alberto";
         this.customerClipName = "Alberto";
         this.thumbColor = "lime";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_CALYPSO,4);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CELERY,8);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}
