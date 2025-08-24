package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCooper extends CustomerDataFile
   {
       
      
      public function CustomerCooper()
      {
         false;
         true;
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Cooper";
         false;
         false;
         this.customerClipName = "Cooper";
         this.thumbColor = "bluepurple";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,3,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,3,FoodData.DISTRO_RIGHT);
         true;
         true;
         this.customerOrder.addSide(FoodData.SIDE_CELERY,6);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}
