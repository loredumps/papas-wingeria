package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerTimm extends CustomerDataFile
   {
       
      
      public function CustomerTimm()
      {
         false;
         false;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Timm";
         this.customerClipName = "Timm";
         this.thumbColor = "fire";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,4);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}
