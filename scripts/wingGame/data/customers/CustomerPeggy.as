package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerPeggy extends CustomerDataFile
   {
       
      
      public function CustomerPeggy()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         true;
         true;
         this.customerName = "Peggy";
         false;
         false;
         this.customerClipName = "Peggy";
         this.thumbColor = "skyblue";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,4);
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_ATOMIC,4);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
