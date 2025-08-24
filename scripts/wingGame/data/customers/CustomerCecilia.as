package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCecilia extends CustomerDataFile
   {
       
      
      public function CustomerCecilia()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Cecilia";
         this.customerClipName = "Cecilia";
         this.thumbColor = "midred";
         true;
         true;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,8);
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4,FoodData.DISTRO_LEFT);
         false;
         false;
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
