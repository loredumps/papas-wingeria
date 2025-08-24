package wingGame.data
{
   import flash.net.SharedObject;
   import package_2.class_13;
   import package_2.class_5;
   import package_2.class_8;
   import package_4.class_4;
   import package_5.*;
   
   public class UserData
   {
       
      
      public var gameObj:class_4;
      
      public var saveSlotPrefix:String = "papaswingeria_";
      
      public var saveSlotVersion:String = "1.0";
      
      public var papaReturnsOnDay:Number = 100;
      
      public var playedALevel:Boolean = false;
      
      public var myRank:Number = 1;
      
      public var myName:String = "Anonymous";
      
      public var whichCharacter:String = "marty";
      
      public var lastRibbon:Number = 0;
      
      public var ribbonDaysActive:Number = 3;
      
      public var totalMoneyEarned:Number = 0;
      
      public var totalTicketsEarned:Number = 0;
      
      public var totalScore:Number = 0;
      
      public var totalTips:Number = 0;
      
      public var totalTickets:Number = 0;
      
      public var currentDay:Number = 1;
      
      public var todayScore:Number = 0;
      
      public var todayTickets:Number = 0;
      
      public var todayTips:Number = 0;
      
      public var todayWaitScore:Number = 0;
      
      public var todayGrillScore:Number = 0;
      
      public var todaySauceScore:Number = 0;
      
      public var todayBuildScore:Number = 0;
      
      public var todayCustomers:Number = 0;
      
      public var todayMeterTopping:Number = 0;
      
      public var customersUnlocked:Array;
      
      public var customerStars:Array;
      
      public var customerSeals:Array;
      
      public var customerVisits:Array;
      
      public var customerFirstVisit:Array;
      
      public var didShowParade:Boolean = false;
      
      public var seenFloatsInParade:Number = 0;
      
      public var didClickTwitter:Boolean = false;
      
      public var didClickFacebook:Boolean = false;
      
      public var hasTrainedBoost:Boolean = false;
      
      public var hasTrainedCloser:Boolean = false;
      
      public var hasTrainedCritic:Boolean = false;
      
      public var hasTrainedRibbon:Boolean = false;
      
      public var hasTrainedMinigame:Boolean = false;
      
      public var hasTrainedDecorate:Boolean = false;
      
      public var hasTrainedInventory:Boolean = false;
      
      public var hasTrainedPoster:Boolean = false;
      
      public var hasTrainedFurni:Boolean = false;
      
      public var hasContinuedGame:Boolean = false;
      
      public var hasVisitedUpgradeShop:Boolean = false;
      
      public var hasVisitedLobbyEditor:Boolean = false;
      
      public var hasPlacedFurniture:Boolean = false;
      
      public var hasVisitedBadgesScreen:Boolean = false;
      
      public var hasTrainedPattern2:Boolean = false;
      
      public var hasTrainedPattern3:Boolean = false;
      
      public var hasTrainedPattern4:Boolean = false;
      
      public var hasTrainedPattern5:Boolean = false;
      
      public var hasTrainedPattern6:Boolean = false;
      
      public var hasTrainedPattern7:Boolean = false;
      
      public var hasTrainedPattern8:Boolean = false;
      
      public var hasTrainedSauce:Boolean = false;
      
      public var initialCustomers:Number = 6;
      
      public var fillerCustomers:Number = 5;
      
      public var spacedCustomers:Number = 4;
      
      public var closerCustomers:Number = 7;
      
      public var toppingsUnlocked:Array;
      
      public var toppingsRevealed:Array;
      
      public var toppingIndexes:Array;
      
      public var toppingNames:Array;
      
      public var initialToppings:Number = 7;
      
      public var totalBonuses:Number = 13;
      
      public var bonusUpgrades:Array;
      
      public var numNapkins:Number = 0;
      
      public var furniInventory:Array;
      
      public var lobbyPlacement:Array;
      
      public var lobbyWallpaper:Number = 1;
      
      public var lobbyFlooring:Number = 1;
      
      public var clothingInventory:Array;
      
      public var hasNewClothing:Boolean = false;
      
      public var hasNewFurni:Boolean = false;
      
      public var rankTitles:Array;
      
      public var rankPlateauLimit:Number = 20;
      
      public var rankMultiplier:Number = 150;
      
      public var lastRankLimit:Number = 0;
      
      public var baseWeeklyWage:Number = 10000;
      
      public var wageIncreasePerRank:Number = 500;
      
      public var whichSlot:Number = 1;
      
      public var medalsEarned:Array;
      
      public var medalProgress:Array;
      
      public var numberOfMinigames:Number = 7;
      
      public var minigamesPlayed:Array;
      
      public var minigamePrizes:Array;
      
      public function UserData(param1:class_4)
      {
         false;
         true;
         this.customersUnlocked = [];
         this.customerStars = [];
         this.customerSeals = [];
         this.customerVisits = [];
         true;
         true;
         this.customerFirstVisit = [];
         true;
         true;
         this.toppingsUnlocked = [];
         this.toppingsRevealed = [];
         this.toppingIndexes = ["wing","bbq","buffalo","carrot","celery","bluecheese","ranch","spicygarlic","calypso","redpepper","boneless","mangochili","atomic","greenpepper","honeymustard","awesomesauce","strips","teriyaki","fry","kungpao","medium","shrimp","parmesan","cheesecubes","wildonion","zestypesto","wasabi"];
         this.toppingNames = ["Wings","BBQ Sauce","Buffalo Sauce","Carrots","Celery","Blue Cheese Dip","Ranch Dip","Spicy Garlic Sauce","Calypso Sauce","Red Peppers","Boneless Wings","Mango Chili Dip","Atomic Sauce","Green Peppers","Honey Mustard Sauce","Awesome Sauce Dip","Chicken Strips","Teriyaki Sauce","French Fries","Kung Pao Dip","Medium Sauce","Shrimp","Parmesan Sauce","Cheese Cubes","Wild Onion Sauce","Zesty Pesto Dip","Wasabi Sauce"];
         false;
         false;
         this.bonusUpgrades = [];
         this.furniInventory = [];
         this.lobbyPlacement = [];
         this.clothingInventory = [];
         false;
         false;
         this.rankTitles = ["!","Newbie","Trainee","Tray Cleaner","Cashier","Boneless Buddy","Chili Champ","Atomic Saucer","Pepper Pro","Mustard Master","Awesomesauce","Strip Server","Teriyaki Pro","Fry Fan","Kung Pao Pro","Medium Master","Shrimp Server","Parmesan Pro","Cheese Cuber","Onion Wrangler","Pesto Zester","Wasabi Warrior","Wing Wrangler","Celery Server","Carrot Champ","BBQ Master","Buffalo Pro","Blue Cheese Buddy","Ranch Master","Deep Fryer","Sauce Tosser","Wing Hero","Chicken Champ","Platter Pro","Side Specialist","Dip Fanatic","Wing Arranger","Presentation Pro","Chicken Chef","Fryer Fanatic","Fry Basket Buddy","Chicken Breader","Sauce Squirter","Veggie Fan","Pattern Pro","Wing Tosser","Shrimp Saucer","Chicken Strip Pro","Chicken Nuggeteer","Wing Warrior","Employee of the Year","Order Expert","Fryer Expert","Sauce Expert","Build Expert","Restaurant Manager","Starlight Star","Wingeria Master","King of Wings","Better Than Papa!"];
         this.medalsEarned = [];
         this.medalProgress = [];
         this.minigamesPlayed = [0,0,0,0,0,0,0];
         this.minigamePrizes = [0,0,0,0,0,0,0];
         super();
         var _loc2_:UserData = this;
         _loc2_.gameObj = param1;
      }
      
      public function loadData(param1:Number) : void
      {
         var whichSlot:Number;
         var ob:UserData;
         var so:SharedObject;
         var b:Number;
         var nb:Number;
         var start:Number = NaN;
         var bb:Number = NaN;
         true;
         true;
         false;
         false;
         b = NaN;
         nb = NaN;
         false;
         false;
         whichSlot = param1;
         ob = this;
         ob.whichSlot = whichSlot;
         ob.gameObj.challengeManager.resetAllTallies();
         so = SharedObject.getLocal(this.saveSlotPrefix + whichSlot,"/");
         if(so.data.rank)
         {
            class_5.debug("Load from Existing Slot " + whichSlot);
            ob.myRank = so.data.rank;
            true;
            true;
            true;
            true;
            true;
            true;
            ob.totalScore = so.data.score;
            true;
            true;
            true;
            true;
            false;
            false;
            ob.totalTips = so.data.tips;
            true;
            true;
            ob.currentDay = so.data.day;
            true;
            true;
            ob.myName = so.data.playername;
            false;
            false;
            if(so.data.allmoney)
            {
               ob.totalMoneyEarned = so.data.allmoney;
            }
            else
            {
               true;
               true;
               true;
               true;
               ob.totalMoneyEarned = ob.totalTips;
            }
            if(so.data.character)
            {
               ob.whichCharacter = so.data.character;
               true;
               true;
            }
            else
            {
               ob.whichCharacter = "marty";
            }
            if(so.data.bonuses)
            {
               false;
               false;
               ob.bonusUpgrades = so.data.bonuses.concat();
               start = ob.bonusUpgrades.length;
               if(ob.bonusUpgrades.length < ob.totalBonuses + 1)
               {
                  bb = start;
                  while(true)
                  {
                     true;
                     true;
                     false;
                     false;
                     if(bb > ob.totalBonuses)
                     {
                        break;
                     }
                     false;
                     false;
                     ob.bonusUpgrades.push(0);
                     false;
                     false;
                     true;
                     true;
                     false;
                     false;
                     bb++;
                     false;
                     false;
                  }
               }
            }
            else
            {
               true;
               true;
               ob.bonusUpgrades = [];
               false;
               false;
               b = 0;
               while(true)
               {
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  if(b > ob.totalBonuses)
                  {
                     break;
                  }
                  ob.bonusUpgrades.push(0);
                  true;
                  true;
                  false;
                  false;
                  b++;
               }
            }
            if(so.data.inventory)
            {
               ob.furniInventory = class_13.method_38(so.data.inventory);
            }
            else
            {
               ob.furniInventory = [];
            }
            if(so.data.lobby)
            {
               true;
               true;
               ob.lobbyPlacement = class_13.method_38(so.data.lobby);
            }
            else
            {
               ob.lobbyPlacement = [];
               true;
               true;
            }
            if(so.data.wallpaper)
            {
               false;
               false;
               ob.lobbyWallpaper = so.data.wallpaper;
               true;
               true;
            }
            else
            {
               ob.lobbyWallpaper = 1;
            }
            if(so.data.flooring)
            {
               true;
               true;
               ob.lobbyFlooring = so.data.flooring;
            }
            else
            {
               ob.lobbyFlooring = 1;
            }
            true;
            true;
            if(so.data.toppings)
            {
               ob.toppingsUnlocked = so.data.toppings.concat();
            }
            else
            {
               ob.setupDefaultToppingData();
            }
            if(so.data.toppingsrevealed)
            {
               true;
               true;
               ob.toppingsRevealed = so.data.toppingsrevealed.concat();
               false;
               false;
            }
            else
            {
               true;
               true;
               true;
               true;
               true;
               true;
               ob.toppingsRevealed = ob.toppingsUnlocked.concat();
            }
            false;
            false;
            if(so.data.minigamesPlayed)
            {
               ob.minigamesPlayed = so.data.minigamesPlayed.concat();
            }
            else
            {
               true;
               true;
               false;
               false;
               false;
               false;
               false;
               false;
               ob.minigamesPlayed = [0,0,0,0,0,0,0];
            }
            false;
            false;
            if(so.data.minigamePrizes)
            {
               true;
               true;
               ob.minigamePrizes = so.data.minigamePrizes.concat();
            }
            else
            {
               true;
               true;
               ob.minigamePrizes = [0,0,0,0,0,0,0];
            }
            if(so.data.ribbon)
            {
               ob.lastRibbon = so.data.ribbon;
            }
            else
            {
               true;
               true;
               ob.lastRibbon = 0;
            }
            true;
            true;
            if(so.data.tickets)
            {
               ob.totalTickets = so.data.tickets;
            }
            else
            {
               ob.totalTickets = 0;
            }
            false;
            false;
            if(so.data.alltickets)
            {
               ob.totalTicketsEarned = so.data.alltickets;
            }
            else
            {
               false;
               false;
               false;
               false;
               true;
               true;
               ob.totalTicketsEarned = ob.totalTickets;
            }
            if(so.data.numnapkins)
            {
               false;
               false;
               true;
               true;
               ob.numNapkins = so.data.numnapkins;
            }
            else
            {
               true;
               true;
               ob.numNapkins = 0;
            }
            ob.lastRankLimit = ob.getLastRankLimit();
            false;
            false;
            ob.customersUnlocked = so.data.unlocked.concat();
            ob.customerStars = so.data.stars.concat();
            true;
            true;
            ob.customerSeals = so.data.seals.concat();
            true;
            true;
            ob.customerVisits = so.data.visits.concat();
            false;
            false;
            true;
            true;
            ob.customerFirstVisit = so.data.first.concat();
            false;
            false;
            if(so.data.workerdata)
            {
               true;
               true;
               ob.gameObj.workerData.populateWorkerData(so.data.workerdata);
            }
            else
            {
               true;
               true;
               false;
               false;
               if(ob.whichCharacter == "marty")
               {
                  true;
                  true;
                  ob.gameObj.workerData.setupPremadeMale();
                  true;
                  true;
               }
               else if(ob.whichCharacter == "rita")
               {
                  false;
                  false;
                  false;
                  false;
                  true;
                  true;
                  ob.gameObj.workerData.setupPremadeFemale();
               }
               else
               {
                  class_5.error("Could not load previously-saved custom worker data.");
                  true;
                  true;
                  true;
                  true;
                  ob.gameObj.workerData.setupDefaults();
               }
            }
            if(so.data.clothinginventory)
            {
               true;
               true;
               ob.clothingInventory = so.data.clothinginventory.concat();
            }
            else
            {
               class_5.method_25("Could not find clothing inventory on save slot!  Generate a fresh batch.");
               false;
               false;
               true;
               true;
               false;
               false;
               ob.clothingInventory = ob.gameObj.var_20.getSKUsForInventory(ob.whichCharacter,ob.gameObj.workerData.gender);
               false;
               false;
            }
            if(so.data.medalsEarned)
            {
               false;
               false;
               ob.medalsEarned = so.data.medalsEarned.concat();
               false;
               false;
            }
            else
            {
               true;
               true;
               ob.medalsEarned = [];
            }
            if(so.data.medalProgress)
            {
               ob.medalProgress = so.data.medalProgress.concat();
               false;
               false;
            }
            else
            {
               false;
               false;
               ob.medalProgress = [];
            }
            if(so.data.hasnewclothing)
            {
               true;
               true;
               true;
               true;
               ob.hasNewClothing = so.data.hasnewclothing;
            }
            else
            {
               ob.hasNewClothing = false;
            }
            true;
            true;
            if(so.data.hasnewfurni)
            {
               false;
               false;
               ob.hasNewFurni = so.data.hasnewfurni;
               false;
               false;
            }
            else
            {
               true;
               true;
               false;
               false;
               ob.hasNewFurni = false;
            }
            if(so.data.trainboost)
            {
               ob.hasTrainedBoost = so.data.trainboost;
            }
            else
            {
               true;
               true;
               ob.hasTrainedBoost = false;
            }
            if(so.data.traincloser)
            {
               ob.hasTrainedCloser = so.data.traincloser;
            }
            else
            {
               true;
               true;
               ob.hasTrainedCloser = false;
            }
            if(so.data.traincritic)
            {
               true;
               true;
               ob.hasTrainedCritic = so.data.traincritic;
            }
            else
            {
               ob.hasTrainedCritic = false;
            }
            if(so.data.trainribbon)
            {
               false;
               false;
               ob.hasTrainedRibbon = so.data.trainribbon;
               false;
               false;
            }
            else
            {
               ob.hasTrainedRibbon = false;
            }
            false;
            false;
            if(so.data.traindecorate)
            {
               ob.hasTrainedDecorate = so.data.traindecorate;
            }
            else
            {
               ob.hasTrainedDecorate = false;
            }
            true;
            true;
            if(so.data.traininv)
            {
               ob.hasTrainedInventory = so.data.traininv;
            }
            else
            {
               ob.hasTrainedInventory = false;
            }
            true;
            true;
            if(so.data.trainposter)
            {
               false;
               false;
               ob.hasTrainedPoster = so.data.trainposter;
            }
            else
            {
               true;
               true;
               false;
               false;
               ob.hasTrainedPoster = false;
            }
            if(so.data.trainfurni)
            {
               true;
               true;
               ob.hasTrainedFurni = so.data.trainfurni;
            }
            else
            {
               ob.hasTrainedFurni = false;
            }
            false;
            false;
            if(so.data.trainminigame)
            {
               false;
               false;
               ob.hasTrainedMinigame = so.data.trainminigame;
            }
            else
            {
               ob.hasTrainedMinigame = false;
            }
            if(so.data.trainpattern2)
            {
               false;
               false;
               ob.hasTrainedPattern2 = so.data.trainpattern2;
            }
            else
            {
               false;
               false;
               ob.hasTrainedPattern2 = false;
            }
            true;
            true;
            if(so.data.trainpattern3)
            {
               ob.hasTrainedPattern3 = so.data.trainpattern3;
            }
            else
            {
               true;
               true;
               ob.hasTrainedPattern3 = false;
            }
            if(so.data.trainpattern4)
            {
               ob.hasTrainedPattern4 = so.data.trainpattern4;
               false;
               false;
            }
            else
            {
               ob.hasTrainedPattern4 = false;
            }
            true;
            true;
            if(so.data.trainpattern5)
            {
               true;
               true;
               ob.hasTrainedPattern5 = so.data.trainpattern5;
            }
            else
            {
               ob.hasTrainedPattern5 = false;
            }
            if(so.data.trainpattern6)
            {
               true;
               true;
               ob.hasTrainedPattern6 = so.data.trainpattern6;
            }
            else
            {
               true;
               true;
               false;
               false;
               ob.hasTrainedPattern6 = false;
            }
            if(so.data.trainpattern7)
            {
               ob.hasTrainedPattern7 = so.data.trainpattern7;
            }
            else
            {
               ob.hasTrainedPattern7 = false;
               false;
               false;
            }
            if(so.data.trainpattern8)
            {
               false;
               false;
               ob.hasTrainedPattern8 = so.data.trainpattern8;
            }
            else
            {
               false;
               false;
               ob.hasTrainedPattern8 = false;
               true;
               true;
            }
            if(so.data.trainsauce)
            {
               true;
               true;
               ob.hasTrainedSauce = so.data.trainsauce;
            }
            else
            {
               false;
               false;
               true;
               true;
               ob.hasTrainedSauce = false;
            }
            if(so.data.continuedgame)
            {
               ob.hasContinuedGame = true;
               false;
               false;
               false;
               false;
               ob.gameObj.var_10.api.method_27("Continued_Game_Again","Slots");
            }
            else
            {
               ob.hasContinuedGame = true;
               true;
               true;
               ob.gameObj.var_10.api.method_27("Continued_Game","Slots");
            }
            false;
            false;
            if(so.data.shownparade)
            {
               true;
               true;
               ob.didShowParade = so.data.shownparade;
               false;
               false;
            }
            else
            {
               false;
               false;
               true;
               true;
               ob.didShowParade = false;
            }
            if(so.data.floatsparade)
            {
               false;
               false;
               ob.seenFloatsInParade = so.data.floatsparade;
            }
            else
            {
               false;
               false;
               ob.seenFloatsInParade = 0;
            }
            false;
            false;
            if(so.data.clicktwitter)
            {
               false;
               false;
               ob.didClickTwitter = so.data.clicktwitter;
            }
            else
            {
               ob.didClickTwitter = false;
            }
            if(so.data.clickfacebook)
            {
               ob.didClickFacebook = so.data.clickfacebook;
            }
            else
            {
               true;
               true;
               ob.didClickFacebook = false;
               true;
               true;
            }
            if(so.data.visitedshop)
            {
               true;
               true;
               true;
               true;
               ob.hasVisitedUpgradeShop = so.data.visitedshop;
               true;
               true;
            }
            else
            {
               false;
               false;
               false;
               false;
               ob.hasVisitedUpgradeShop = false;
            }
            if(so.data.visitedbadges)
            {
               ob.hasVisitedBadgesScreen = so.data.visitedbadges;
            }
            else
            {
               false;
               false;
               true;
               true;
               ob.hasVisitedBadgesScreen = false;
            }
            if(so.data.visitedlobby)
            {
               false;
               false;
               ob.hasVisitedLobbyEditor = so.data.visitedlobby;
               false;
               false;
            }
            else
            {
               ob.hasVisitedLobbyEditor = false;
            }
            if(so.data.placedfurni)
            {
               ob.hasPlacedFurniture = so.data.placedfurni;
               true;
               true;
            }
            else
            {
               true;
               true;
               ob.hasPlacedFurniture = false;
               true;
               true;
            }
            while(true)
            {
               true;
               true;
               if(ob.customersUnlocked.length >= ob.gameObj.customerData.getCustomerTotal())
               {
                  break;
               }
               true;
               true;
               ob.customersUnlocked.push(0);
            }
            while(true)
            {
               false;
               false;
               if(ob.customerStars.length >= ob.gameObj.customerData.getCustomerTotal())
               {
                  break;
               }
               true;
               true;
               ob.customerStars.push(0);
            }
            true;
            true;
            while(ob.customerSeals.length < ob.gameObj.customerData.getCustomerTotal())
            {
               false;
               false;
               ob.customerSeals.push(0);
            }
            while(true)
            {
               true;
               true;
               if(ob.customerVisits.length >= ob.gameObj.customerData.getCustomerTotal())
               {
                  break;
               }
               false;
               false;
               true;
               true;
               ob.customerVisits.push(0);
            }
            while(ob.customerFirstVisit.length < ob.gameObj.customerData.getCustomerTotal())
            {
               false;
               false;
               true;
               true;
               ob.customerFirstVisit.push(0);
            }
         }
         else
         {
            class_5.debug("No Existing Slot, Create New");
            false;
            false;
            ob.myRank = 1;
            false;
            false;
            ob.totalScore = 0;
            ob.totalTips = 0;
            true;
            true;
            ob.totalTickets = 0;
            false;
            false;
            false;
            false;
            ob.numNapkins = 0;
            ob.lastRankLimit = 0;
            ob.currentDay = 1;
            ob.myName = "Anonymous";
            ob.whichCharacter = "marty";
            true;
            true;
            ob.bonusUpgrades = [];
            false;
            false;
            nb = 0;
            while(nb <= ob.totalBonuses)
            {
               ob.bonusUpgrades.push(0);
               true;
               true;
               false;
               false;
               nb++;
            }
            ob.setupDefaultCustomerData();
            false;
            false;
            true;
            true;
            ob.setupDefaultToppingData();
            false;
            false;
            try
            {
               so.flush();
            }
            catch(err:Error)
            {
               class_5.error("Error Saving Data to Slot.");
            }
         }
         ob.gameObj.challengeManager.populateMedalProgress(ob.medalProgress);
         false;
         false;
         ob.gameObj.challengeManager.syncMochiAchievements();
         ob.clearScoresForToday();
         ob.gameObj.var_10.method_90();
      }
      
      public function createNewSlot(param1:Number, param2:String, param3:String = "marty") : void
      {
         var playerName:String;
         var character:String;
         var ob:UserData;
         var b:Number;
         var so:SharedObject;
         var whichSlot:Number = param1;
         false;
         false;
         playerName = param2;
         character = param3;
         ob = this;
         ob.gameObj.challengeManager.resetAllTallies();
         false;
         false;
         true;
         true;
         true;
         true;
         false;
         false;
         §§push(playerName == "");
         if(!(playerName == ""))
         {
            true;
            true;
            §§pop();
            true;
            true;
            §§push(playerName == " ");
         }
         if(§§pop() || playerName == "  ")
         {
            true;
            true;
            if(character == "marty")
            {
               playerName = "Chuck";
               false;
               false;
            }
            else
            {
               playerName = "Mandi";
               false;
               false;
            }
         }
         false;
         false;
         false;
         false;
         ob.whichSlot = whichSlot;
         class_5.method_25("Create New Slot: " + whichSlot);
         false;
         false;
         false;
         false;
         ob.myRank = 1;
         ob.totalScore = 0;
         ob.totalTips = 0;
         ob.totalTickets = 0;
         false;
         false;
         false;
         false;
         ob.totalMoneyEarned = 0;
         false;
         false;
         false;
         false;
         ob.totalTicketsEarned = 0;
         true;
         true;
         false;
         false;
         ob.lastRankLimit = 0;
         true;
         true;
         ob.currentDay = 1;
         true;
         true;
         false;
         false;
         ob.myName = playerName;
         ob.whichCharacter = character;
         ob.hasNewClothing = true;
         false;
         false;
         ob.hasNewFurni = false;
         true;
         true;
         true;
         true;
         ob.hasContinuedGame = false;
         ob.hasVisitedUpgradeShop = false;
         true;
         true;
         ob.hasVisitedLobbyEditor = false;
         true;
         true;
         ob.hasPlacedFurniture = false;
         false;
         false;
         ob.didShowParade = false;
         ob.seenFloatsInParade = 0;
         ob.didClickFacebook = false;
         true;
         true;
         ob.didClickTwitter = false;
         ob.lastRibbon = 0;
         ob.numNapkins = 0;
         false;
         false;
         ob.bonusUpgrades = [];
         ob.furniInventory = [];
         ob.clothingInventory = [];
         ob.lobbyPlacement = [];
         false;
         false;
         ob.lobbyWallpaper = 1;
         true;
         true;
         false;
         false;
         ob.lobbyFlooring = 1;
         ob.medalsEarned = [];
         ob.medalProgress = [];
         true;
         true;
         true;
         true;
         false;
         false;
         true;
         true;
         ob.minigamesPlayed = [0,0,0,0,0,0,0];
         ob.minigamePrizes = [0,0,0,0,0,0,0];
         b = 0;
         while(b <= ob.totalBonuses)
         {
            ob.bonusUpgrades.push(0);
            true;
            true;
            false;
            false;
            b++;
            true;
            true;
         }
         if(character == "marty")
         {
            false;
            false;
            ob.gameObj.workerData.setupPremadeMale();
            true;
            true;
            true;
            true;
            true;
            true;
            true;
            true;
            false;
            false;
            true;
            true;
            false;
            false;
            false;
            false;
            ob.clothingInventory = ob.gameObj.var_20.getSKUsForInventory(character,WorkerData.GENDER_MALE);
         }
         else
         {
            true;
            true;
            if(character == "rita")
            {
               ob.gameObj.workerData.setupPremadeFemale();
               false;
               false;
               false;
               false;
               false;
               false;
               true;
               true;
               false;
               false;
               ob.clothingInventory = ob.gameObj.var_20.getSKUsForInventory(character,WorkerData.GENDER_FEMALE);
            }
            else
            {
               false;
               false;
               true;
               true;
               ob.clothingInventory = ob.gameObj.var_20.getSKUsForInventory("custom",ob.gameObj.workerData.gender);
            }
         }
         ob.setupDefaultCustomerData();
         ob.setupDefaultToppingData();
         ob.checkForCheats(playerName);
         so = SharedObject.getLocal(this.saveSlotPrefix + whichSlot,"/");
         true;
         true;
         so.data.playername = ob.myName;
         false;
         false;
         false;
         false;
         so.data.rank = ob.myRank;
         true;
         true;
         so.data.day = ob.currentDay;
         false;
         false;
         so.data.score = ob.totalScore;
         so.data.tips = ob.totalTips;
         so.data.tickets = ob.totalTickets;
         false;
         false;
         so.data.allmoney = ob.totalMoneyEarned;
         so.data.alltickets = ob.totalTicketsEarned;
         false;
         false;
         so.data.character = ob.whichCharacter;
         false;
         false;
         false;
         false;
         so.data.continuedgame = false;
         so.data.visitedshop = false;
         so.data.visitedbadges = false;
         so.data.shownparade = false;
         false;
         false;
         so.data.floatsparade = 0;
         false;
         false;
         so.data.clicktwitter = false;
         false;
         false;
         so.data.clickfacebook = false;
         false;
         false;
         so.data.hasnewclothing = true;
         true;
         true;
         so.data.hasnewfurni = false;
         true;
         true;
         so.data.numnapkins = ob.numNapkins;
         so.data.workerdata = ob.gameObj.workerData.getDataToSave();
         so.data.unlocked = ob.customersUnlocked.concat();
         so.data.stars = ob.customerStars.concat();
         so.data.seals = ob.customerSeals.concat();
         true;
         true;
         so.data.visits = ob.customerVisits.concat();
         so.data.first = ob.customerFirstVisit.concat();
         false;
         false;
         so.data.toppings = ob.toppingsUnlocked.concat();
         so.data.toppingsrevealed = ob.toppingsRevealed.concat();
         so.data.bonuses = ob.bonusUpgrades.concat();
         so.data.ribbon = ob.lastRibbon;
         so.data.inventory = class_13.method_38(ob.furniInventory);
         false;
         false;
         so.data.lobby = class_13.method_38(ob.lobbyPlacement);
         so.data.wallpaper = ob.lobbyWallpaper;
         false;
         false;
         true;
         true;
         so.data.flooring = ob.lobbyFlooring;
         true;
         true;
         so.data.clothinginventory = ob.clothingInventory.concat();
         so.data.medalsEarned = [];
         so.data.medalProgress = [];
         so.data.minigamesPlayed = ob.minigamesPlayed.concat();
         so.data.minigamePrizes = ob.minigamePrizes.concat();
         so.data.trainboost = false;
         so.data.traincloser = false;
         false;
         false;
         so.data.traincritic = false;
         true;
         true;
         true;
         true;
         so.data.trainribbon = false;
         so.data.traindecorate = false;
         so.data.traininv = false;
         so.data.trainposter = false;
         so.data.trainfurni = false;
         true;
         true;
         so.data.trainminigame = false;
         ob.hasTrainedCloser = false;
         false;
         false;
         ob.hasTrainedBoost = false;
         false;
         false;
         ob.hasTrainedCritic = false;
         ob.hasTrainedRibbon = false;
         false;
         false;
         ob.hasTrainedDecorate = false;
         true;
         true;
         true;
         true;
         ob.hasTrainedFurni = false;
         true;
         true;
         false;
         false;
         ob.hasTrainedPoster = false;
         ob.hasTrainedInventory = false;
         ob.hasTrainedMinigame = false;
         ob.hasTrainedPattern2 = false;
         true;
         true;
         ob.hasTrainedPattern3 = false;
         ob.hasTrainedPattern4 = false;
         ob.hasTrainedPattern5 = false;
         false;
         false;
         ob.hasTrainedPattern6 = false;
         false;
         false;
         true;
         true;
         true;
         true;
         ob.hasTrainedPattern7 = false;
         true;
         true;
         ob.hasTrainedPattern8 = false;
         ob.hasTrainedSauce = false;
         so.data.trainpattern2 = ob.hasTrainedPattern2;
         so.data.trainpattern3 = ob.hasTrainedPattern3;
         false;
         false;
         true;
         true;
         so.data.trainpattern4 = ob.hasTrainedPattern4;
         so.data.trainpattern5 = ob.hasTrainedPattern5;
         so.data.trainpattern6 = ob.hasTrainedPattern6;
         true;
         true;
         so.data.trainpattern7 = ob.hasTrainedPattern7;
         true;
         true;
         false;
         false;
         so.data.trainpattern8 = ob.hasTrainedPattern8;
         so.data.trainsauce = ob.hasTrainedSauce;
         try
         {
            so.flush();
         }
         catch(err:Error)
         {
            true;
            true;
            class_5.error("Error saving new slot.");
         }
         ob.clearScoresForToday();
      }
      
      private function cheatLevelUp(param1:Number, param2:Number = 0) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc3_:UserData = this;
         _loc3_.myRank = 1;
         false;
         false;
         _loc3_.totalScore = 0;
         _loc3_.lastRankLimit = 0;
         true;
         true;
         _loc3_.currentDay = 1;
         _loc3_.unlockCustomerAndTopping(false,true);
         if(param1 > 1)
         {
            _loc4_ = 2;
            while(_loc4_ <= param1)
            {
               _loc3_.myRank = _loc4_;
               true;
               true;
               _loc3_.currentDay = _loc4_;
               _loc3_.lastRankLimit = _loc3_.getLastRankLimit();
               true;
               true;
               _loc3_.totalScore = _loc3_.lastRankLimit + 1;
               false;
               false;
               _loc6_ = false;
               if(_loc4_ < param1)
               {
                  true;
                  true;
                  _loc6_ = true;
               }
               _loc3_.unlockCustomerAndTopping(true,_loc6_);
               _loc4_++;
               true;
               true;
            }
            _loc5_ = 0;
            true;
            true;
            while(_loc5_ < 20)
            {
               false;
               false;
               var _loc7_:*;
               var _loc8_:* = (_loc7_ = _loc3_).currentDay + 1;
               false;
               false;
               _loc7_.currentDay = _loc8_;
               false;
               false;
               _loc3_.unlockCustomerAndTopping(false,true);
               _loc5_++;
            }
         }
      }
      
      public function checkForCheats(param1:String) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this;
      }
      
      public function eraseSlot(param1:Number) : void
      {
         false;
         true;
         this;
         var _loc3_:SharedObject = SharedObject.getLocal(this.saveSlotPrefix + param1,"/");
         false;
         false;
         _loc3_.clear();
      }
      
      public function setupDefaultCustomerData() : void
      {
         var _loc1_:UserData = this;
         var _loc2_:CustomerData = _loc1_.gameObj.customerData;
         _loc1_.customersUnlocked = [0];
         false;
         false;
         _loc1_.customerSeals = [0];
         false;
         false;
         _loc1_.customerStars = [0];
         true;
         true;
         _loc1_.customerVisits = [0];
         true;
         true;
         _loc1_.customerFirstVisit = [0];
         var _loc3_:int = 1;
         while(_loc3_ <= _loc2_.getCustomerTotal())
         {
            false;
            false;
            if(_loc3_ <= _loc1_.initialCustomers + _loc1_.closerCustomers)
            {
               _loc1_.customersUnlocked.push(1);
               _loc1_.customerFirstVisit.push(1);
               true;
               true;
            }
            else
            {
               _loc1_.customersUnlocked.push(0);
               true;
               true;
               _loc1_.customerFirstVisit.push(0);
            }
            false;
            false;
            _loc1_.customerSeals.push(0);
            true;
            true;
            _loc1_.customerStars.push(0);
            false;
            false;
            _loc1_.customerVisits.push(0);
            _loc3_++;
         }
      }
      
      public function setupDefaultToppingData() : void
      {
         false;
         true;
         var _loc1_:UserData = this;
         true;
         true;
         _loc1_.toppingsUnlocked = [];
         _loc1_.toppingsRevealed = [];
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.toppingIndexes.length)
         {
            false;
            false;
            if(_loc2_ < _loc1_.initialToppings)
            {
               false;
               false;
               true;
               true;
               _loc1_.toppingsUnlocked.push(1);
               true;
               true;
               false;
               false;
               _loc1_.toppingsRevealed.push(1);
            }
            else
            {
               _loc1_.toppingsUnlocked.push(0);
               true;
               true;
               _loc1_.toppingsRevealed.push(0);
            }
            _loc2_++;
         }
         _loc1_.gameObj.challengeManager.recordUnlockTopping();
      }
      
      public function getRank() : Number
      {
         var _loc1_:UserData = this;
         return _loc1_.myRank;
      }
      
      public function getRankTitle(param1:Number = -1) : String
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:String = "???";
         true;
         true;
         var _loc4_:Number = _loc2_.myRank;
         false;
         false;
         false;
         false;
         if(param1 > -1)
         {
            _loc4_ = param1;
            true;
            true;
         }
         false;
         false;
         if(_loc2_.rankTitles.length > _loc4_)
         {
            false;
            false;
            _loc3_ = String(_loc2_.rankTitles[_loc4_]);
            false;
            false;
         }
         else
         {
            _loc3_ = String(_loc2_.rankTitles[_loc2_.rankTitles.length - 1]);
         }
         return _loc3_;
      }
      
      public function getMeterAward(param1:String, param2:Boolean = false) : *
      {
         var _loc4_:* = undefined;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc9_:String = null;
         this;
         var _loc5_:Number = 0;
         false;
         false;
         false;
         false;
         if(param1 == "awesome")
         {
            _loc5_ = 100;
            false;
            false;
         }
         else
         {
            true;
            true;
            if(param1 == "great")
            {
               _loc5_ = 50;
            }
            else if(param1 == "good")
            {
               _loc5_ = 25;
            }
         }
         if(param2)
         {
            _loc6_ = Math.floor(_loc5_ / 100);
            false;
            false;
            _loc7_ = _loc5_ - _loc6_ * 100;
            if((_loc8_ = String(_loc7_)).length < 2)
            {
               true;
               true;
               _loc8_ = "0" + _loc8_;
            }
            _loc9_ = class_8.method_31(_loc6_);
            true;
            true;
            true;
            true;
            _loc4_ = "$" + _loc9_ + "." + _loc8_;
         }
         else
         {
            _loc4_ = _loc5_;
         }
         return _loc4_;
      }
      
      public function getWeeklyWage(param1:Boolean = false) : *
      {
         false;
         true;
         var _loc3_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:UserData = this;
         false;
         false;
         var _loc4_:Number = _loc2_.baseWeeklyWage + _loc2_.wageIncreasePerRank * (_loc2_.myRank - 1);
         if(param1)
         {
            true;
            true;
            _loc5_ = Math.floor(_loc4_ / 100);
            true;
            true;
            true;
            true;
            _loc6_ = _loc4_ - _loc5_ * 100;
            false;
            false;
            true;
            true;
            if((_loc7_ = String(_loc6_)).length < 2)
            {
               false;
               false;
               _loc7_ = "0" + _loc7_;
               true;
               true;
            }
            true;
            true;
            _loc8_ = class_8.method_31(_loc5_);
            _loc3_ = "$" + _loc8_ + "." + _loc7_;
         }
         else
         {
            _loc3_ = _loc4_;
         }
         return _loc3_;
      }
      
      public function getPaydayMessage(param1:Boolean = false) : String
      {
         var _loc2_:UserData = this;
         var _loc3_:* = "";
         true;
         true;
         var _loc4_:Number;
         if((_loc4_ = 7 - _loc2_.currentDay % 7) == 0 || _loc4_ == 7)
         {
            if(param1)
            {
               _loc3_ = "Payday! " + _loc2_.getWeeklyWage(true);
               false;
               false;
            }
            else
            {
               _loc3_ = "Payday Today!";
            }
         }
         else if(_loc4_ == 1)
         {
            false;
            false;
            _loc3_ = "Payday in 1 Day!";
         }
         else
         {
            _loc3_ = "Payday in " + _loc4_ + " Days!";
         }
         return _loc3_;
      }
      
      public function isPayday() : Boolean
      {
         false;
         true;
         var _loc1_:UserData = this;
         var _loc2_:Number = _loc1_.currentDay % 7;
         false;
         false;
         if(_loc2_ == 0)
         {
            return true;
         }
         return false;
      }
      
      public function alreadyEarnedCustomer(param1:Number) : Boolean
      {
         var _loc2_:UserData = this;
         true;
         true;
         false;
         false;
         if(_loc2_.customersUnlocked.length > param1 && _loc2_.customersUnlocked[param1] == 1 && _loc2_.customerFirstVisit.length > param1 && _loc2_.customerFirstVisit[param1] > 0)
         {
            true;
            true;
            return true;
         }
         return false;
      }
      
      public function getCustomerStars(param1:Number) : Number
      {
         var _loc2_:UserData = this;
         false;
         false;
         false;
         false;
         if(_loc2_.customerStars.length > param1)
         {
            return _loc2_.customerStars[param1];
         }
         return 0;
      }
      
      public function getCustomerSeal(param1:Number) : Number
      {
         var _loc2_:UserData = this;
         true;
         true;
         false;
         false;
         if(_loc2_.customerSeals.length > param1)
         {
            true;
            true;
            return _loc2_.customerSeals[param1];
         }
         return 0;
      }
      
      public function getCustomerFirstDay(param1:Number) : Number
      {
         false;
         true;
         var _loc2_:UserData = this;
         false;
         false;
         if(_loc2_.customerFirstVisit.length > param1)
         {
            return _loc2_.customerFirstVisit[param1];
         }
         return 0;
      }
      
      public function getCustomerTotalOrders(param1:Number) : Number
      {
         false;
         true;
         var _loc2_:UserData = this;
         false;
         false;
         true;
         true;
         if(_loc2_.customerVisits.length > param1)
         {
            true;
            true;
            return _loc2_.customerVisits[param1];
         }
         return 0;
      }
      
      public function earnCustomerStar(param1:Number, param2:Number) : void
      {
         false;
         true;
         var _loc3_:UserData = this;
         _loc3_.customerStars[param1] = param2;
      }
      
      public function earnCustomerSeal(param1:Number, param2:Number) : void
      {
         var _loc3_:UserData = this;
         _loc3_.customerSeals[param1] = param2;
         true;
         true;
         _loc3_.gameObj.challengeManager.recordCustomerSeal(param2);
      }
      
      public function earnBlueRibbon() : void
      {
         false;
         true;
         var _loc1_:UserData = this;
         true;
         true;
         _loc1_.lastRibbon = _loc1_.currentDay;
         _loc1_.gameObj.challengeManager.recordRibbon();
      }
      
      public function hasRibbon() : Boolean
      {
         var _loc1_:UserData = this;
         var _loc2_:Boolean = false;
         false;
         false;
         true;
         true;
         false;
         false;
         if(_loc1_.lastRibbon > 0 && _loc1_.currentDay <= _loc1_.lastRibbon + _loc1_.ribbonDaysActive)
         {
            false;
            false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function clearScoresForToday() : void
      {
         var _loc1_:UserData = this;
         _loc1_.todayBuildScore = 0;
         _loc1_.todaySauceScore = 0;
         false;
         false;
         _loc1_.todayGrillScore = 0;
         _loc1_.todayWaitScore = 0;
         _loc1_.todayScore = 0;
         _loc1_.todayTips = 0;
         _loc1_.todayTickets = 0;
         true;
         true;
         _loc1_.todayCustomers = 0;
         _loc1_.todayMeterTopping = 0;
      }
      
      public function addToCustomersToday(param1:Number) : void
      {
         false;
         true;
         var _loc2_:UserData = this;
         true;
         true;
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = _loc2_).todayCustomers + 1;
         true;
         true;
         _loc3_.todayCustomers = _loc4_;
         true;
         true;
         if(_loc2_.customersUnlocked[param1] == 0)
         {
            false;
            false;
            _loc2_.customersUnlocked[param1] = 1;
         }
         false;
         false;
         true;
         true;
         if(_loc2_.customerFirstVisit[param1] == 0 || _loc2_.customerVisits[param1] == 0)
         {
            _loc2_.customerFirstVisit[param1] = _loc2_.currentDay;
         }
      }
      
      public function recordCustomerVisit(param1:Number) : void
      {
         var _loc2_:UserData = this;
         false;
         false;
         var _loc3_:*;
         var _loc4_:*;
         var _loc5_:* = (_loc3_ = _loc2_.customerVisits)[_loc4_ = param1] + 1;
         true;
         true;
         _loc3_[_loc4_] = _loc5_;
      }
      
      public function addToDailyScore(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number = 0) : void
      {
         false;
         true;
         var _loc8_:UserData = this;
         _loc8_.todayWaitScore += param1;
         true;
         true;
         _loc8_.todayGrillScore += param2;
         _loc8_.todayBuildScore += param3;
         true;
         true;
         _loc8_.todaySauceScore += param4;
         _loc8_.todayScore += param5;
         true;
         true;
         _loc8_.todayTips += param6;
         _loc8_.todayTickets += param7;
      }
      
      public function earnExtraDailyTicket(param1:Number = 1) : void
      {
         false;
         true;
         var _loc2_:UserData = this;
         true;
         true;
         _loc2_.todayTickets += param1;
      }
      
      public function getTodayWaitingAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.floor(_loc1_.todayWaitScore / _loc1_.todayCustomers);
      }
      
      public function getTodayGrillAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.floor(_loc1_.todayGrillScore / _loc1_.todayCustomers);
      }
      
      public function getTodayBuildAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.floor(_loc1_.todayBuildScore / _loc1_.todayCustomers);
      }
      
      public function getTodaySauceAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.floor(_loc1_.todaySauceScore / _loc1_.todayCustomers);
      }
      
      public function getTodayTotalAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.round((_loc1_.getTodayWaitingAverage() + _loc1_.getTodayBuildAverage() + _loc1_.getTodayGrillAverage() + _loc1_.getTodaySauceAverage()) / 4);
      }
      
      public function getCurrentPercentQuality(param1:Number) : Number
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:Number = _loc2_.todayWaitScore / param1;
         false;
         false;
         false;
         false;
         var _loc4_:Number = _loc2_.todayGrillScore / param1;
         true;
         true;
         true;
         true;
         var _loc5_:Number = _loc2_.todayBuildScore / param1;
         true;
         true;
         var _loc6_:Number = _loc2_.todaySauceScore / param1;
         return Math.round((_loc3_ + _loc5_ + _loc4_ + _loc6_) / 4);
      }
      
      public function getTodayTotalScore() : Number
      {
         var _loc1_:UserData = this;
         return _loc1_.todayScore;
      }
      
      public function getTotalPoints(param1:Boolean = false) : Number
      {
         var _loc2_:UserData = this;
         var _loc3_:Number = _loc2_.totalScore;
         if(param1)
         {
            true;
            true;
            _loc3_ += _loc2_.todayScore;
         }
         return _loc3_;
      }
      
      public function getTipsToday(param1:Boolean = false) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:UserData = this;
         if(param1)
         {
            true;
            true;
            _loc4_ = _loc2_.todayTips;
            true;
            true;
            _loc5_ = Math.floor(_loc4_ / 100);
            false;
            false;
            _loc6_ = _loc4_ - _loc5_ * 100;
            false;
            false;
            false;
            false;
            if((_loc7_ = String(_loc6_)).length < 2)
            {
               false;
               false;
               _loc7_ = "0" + _loc7_;
            }
            _loc8_ = class_8.method_31(_loc5_);
            true;
            true;
            _loc3_ = "$" + _loc8_ + "." + _loc7_;
         }
         else
         {
            _loc3_ = _loc2_.todayTips;
         }
         return _loc3_;
      }
      
      public function getTipsTotal(param1:Boolean = false, param2:Boolean = false) : *
      {
         false;
         true;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc3_:UserData = this;
         false;
         false;
         if(param1)
         {
            _loc5_ = _loc3_.totalTips;
            if(param2)
            {
               false;
               false;
               _loc5_ += _loc3_.todayTips;
            }
            _loc6_ = Math.floor(_loc5_ / 100);
            true;
            true;
            _loc7_ = _loc5_ - _loc6_ * 100;
            if((_loc8_ = String(_loc7_)).length < 2)
            {
               _loc8_ = "0" + _loc8_;
            }
            true;
            true;
            _loc9_ = class_8.method_31(_loc6_);
            false;
            false;
            true;
            true;
            _loc4_ = "$" + _loc9_ + "." + _loc8_;
         }
         else
         {
            _loc4_ = _loc3_.totalTips;
            if(param2)
            {
               _loc4_ += _loc3_.todayTips;
            }
         }
         return _loc4_;
      }
      
      public function getTicketsTotal(param1:Boolean = false) : Number
      {
         false;
         true;
         var _loc2_:UserData = this;
         true;
         true;
         var _loc3_:Number = _loc2_.totalTickets;
         if(param1)
         {
            false;
            false;
            _loc3_ += _loc2_.todayTickets;
            true;
            true;
         }
         true;
         true;
         if(_loc3_ < 0)
         {
            false;
            false;
            true;
            true;
            _loc3_ = 0;
         }
         return _loc3_;
      }
      
      public function useTicket(param1:Number) : void
      {
         false;
         true;
         var _loc2_:UserData = this;
         _loc2_.totalTickets -= param1;
         if(_loc2_.totalTickets < 0)
         {
            _loc2_.totalTickets = 0;
         }
      }
      
      public function saveScores() : Number
      {
         var _loc1_:UserData = this;
         false;
         false;
         _loc1_.totalScore += _loc1_.todayScore;
         true;
         true;
         false;
         false;
         _loc1_.totalTips += _loc1_.todayTips;
         false;
         false;
         _loc1_.totalMoneyEarned += _loc1_.todayTips;
         _loc1_.totalTickets += _loc1_.todayTickets;
         true;
         true;
         _loc1_.totalTicketsEarned += _loc1_.todayTickets;
         var _loc2_:Number = _loc1_.getNextRankLimit();
         false;
         false;
         true;
         true;
         if(_loc1_.totalScore >= _loc2_)
         {
            ++_loc1_.myRank;
            _loc1_.lastRankLimit = _loc2_;
            _loc1_.gameObj.challengeManager.recordRank(_loc1_.myRank);
            _loc1_.unlockCustomerAndTopping(true);
         }
         else
         {
            _loc1_.unlockCustomerAndTopping(false);
         }
         false;
         false;
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = _loc1_).currentDay + 1;
         true;
         true;
         _loc3_.currentDay = _loc4_;
         _loc1_.clearScoresForToday();
         _loc1_.saveData();
         return _loc1_.myRank;
      }
      
      private function unlockCustomerAndTopping(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc3_:UserData = this;
         false;
         false;
         if(_loc3_.currentDay == 1)
         {
            true;
            true;
            false;
            false;
            _loc3_.toppingsUnlocked[_loc3_.initialToppings] = 1;
            false;
            false;
            false;
            false;
            true;
            true;
            true;
            true;
            _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 1] = 1;
            true;
            true;
            false;
            false;
            false;
            false;
            class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 1) + " and Spicy Garlic!");
            if(param2)
            {
               _loc3_.toppingsRevealed[_loc3_.initialToppings] = 1;
               true;
               true;
               false;
               false;
               _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 1] = _loc3_.currentDay;
               true;
               true;
               _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 1] = 1;
               false;
               false;
            }
         }
         if(param1)
         {
            true;
            true;
            if(_loc3_.myRank == 2)
            {
               false;
               false;
               true;
               true;
               false;
               false;
               class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 2) + "!");
               true;
               true;
               false;
               false;
               _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 2] = 1;
               if(param2)
               {
                  true;
                  true;
                  _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 2] = _loc3_.currentDay;
                  false;
                  false;
                  true;
                  true;
                  false;
                  false;
                  false;
                  false;
                  _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 2] = 1;
               }
            }
            else if(_loc3_.myRank == 4)
            {
               true;
               true;
               false;
               false;
               class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 3) + "!");
               true;
               true;
               _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 3] = 1;
               if(param2)
               {
                  false;
                  false;
                  false;
                  false;
                  _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 3] = _loc3_.currentDay;
                  false;
                  false;
                  false;
                  false;
                  _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 3] = 1;
               }
            }
            else
            {
               true;
               true;
               if(_loc3_.myRank == 6)
               {
                  false;
                  false;
                  true;
                  true;
                  true;
                  true;
                  class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 4) + "!");
                  false;
                  false;
                  false;
                  false;
                  false;
                  false;
                  _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 4] = 1;
                  if(param2)
                  {
                     _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 4] = _loc3_.currentDay;
                     true;
                     true;
                     false;
                     false;
                     _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 4] = 1;
                  }
               }
               else
               {
                  false;
                  false;
                  if(_loc3_.myRank == 8)
                  {
                     false;
                     false;
                     false;
                     false;
                     class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 5) + "!");
                     true;
                     true;
                     false;
                     false;
                     _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 5] = 1;
                     if(param2)
                     {
                        true;
                        true;
                        true;
                        true;
                        _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 5] = _loc3_.currentDay;
                        true;
                        true;
                        false;
                        false;
                        _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 5] = 1;
                     }
                  }
                  else if(_loc3_.myRank == 10)
                  {
                     false;
                     false;
                     class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 6) + "!");
                     true;
                     true;
                     _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 6] = 1;
                     false;
                     false;
                     if(param2)
                     {
                        false;
                        false;
                        _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 6] = _loc3_.currentDay;
                        false;
                        false;
                        true;
                        true;
                        false;
                        false;
                        _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 6] = 1;
                        true;
                        true;
                     }
                  }
                  else if(_loc3_.myRank == 11)
                  {
                     true;
                     true;
                     false;
                     false;
                     class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 7) + "!");
                     true;
                     true;
                     true;
                     true;
                     _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 7] = 1;
                     if(param2)
                     {
                        true;
                        true;
                        false;
                        false;
                        true;
                        true;
                        false;
                        false;
                        _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 7] = _loc3_.currentDay;
                        false;
                        false;
                        _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 7] = 1;
                     }
                  }
                  else
                  {
                     false;
                     false;
                     if(_loc3_.myRank == 12)
                     {
                        false;
                        false;
                        true;
                        true;
                        true;
                        true;
                        class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 8) + "!");
                        true;
                        true;
                        _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 8] = 1;
                        true;
                        true;
                        if(param2)
                        {
                           false;
                           false;
                           true;
                           true;
                           _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 8] = _loc3_.currentDay;
                           true;
                           true;
                           true;
                           true;
                           true;
                           true;
                           _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 8] = 1;
                           true;
                           true;
                        }
                     }
                     else if(_loc3_.myRank == 14)
                     {
                        true;
                        true;
                        true;
                        true;
                        class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 9) + "!");
                        true;
                        true;
                        _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 9] = 1;
                        if(param2)
                        {
                           false;
                           false;
                           false;
                           false;
                           false;
                           false;
                           true;
                           true;
                           _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 9] = _loc3_.currentDay;
                           false;
                           false;
                           true;
                           true;
                           true;
                           true;
                           true;
                           true;
                           false;
                           false;
                           _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 9] = 1;
                        }
                     }
                     else
                     {
                        false;
                        false;
                        if(_loc3_.myRank == 15)
                        {
                           false;
                           false;
                           false;
                           false;
                           true;
                           true;
                           false;
                           false;
                           class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 10) + "!");
                           true;
                           true;
                           false;
                           false;
                           true;
                           true;
                           true;
                           true;
                           _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 10] = 1;
                           true;
                           true;
                           if(param2)
                           {
                              false;
                              false;
                              false;
                              false;
                              _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 10] = _loc3_.currentDay;
                              false;
                              false;
                              false;
                              false;
                              _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 10] = 1;
                           }
                        }
                        else if(_loc3_.myRank == 16)
                        {
                           true;
                           true;
                           true;
                           true;
                           class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 11) + "!");
                           false;
                           false;
                           _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 11] = 1;
                           false;
                           false;
                           if(param2)
                           {
                              true;
                              true;
                              _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 11] = _loc3_.currentDay;
                              false;
                              false;
                              _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 11] = 1;
                              true;
                              true;
                           }
                        }
                        else
                        {
                           true;
                           true;
                           if(_loc3_.myRank == 18)
                           {
                              false;
                              false;
                              class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 12) + "!");
                              _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 12] = 1;
                              true;
                              true;
                              if(param2)
                              {
                                 true;
                                 true;
                                 false;
                                 false;
                                 false;
                                 false;
                                 _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 12] = _loc3_.currentDay;
                                 true;
                                 true;
                                 false;
                                 false;
                                 false;
                                 false;
                                 _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 12] = 1;
                              }
                           }
                           else if(_loc3_.myRank == 19)
                           {
                              false;
                              false;
                              false;
                              false;
                              class_5.debug(">> Unlock Customer " + (_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 13) + "!");
                              false;
                              false;
                              true;
                              true;
                              _loc3_.customersUnlocked[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 13] = 1;
                              if(param2)
                              {
                                 true;
                                 true;
                                 false;
                                 false;
                                 true;
                                 true;
                                 false;
                                 false;
                                 _loc3_.customerFirstVisit[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 13] = _loc3_.currentDay;
                                 false;
                                 false;
                                 _loc3_.customerVisits[_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers + 13] = 1;
                              }
                           }
                           else
                           {
                              true;
                              true;
                              if(_loc3_.myRank >= 20)
                              {
                                 false;
                                 false;
                                 false;
                                 false;
                                 if((_loc4_ = 12 + _loc3_.myRank) < _loc3_.customersUnlocked.length)
                                 {
                                    true;
                                    true;
                                    class_5.debug(">> Unlock Customer " + _loc4_ + "!");
                                    _loc3_.customersUnlocked[_loc4_] = 1;
                                    if(param2)
                                    {
                                       _loc3_.customerFirstVisit[_loc4_] = _loc3_.currentDay;
                                       true;
                                       true;
                                       true;
                                       true;
                                       _loc3_.customerVisits[_loc4_] = 1;
                                    }
                                 }
                                 else
                                 {
                                    false;
                                    false;
                                    class_5.debug(">> Ran out of customers, there is no Customer " + _loc4_ + " to unlock here.");
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§push(_loc3_.myRank >= 2);
            if(_loc3_.myRank >= 2)
            {
               false;
               false;
               §§pop();
               §§push(_loc3_.myRank <= 20);
            }
            if(§§pop())
            {
               true;
               true;
               false;
               false;
               class_5.debug(">> Unlock Topping " + (_loc3_.initialToppings + _loc3_.myRank - 1) + "!");
               _loc3_.toppingsUnlocked[_loc3_.initialToppings + _loc3_.myRank - 1] = 1;
               if(param2)
               {
                  false;
                  false;
                  _loc3_.toppingsRevealed[_loc3_.initialToppings + _loc3_.myRank - 1] = 1;
               }
            }
         }
         else
         {
            true;
            true;
            if(_loc3_.myRank != 1)
            {
               _loc5_ = _loc3_.closerCustomers + _loc3_.initialCustomers + 1;
               while(true)
               {
                  false;
                  false;
                  false;
                  false;
                  true;
                  true;
                  if(_loc5_ > _loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers)
                  {
                     break;
                  }
                  true;
                  true;
                  if(_loc3_.customersUnlocked[_loc5_] == 0)
                  {
                     false;
                     false;
                     class_5.debug(">> Filler Customer " + (_loc5_ - _loc3_.initialCustomers - _loc3_.closerCustomers) + " -- Unlock Customer " + _loc5_ + "!");
                     false;
                     false;
                     false;
                     false;
                     _loc3_.customersUnlocked[_loc5_] = 1;
                     if(param2)
                     {
                        _loc3_.customerFirstVisit[_loc5_] = _loc3_.currentDay;
                        _loc3_.customerVisits[_loc5_] = 1;
                     }
                     break;
                  }
                  _loc5_++;
               }
            }
         }
      }
      
      public function saveCharacterData() : void
      {
         var ob:UserData;
         var so:SharedObject;
         false;
         true;
         ob = this;
         false;
         false;
         false;
         false;
         so = SharedObject.getLocal(this.saveSlotPrefix + ob.whichSlot,"/");
         false;
         false;
         false;
         false;
         so.data.workerdata = ob.gameObj.workerData.getDataToSave();
         true;
         true;
         so.data.playername = ob.myName;
         true;
         true;
         so.data.hasnewclothing = ob.hasNewClothing;
         try
         {
            so.flush();
         }
         catch(err:Error)
         {
            class_5.error("Error Saving Data.");
         }
      }
      
      public function saveData() : void
      {
         var ob:UserData;
         var so:SharedObject;
         false;
         true;
         ob = this;
         false;
         false;
         so = SharedObject.getLocal(this.saveSlotPrefix + ob.whichSlot,"/");
         so.data.day = ob.currentDay;
         so.data.rank = ob.myRank;
         false;
         false;
         so.data.tips = ob.totalTips;
         so.data.tickets = ob.totalTickets;
         so.data.score = ob.totalScore;
         so.data.allmoney = ob.totalMoneyEarned;
         so.data.alltickets = ob.totalTicketsEarned;
         so.data.workerdata = ob.gameObj.workerData.getDataToSave();
         so.data.unlocked = ob.customersUnlocked.concat();
         so.data.stars = ob.customerStars.concat();
         so.data.seals = ob.customerSeals.concat();
         so.data.visits = ob.customerVisits.concat();
         false;
         false;
         so.data.first = ob.customerFirstVisit.concat();
         false;
         false;
         so.data.bonuses = ob.bonusUpgrades.concat();
         so.data.ribbon = ob.lastRibbon;
         true;
         true;
         so.data.numnapkins = ob.numNapkins;
         so.data.inventory = class_13.method_38(ob.furniInventory);
         so.data.lobby = class_13.method_38(ob.lobbyPlacement);
         so.data.wallpaper = ob.lobbyWallpaper;
         so.data.flooring = ob.lobbyFlooring;
         true;
         true;
         so.data.clothinginventory = ob.clothingInventory.concat();
         so.data.hasnewclothing = ob.hasNewClothing;
         true;
         true;
         true;
         true;
         so.data.hasnewfurni = ob.hasNewFurni;
         false;
         false;
         so.data.toppings = ob.toppingsUnlocked.concat();
         false;
         false;
         so.data.toppingsrevealed = ob.toppingsRevealed.concat();
         so.data.medalsEarned = ob.medalsEarned.concat();
         false;
         false;
         so.data.medalProgress = ob.gameObj.challengeManager.getMedalProgressArray();
         so.data.minigamesPlayed = ob.minigamesPlayed.concat();
         so.data.minigamePrizes = ob.minigamePrizes.concat();
         so.data.version = ob.saveSlotVersion;
         so.data.continuedgame = ob.hasContinuedGame;
         so.data.visitedshop = ob.hasVisitedUpgradeShop;
         false;
         false;
         so.data.visitedbadges = ob.hasVisitedBadgesScreen;
         false;
         false;
         so.data.visitedlobby = ob.hasVisitedLobbyEditor;
         so.data.placedfurni = ob.hasPlacedFurniture;
         so.data.shownparade = ob.didShowParade;
         so.data.floatsparade = ob.seenFloatsInParade;
         so.data.clicktwitter = ob.didClickTwitter;
         true;
         true;
         so.data.clickfacebook = ob.didClickFacebook;
         so.data.trainboost = ob.hasTrainedBoost;
         false;
         false;
         so.data.traincloser = ob.hasTrainedCloser;
         true;
         true;
         so.data.traincritic = ob.hasTrainedCritic;
         false;
         false;
         so.data.trainribbon = ob.hasTrainedRibbon;
         true;
         true;
         true;
         true;
         so.data.traindecorate = ob.hasTrainedDecorate;
         so.data.traininv = ob.hasTrainedInventory;
         true;
         true;
         so.data.trainposter = ob.hasTrainedPoster;
         so.data.trainfurni = ob.hasTrainedFurni;
         so.data.trainminigame = ob.hasTrainedMinigame;
         so.data.trainpattern2 = ob.hasTrainedPattern2;
         so.data.trainpattern3 = ob.hasTrainedPattern3;
         true;
         true;
         so.data.trainpattern4 = ob.hasTrainedPattern4;
         so.data.trainpattern5 = ob.hasTrainedPattern5;
         false;
         false;
         so.data.trainpattern6 = ob.hasTrainedPattern6;
         so.data.trainpattern7 = ob.hasTrainedPattern7;
         so.data.trainpattern8 = ob.hasTrainedPattern8;
         so.data.trainsauce = ob.hasTrainedSauce;
         try
         {
            so.flush();
            false;
            false;
         }
         catch(err:Error)
         {
            class_5.error("Error Saving Data.");
         }
         ob.gameObj.var_10.method_90();
      }
      
      public function saveAfterBadge() : void
      {
      }
      
      public function purchaseBonus(param1:String) : Boolean
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:GameData = _loc2_.gameObj.var_38;
         var _loc4_:Upgrade;
         var _loc5_:Number = (_loc4_ = _loc3_.getUpgradeFromTag(param1)).price;
         false;
         false;
         if(_loc2_.totalTips >= _loc5_)
         {
            true;
            true;
            if(_loc2_.bonusUpgrades.indexOf(param1) == -1)
            {
               _loc2_.bonusUpgrades.push(param1);
            }
            true;
            true;
            _loc2_.totalTips -= _loc5_;
            false;
            false;
            _loc2_.gameObj.challengeManager.recordUpgrade(_loc4_.tag);
            false;
            false;
            _loc2_.gameObj.challengeManager.recordPurchase("upgrade");
            _loc2_.gameObj.var_10.api.method_27("Purchased " + _loc4_.title,"Purchases");
            false;
            false;
            true;
            true;
            if(param1 == "napkin")
            {
               false;
               false;
               true;
               true;
               _loc2_.numNapkins += 5;
            }
            else if(param1 == "napkinholder")
            {
               _loc2_.numNapkins += 10;
               true;
               true;
            }
            _loc2_.saveData();
            false;
            false;
            return true;
         }
         return false;
      }
      
      public function recordMinigamePlayed(param1:Number) : void
      {
         false;
         true;
         var _loc2_:UserData = this;
         if(param1 > -1)
         {
            false;
            false;
            ++_loc2_.minigamesPlayed[param1];
            _loc2_.gameObj.challengeManager.recordPlayingMinigame();
         }
      }
      
      public function earnMinigameFurniture(param1:String, param2:Number = -1) : void
      {
         var _loc3_:UserData = this;
         var _loc4_:GameData;
         var _loc5_:FurniData = (_loc4_ = _loc3_.gameObj.var_38).getFurniFromTag(param1);
         true;
         true;
         true;
         true;
         var _loc6_:Number;
         if((_loc6_ = _loc3_.getExistingFurniIndex(_loc5_.tag)) > -1)
         {
            true;
            true;
            _loc3_.furniInventory[_loc6_][1] += 1;
         }
         else
         {
            true;
            true;
            _loc3_.furniInventory.push([_loc5_.tag,1,0]);
         }
         if(param2 > -1)
         {
            var _loc7_:*;
            var _loc8_:*;
            var _loc9_:* = (_loc7_ = _loc3_.minigamePrizes)[_loc8_ = param2] + 1;
            false;
            false;
            _loc7_[_loc8_] = _loc9_;
         }
         false;
         false;
         _loc3_.gameObj.challengeManager.recordEarningPrize();
         _loc3_.gameObj.var_10.api.method_27("Earned " + _loc5_.title,"Bonus Furni");
         _loc3_.hasNewFurni = true;
         _loc3_.saveData();
      }
      
      public function earnMinigameClothing(param1:String, param2:Number = -1) : void
      {
         false;
         true;
         var _loc3_:UserData = this;
         var _loc4_:ClothingData;
         var _loc5_:ClothingItem = (_loc4_ = _loc3_.gameObj.var_20).getItemFromSKU(param1);
         false;
         false;
         _loc3_.clothingInventory.push(param1);
         if(param2 > -1)
         {
            ++_loc3_.minigamePrizes[param2];
         }
         true;
         true;
         _loc3_.gameObj.challengeManager.recordEarningPrize();
         _loc3_.gameObj.var_10.api.method_27("Earned " + _loc5_.title,"Bonus Clothing");
         false;
         false;
         _loc3_.hasNewClothing = true;
         _loc3_.saveData();
      }
      
      public function earnMinigameTips(param1:Number) : void
      {
         false;
         true;
         var _loc2_:UserData = this;
         true;
         true;
         _loc2_.totalTips += param1;
         _loc2_.saveData();
      }
      
      public function earnMinigameTickets(param1:Number) : void
      {
         false;
         true;
         var _loc2_:UserData = this;
         _loc2_.totalTickets += param1;
         true;
         true;
         _loc2_.saveData();
      }
      
      public function purchaseClothing(param1:String) : Boolean
      {
         var _loc2_:UserData = this;
         var _loc3_:ClothingData = _loc2_.gameObj.var_20;
         false;
         false;
         var _loc4_:ClothingItem;
         var _loc5_:Number = (_loc4_ = _loc3_.getItemFromSKU(param1)).price;
         if(_loc2_.totalTips >= _loc5_)
         {
            _loc2_.clothingInventory.push(param1);
            true;
            true;
            _loc2_.totalTips -= _loc5_;
            false;
            false;
            _loc2_.gameObj.challengeManager.recordPurchase("clothing");
            false;
            false;
            _loc2_.gameObj.var_10.api.method_27("Purchased " + _loc4_.title,"Clothing Purchases");
            _loc2_.hasNewClothing = true;
            _loc2_.saveData();
            false;
            false;
            true;
            true;
            return true;
         }
         return false;
      }
      
      public function purchaseFurniture(param1:String) : Boolean
      {
         false;
         true;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc2_:UserData = this;
         var _loc3_:GameData = _loc2_.gameObj.var_38;
         var _loc4_:FurniData;
         var _loc5_:Number = (_loc4_ = _loc3_.getFurniFromTag(param1)).price;
         false;
         false;
         if(_loc2_.totalTips >= _loc5_)
         {
            false;
            false;
            if((_loc6_ = _loc2_.getExistingFurniIndex(_loc4_.tag)) > -1)
            {
               false;
               false;
               _loc2_.furniInventory[_loc6_][1] += 1;
            }
            else
            {
               _loc2_.furniInventory.push([_loc4_.tag,1,0]);
               false;
               false;
            }
            _loc2_.totalTips -= _loc5_;
            true;
            true;
            false;
            false;
            true;
            true;
            false;
            false;
            §§push((_loc7_ = _loc4_.type) == FurniData.TYPE_FLOORING);
            if(!((_loc7_ = _loc4_.type) == FurniData.TYPE_FLOORING))
            {
               true;
               true;
               §§pop();
               §§push(_loc7_ == FurniData.TYPE_WALLPAPER);
            }
            if(§§pop())
            {
               true;
               true;
               _loc7_ = "wallfloor";
            }
            _loc2_.gameObj.challengeManager.recordPurchase(_loc7_);
            _loc2_.gameObj.var_10.api.method_27("Purchased " + _loc4_.title,"Furni Purchases");
            _loc2_.hasNewFurni = true;
            _loc2_.saveData();
            return true;
         }
         return false;
      }
      
      private function getExistingFurniIndex(param1:String) : Number
      {
         var _loc2_:UserData = this;
         var _loc3_:Number = -1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.furniInventory.length)
         {
            if(_loc2_.furniInventory[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
            true;
            true;
         }
         return _loc3_;
      }
      
      public function getFurniAmount(param1:String, param2:Boolean = false) : Number
      {
         false;
         true;
         var _loc3_:UserData = this;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.furniInventory.length)
         {
            false;
            false;
            false;
            false;
            if(_loc3_.furniInventory[_loc5_][0] == param1)
            {
               _loc4_ = Number(_loc3_.furniInventory[_loc5_][1]);
               false;
               false;
               if(param2 == true)
               {
                  false;
                  false;
                  _loc4_ += _loc3_.furniInventory[_loc5_][2];
               }
               break;
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public function getFurniAvailable(param1:String = "any") : Array
      {
         var _loc5_:FurniData = null;
         var _loc2_:UserData = this;
         var _loc3_:Array = [];
         var _loc4_:int = int(_loc2_.furniInventory.length - 1);
         while(_loc4_ >= 0)
         {
            if(_loc2_.furniInventory[_loc4_][1] > 0)
            {
               false;
               false;
               if(param1 == "any")
               {
                  false;
                  false;
                  _loc3_.push(_loc2_.furniInventory[_loc4_][0]);
                  true;
                  true;
               }
               else if((_loc5_ = _loc2_.gameObj.var_38.getFurniFromTag(_loc2_.furniInventory[_loc4_][0])) != null && _loc5_.type == param1)
               {
                  true;
                  true;
                  _loc3_.push(_loc2_.furniInventory[_loc4_][0]);
               }
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function isFurniInLobby(param1:String) : Boolean
      {
         var _loc4_:String = null;
         var _loc2_:UserData = this;
         var _loc3_:Boolean = false;
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.lobbyPlacement.length)
         {
            _loc4_ = String(_loc2_.lobbyPlacement[_loc5_][0]);
            if(param1 == _loc4_)
            {
               false;
               false;
               true;
               true;
               _loc3_ = true;
               true;
               true;
               break;
            }
            _loc5_++;
            true;
            true;
         }
         return _loc3_;
      }
      
      public function placeFurniInLobby(param1:String, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:UserData = this;
         var _loc5_:Boolean = false;
         true;
         true;
         var _loc6_:Number;
         if((_loc6_ = _loc4_.getExistingFurniIndex(param1)) > -1)
         {
            false;
            false;
            if(_loc4_.furniInventory[_loc6_][1] > 0)
            {
               false;
               false;
               false;
               false;
               _loc4_.furniInventory[_loc6_][1] = _loc4_.furniInventory[_loc6_][1] - 1;
               true;
               true;
               true;
               true;
               _loc4_.furniInventory[_loc6_][2] += 1;
               _loc4_.lobbyPlacement.push([param1,param2,param3]);
               true;
               true;
               false;
               false;
               _loc5_ = true;
            }
         }
         return _loc5_;
      }
      
      public function removeFurniFromLobby(param1:String, param2:Number, param3:Number) : Boolean
      {
         false;
         true;
         var _loc7_:Number = NaN;
         var _loc4_:UserData = this;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.lobbyPlacement.length)
         {
            true;
            true;
            if(_loc4_.lobbyPlacement[_loc6_][0] == param1 && _loc4_.lobbyPlacement[_loc6_][1] == param2 && _loc4_.lobbyPlacement[_loc6_][2] == param3)
            {
               false;
               false;
               _loc4_.lobbyPlacement.splice(_loc6_,1);
               if((_loc7_ = _loc4_.getExistingFurniIndex(param1)) > -1)
               {
                  false;
                  false;
                  _loc4_.furniInventory[_loc7_][1] += 1;
                  _loc4_.furniInventory[_loc7_][2] = _loc4_.furniInventory[_loc7_][2] - 1;
                  false;
                  false;
                  _loc5_ = true;
               }
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function getDay() : Number
      {
         var _loc1_:UserData = this;
         return _loc1_.currentDay;
      }
      
      public function getDaysUntilPapa() : Number
      {
         var _loc1_:UserData = this;
         var _loc2_:Number = _loc1_.papaReturnsOnDay - _loc1_.getDay();
         false;
         false;
         if(_loc2_ < 0)
         {
            true;
            true;
            true;
            true;
            _loc2_ = 0;
         }
         return _loc2_;
      }
      
      private function getLastRankLimit() : Number
      {
         false;
         true;
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:Number = 2;
         while(_loc3_ <= _loc1_.myRank)
         {
            true;
            true;
            if(_loc3_ < _loc1_.rankPlateauLimit)
            {
               true;
               true;
               false;
               false;
               _loc2_ += _loc3_;
               true;
               true;
            }
            else
            {
               false;
               false;
               true;
               true;
               _loc2_ += _loc1_.rankPlateauLimit;
            }
            false;
            false;
            _loc3_++;
         }
         return _loc2_ * _loc1_.rankMultiplier;
      }
      
      private function getNextRankLimit() : Number
      {
         false;
         true;
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:Number = _loc1_.getLastRankLimit();
         if(_loc1_.myRank + 1 < _loc1_.rankPlateauLimit)
         {
            true;
            true;
            true;
            true;
            false;
            false;
            _loc2_ = _loc3_ + (_loc1_.myRank + 1) * _loc1_.rankMultiplier;
         }
         else
         {
            false;
            false;
            _loc2_ = _loc3_ + _loc1_.rankPlateauLimit * _loc1_.rankMultiplier;
         }
         return _loc2_;
      }
      
      public function getPointsUntilNextRank(param1:Boolean = false) : Number
      {
         false;
         true;
         var _loc2_:UserData = this;
         true;
         true;
         var _loc3_:Number = _loc2_.getNextRankLimit();
         true;
         true;
         var _loc4_:Number = _loc3_ - _loc2_.totalScore;
         false;
         false;
         if(param1)
         {
            true;
            true;
            false;
            false;
            true;
            true;
            _loc4_ -= _loc2_.todayScore;
         }
         return _loc4_;
      }
      
      public function getCurrentPointPercentage() : Number
      {
         var _loc1_:UserData = this;
         false;
         false;
         var _loc2_:Number = _loc1_.lastRankLimit;
         true;
         true;
         var _loc3_:Number = _loc1_.getNextRankLimit();
         true;
         true;
         true;
         true;
         false;
         false;
         false;
         false;
         var _loc5_:Number;
         var _loc4_:Number;
         if((_loc5_ = ((_loc4_ = _loc1_.totalScore + _loc1_.todayScore) - _loc2_) / (_loc3_ - _loc2_)) > 1)
         {
            true;
            true;
            true;
            true;
            _loc5_ = 1;
         }
         else
         {
            true;
            true;
            if(_loc5_ < 0)
            {
               true;
               true;
               _loc5_ = 0;
            }
         }
         return _loc5_;
      }
      
      public function loadLabelsForSlot(param1:Number) : Object
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:Object = null;
         var _loc4_:SharedObject;
         if((_loc4_ = SharedObject.getLocal(this.saveSlotPrefix + param1,"/")).data.rank)
         {
            _loc3_ = {};
            if(_loc4_.data.playername)
            {
               _loc3_.name = _loc4_.data.playername;
            }
            else
            {
               _loc3_.name = "Anonymous";
            }
            _loc3_.score = _loc4_.data.score;
            false;
            false;
            _loc3_.tips = _loc4_.data.tips;
            true;
            true;
            _loc3_.rank = _loc4_.data.rank;
            _loc3_.title = _loc2_.getRankTitle(Number(_loc4_.data.rank));
            _loc3_.day = _loc4_.data.day;
         }
         return _loc3_;
      }
      
      public function readyToShowPapa() : Boolean
      {
         this;
         return false;
      }
      
      public function isEveryoneGold() : Boolean
      {
         false;
         true;
         var _loc1_:UserData = this;
         var _loc2_:Boolean = true;
         var _loc3_:Number = 1;
         true;
         true;
         true;
         true;
         false;
         false;
         _loc3_ = 8;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc1_.customerSeals.length - 1)
         {
            if(_loc1_.customerSeals[_loc4_] < 3)
            {
               true;
               true;
               _loc2_ = false;
               true;
               true;
               break;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function hasBonus(param1:String) : Boolean
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.bonusUpgrades.length)
         {
            if(_loc2_.bonusUpgrades[_loc4_] == param1)
            {
               false;
               false;
               _loc3_ = true;
               false;
               false;
               break;
            }
            _loc4_++;
            false;
            false;
         }
         return _loc3_;
      }
      
      public function hasTopping(param1:String = null, param2:Number = -1) : Boolean
      {
         false;
         true;
         var _loc3_:UserData = this;
         var _loc4_:Boolean = false;
         var _loc5_:Number = -1;
         true;
         true;
         if(param1 != null)
         {
            false;
            false;
            _loc5_ = _loc3_.toppingIndexes.indexOf(param1);
         }
         else
         {
            _loc5_ = param2;
         }
         true;
         true;
         if(_loc5_ > -1 && _loc3_.toppingsUnlocked.length > _loc5_ && _loc3_.toppingsUnlocked[_loc5_] == 1)
         {
            false;
            false;
            _loc4_ = true;
         }
         else
         {
            _loc4_ = false;
         }
         return _loc4_;
      }
      
      public function getAvailableBonuses() : Array
      {
         var _loc1_:UserData = this;
         var _loc2_:Array = [];
         var _loc3_:int = 1;
         while(_loc3_ <= _loc1_.totalBonuses)
         {
            if(_loc1_.bonusUpgrades[_loc3_] == 0)
            {
               true;
               true;
               _loc2_.push(_loc3_);
               true;
               true;
            }
            _loc3_++;
            false;
            false;
         }
         return _loc2_;
      }
      
      public function getTotalBonuses() : Number
      {
         var _loc1_:UserData = this;
         return _loc1_.totalBonuses;
      }
      
      public function getBonusWaitOffset() : Number
      {
         false;
         true;
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc1_:UserData = this;
         var _loc2_:GameData = _loc1_.gameObj.var_38;
         var _loc3_:Number = 0;
         var _loc4_:String = "Get Bonus Wait Offset: ";
         true;
         true;
         _loc5_ = 1;
         while(true)
         {
            false;
            false;
            false;
            false;
            if(_loc5_ > _loc1_.totalBonuses)
            {
               break;
            }
            false;
            false;
            true;
            true;
            if(_loc1_.bonusUpgrades[_loc5_] == 1)
            {
               false;
               false;
               _loc3_ += Upgrade(_loc2_.shopItems[_loc5_ - 1]).waitingOffset;
            }
            true;
            true;
            _loc5_++;
         }
         _loc5_ = 0;
         true;
         true;
         while(_loc5_ < _loc1_.lobbyPlacement.length)
         {
            false;
            false;
            _loc6_ = String(_loc1_.lobbyPlacement[_loc5_][0]);
            true;
            true;
            _loc3_ += _loc2_.getFurniFromTag(_loc6_).waitingOffset;
            false;
            false;
            _loc5_++;
         }
         _loc4_ += _loc3_ + ". ";
         true;
         true;
         class_5.debug(_loc4_);
         return _loc3_;
      }
      
      public function hasBonusFurniture(param1:String, param2:String) : Boolean
      {
         var _loc5_:String = null;
         var _loc6_:FurniData = null;
         var _loc3_:UserData = this;
         var _loc4_:Boolean = false;
         var _loc7_:int = 0;
         while(_loc7_ < _loc3_.lobbyPlacement.length)
         {
            _loc5_ = String(_loc3_.lobbyPlacement[_loc7_][0]);
            false;
            false;
            false;
            false;
            true;
            true;
            true;
            true;
            if(((_loc6_ = _loc3_.gameObj.var_38.getFurniFromTag(_loc5_)).special == FurniData.SPECIAL_SCORE || _loc6_.special == FurniData.SPECIAL_SCOREBUBBLEGUM) && _loc6_.scoreType == param1 && _loc6_.toppingType == param2)
            {
               false;
               false;
               _loc4_ = true;
               true;
               true;
               break;
            }
            _loc7_++;
         }
         return _loc4_;
      }
      
      public function alreadyOwnsFurniture(param1:String) : Boolean
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.furniInventory.length)
         {
            if(_loc2_.furniInventory[_loc4_][0] == param1)
            {
               true;
               true;
               _loc3_ = true;
               break;
            }
            _loc4_++;
            true;
            true;
         }
         return _loc3_;
      }
      
      public function alreadyOwnsClothing(param1:String) : Boolean
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.clothingInventory.length)
         {
            if(_loc2_.clothingInventory[_loc4_] == param1)
            {
               false;
               false;
               _loc3_ = true;
               false;
               false;
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function getCustomerPool(param1:Number, param2:Boolean = false) : Array
      {
         var _loc5_:Number = NaN;
         var _loc7_:Array = null;
         var _loc8_:Number = NaN;
         var _loc3_:UserData = this;
         var _loc4_:Array = [];
         true;
         true;
         _loc5_ = 1 + _loc3_.closerCustomers;
         while(true)
         {
            false;
            false;
            if(_loc5_ >= _loc3_.customersUnlocked.length)
            {
               break;
            }
            true;
            true;
            if(_loc3_.customersUnlocked[_loc5_] == 1)
            {
               false;
               false;
               if(_loc3_.getCustomerSeal(_loc5_) < 3)
               {
                  §§push(param2 == false);
                  if(!(param2 == false))
                  {
                     true;
                     true;
                     §§pop();
                     §§push(_loc3_.customerVisits[_loc5_] > 0);
                  }
                  if(§§pop())
                  {
                     _loc4_.push(_loc5_);
                  }
               }
            }
            _loc5_++;
         }
         false;
         false;
         true;
         true;
         var _loc6_:Number;
         if((_loc6_ = param1 - _loc4_.length) > 0)
         {
            class_5.debug("Not Enough Non-Gold Customers! Grab from the full pool.");
            true;
            true;
            _loc7_ = [];
            false;
            false;
            _loc5_ = 1 + _loc3_.closerCustomers;
            while(_loc5_ < _loc3_.customersUnlocked.length)
            {
               if(_loc3_.customersUnlocked[_loc5_] == 1)
               {
                  true;
                  true;
                  if(_loc4_.indexOf(_loc5_) == -1)
                  {
                     _loc7_.push(_loc5_);
                  }
               }
               _loc5_++;
               false;
               false;
            }
            true;
            true;
            while(_loc4_.length < param1)
            {
               _loc8_ = Math.floor(Math.random() * _loc7_.length);
               true;
               true;
               _loc4_.unshift(_loc7_[_loc8_]);
               _loc7_.splice(_loc8_,1);
            }
         }
         _loc4_.sort(Array.NUMERIC);
         return _loc4_;
      }
      
      public function getNewestCustomer() : Number
      {
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         true;
         true;
         var _loc4_:int = 1 + _loc1_.closerCustomers;
         while(_loc4_ < _loc1_.customersUnlocked.length)
         {
            true;
            true;
            true;
            true;
            true;
            true;
            if(_loc1_.customersUnlocked[_loc4_] == 1 && _loc1_.customerFirstVisit[_loc4_] == 0)
            {
               false;
               false;
               false;
               false;
               _loc2_ = _loc4_;
               break;
            }
            true;
            true;
            false;
            false;
            §§push(_loc1_.customersUnlocked[_loc4_] == 1);
            if(_loc1_.customersUnlocked[_loc4_] == 1)
            {
               false;
               false;
               §§pop();
               false;
               false;
               false;
               false;
               §§push(_loc1_.customerFirstVisit[_loc4_] > _loc3_);
            }
            if(§§pop())
            {
               false;
               false;
               _loc2_ = _loc4_;
               false;
               false;
               _loc3_ = Number(_loc1_.customerFirstVisit[_loc4_]);
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function getCloserCustomer() : Number
      {
         var _loc1_:UserData = this;
         true;
         true;
         var _loc2_:Number = _loc1_.currentDay % _loc1_.closerCustomers;
         true;
         true;
         if(_loc2_ == 0)
         {
            _loc2_ = _loc1_.closerCustomers;
         }
         return _loc2_;
      }
      
      public function getToppingToReveal() : String
      {
         var _loc1_:UserData = this;
         var _loc2_:String = "none";
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.toppingsUnlocked.length)
         {
            false;
            false;
            false;
            false;
            if(_loc1_.toppingsUnlocked[_loc3_] == 1 && _loc1_.toppingsRevealed[_loc3_] == 0)
            {
               true;
               true;
               _loc2_ = String(_loc1_.toppingIndexes[_loc3_]);
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function rememberRevealedTopping(param1:String) : void
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:Number = _loc2_.toppingIndexes.indexOf(param1);
         false;
         false;
         false;
         false;
         false;
         false;
         if(_loc3_ > -1 && _loc3_ < _loc2_.toppingsRevealed.length)
         {
            _loc2_.toppingsRevealed[_loc3_] = 1;
         }
      }
      
      public function hasBadge(param1:Number) : Boolean
      {
         false;
         true;
         var _loc2_:UserData = this;
         var _loc3_:Boolean = false;
         if(_loc2_.medalsEarned.length > param1)
         {
            false;
            false;
            if(_loc2_.medalsEarned[param1] == 1)
            {
               true;
               true;
               _loc3_ = true;
            }
         }
         return _loc3_;
      }
      
      public function earnBadge(param1:Number, param2:String = "", param3:Number = 0, param4:Number = 0) : void
      {
         false;
         true;
         var _loc5_:UserData;
         (_loc5_ = this).medalsEarned[param1] = 1;
         false;
         false;
         true;
         true;
         _loc5_.totalTips += param3;
         true;
         true;
         _loc5_.totalTickets += param4;
         true;
         true;
         _loc5_.gameObj.var_10.api.method_27("Badge " + param1 + ": " + param2,"Badges");
      }
      
      public function getTotalBadgesEarned() : Number
      {
         false;
         true;
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.medalsEarned.length)
         {
            if(_loc1_.medalsEarned[_loc3_] == 1)
            {
               false;
               false;
               _loc2_++;
               false;
               false;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getStatCustomersUnlocked() : Number
      {
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.customersUnlocked.length)
         {
            if(_loc1_.customersUnlocked[_loc3_] == 1)
            {
               true;
               true;
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getStatCustomersBronze() : Number
      {
         false;
         true;
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.customerSeals.length)
         {
            if(_loc1_.customerSeals[_loc3_] >= 1)
            {
               true;
               true;
               true;
               true;
               _loc2_++;
               false;
               false;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getStatCustomersSilver() : Number
      {
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.customerSeals.length)
         {
            if(_loc1_.customerSeals[_loc3_] >= 2)
            {
               true;
               true;
               false;
               false;
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getStatCustomersGold() : Number
      {
         false;
         true;
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.customerSeals.length)
         {
            if(_loc1_.customerSeals[_loc3_] == 3)
            {
               false;
               false;
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getStatUpgradesUnlocked() : Number
      {
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.bonusUpgrades.length)
         {
            if(_loc1_.bonusUpgrades[_loc3_] == 1)
            {
               false;
               false;
               false;
               false;
               _loc2_++;
            }
            _loc3_++;
            false;
            false;
         }
         return _loc2_;
      }
   }
}
