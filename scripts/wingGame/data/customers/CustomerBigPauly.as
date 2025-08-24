package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerBigPauly extends CustomerDataFile
   {
       
      
      public function CustomerBigPauly()
      {
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         this.customerName = "Big Pauly";
         false;
         false;
         this.customerClipName = "BigPauly";
         true;
         true;
         this.thumbColor = "lightred";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_ATOMIC,8,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_FRY,8,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}
