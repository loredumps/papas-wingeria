package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMary extends CustomerDataFile
   {
       
      
      public function CustomerMary()
      {
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Mary";
         this.customerClipName = "Mary";
         this.thumbColor = "seafoam";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_HONEYMUSTARD,2,FoodData.DISTRO_RIGHT);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_PARMESAN,2,FoodData.DISTRO_RIGHT);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,8,FoodData.DISTRO_LEFT);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}
