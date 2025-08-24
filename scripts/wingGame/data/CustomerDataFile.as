package wingGame.data
{
   public class CustomerDataFile
   {
       
      
      public var customerName:String = "Placeholder";
      
      public var customerOrder:CustomerOrder;
      
      public var customerClipName:String = "Placeholder";
      
      public var customerFirstGame:String = "Papa\'s Pizzeria";
      
      public var thumbColor:String = "lime";
      
      public var isCloser:Boolean = false;
      
      public function CustomerDataFile()
      {
         this.customerOrder = new CustomerOrder();
         false;
         false;
         super();
         this.initCustomerData();
      }
      
      public function initCustomerData() : void
      {
      }
   }
}
