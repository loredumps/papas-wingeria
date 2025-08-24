package wingGame.managers
{
   import package_4.*;
   import wingGame.models.Ticket;
   import wingGame.screens.*;
   
   public class TicketManager
   {
       
      
      public var gameObj:class_4;
      
      public var tickets:Array;
      
      public var hangerTicket:Ticket;
      
      public var ticketNumber:Number = 0;
      
      public function TicketManager(param1:class_4)
      {
         false;
         false;
         this.tickets = [];
         super();
         var _loc2_:TicketManager = this;
         _loc2_.gameObj = param1;
         _loc2_.setupManager();
      }
      
      public function setupManager() : void
      {
         false;
         true;
         var _loc1_:TicketManager = this;
         true;
         true;
         _loc1_.tickets = [];
         _loc1_.hangerTicket = null;
      }
      
      public function addTicket(param1:Number) : Ticket
      {
         var _loc2_:TicketManager = this;
         true;
         true;
         if(_loc2_.hangerTicket)
         {
            false;
            false;
            _loc2_.hangerTicket.moveToLine();
         }
         true;
         true;
         var _loc3_:Ticket = new Ticket(_loc2_.gameObj,param1,_loc2_.ticketNumber + 1);
         true;
         true;
         _loc2_.tickets.push(_loc3_);
         true;
         true;
         false;
         false;
         ++_loc2_.ticketNumber;
         false;
         false;
         _loc2_.hangerTicket = _loc3_;
         return _loc3_;
      }
      
      public function removeTicket(param1:Ticket) : void
      {
         var _loc2_:TicketManager = this;
         if(_loc2_.hangerTicket == param1)
         {
            true;
            true;
            _loc2_.hangerTicket = null;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.tickets.length)
         {
            false;
            false;
            if(_loc2_.tickets[_loc3_] == param1)
            {
               false;
               false;
               true;
               true;
               _loc2_.tickets[_loc3_].destroy();
               true;
               true;
               _loc2_.tickets[_loc3_] = null;
               true;
               true;
               _loc2_.tickets.splice(_loc3_,1);
               break;
            }
            _loc3_++;
            false;
            false;
         }
      }
      
      public function outOfTickets() : Boolean
      {
         var _loc1_:TicketManager = this;
         if(_loc1_.tickets.length == 0)
         {
            true;
            true;
            return true;
         }
         return false;
      }
      
      public function destroy() : void
      {
         var _loc1_:TicketManager = this;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.tickets.length)
         {
            true;
            true;
            _loc1_.tickets[_loc2_].destroy();
            false;
            false;
            _loc1_.tickets[_loc2_] = null;
            _loc2_++;
            false;
            false;
         }
         false;
         false;
         _loc1_.tickets = null;
      }
   }
}
