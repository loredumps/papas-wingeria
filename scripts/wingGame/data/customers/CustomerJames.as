package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerJames extends CustomerDataFile
   {
       
      
      public function CustomerJames()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "James";
         this.customerClipName = "James";
         this.thumbColor = "midred";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,8,FoodData.DISTRO_ALL);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,4);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
