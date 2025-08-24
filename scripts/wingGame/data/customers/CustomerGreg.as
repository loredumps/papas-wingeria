package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerGreg extends CustomerDataFile
   {
       
      
      public function CustomerGreg()
      {
         false;
         true;
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Greg";
         this.customerClipName = "Greg";
         this.customerFirstGame = "Papa Louie";
         this.thumbColor = "lime";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,8);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4);
         false;
         false;
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
