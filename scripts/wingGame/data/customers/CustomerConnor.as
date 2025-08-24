package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerConnor extends CustomerDataFile
   {
       
      
      public function CustomerConnor()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Connor";
         false;
         false;
         this.customerClipName = "Connor";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "skyblue";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,8);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_MEDIUM,4,FoodData.DISTRO_LEFT);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}
