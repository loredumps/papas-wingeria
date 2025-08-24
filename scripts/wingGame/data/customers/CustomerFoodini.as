package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerFoodini extends CustomerDataFile
   {
       
      
      public function CustomerFoodini()
      {
         false;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         true;
         true;
         this.customerName = "Foodini";
         false;
         false;
         this.customerClipName = "Foodini";
         this.thumbColor = "pink";
         this.customerFirstGame = "Papa\'s Pancakeria";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_SPICYGARLIC,6,FoodData.DISTRO_RIGHT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_LEFT);
         false;
         false;
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}
