package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerClover extends CustomerDataFile
   {
       
      
      public function CustomerClover()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Clover";
         this.customerClipName = "Clover";
         this.thumbColor = "seafoam";
         false;
         false;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,4,FoodData.DISTRO_ALL);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_HONEYMUSTARD,4,FoodData.DISTRO_ALL);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}
