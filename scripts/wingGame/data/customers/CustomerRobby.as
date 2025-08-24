package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerRobby extends CustomerDataFile
   {
       
      
      public function CustomerRobby()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Robby";
         this.customerClipName = "Robby";
         this.thumbColor = "lightred";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,8);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_FRY,4,FoodData.DISTRO_RIGHT);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}
