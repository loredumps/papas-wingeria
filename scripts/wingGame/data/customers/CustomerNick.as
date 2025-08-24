package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerNick extends CustomerDataFile
   {
       
      
      public function CustomerNick()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Nick";
         this.customerClipName = "Nick";
         this.customerFirstGame = "Papa\'s Taco Mia!";
         false;
         false;
         this.thumbColor = "lightred";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_SPICYGARLIC,3,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_MEDIUM,8,FoodData.DISTRO_RIGHT);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
