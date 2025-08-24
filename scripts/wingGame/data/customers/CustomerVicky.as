package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerVicky extends CustomerDataFile
   {
       
      
      public function CustomerVicky()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Vicky";
         this.customerClipName = "Vicky";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "skyblue";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,4);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,2,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_LEFT);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}
