package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerChuckOrMandi extends CustomerDataFile
   {
       
      
      public function CustomerChuckOrMandi()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         true;
         true;
         this.customerName = "ChuckOrMandi";
         this.customerClipName = "ChuckOrMandi";
         true;
         true;
         this.thumbColor = "yellow";
         this.customerFirstGame = "Papa Louie";
         true;
         true;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,4,FoodData.DISTRO_ALL);
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_BBQ,8,FoodData.DISTRO_ALL);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
