package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerHugo extends CustomerDataFile
   {
       
      
      public function CustomerHugo()
      {
         false;
         true;
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Hugo";
         true;
         true;
         this.customerClipName = "Hugo";
         this.thumbColor = "bluepurple";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,6);
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_ATOMIC,6);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}
