package wingGame.managers
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mochi.as3.*;
   import package_2.class_5;
   import package_2.class_8;
   import package_4.class_4;
   import wingGame.data.Challenge;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   
   public class ChallengeManager
   {
       
      
      public var gameObj:class_4;
      
      public var badges:Array;
      
      public var badgeDropdown:MovieClip = null;
      
      public var badgeQueue:Array;
      
      public var dropdownX:Number = 158;
      
      public var dropdownStartY:Number = 0;
      
      public var dropdownHeight:Number = 48;
      
      public var dropdownSpeed:Number = 4;
      
      public var dropdownOnScreenWait:Number = 120;
      
      public var dropdownOnScreenTimer:Number = 0;
      
      public function ChallengeManager(param1:class_4)
      {
         this.badges = [new Challenge(Challenge.RANK,{
            "targetAmount":5,
            "title":"Work up the Ranks",
            "description":"Reach Rank 5",
            "rewardMoney":3000,
            "tickets":1
         }),new Challenge(Challenge.RANK,{
            "targetAmount":10,
            "title":"Regular Worker",
            "description":"Reach Rank 10",
            "rewardMoney":5000,
            "tickets":2
         }),new Challenge(Challenge.RANK,{
            "targetAmount":20,
            "title":"Full-Time Employee",
            "description":"Reach Rank 20",
            "rewardMoney":7000,
            "tickets":3
         }),new Challenge(Challenge.RANK,{
            "targetAmount":30,
            "title":"Long Haul",
            "description":"Reach Rank 30",
            "rewardMoney":9000,
            "tickets":4
         }),new Challenge(Challenge.RANK,{
            "targetAmount":40,
            "title":"Longer Haul",
            "description":"Reach Rank 40",
            "rewardMoney":12000,
            "tickets":5
         }),new Challenge(Challenge.RANK,{
            "targetAmount":50,
            "title":"Employee of the Year",
            "description":"Reach Rank 50",
            "rewardMoney":15000,
            "tickets":6
         }),new Challenge(Challenge.RANK,{
            "targetAmount":59,
            "title":"Better Than Papa!",
            "description":"Reach Rank 59",
            "rewardMoney":25000,
            "tickets":10
         }),new Challenge(Challenge.MINIGAME,{
            "targetAmount":7,
            "title":"Game Show Contestant",
            "description":"Play all of Foodini\'s Mini-Games",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.PRIZE,{
            "targetAmount":1,
            "title":"Winner!",
            "description":"Earn a Prize in one of Foodini\'s Mini-Games",
            "rewardMoney":1500,
            "showTally":true
         }),new Challenge(Challenge.PRIZE,{
            "targetAmount":20,
            "title":"Big Winner",
            "description":"Earn 20 Prizes in Foodini\'s Mini-Games",
            "rewardMoney":3000,
            "showTally":true
         }),new Challenge(Challenge.MULTIPRIZE,{
            "targetAmount":7,
            "title":"Skillful Contestant",
            "description":"Earn a Prize in each of Foodini\'s Mini-Games",
            "rewardMoney":2000,
            "showTally":true
         }),new Challenge(Challenge.MULTIPRIZE,{
            "targetAmount":35,
            "title":"Grand Prize Winner",
            "description":"Earn 5 Prizes or more in each of Foodini\'s Mini-Games",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.TAGGED,{
            "targetAmount":20,
            "tagName":"chilifeather",
            "title":"Sharpshooter",
            "description":"Shoot 20 flying Chilifeathers in Hot Shot",
            "rewardMoney":3500,
            "showTally":true
         }),new Challenge(Challenge.TAGGED,{
            "targetAmount":4,
            "tagName":"burgerzilla",
            "title":"Burger Buddy",
            "description":"Beat 4 levels of Burgerzilla without missing any toppings",
            "rewardMoney":4000,
            "showTally":true
         }),new Challenge(Challenge.TAGGED,{
            "targetAmount":9,
            "tagName":"putt",
            "title":"Front Nine",
            "description":"Get Par or better on 9 courses in Freeze-Putt",
            "rewardMoney":4000,
            "showTally":true
         }),new Challenge(Challenge.PURCHASES,{
            "targetAmount":50,
            "upgrades":"any",
            "title":"One-Stop Shopping",
            "description":"Buy any 50 items from the Shop",
            "rewardMoney":5000,
            "tickets":10,
            "showTally":true
         }),new Challenge(Challenge.PURCHASES,{
            "targetAmount":8,
            "upgrades":"poster",
            "title":"Advertiser",
            "description":"Buy any 8 Posters from the Shop",
            "rewardMoney":1500,
            "tickets":3,
            "showTally":true
         }),new Challenge(Challenge.PURCHASES,{
            "targetAmount":8,
            "upgrades":"furni",
            "title":"Interior Decorator",
            "description":"Buy any 8 Furniture items from the Shop",
            "rewardMoney":1500,
            "showTally":true
         }),new Challenge(Challenge.PURCHASES,{
            "targetAmount":8,
            "upgrades":"clothing",
            "title":"Updated Wardrobe",
            "description":"Buy any 8 Clothing items from the Shop",
            "rewardMoney":1500,
            "showTally":true
         }),new Challenge(Challenge.PURCHASES,{
            "targetAmount":4,
            "upgrades":"wallfloor",
            "title":"New Coat of Paint",
            "description":"Buy any 4 Flooring or Wallpaper from the Shop",
            "rewardMoney":1500,
            "showTally":true
         }),new Challenge(Challenge.UPGRADES,{
            "targetAmount":8,
            "upgrades":["alarm1","alarm2","alarm3","alarm4","booster1","booster2","booster3","booster4"],
            "title":"Fryer Upgrades",
            "description":"Buy all of the Fryer Upgrades",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.UPGRADES,{
            "targetAmount":2,
            "upgrades":["napkinholder","napkin"],
            "title":"Clean your Plates",
            "description":"Buy the Napkin Holder and an extra pack of Napkins",
            "rewardMoney":2000,
            "showTally":true
         }),new Challenge(Challenge.TAGGED,{
            "targetAmount":1,
            "tagName":"changeclothes",
            "title":"New Threads",
            "description":"Change your worker\'s shirt, pants, jacket, and shoes.",
            "rewardMoney":2000,
            "showTally":false
         }),new Challenge(Challenge.SEALS,{
            "targetAmount":5,
            "sealType":"bronze",
            "title":"Bronze Beginning",
            "description":"Earn 5 Bronze Customer Awards",
            "rewardMoney":3000,
            "showTally":true
         }),new Challenge(Challenge.SEALS,{
            "targetAmount":15,
            "sealType":"bronze",
            "title":"Repeat Customers",
            "description":"Earn 15 Bronze Customer Awards",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.SEALS,{
            "targetAmount":10,
            "sealType":"silver",
            "title":"Silver Medal",
            "description":"Earn 10 Silver Customer Awards",
            "rewardMoney":7000,
            "showTally":true
         }),new Challenge(Challenge.SEALS,{
            "targetAmount":15,
            "sealType":"gold",
            "title":"Restaurant Regulars",
            "description":"Earn 15 Gold Customer Awards",
            "rewardMoney":10000,
            "showTally":true
         }),new Challenge(Challenge.SEALS,{
            "targetAmount":35,
            "sealType":"gold",
            "title":"Halfway There",
            "description":"Earn 35 Gold Customer Awards",
            "rewardMoney":25000,
            "showTally":true
         }),new Challenge(Challenge.SEALS,{
            "targetAmount":70,
            "sealType":"gold",
            "title":"Go For the Gold",
            "description":"Earn Gold Customer Awards on all customers!",
            "rewardMoney":50000,
            "tickets":3,
            "showTally":true
         }),new Challenge(Challenge.SCORE,{
            "targetAmount":20,
            "customer":"any",
            "score":100,
            "scoreType":"Waiting",
            "title":"Order Expert",
            "description":"Get a 100% Waiting Score on 20 orders",
            "rewardMoney":7000,
            "showTally":true
         }),new Challenge(Challenge.SCORE,{
            "targetAmount":20,
            "customer":"any",
            "score":100,
            "scoreType":"Grilling",
            "title":"Fry Expert",
            "description":"Get a 100% Frying Score on 20 orders",
            "rewardMoney":7000,
            "showTally":true
         }),new Challenge(Challenge.SCORE,{
            "targetAmount":20,
            "customer":"any",
            "score":100,
            "scoreType":"Saucing",
            "title":"Sauce Expert",
            "description":"Get a 100% Saucing Score on 20 orders",
            "rewardMoney":7000,
            "showTally":true
         }),new Challenge(Challenge.SCORE,{
            "targetAmount":20,
            "customer":"any",
            "score":100,
            "scoreType":"Building",
            "title":"Build Expert",
            "description":"Get a 100% Building Score on 20 orders",
            "rewardMoney":7000,
            "showTally":true
         }),new Challenge(Challenge.SCORE,{
            "targetAmount":30,
            "customer":"any",
            "score":100,
            "scoreType":"Overall",
            "title":"Perfect!",
            "description":"Get a Perfect Score on 30 orders",
            "rewardMoney":10000,
            "tickets":3,
            "showTally":true
         }),new Challenge(Challenge.RIBBON,{
            "targetAmount":1,
            "title":"Critically Acclaimed",
            "description":"Get a Blue Ribbon from Jojo the Food Critic",
            "rewardMoney":4000
         }),new Challenge(Challenge.RIBBON,{
            "targetAmount":5,
            "title":"Award Winning Wings",
            "description":"Get 5 Blue Ribbons from Jojo the Food Critic",
            "rewardMoney":10000,
            "showTally":true
         }),new Challenge(Challenge.SERVICEQUALITY,{
            "targetAmount":5,
            "percentQuality":90,
            "title":"Quality Assurance",
            "description":"Get 90% Service Quality or higher on five different days",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.SERVICEQUALITY,{
            "targetAmount":20,
            "percentQuality":95,
            "title":"High Quality",
            "description":"Get 95% Service Quality or higher on 20 different days",
            "rewardMoney":10000,
            "showTally":true
         }),new Challenge(Challenge.PAYDAY,{
            "targetAmount":1,
            "title":"First Paycheck",
            "description":"Get your first paycheck on Pay Day",
            "rewardMoney":1000
         }),new Challenge(Challenge.PAYDAY,{
            "targetAmount":4,
            "title":"Month\'s Pay",
            "description":"Receive your wages on four Pay Days",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.SERVECUSTOMERS,{
            "targetAmount":4,
            "customers":["Bruna Romano","Gino Romano","Carlo Romano","Little Edoardo"],
            "title":"Romano Family",
            "description":"Serve everyone in the Romano Family Quartet",
            "rewardMoney":15000,
            "showTally":true
         }),new Challenge(Challenge.SERVECUSTOMERS,{
            "targetAmount":7,
            "customers":["Xolo","Boomer","Johnny","Quinn","ProfessorFitz","Ninjoy","Jojo"],
            "title":"Wingeria Closers",
            "description":"Serve all of the Closers",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.SERVECUSTOMERS,{
            "targetAmount":5,
            "customers":["Xolo","Boomer","ProfessorFitz","Skyler","Scooter"],
            "title":"Starlight City Locals",
            "description":"Serve all of the new local customers",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.SERVECUSTOMERS,{
            "targetAmount":9,
            "customers":["Roy","Marty","Rita","Mitch","Maggie","Penny","Alberto","Cooper","Prudence"],
            "title":"Worker Reunion",
            "description":"Serve all of the workers from Papa\'s other restaurants",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.SERVECUSTOMERS,{
            "targetAmount":70,
            "customers":"all",
            "title":"The Gang\'s All Here",
            "description":"Serve all of the customers!",
            "rewardMoney":30000,
            "tickets":5,
            "showTally":true
         }),new Challenge(Challenge.UNLOCKTOPPING,{
            "targetAmount":4,
            "toppings":[FoodData.MEAT_WING,FoodData.MEAT_BONELESS,FoodData.MEAT_SHRIMP,FoodData.MEAT_STRIPS],
            "title":"Meat Master",
            "description":"Unlock all of the Meats",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.UNLOCKTOPPING,{
            "targetAmount":6,
            "toppings":[FoodData.SIDE_CARROT,FoodData.SIDE_CELERY,FoodData.SIDE_CHEESECUBES,FoodData.SIDE_FRY,FoodData.SIDE_GREENPEPPER,FoodData.SIDE_REDPEPPER],
            "title":"Side Sampler",
            "description":"Unlock all of the Sides",
            "rewardMoney":3000,
            "showTally":true
         }),new Challenge(Challenge.UNLOCKTOPPING,{
            "targetAmount":6,
            "toppings":[FoodData.DIP_AWESOMESAUCE,FoodData.DIP_BLUECHEESE,FoodData.DIP_KUNGPAO,FoodData.DIP_MANGOCHILI,FoodData.DIP_RANCH,FoodData.DIP_ZESTYPESTO],
            "title":"Big Dipper",
            "description":"Unlock all of the Dips",
            "rewardMoney":3000,
            "showTally":true
         }),new Challenge(Challenge.UNLOCKTOPPING,{
            "targetAmount":11,
            "toppings":[FoodData.SAUCE_ATOMIC,FoodData.SAUCE_BBQ,FoodData.SAUCE_BUFFALO,FoodData.SAUCE_CALYPSO,FoodData.SAUCE_HONEYMUSTARD,FoodData.SAUCE_MEDIUM,FoodData.SAUCE_PARMESAN,FoodData.SAUCE_SPICYGARLIC,FoodData.SAUCE_TERIYAKI,FoodData.SAUCE_WASABI,FoodData.SAUCE_WILDONION],
            "title":"Stocking the Sauces",
            "description":"Unlock all of the Sauces",
            "rewardMoney":5000,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":5,
            "topping":FoodData.MEAT_WING,
            "title":"Wing Warmup",
            "description":"Serve 5 orders with Wings",
            "rewardMoney":1000,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.MEAT_WING,
            "title":"Wing Slinger",
            "description":"Serve 30 orders with Wings",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":20,
            "topping":FoodData.MEAT_BONELESS,
            "title":"Go Boneless",
            "description":"Serve 20 orders with Boneless Wings",
            "rewardMoney":2000,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":50,
            "topping":FoodData.MEAT_BONELESS,
            "title":"No Bones About It",
            "description":"Serve 50 orders with Boneless Wings",
            "rewardMoney":4000,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":20,
            "topping":FoodData.MEAT_STRIPS,
            "title":"Serving Strips",
            "description":"Serve 20 orders with Chicken Strips",
            "rewardMoney":2000,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":50,
            "topping":FoodData.MEAT_STRIPS,
            "title":"Premium Chicken",
            "description":"Serve 50 orders with Chicken Strips",
            "rewardMoney":4000,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":20,
            "topping":FoodData.MEAT_SHRIMP,
            "title":"Seafood Server",
            "description":"Serve 20 orders with Shrimp",
            "rewardMoney":2000,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":50,
            "topping":FoodData.MEAT_SHRIMP,
            "title":"Saucy Shrimp",
            "description":"Serve 50 orders with Shrimp",
            "rewardMoney":4000,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SIDE_CELERY,
            "title":"Crunchy",
            "description":"Serve 30 orders with Celery",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SIDE_CARROT,
            "title":"Beta Carotene",
            "description":"Serve 30 orders with Carrots",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SIDE_REDPEPPER,
            "title":"Peppery",
            "description":"Serve 30 orders with Red Peppers",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SIDE_GREENPEPPER,
            "title":"Green Garnish",
            "description":"Serve 30 orders with Green Peppers",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SIDE_FRY,
            "title":"Crinkle Cut",
            "description":"Serve 30 orders with Fries",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SIDE_CHEESECUBES,
            "title":"Skewered Sides",
            "description":"Serve 30 orders with Cheese Cubes",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.DIP_RANCH,
            "title":"Classic Dip",
            "description":"Serve 30 orders with Ranch Dip",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.DIP_BLUECHEESE,
            "title":"Dip with a Kick",
            "description":"Serve 30 orders with Blue Cheese Dip",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.DIP_MANGOCHILI,
            "title":"Hot and Tangy",
            "description":"Serve 30 orders with Mango Chili Dip",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.DIP_AWESOMESAUCE,
            "title":"Awesomesauce!",
            "description":"Serve 30 orders with Awesome Sauce Dip",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.DIP_KUNGPAO,
            "title":"Kung POW!",
            "description":"Serve 30 orders with Kung Pao Dip",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.DIP_ZESTYPESTO,
            "title":"Zesty",
            "description":"Serve 30 orders with Zesty Pesto Dip",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_BBQ,
            "title":"Classic \'Que",
            "description":"Serve 30 orders with BBQ Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_BUFFALO,
            "title":"Getting Hot",
            "description":"Serve 30 orders with Buffalo Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_SPICYGARLIC,
            "title":"Garlicious",
            "description":"Serve 30 orders with Spicy Garlic Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_CALYPSO,
            "title":"Island Flavor",
            "description":"Serve 30 orders with Calypso Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_ATOMIC,
            "title":"Bombs Away",
            "description":"Serve 30 orders with Atomic Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_HONEYMUSTARD,
            "title":"Bee\'s Knees",
            "description":"Serve 30 orders with Honey Mustard Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_TERIYAKI,
            "title":"Sweet Soy",
            "description":"Serve 30 orders with Teriyaki Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_MEDIUM,
            "title":"Just Right",
            "description":"Serve 30 orders with Medium Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_PARMESAN,
            "title":"Creamy Parmesan",
            "description":"Serve 30 orders with Parmesan Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_WILDONION,
            "title":"Wild Side",
            "description":"Serve 30 orders with Wild Onion Sauce",
            "rewardMoney":2500,
            "showTally":true
         }),new Challenge(Challenge.USETOPPING,{
            "targetAmount":30,
            "topping":FoodData.SAUCE_WASABI,
            "title":"Strong Flavor",
            "description":"Serve 30 orders with Wasabi Sauce",
            "rewardMoney":2500,
            "showTally":true
         })];
         true;
         true;
         this.badgeQueue = [];
         super();
         true;
         true;
         this.gameObj = param1;
      }
      
      public function destroy() : void
      {
      }
      
      public function getChallengeTitle(param1:Number = -1) : String
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:String = "";
         true;
         true;
         false;
         false;
         if(param1 > -1)
         {
            if(param1 < _loc2_.badges.length)
            {
               _loc3_ = (_loc5_ = _loc2_.badges[param1]).title;
            }
         }
         return _loc3_;
      }
      
      public function getChallengeDescription(param1:Number = -1) : String
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:String = "";
         true;
         true;
         if(param1 > -1)
         {
            if(param1 < _loc2_.badges.length)
            {
               _loc3_ = (_loc5_ = _loc2_.badges[param1]).description;
            }
         }
         return _loc3_;
      }
      
      public function getChallengeRewardAmount(param1:Number = -1) : Number
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:Number = 0;
         true;
         true;
         if(param1 > -1)
         {
            false;
            false;
            if(param1 < _loc2_.badges.length)
            {
               _loc3_ = (_loc5_ = _loc2_.badges[param1]).rewardMoney;
            }
         }
         return _loc3_;
      }
      
      public function getChallengeTicketAmount(param1:Number = -1) : Number
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:Number = 0;
         if(param1 > -1)
         {
            true;
            true;
            true;
            true;
            if(param1 < _loc2_.badges.length)
            {
               true;
               true;
               _loc3_ = (_loc5_ = _loc2_.badges[param1]).tickets;
            }
         }
         return _loc3_;
      }
      
      public function getBadgeTallyString(param1:Number) : String
      {
         false;
         true;
         var _loc4_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = "";
         false;
         false;
         if(param1 < _loc2_.badges.length)
         {
            if((_loc4_ = _loc2_.badges[param1]).showTally)
            {
               if(_loc4_.tally < _loc4_.targetAmount)
               {
                  false;
                  false;
                  true;
                  true;
                  _loc3_ = "(" + _loc4_.tally + "/" + _loc4_.targetAmount + ")";
               }
            }
         }
         return _loc3_;
      }
      
      public function getChallengeMochiEarned(param1:Number = -1) : Boolean
      {
         false;
         true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:Boolean = false;
         if(param1 > -1)
         {
            true;
            true;
            if(param1 < _loc2_.badges.length)
            {
               false;
               false;
               _loc3_ = (_loc5_ = _loc2_.badges[param1]).hasEarnedMochiAchievement;
            }
         }
         return _loc3_;
      }
      
      public function setChallengeMochiEarned(param1:String) : void
      {
         false;
         true;
         var _loc4_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.badges.length)
         {
            if((_loc4_ = _loc2_.badges[_loc3_]).mochiAchievementID == param1)
            {
               _loc4_.hasEarnedMochiAchievement = true;
               false;
               false;
            }
            _loc3_++;
         }
      }
      
      public function getChallengeIsMochi(param1:Number = -1) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:Boolean = false;
         if(param1 > -1)
         {
            true;
            true;
            if(param1 < _loc2_.badges.length)
            {
               §§push((_loc5_ = _loc2_.badges[param1]).mochiAchievementID != null);
               if((_loc5_ = _loc2_.badges[param1]).mochiAchievementID != null)
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  false;
                  false;
                  §§push(_loc5_.mochiAchievementID != "");
               }
               if(§§pop())
               {
                  true;
                  true;
                  _loc3_ = true;
               }
            }
         }
         return _loc3_;
      }
      
      public function getChallengeMochiID(param1:Number = -1) : String
      {
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:String = "";
         true;
         true;
         if(param1 > -1)
         {
            true;
            true;
            if(param1 < _loc2_.badges.length)
            {
               false;
               false;
               §§push((_loc5_ = _loc2_.badges[param1]).mochiAchievementID != null);
               if((_loc5_ = _loc2_.badges[param1]).mochiAchievementID != null)
               {
                  false;
                  false;
                  §§pop();
                  true;
                  true;
                  §§push(_loc5_.mochiAchievementID != "");
               }
               if(§§pop())
               {
                  false;
                  false;
                  true;
                  true;
                  _loc3_ = _loc5_.mochiAchievementID;
               }
            }
         }
         return _loc3_;
      }
      
      public function getChallengeMochiPointsAmount(param1:Number = -1) : Number
      {
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:Number = 0;
         false;
         false;
         if(param1 > -1)
         {
            false;
            false;
            false;
            false;
            if(param1 < _loc2_.badges.length)
            {
               false;
               false;
               false;
               false;
               if((_loc5_ = _loc2_.badges[param1]).mochiAchievementID != null && _loc5_.mochiAchievementID != "")
               {
                  true;
                  true;
                  _loc3_ = _loc5_.mochiAchievementPoints;
               }
            }
         }
         return _loc3_;
      }
      
      public function getBadgeTally(param1:Number) : Number
      {
         false;
         true;
         var _loc4_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:Number = 0;
         false;
         false;
         false;
         false;
         if(param1 < _loc2_.badges.length)
         {
            true;
            true;
            _loc3_ = (_loc4_ = _loc2_.badges[param1]).tally;
         }
         return _loc3_;
      }
      
      public function getNumberOfBadges() : Number
      {
         var _loc1_:ChallengeManager = this;
         return _loc1_.badges.length;
      }
      
      public function recordRank(param1:Number) : void
      {
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.badges.length)
         {
            if((_loc5_ = _loc2_.badges[_loc4_]).challengeType == Challenge.RANK)
            {
               §§push(_loc5_.targetAmount <= param1);
               if(_loc5_.targetAmount <= param1)
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  false;
                  false;
                  §§push(!_loc3_.hasBadge(_loc4_));
               }
               if(§§pop())
               {
                  _loc3_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                  _loc3_.saveAfterBadge();
                  true;
                  true;
                  _loc2_.showEarningBadge(_loc4_);
               }
            }
            _loc4_++;
         }
      }
      
      public function recordUnlockTopping() : void
      {
         var _loc3_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_.badges.length)
         {
            if((_loc5_ = _loc1_.badges[_loc4_]).challengeType == Challenge.UNLOCKTOPPING)
            {
               false;
               false;
               true;
               true;
               _loc6_ = 0;
               _loc7_ = 0;
               if(_loc5_.toppings == "all")
               {
                  _loc6_ = _loc2_.toppingIndexes.length;
                  _loc3_ = 0;
                  while(_loc3_ < _loc2_.toppingIndexes.length)
                  {
                     if(_loc2_.hasTopping(_loc2_.toppingIndexes[_loc3_]))
                     {
                        true;
                        true;
                        true;
                        true;
                        _loc7_++;
                        false;
                        false;
                     }
                     false;
                     false;
                     _loc3_++;
                  }
                  true;
                  true;
               }
               else
               {
                  _loc6_ = Number(_loc5_.toppings.length);
                  _loc3_ = 0;
                  while(_loc3_ < _loc5_.toppings.length)
                  {
                     if(_loc2_.hasTopping(_loc5_.toppings[_loc3_]))
                     {
                        true;
                        true;
                        false;
                        false;
                        _loc7_++;
                     }
                     _loc3_++;
                  }
               }
               _loc5_.setTally(_loc7_);
               §§push(_loc7_ >= _loc6_);
               if(_loc7_ >= _loc6_)
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  true;
                  true;
                  §§push(!_loc2_.hasBadge(_loc4_));
               }
               if(§§pop())
               {
                  false;
                  false;
                  _loc2_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                  _loc2_.saveAfterBadge();
                  _loc1_.showEarningBadge(_loc4_);
               }
            }
            _loc4_++;
         }
      }
      
      public function recordPlayingMinigame() : void
      {
         var _loc6_:Challenge = null;
         var _loc7_:Boolean = false;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Number = 0;
         var _loc4_:int = 0;
         while(true)
         {
            true;
            true;
            if(_loc4_ >= _loc2_.minigamesPlayed.length)
            {
               break;
            }
            if(_loc2_.minigamesPlayed[_loc4_] > 0)
            {
               false;
               false;
               true;
               true;
               true;
               true;
               _loc3_++;
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc1_.badges.length)
         {
            if((_loc6_ = _loc1_.badges[_loc5_]).challengeType == Challenge.MINIGAME)
            {
               false;
               false;
               if((_loc7_ = _loc6_.setTally(_loc3_)) && !_loc2_.hasBadge(_loc5_))
               {
                  _loc2_.earnBadge(_loc5_,_loc6_.title,_loc6_.rewardMoney,_loc6_.tickets);
                  true;
                  true;
                  _loc2_.saveAfterBadge();
                  _loc1_.showEarningBadge(_loc5_);
               }
            }
            _loc5_++;
         }
      }
      
      public function recordEarningPrize() : void
      {
         false;
         true;
         var _loc4_:Challenge = null;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.badges.length)
         {
            true;
            true;
            if((_loc4_ = _loc1_.badges[_loc3_]).challengeType == Challenge.PRIZE)
            {
               false;
               false;
               §§push(_loc5_ = _loc4_.addToTally());
               if(_loc5_ = _loc4_.addToTally())
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  §§push(!_loc2_.hasBadge(_loc3_));
               }
               if(§§pop())
               {
                  _loc2_.earnBadge(_loc3_,_loc4_.title,_loc4_.rewardMoney,_loc4_.tickets);
                  _loc2_.saveAfterBadge();
                  _loc1_.showEarningBadge(_loc3_);
                  true;
                  true;
               }
            }
            else if(_loc4_.challengeType == Challenge.MULTIPRIZE)
            {
               true;
               true;
               _loc6_ = Math.round(_loc4_.targetAmount / _loc2_.numberOfMinigames);
               true;
               true;
               true;
               true;
               false;
               false;
               _loc7_ = 0;
               true;
               true;
               _loc8_ = 0;
               while(_loc8_ < _loc2_.minigamePrizes.length)
               {
                  true;
                  true;
                  _loc7_ += Math.min(_loc6_,_loc2_.minigamePrizes[_loc8_]);
                  _loc8_++;
                  true;
                  true;
               }
               §§push(_loc9_ = _loc4_.setTally(_loc7_));
               if(_loc9_ = _loc4_.setTally(_loc7_))
               {
                  false;
                  false;
                  §§pop();
                  §§push(!_loc2_.hasBadge(_loc3_));
               }
               if(§§pop())
               {
                  _loc2_.earnBadge(_loc3_,_loc4_.title,_loc4_.rewardMoney,_loc4_.tickets);
                  _loc2_.saveAfterBadge();
                  _loc1_.showEarningBadge(_loc3_);
               }
            }
            _loc3_++;
         }
      }
      
      public function recordUpgrade(param1:String) : void
      {
         false;
         true;
         var _loc5_:Challenge = null;
         var _loc6_:Boolean = false;
         var _loc2_:ChallengeManager = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.badges.length)
         {
            if((_loc5_ = _loc2_.badges[_loc4_]).challengeType == Challenge.UPGRADES)
            {
               true;
               true;
               if(_loc5_.upgrades == "any" || _loc5_.upgrades.indexOf(param1) > -1)
               {
                  if((_loc6_ = _loc5_.addToTally()) && !_loc3_.hasBadge(_loc4_))
                  {
                     _loc3_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                     true;
                     true;
                     _loc3_.saveAfterBadge();
                     _loc2_.showEarningBadge(_loc4_);
                  }
               }
            }
            _loc4_++;
         }
      }
      
      public function recordTagged(param1:String, param2:Number = 1) : void
      {
         false;
         true;
         var _loc6_:Challenge = null;
         var _loc7_:Boolean = false;
         var _loc3_:ChallengeManager = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.badges.length)
         {
            false;
            false;
            if((_loc6_ = _loc3_.badges[_loc5_]).challengeType == Challenge.TAGGED)
            {
               if(_loc6_.tagName == param1)
               {
                  true;
                  true;
                  if((_loc7_ = _loc6_.addToTally(param2)) && !_loc4_.hasBadge(_loc5_))
                  {
                     _loc4_.earnBadge(_loc5_,_loc6_.title,_loc6_.rewardMoney,_loc6_.tickets);
                     _loc4_.saveAfterBadge();
                     _loc3_.showEarningBadge(_loc5_);
                  }
               }
            }
            _loc5_++;
         }
      }
      
      public function recordPurchase(param1:String = "furniture") : void
      {
         false;
         true;
         var _loc5_:Challenge = null;
         var _loc6_:Boolean = false;
         var _loc2_:ChallengeManager = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.badges.length)
         {
            if((_loc5_ = _loc2_.badges[_loc4_]).challengeType == Challenge.PURCHASES)
            {
               if(_loc5_.upgrades == "any" || _loc5_.upgrades == param1)
               {
                  true;
                  true;
                  true;
                  true;
                  if((_loc6_ = _loc5_.addToTally()) && !_loc3_.hasBadge(_loc4_))
                  {
                     false;
                     false;
                     _loc3_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                     true;
                     true;
                     _loc3_.saveAfterBadge();
                     true;
                     true;
                     _loc2_.showEarningBadge(_loc4_);
                  }
               }
            }
            _loc4_++;
         }
      }
      
      public function recordFurniture(param1:String, param2:String = "furniture", param3:Boolean = false) : void
      {
         var _loc7_:Challenge = null;
         var _loc8_:Boolean = false;
         var _loc4_:ChallengeManager;
         var _loc5_:UserData = (_loc4_ = this).gameObj.userData;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.badges.length)
         {
            true;
            true;
            if((_loc7_ = _loc4_.badges[_loc6_]).challengeType == Challenge.FURNITURE && param3 == false || §§pop() && param3 == true)
            {
               true;
               true;
               if(_loc7_.upgrades == "any" || _loc7_.upgrades.indexOf(param1) > -1 || _loc7_.upgrades == param2)
               {
                  true;
                  true;
                  false;
                  false;
                  false;
                  false;
                  if((_loc8_ = _loc7_.addToTally()) && !_loc5_.hasBadge(_loc6_))
                  {
                     _loc5_.earnBadge(_loc6_,_loc7_.title,_loc7_.rewardMoney,_loc7_.tickets);
                     _loc5_.saveAfterBadge();
                     _loc4_.showEarningBadge(_loc6_);
                  }
               }
            }
            _loc6_++;
         }
      }
      
      public function recordClothing(param1:String, param2:String = "furniture", param3:Boolean = false) : void
      {
         var _loc7_:Challenge = null;
         var _loc8_:Boolean = false;
         var _loc4_:ChallengeManager;
         var _loc5_:UserData = (_loc4_ = this).gameObj.userData;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.badges.length)
         {
            false;
            false;
            false;
            false;
            if((_loc7_ = _loc4_.badges[_loc6_]).challengeType == Challenge.CLOTHING && param3 == false || (_loc7_.challengeType == Challenge.REWARDCLOTHING || _loc7_.challengeType == Challenge.REWARDANY) && param3 == true)
            {
               if(_loc7_.upgrades == "any" || _loc7_.upgrades.indexOf(param1) > -1 || _loc7_.upgrades == param2)
               {
                  true;
                  true;
                  §§push(_loc8_ = _loc7_.addToTally());
                  if(_loc8_ = _loc7_.addToTally())
                  {
                     true;
                     true;
                     §§pop();
                     true;
                     true;
                     §§push(!_loc5_.hasBadge(_loc6_));
                  }
                  if(§§pop())
                  {
                     _loc5_.earnBadge(_loc6_,_loc7_.title,_loc7_.rewardMoney,_loc7_.tickets);
                     _loc5_.saveAfterBadge();
                     _loc4_.showEarningBadge(_loc6_);
                  }
               }
            }
            _loc6_++;
         }
      }
      
      public function recordCustomerSeal(param1:Number = 0, param2:String = "") : void
      {
         false;
         true;
         var _loc7_:Challenge = null;
         var _loc8_:Boolean = false;
         var _loc3_:ChallengeManager = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:String = "";
         true;
         true;
         true;
         true;
         if(param1 == 1)
         {
            _loc5_ = "bronze";
         }
         else
         {
            true;
            true;
            false;
            false;
            if(param1 == 2)
            {
               _loc5_ = "silver";
            }
            else if(param1 == 3)
            {
               false;
               false;
               _loc5_ = "gold";
            }
            else
            {
               true;
               true;
               _loc5_ = param2;
            }
         }
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_.badges.length)
         {
            if((_loc7_ = _loc3_.badges[_loc6_]).challengeType == Challenge.SEALS && _loc7_.sealType == _loc5_)
            {
               if((_loc8_ = _loc7_.addToTally()) && !_loc4_.hasBadge(_loc6_))
               {
                  _loc4_.earnBadge(_loc6_,_loc7_.title,_loc7_.rewardMoney,_loc7_.tickets);
                  _loc4_.saveAfterBadge();
                  _loc3_.showEarningBadge(_loc6_);
               }
            }
            _loc6_++;
         }
      }
      
      public function recordRibbon() : void
      {
         false;
         true;
         var _loc4_:Challenge = null;
         var _loc5_:Boolean = false;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.badges.length)
         {
            if((_loc4_ = _loc1_.badges[_loc3_]).challengeType == Challenge.RIBBON)
            {
               false;
               false;
               false;
               false;
               if((_loc5_ = _loc4_.addToTally()) && !_loc2_.hasBadge(_loc3_))
               {
                  _loc2_.earnBadge(_loc3_,_loc4_.title,_loc4_.rewardMoney,_loc4_.tickets);
                  _loc2_.saveAfterBadge();
                  _loc1_.showEarningBadge(_loc3_);
               }
            }
            _loc3_++;
         }
      }
      
      public function recordPayDay() : void
      {
         false;
         true;
         var _loc4_:Challenge = null;
         var _loc5_:Boolean = false;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.badges.length)
         {
            if((_loc4_ = _loc1_.badges[_loc3_]).challengeType == Challenge.PAYDAY)
            {
               if((_loc5_ = _loc4_.addToTally()) && !_loc2_.hasBadge(_loc3_))
               {
                  true;
                  true;
                  _loc2_.earnBadge(_loc3_,_loc4_.title,_loc4_.rewardMoney,_loc4_.tickets);
                  _loc2_.saveAfterBadge();
                  false;
                  false;
                  _loc1_.showEarningBadge(_loc3_);
                  true;
                  true;
               }
            }
            _loc3_++;
         }
      }
      
      public function recordMeterAward(param1:String, param2:String) : void
      {
         false;
         true;
         var _loc6_:Challenge = null;
         var _loc7_:Boolean = false;
         var _loc3_:ChallengeManager = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.badges.length)
         {
            true;
            true;
            false;
            false;
            if((_loc6_ = _loc3_.badges[_loc5_]).challengeType == Challenge.METER)
            {
               true;
               true;
               false;
               false;
               true;
               true;
               true;
               true;
               §§push(_loc6_.scoreType == "any" || _loc6_.scoreType.indexOf(param2) > -1);
               if(_loc6_.scoreType == "any" || _loc6_.scoreType.indexOf(param2) > -1)
               {
                  §§pop();
                  true;
                  true;
                  false;
                  false;
                  §§push(_loc6_.machine == "any");
                  if(!(_loc6_.machine == "any"))
                  {
                     false;
                     false;
                     §§pop();
                     false;
                     false;
                     §§push(_loc6_.machine == param1);
                  }
               }
               if(§§pop())
               {
                  true;
                  true;
                  false;
                  false;
                  if((_loc7_ = _loc6_.addToTally()) && !_loc4_.hasBadge(_loc5_))
                  {
                     false;
                     false;
                     _loc4_.earnBadge(_loc5_,_loc6_.title,_loc6_.rewardMoney,_loc6_.tickets);
                     false;
                     false;
                     _loc4_.saveAfterBadge();
                     _loc3_.showEarningBadge(_loc5_);
                  }
               }
            }
            _loc5_++;
         }
      }
      
      public function recordServiceQuality(param1:Number = 100) : void
      {
         false;
         true;
         var _loc5_:Challenge = null;
         var _loc6_:Boolean = false;
         var _loc2_:ChallengeManager = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.badges.length)
         {
            true;
            true;
            if((_loc5_ = _loc2_.badges[_loc4_]).challengeType == Challenge.SERVICEQUALITY && _loc5_.percentQuality <= param1)
            {
               true;
               true;
               if((_loc6_ = _loc5_.addToTally()) && !_loc3_.hasBadge(_loc4_))
               {
                  _loc3_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                  _loc3_.saveAfterBadge();
                  _loc2_.showEarningBadge(_loc4_);
                  false;
                  false;
               }
            }
            _loc4_++;
         }
      }
      
      public function recordServeOrder(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Array, param8:String) : void
      {
         false;
         true;
         var _loc15_:Challenge = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Array = null;
         var _loc21_:Number = NaN;
         var _loc9_:ChallengeManager;
         var _loc10_:UserData = (_loc9_ = this).gameObj.userData;
         var _loc11_:Number = Math.floor((param2 + param3 + param4 + param5) / 4);
         var _loc12_:Array = param7.concat();
         var _loc13_:Boolean = false;
         var _loc14_:int = 0;
         while(_loc14_ < _loc9_.badges.length)
         {
            _loc15_ = _loc9_.badges[_loc14_];
            false;
            false;
            _loc16_ = false;
            if(_loc12_.indexOf(_loc15_.topping) > -1)
            {
               false;
               false;
               _loc16_ = true;
            }
            false;
            false;
            true;
            true;
            if(_loc15_.challengeType == Challenge.USETOPPING && _loc16_)
            {
               true;
               true;
               §§push(_loc13_ = _loc15_.addToTally());
               if(_loc13_ = _loc15_.addToTally())
               {
                  false;
                  false;
                  §§pop();
                  §§push(!_loc10_.hasBadge(_loc14_));
               }
               if(§§pop())
               {
                  _loc10_.earnBadge(_loc14_,_loc15_.title,_loc15_.rewardMoney,_loc15_.tickets);
                  _loc10_.saveAfterBadge();
                  false;
                  false;
                  _loc9_.showEarningBadge(_loc14_);
               }
            }
            else if(_loc15_.challengeType == Challenge.HAT && _loc15_.hat == param8)
            {
               false;
               false;
               if((_loc13_ = _loc15_.addToTally()) && !_loc10_.hasBadge(_loc14_))
               {
                  _loc10_.earnBadge(_loc14_,_loc15_.title,_loc15_.rewardMoney,_loc15_.tickets);
                  false;
                  false;
                  _loc10_.saveAfterBadge();
                  _loc9_.showEarningBadge(_loc14_);
               }
            }
            else if(_loc15_.challengeType == Challenge.SCORE)
            {
               true;
               true;
               _loc17_ = false;
               §§push(_loc15_.scoreType == "Waiting");
               if(_loc15_.scoreType == "Waiting")
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  §§push(param2 >= _loc15_.score);
               }
               if(§§pop())
               {
                  true;
                  true;
                  §§pop();
                  true;
                  true;
                  §§push(_loc15_.customer == "any");
                  if(!(_loc15_.customer == "any"))
                  {
                     false;
                     false;
                     §§pop();
                     false;
                     false;
                     false;
                     false;
                     §§push(_loc15_.customer == param1);
                  }
               }
               if(§§pop())
               {
                  true;
                  true;
                  _loc17_ = true;
                  false;
                  false;
               }
               else if(_loc15_.scoreType == "Grilling" && param3 >= _loc15_.score && (_loc15_.customer == "any" || _loc15_.customer == param1))
               {
                  _loc17_ = true;
                  true;
                  true;
               }
               else
               {
                  §§push(_loc15_.scoreType == "Building" && param4 >= _loc15_.score);
                  if(_loc15_.scoreType == "Building" && param4 >= _loc15_.score)
                  {
                     §§pop();
                     true;
                     true;
                     true;
                     true;
                     §§push(_loc15_.customer == "any");
                     if(!(_loc15_.customer == "any"))
                     {
                        false;
                        false;
                        §§pop();
                        true;
                        true;
                        false;
                        false;
                        §§push(_loc15_.customer == param1);
                     }
                  }
                  if(§§pop())
                  {
                     _loc17_ = true;
                  }
                  else
                  {
                     true;
                     true;
                     §§push(_loc15_.scoreType == "Saucing" && param5 >= _loc15_.score);
                     if(_loc15_.scoreType == "Saucing" && param5 >= _loc15_.score)
                     {
                        §§pop();
                        true;
                        true;
                        §§push(_loc15_.customer == "any");
                        if(!(_loc15_.customer == "any"))
                        {
                           false;
                           false;
                           §§pop();
                           false;
                           false;
                           true;
                           true;
                           §§push(_loc15_.customer == param1);
                        }
                     }
                     if(§§pop())
                     {
                        false;
                        false;
                        false;
                        false;
                        _loc17_ = true;
                     }
                     else
                     {
                        false;
                        false;
                        §§push(_loc15_.scoreType == "Overall" && _loc11_ >= _loc15_.score);
                        if(_loc15_.scoreType == "Overall" && _loc11_ >= _loc15_.score)
                        {
                           §§pop();
                           true;
                           true;
                           §§push(_loc15_.customer == "any");
                           if(!(_loc15_.customer == "any"))
                           {
                              true;
                              true;
                              §§pop();
                              true;
                              true;
                              false;
                              false;
                              §§push(_loc15_.customer == param1);
                           }
                        }
                        if(§§pop())
                        {
                           _loc17_ = true;
                           false;
                           false;
                        }
                        else
                        {
                           true;
                           true;
                           true;
                           true;
                           if(_loc15_.scoreType == "Points" && param6 >= _loc15_.score && (_loc15_.customer == "any" || _loc15_.customer == param1))
                           {
                              _loc17_ = true;
                           }
                        }
                     }
                  }
               }
               if(_loc17_)
               {
                  if((_loc13_ = _loc15_.addToTally()) && !_loc10_.hasBadge(_loc14_))
                  {
                     _loc10_.earnBadge(_loc14_,_loc15_.title,_loc15_.rewardMoney,_loc15_.tickets);
                     _loc10_.saveAfterBadge();
                     _loc9_.showEarningBadge(_loc14_);
                  }
               }
            }
            else if(_loc15_.challengeType == Challenge.SERVECUSTOMERS)
            {
               _loc19_ = _loc9_.gameObj.customerData.getCustomerIndex(param1);
               _loc20_ = [];
               true;
               true;
               _loc21_ = 0;
               if(_loc15_.customers == "all")
               {
                  false;
                  false;
                  true;
                  true;
                  _loc18_ = 1;
                  while(_loc18_ <= _loc9_.gameObj.customerData.getCustomerTotal())
                  {
                     _loc20_.push(_loc18_);
                     true;
                     true;
                     _loc18_++;
                  }
               }
               else
               {
                  _loc18_ = 0;
                  while(_loc18_ < _loc15_.customers.length)
                  {
                     _loc20_.push(_loc9_.gameObj.customerData.getCustomerIndex(_loc15_.customers[_loc18_]));
                     false;
                     false;
                     _loc18_++;
                     true;
                     true;
                  }
                  true;
                  true;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc20_.length)
               {
                  if(_loc10_.customerVisits[_loc20_[_loc18_]] > 0)
                  {
                     true;
                     true;
                     _loc21_++;
                     true;
                     true;
                  }
                  _loc18_++;
               }
               if(_loc20_.indexOf(_loc19_) > -1)
               {
                  _loc15_.setTally(_loc21_);
                  false;
                  false;
                  if(_loc21_ >= _loc20_.length && !_loc10_.hasBadge(_loc14_))
                  {
                     true;
                     true;
                     _loc10_.earnBadge(_loc14_,_loc15_.title,_loc15_.rewardMoney,_loc15_.tickets);
                     _loc10_.saveAfterBadge();
                     _loc9_.showEarningBadge(_loc14_);
                  }
               }
            }
            _loc14_++;
         }
      }
      
      public function getMedalProgressArray() : Array
      {
         var _loc4_:Challenge = null;
         var _loc1_:ChallengeManager = this;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.badges.length)
         {
            _loc4_ = _loc1_.badges[_loc3_];
            _loc2_[_loc3_] = _loc4_.tally;
            true;
            true;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function populateMedalProgress(param1:Array) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = 0;
            true;
            true;
            if(param1[_loc3_])
            {
               true;
               true;
               _loc4_ = Number(param1[_loc3_]);
            }
            if(_loc2_.badges.length > _loc3_)
            {
               true;
               true;
               (_loc5_ = _loc2_.badges[_loc3_]).setTally(_loc4_);
            }
            _loc3_++;
            false;
            false;
         }
      }
      
      public function syncMochiAchievements() : void
      {
         var _loc3_:int = 0;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc1_.gameObj.var_10.var_170)
         {
            class_5.method_25("Sync Mochi Achievements to Player\'s Badges");
            false;
            false;
            _loc3_ = 0;
            while(_loc3_ < _loc1_.badges.length)
            {
               if(_loc2_.hasBadge(_loc3_))
               {
                  true;
                  true;
                  §§push(_loc1_.getChallengeIsMochi(_loc3_));
                  if(_loc1_.getChallengeIsMochi(_loc3_))
                  {
                     true;
                     true;
                     §§pop();
                     §§push(!_loc1_.getChallengeMochiEarned(_loc3_));
                  }
                  if(§§pop())
                  {
                     false;
                     false;
                     false;
                     false;
                     true;
                     true;
                     class_5.method_25("Should Sync Mochi Badge: (#" + _loc3_ + ", " + _loc1_.getChallengeTitle(_loc3_) + ", id=" + _loc1_.getChallengeMochiID(_loc3_) + ")");
                     MochiEvents.unlockAchievement({"id":_loc1_.getChallengeMochiID(_loc3_)});
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function resetAllTallies() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Challenge = null;
         var _loc1_:ChallengeManager = this;
         false;
         false;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.badges.length)
         {
            _loc3_ = _loc1_.badges[_loc2_];
            _loc3_.clearTally(true);
            true;
            true;
            _loc2_++;
         }
      }
      
      public function showEarningBadge(param1:Number) : void
      {
         false;
         true;
         var _loc2_:ChallengeManager = this;
         false;
         false;
         class_5.method_25("EARN BADGE #" + param1 + ". ADD TO QUEUE!");
         _loc2_.badgeQueue.push(param1);
         _loc2_.checkForDisplayingBadges();
      }
      
      public function checkForDisplayingBadges() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc1_:ChallengeManager = this;
         false;
         false;
         §§push(_loc1_.badgeDropdown == null);
         if(_loc1_.badgeDropdown == null)
         {
            true;
            true;
            §§pop();
            false;
            false;
            §§push(_loc1_.badgeQueue.length > 0);
         }
         if(§§pop())
         {
            false;
            false;
            _loc2_ = Number(_loc1_.badgeQueue[0]);
            _loc1_.badgeDropdown = new badgeDropdownMC();
            _loc1_.badgeDropdown.buttonMode = true;
            _loc1_.badgeDropdown.mouseEnabled = true;
            _loc1_.badgeDropdown.mouseChildren = false;
            _loc1_.badgeDropdown.tabEnabled = false;
            _loc1_.badgeDropdown.x = _loc1_.dropdownX;
            _loc1_.badgeDropdown.panel.title_txt.text = _loc1_.getChallengeTitle(_loc2_);
            true;
            true;
            _loc1_.badgeDropdown.panel.description_txt.text = _loc1_.getChallengeDescription(_loc2_);
            _loc1_.badgeDropdown.panel.reward_txt.text = "+ $" + class_8.method_31(_loc1_.getChallengeRewardAmount(_loc2_) / 100);
            if(_loc1_.getChallengeTicketAmount(_loc2_) > 0)
            {
               _loc1_.badgeDropdown.panel.tickets_txt.text = String(_loc1_.getChallengeTicketAmount(_loc2_));
               _loc1_.badgeDropdown.panel.ticketicon.visible = true;
               true;
               true;
            }
            else
            {
               _loc1_.badgeDropdown.panel.tickets_txt.text = "";
               _loc1_.badgeDropdown.panel.ticketicon.visible = false;
            }
            _loc1_.badgeDropdown.panel.thumb.gotoAndStop(_loc2_ + 1);
            false;
            false;
            _loc1_.gameObj.soundManager.playSound("getstar.wav");
            try
            {
               _loc1_.badgeDropdown.panel.mochipanel.visible = false;
            }
            catch(err:Error)
            {
            }
            _loc1_.dropdownOnScreenTimer = 0;
            _loc1_.dropdownStartY = 0 - _loc1_.dropdownHeight;
            false;
            false;
            if(_loc1_.gameObj.var_10.api.var_19.length == 0)
            {
               true;
               true;
               _loc1_.badgeDropdown.y = this.dropdownStartY;
               true;
               true;
               _loc1_.gameObj.addChild(_loc1_.badgeDropdown);
               false;
               false;
            }
            else
            {
               _loc1_.badgeDropdown.y = this.dropdownStartY;
               _loc1_.gameObj.addChild(_loc1_.badgeDropdown);
               true;
               true;
            }
            _loc1_.badgeDropdown.addEventListener(Event.ENTER_FRAME,_loc1_.animateBadgeDropdown);
            _loc1_.badgeDropdown.addEventListener(MouseEvent.CLICK,_loc1_.clickBadgeDropdown);
            if(_loc1_.gameObj.var_10.var_170)
            {
               true;
               true;
               §§push(_loc1_.getChallengeIsMochi(_loc2_));
               if(_loc1_.getChallengeIsMochi(_loc2_))
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  §§push(!_loc1_.getChallengeMochiEarned(_loc2_));
               }
               if(§§pop())
               {
                  false;
                  false;
                  class_5.method_25("Should Earn Mochi Badge! (" + _loc1_.getChallengeTitle(_loc2_) + ", id=" + _loc1_.getChallengeMochiID(_loc2_) + ")");
                  MochiEvents.unlockAchievement({"id":_loc1_.getChallengeMochiID(_loc2_)});
               }
            }
         }
      }
      
      public function clickBadgeDropdown(param1:MouseEvent) : void
      {
         false;
         true;
         var _loc2_:ChallengeManager = this;
         false;
         false;
         _loc2_.dropdownOnScreenTimer = _loc2_.dropdownOnScreenWait - 1;
      }
      
      public function animateBadgeDropdown(param1:Event) : void
      {
         false;
         true;
         var _loc3_:Number = NaN;
         var _loc2_:ChallengeManager = this;
         if(_loc2_.badgeDropdown != null)
         {
            false;
            false;
            if(_loc2_.dropdownOnScreenTimer == 0)
            {
               if(_loc2_.badgeDropdown.y < _loc2_.dropdownStartY + _loc2_.dropdownHeight)
               {
                  true;
                  true;
                  _loc3_ = _loc2_.dropdownStartY + _loc2_.dropdownHeight - _loc2_.badgeDropdown.y;
                  _loc2_.badgeDropdown.y += _loc3_ / _loc2_.dropdownSpeed;
                  false;
                  false;
                  true;
                  true;
                  true;
                  true;
                  if(_loc3_ >= -1 && _loc3_ <= 1)
                  {
                     _loc2_.badgeDropdown.y = _loc2_.dropdownStartY + _loc2_.dropdownHeight;
                     var _loc4_:*;
                     var _loc5_:* = (_loc4_ = _loc2_).dropdownOnScreenTimer + 1;
                     false;
                     false;
                     _loc4_.dropdownOnScreenTimer = _loc5_;
                     false;
                     false;
                  }
               }
            }
            else if(_loc2_.dropdownOnScreenTimer == _loc2_.dropdownOnScreenWait)
            {
               if(_loc2_.badgeDropdown.y > _loc2_.dropdownStartY)
               {
                  true;
                  true;
                  true;
                  true;
                  _loc3_ = _loc2_.dropdownStartY - _loc2_.badgeDropdown.y;
                  _loc2_.badgeDropdown.y += _loc3_ / _loc2_.dropdownSpeed;
                  false;
                  false;
                  §§push(_loc3_ >= -1);
                  if(_loc3_ >= -1)
                  {
                     false;
                     false;
                     §§pop();
                     §§push(_loc3_ <= 1);
                  }
                  if(§§pop())
                  {
                     _loc2_.badgeDropdown.removeEventListener(Event.ENTER_FRAME,_loc2_.animateBadgeDropdown);
                     false;
                     false;
                     _loc2_.badgeDropdown.removeEventListener(MouseEvent.CLICK,_loc2_.clickBadgeDropdown);
                     _loc2_.badgeDropdown.parent.removeChild(_loc2_.badgeDropdown);
                     _loc2_.badgeDropdown = null;
                     _loc2_.badgeQueue.shift();
                     _loc2_.checkForDisplayingBadges();
                     false;
                     false;
                  }
               }
            }
            else
            {
               false;
               false;
               _loc5_ = (_loc4_ = _loc2_).dropdownOnScreenTimer + 1;
               false;
               false;
               _loc4_.dropdownOnScreenTimer = _loc5_;
            }
         }
      }
   }
}
