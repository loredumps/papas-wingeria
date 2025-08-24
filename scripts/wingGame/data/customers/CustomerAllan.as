package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerAllan extends CustomerDataFile
   {
       
      
      public function CustomerAllan()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Allan";
         true;
         true;
         this.customerClipName = "Allan";
         this.thumbColor = "lime";
         true;
         true;
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,3);
         false;
         false;
         this.customerOrder.addSide(FoodData.SIDE_CARROT,3);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,6);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
