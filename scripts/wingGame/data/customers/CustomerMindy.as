package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMindy extends CustomerDataFile
   {
       
      
      public function CustomerMindy()
      {
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Mindy";
         false;
         false;
         this.customerClipName = "Mindy";
         this.thumbColor = "seafoam";
         this.customerFirstGame = "Papa Louie";
         false;
         false;
         this.customerOrder = new CustomerOrder();
         true;
         true;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,6);
         this.customerOrder.addSide(FoodData.SIDE_CARROT,6);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
