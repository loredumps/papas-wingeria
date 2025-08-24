package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerPapaLouie extends CustomerDataFile
   {
       
      
      public function CustomerPapaLouie()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Papa Louie";
         this.customerClipName = "PapaLouie";
         this.thumbColor = "midblue";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_CALYPSO,4);
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WASABI,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,4,FoodData.DISTRO_RIGHT);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4);
      }
   }
}
