package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerProfessorFitz extends CustomerDataFile
   {
       
      
      public function CustomerProfessorFitz()
      {
         false;
         true;
         true;
         true;
         super();
      }
      
      override public function initCustomerData() : void
      {
         false;
         true;
         this.customerName = "Professor Fitz";
         this.customerClipName = "ProfessorFitz";
         false;
         false;
         this.customerFirstGame = "Papa\'s Wingeria";
         this.thumbColor = "deepred";
         this.isCloser = true;
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WASABI,3);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_PARMESAN,6);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,3);
      }
   }
}
