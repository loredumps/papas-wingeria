package wingGame.data
{
   public class Challenge
   {
      
      public static const RANK:String = "rank";
      
      public static const UPGRADES:String = "upgrades";
      
      public static const FURNITURE:String = "furniture";
      
      public static const REWARDFURNI:String = "rewardfurni";
      
      public static const CLOTHING:String = "clothing";
      
      public static const REWARDCLOTHING:String = "rewardclothing";
      
      public static const REWARDANY:String = "rewardany";
      
      public static const PURCHASES:String = "purchases";
      
      public static const SEALS:String = "seals";
      
      public static const USETOPPING:String = "usetopping";
      
      public static const SCORE:String = "score";
      
      public static const RIBBON:String = "ribbon";
      
      public static const SERVICEQUALITY:String = "servicequality";
      
      public static const SERVECUSTOMERS:String = "servecustomers";
      
      public static const PAYDAY:String = "payday";
      
      public static const UNLOCKTOPPING:String = "unlocktopping";
      
      public static const HAT:String = "hat";
      
      public static const METER:String = "meter";
      
      public static const MINIGAME:String = "minigame";
      
      public static const PRIZE:String = "prize";
      
      public static const MULTIPRIZE:String = "multiprize";
      
      public static const TAGGED:String = "tagged";
      
      {
         false;
         false;
         true;
         true;
         true;
         true;
         false;
         false;
         false;
         false;
         false;
         false;
      }
      
      public var title:String = "";
      
      public var description:String = "";
      
      public var rewardMoney:Number = 0;
      
      public var tickets:Number = 0;
      
      public var challengeType:String;
      
      public var targetAmount:Number = 0;
      
      public var tally:Number = 0;
      
      public var upgrades:*;
      
      public var sealType:String = "bronze";
      
      public var topping:String = "soft";
      
      public var customer:String = "any";
      
      public var score:Number = 0;
      
      public var scoreType:String = "Waiting";
      
      public var percentQuality:Number = 100;
      
      public var customers:*;
      
      public var toppings:*;
      
      public var hat:String = "tacohat";
      
      public var machine:String = "icecream";
      
      public var tagName:String = "";
      
      public var mochiAchievementID:String = null;
      
      public var mochiAchievementPoints:Number = 0;
      
      public var hasEarnedMochiAchievement:Boolean = false;
      
      public var showTally:Boolean = false;
      
      public var params:Object;
      
      public function Challenge(param1:String, param2:Object)
      {
         false;
         true;
         false;
         false;
         super();
         var _loc3_:Challenge = this;
         _loc3_.challengeType = param1;
         _loc3_.params = param2;
         true;
         true;
         if(param1 == Challenge.RANK)
         {
            _loc3_.setupRank();
         }
         else
         {
            false;
            false;
            if(param1 == Challenge.UPGRADES)
            {
               _loc3_.setupUpgrades();
            }
            else if(param1 == Challenge.FURNITURE)
            {
               _loc3_.setupFurniture();
            }
            else
            {
               false;
               false;
               if(param1 == Challenge.PURCHASES)
               {
                  _loc3_.setupPurchases();
               }
               else if(param1 == Challenge.CLOTHING)
               {
                  _loc3_.setupClothing();
                  false;
                  false;
               }
               else
               {
                  false;
                  false;
                  if(param1 == Challenge.SEALS)
                  {
                     _loc3_.setupSeals();
                     false;
                     false;
                  }
                  else if(param1 == Challenge.USETOPPING)
                  {
                     _loc3_.setupUseTopping();
                     false;
                     false;
                  }
                  else if(param1 == Challenge.SCORE)
                  {
                     _loc3_.setupScore();
                  }
                  else
                  {
                     true;
                     true;
                     if(param1 == Challenge.RIBBON)
                     {
                        _loc3_.setupRibbon();
                     }
                     else if(param1 == Challenge.SERVICEQUALITY)
                     {
                        true;
                        true;
                        _loc3_.setupServiceQuality();
                        false;
                        false;
                     }
                     else if(param1 == Challenge.SERVECUSTOMERS)
                     {
                        _loc3_.setupServeCustomers();
                        false;
                        false;
                     }
                     else
                     {
                        false;
                        false;
                        if(param1 == Challenge.PAYDAY)
                        {
                           false;
                           false;
                           _loc3_.setupPayDay();
                        }
                        else if(param1 == Challenge.UNLOCKTOPPING)
                        {
                           _loc3_.setupUnlockTopping();
                        }
                        else if(param1 == Challenge.HAT)
                        {
                           _loc3_.setupHat();
                           false;
                           false;
                        }
                        else
                        {
                           true;
                           true;
                           if(param1 == Challenge.METER)
                           {
                              _loc3_.setupMeter();
                           }
                           else
                           {
                              true;
                              true;
                              false;
                              false;
                              if(param1 == Challenge.MINIGAME)
                              {
                                 true;
                                 true;
                                 _loc3_.setupMinigame();
                              }
                              else if(param1 == Challenge.PRIZE)
                              {
                                 _loc3_.setupPrize();
                              }
                              else
                              {
                                 true;
                                 true;
                                 if(param1 == Challenge.MULTIPRIZE)
                                 {
                                    _loc3_.setupMultiPrize();
                                 }
                                 else if(param1 == Challenge.TAGGED)
                                 {
                                    _loc3_.setupTagged();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         _loc3_.setupTitles();
      }
      
      public function setupTitles() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         true;
         true;
         if(_loc1_.params.hasOwnProperty("title"))
         {
            _loc1_.title = _loc1_.params.title;
         }
         if(_loc1_.params.hasOwnProperty("description"))
         {
            _loc1_.description = _loc1_.params.description;
            true;
            true;
         }
         if(_loc1_.params.hasOwnProperty("rewardMoney"))
         {
            _loc1_.rewardMoney = _loc1_.params.rewardMoney;
         }
         else
         {
            _loc1_.rewardMoney = 0;
         }
         if(_loc1_.params.hasOwnProperty("tickets"))
         {
            _loc1_.tickets = _loc1_.params.tickets;
         }
         else
         {
            _loc1_.tickets = 0;
         }
         if(_loc1_.params.hasOwnProperty("showTally"))
         {
            _loc1_.showTally = _loc1_.params.showTally;
         }
         else
         {
            _loc1_.showTally = false;
         }
         if(_loc1_.params.hasOwnProperty("mochiID"))
         {
            _loc1_.mochiAchievementID = _loc1_.params.mochiID;
         }
         else
         {
            _loc1_.mochiAchievementID = null;
         }
         if(_loc1_.params.hasOwnProperty("mochiPoints"))
         {
            true;
            true;
            _loc1_.mochiAchievementPoints = _loc1_.params.mochiPoints;
         }
         else
         {
            _loc1_.mochiAchievementPoints = 0;
         }
      }
      
      public function setupMinigame() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
      }
      
      public function setupPrize() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
      }
      
      public function setupMultiPrize() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
      }
      
      public function setupRank() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         true;
         true;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
      }
      
      public function setupPayDay() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
      }
      
      public function setupRibbon() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
      }
      
      public function setupUpgrades() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         false;
         false;
         if(_loc1_.params.hasOwnProperty("upgrades"))
         {
            if(_loc1_.params.upgrades is Array)
            {
               false;
               false;
               _loc1_.upgrades = _loc1_.params.upgrades.concat();
            }
            else
            {
               _loc1_.upgrades = _loc1_.params.upgrades;
               false;
               false;
            }
         }
         else
         {
            _loc1_.upgrades = "any";
         }
      }
      
      public function setupFurniture() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         true;
         true;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         if(_loc1_.params.hasOwnProperty("upgrades"))
         {
            if(_loc1_.params.upgrades is Array)
            {
               _loc1_.upgrades = _loc1_.params.upgrades.concat();
            }
            else
            {
               _loc1_.upgrades = _loc1_.params.upgrades;
               true;
               true;
            }
         }
         else
         {
            _loc1_.upgrades = "any";
         }
      }
      
      public function setupPurchases() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         if(_loc1_.params.hasOwnProperty("upgrades"))
         {
            if(_loc1_.params.upgrades is Array)
            {
               false;
               false;
               _loc1_.upgrades = _loc1_.params.upgrades.concat();
            }
            else
            {
               _loc1_.upgrades = _loc1_.params.upgrades;
            }
         }
         else
         {
            _loc1_.upgrades = "any";
         }
      }
      
      public function setupClothing() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         true;
         true;
         if(_loc1_.params.hasOwnProperty("upgrades"))
         {
            true;
            true;
            if(_loc1_.params.upgrades is Array)
            {
               _loc1_.upgrades = _loc1_.params.upgrades.concat();
            }
            else
            {
               _loc1_.upgrades = _loc1_.params.upgrades;
               true;
               true;
            }
         }
         else
         {
            _loc1_.upgrades = "any";
         }
      }
      
      public function setupSeals() : void
      {
         var _loc1_:Challenge = this;
         false;
         false;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         true;
         true;
         _loc1_.sealType = _loc1_.params.sealType;
      }
      
      public function setupUseTopping() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         true;
         true;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         _loc1_.topping = _loc1_.params.topping;
      }
      
      public function setupScore() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         if(_loc1_.params.hasOwnProperty("customer"))
         {
            _loc1_.customer = _loc1_.params.customer;
         }
         else
         {
            _loc1_.customer = "any";
         }
         _loc1_.score = _loc1_.params.score;
         _loc1_.scoreType = _loc1_.params.scoreType;
      }
      
      public function setupMeter() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         false;
         false;
         if(_loc1_.params.hasOwnProperty("machine"))
         {
            _loc1_.machine = _loc1_.params.machine;
         }
         else
         {
            _loc1_.machine = "any";
            false;
            false;
         }
         if(_loc1_.params.hasOwnProperty("scoreType"))
         {
            _loc1_.scoreType = _loc1_.params.scoreType;
         }
         else
         {
            _loc1_.scoreType = "any";
         }
      }
      
      public function setupTagged() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         _loc1_.tagName = _loc1_.params.tagName;
      }
      
      public function setupServiceQuality() : void
      {
         var _loc1_:Challenge = this;
         false;
         false;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         true;
         true;
         _loc1_.percentQuality = _loc1_.params.percentQuality;
      }
      
      public function setupServeCustomers() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         false;
         false;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         if(_loc1_.params.hasOwnProperty("customers"))
         {
            if(_loc1_.params.customers is Array)
            {
               _loc1_.customers = _loc1_.params.customers.concat();
               true;
               true;
            }
            else
            {
               _loc1_.customers = _loc1_.params.customers;
               true;
               true;
            }
         }
         else
         {
            _loc1_.customers = "all";
         }
      }
      
      public function setupUnlockTopping() : void
      {
         false;
         true;
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         false;
         false;
         if(_loc1_.params.hasOwnProperty("toppings"))
         {
            if(_loc1_.params.toppings is Array)
            {
               _loc1_.toppings = _loc1_.params.toppings.concat();
               true;
               true;
            }
            else
            {
               _loc1_.toppings = _loc1_.params.toppings;
            }
         }
         else
         {
            _loc1_.toppings = "all";
         }
      }
      
      public function setupHat() : void
      {
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         false;
         false;
         _loc1_.hat = _loc1_.params.hat;
      }
      
      public function clearTally(param1:Boolean = false) : void
      {
         false;
         true;
         false;
         false;
         if(param1)
         {
            true;
            true;
            this.tally = 0;
         }
      }
      
      public function setTally(param1:Number) : Boolean
      {
         var _loc2_:Challenge = this;
         _loc2_.tally = param1;
         true;
         true;
         if(_loc2_.tally >= _loc2_.targetAmount)
         {
            false;
            false;
            return true;
         }
         return false;
      }
      
      public function addToTally(param1:Number = 1) : Boolean
      {
         false;
         true;
         var _loc2_:Challenge = this;
         _loc2_.tally += param1;
         if(_loc2_.tally >= _loc2_.targetAmount)
         {
            false;
            false;
            true;
            true;
            return true;
         }
         return false;
      }
      
      public function getRewardAmount() : Number
      {
         var _loc1_:Challenge = this;
         return _loc1_.rewardMoney;
      }
      
      public function getTicketAmount() : Number
      {
         var _loc1_:Challenge = this;
         return _loc1_.tickets;
      }
   }
}
