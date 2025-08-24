package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMitch extends CustomerDataFile
   {
       
      
      public function CustomerMitch()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         true;
         true;
         this.customerName = "Mitch";
         this.customerClipName = "Mitch";
         this.thumbColor = "bluepurple";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,8);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,8);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}
