package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerTony extends CustomerDataFile
   {
       
      
      public function CustomerTony()
      {
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Tony";
         true;
         true;
         this.customerClipName = "Tony";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "flipline";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,8,FoodData.DISTRO_RIGHT);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_TERIYAKI,4,FoodData.DISTRO_LEFT);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_FRY,4,FoodData.DISTRO_LEFT);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
