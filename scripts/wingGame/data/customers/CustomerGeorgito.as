package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerGeorgito extends CustomerDataFile
   {
       
      
      public function CustomerGeorgito()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Georgito";
         this.customerClipName = "Georgito";
         this.customerFirstGame = "Papa\'s Taco Mia!";
         true;
         true;
         this.thumbColor = "emerald";
         false;
         false;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WASABI,3);
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_TERIYAKI,9);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
