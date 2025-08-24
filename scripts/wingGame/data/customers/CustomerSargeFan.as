package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerSargeFan extends CustomerDataFile
   {
       
      
      public function CustomerSargeFan()
      {
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Sarge Fan!";
         this.customerClipName = "SargeFan";
         this.thumbColor = "purple";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_WILDONION,6);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,3,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WILDONION,3,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
