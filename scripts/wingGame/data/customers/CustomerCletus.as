package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCletus extends CustomerDataFile
   {
       
      
      public function CustomerCletus()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Cletus";
         this.customerClipName = "Cletus";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "brown";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,8);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_FRY,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4,FoodData.DISTRO_RIGHT);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
