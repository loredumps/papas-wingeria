package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerSue extends CustomerDataFile
   {
       
      
      public function CustomerSue()
      {
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Sue";
         this.customerClipName = "Sue";
         this.thumbColor = "dustyblue";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,4,FoodData.DISTRO_ALL);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_RIGHT);
         false;
         false;
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}
