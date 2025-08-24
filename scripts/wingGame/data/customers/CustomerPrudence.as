package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerPrudence extends CustomerDataFile
   {
       
      
      public function CustomerPrudence()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Prudence";
         this.customerClipName = "Prudence";
         this.thumbColor = "bluepurple";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         false;
         false;
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,4);
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,2,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,2,FoodData.DISTRO_RIGHT);
         true;
         true;
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}
