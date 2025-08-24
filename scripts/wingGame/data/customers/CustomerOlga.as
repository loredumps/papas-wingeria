package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerOlga extends CustomerDataFile
   {
       
      
      public function CustomerOlga()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Olga";
         this.customerClipName = "Olga";
         true;
         true;
         this.thumbColor = "pink";
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,6);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,6);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,6);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
