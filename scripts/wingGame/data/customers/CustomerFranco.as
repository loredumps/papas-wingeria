package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerFranco extends CustomerDataFile
   {
       
      
      public function CustomerFranco()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Franco";
         this.customerClipName = "Franco";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_ATOMIC,6);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,6);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
