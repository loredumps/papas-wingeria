package wingGame.data
{
   import package_4.*;
   
   public class GameData
   {
       
      
      public var gameObj:class_4;
      
      public var shopItems:Array;
      
      public var furniItems:Array;
      
      public function GameData(param1:class_4)
      {
         false;
         true;
         true;
         true;
         this.shopItems = [new Upgrade("doorbell","Doorbell",3000,"Alert When Customers Enter","You\'ll hear when new customers enter, no matter where you are.",0),new Upgrade("booster1","Cook Booster 1",12000,"Cook Wings Faster","Hold down the booster to cook your food faster.",0),new Upgrade("booster2","Cook Booster 2",12000,"Cook Wings Faster","Hold down the booster to cook your food faster.",0),new Upgrade("booster3","Cook Booster 3",12000,"Cook Wings Faster","Hold down the booster to cook your food faster.",0),new Upgrade("booster4","Cook Booster 4",12000,"Cook Wings Faster","Hold down the booster to cook your food faster.",0),new Upgrade("alarm1","Fryer Alarm 1",9000,"Alerts When Cooking","These alarms will automatically alert you when to remove food.",0),new Upgrade("alarm2","Fryer Alarm 2",9000,"Alerts When Cooking","These alarms will automatically alert you when to remove food.",0),new Upgrade("alarm3","Fryer Alarm 3",9000,"Alerts When Cooking","These alarms will automatically alert you when to remove food.",0),new Upgrade("alarm4","Fryer Alarm 4",9000,"Alerts When Cooking","These alarms will automatically alert you when to remove food.",0),new Upgrade("plateguide1","Plate Guide 1",15000,"Helps with Presentation","This basic Plate Guide will help you judge where to place items on the plate.",0),new Upgrade("plateguide2","Plate Guide 2",35000,"Helps with Presentation","This detailed Plate Guide will help you judge where to place items on the plate.",0),new Upgrade("napkinholder","Napkin Holder",10000,"Stock Napkins to Clean Plates","Stock napkins to wipe messy plates before serving!  Comes with 10 napkins.",0),new Upgrade("napkin","Napkins x 5",1500,"","Grab and wipe messy plates before serving to get a better score!  You need a Napkin Holder to purchase.",0)];
         false;
         false;
         this.furniItems = [new FurniData("poster_bbq","BBQ Poster",4500,"+ Score with BBQ Sauce","Sweet and smoky sauce.",FurniData.TYPE_POSTER,2,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_BBQ),new FurniData("poster_buffalo","Buffalo Poster",4500,"+ Score with Buffalo Sauce","The classic wing sauce.",FurniData.TYPE_POSTER,3,1,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_BUFFALO),new FurniData("poster_spicygarlic","Garlic Poster",5500,"+ Score with Spicy Garlic Sauce","Garlicious!",FurniData.TYPE_POSTER,3,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_SPICYGARLIC),new FurniData("poster_calypso","Calypso Poster",3500,"+ Score with Calypso Sauce","Add some island flavor to your wings.",FurniData.TYPE_POSTER,1,3,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_CALYPSO),new FurniData("poster_atomic","Atomic Poster",5500,"+ Score with Atomic Sauce","Your taste buds will explode with heat and flavor!",FurniData.TYPE_POSTER,3,3,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_ATOMIC),new FurniData("poster_honeymustard","Honey Poster",4500,"+ Score with Honey Mustard Sauce","A sweet and tangy glaze.",FurniData.TYPE_POSTER,2,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_HONEYMUSTARD),new FurniData("poster_teriyaki","Teriyaki Poster",4500,"+ Score with Teriyaki Sauce","Terrific teriyaki flavor.",FurniData.TYPE_POSTER,2,3,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_TERIYAKI),new FurniData("poster_medium","Medium Poster",5000,"+ Score with Medium Sauce","Not too mild, not too hot.",FurniData.TYPE_POSTER,2,3,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_MEDIUM),new FurniData("poster_parmesan","Parmesan Poster",4500,"+ Score with Parmesan Sauce","Add a hint of creamy parmesan to your wings.",FurniData.TYPE_POSTER,3,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_PARMESAN),new FurniData("poster_wildonion","Wild Onion Poster",5000,"+ Score with Wild Onion Sauce","Catch the Wild Onion craze!",FurniData.TYPE_POSTER,2,3,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_WILDONION),new FurniData("poster_wasabi","Wasabi Poster",4500,"+ Score with Wasabi Sauce","Add some kick to your wings!",FurniData.TYPE_POSTER,3,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.SAUCE_WASABI),new FurniData("poster_carrot","Carrot Poster",2000,"+ Score with Carrots","Have some crunch with your wings.",FurniData.TYPE_POSTER,1,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.SIDE_CARROT),new FurniData("poster_celery","Celery Poster",2500,"+ Score with Celery","Great for dipping!",FurniData.TYPE_POSTER,3,1,0,FurniData.SPECIAL_SCORE,"build",FoodData.SIDE_CELERY),new FurniData("poster_redpepper","Red Pepper Poster",1000,"+ Score with Red Peppers","Put some color on your plate.",FurniData.TYPE_POSTER,1,1,0,FurniData.SPECIAL_SCORE,"build",FoodData.SIDE_REDPEPPER),new FurniData("poster_greenpepper","Green Pepper Poster",1000,"+ Score with Green Peppers","Pair it with your red peppers!",FurniData.TYPE_POSTER,1,1,0,FurniData.SPECIAL_SCORE,"build",FoodData.SIDE_GREENPEPPER),new FurniData("poster_fry","Fries Poster",3000,"+ Score with Fries","Crisp and salty.",FurniData.TYPE_POSTER,2,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.SIDE_FRY),new FurniData("poster_cheesecubes","Cheese Cube Poster",2500,"+ Score with Cheese Cubes","Makes your food fancier.",FurniData.TYPE_POSTER,1,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.SIDE_CHEESECUBES),new FurniData("poster_ranch","Dip Poster",4000,"+ Score with Ranch/Blue Cheese","Who can decide?",FurniData.TYPE_POSTER,3,3,0,FurniData.SPECIAL_SCORE,"build",FoodData.DIP_RANCH),new FurniData("poster_mangochili","Mango Chili Poster",3500,"+ Score with Mango Chili Dip","Whoa, taste that flavor!",FurniData.TYPE_POSTER,2,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.DIP_MANGOCHILI),new FurniData("poster_awesomesauce","Awesomesauce Poster",3500,"+ Score with Awesome Sauce Dip","The only way to describe it is... awesome!",FurniData.TYPE_POSTER,3,2,0,FurniData.SPECIAL_SCORE,"build",FoodData.DIP_AWESOMESAUCE),new FurniData("poster_kungpao","Kung Pao Poster",3500,"+ Score with Kung Pao Dip","Pow!",FurniData.TYPE_POSTER,2,3,0,FurniData.SPECIAL_SCORE,"build",FoodData.DIP_KUNGPAO),new FurniData("poster_zestypesto","Pesto Poster",3000,"+ Score with Zesty Pesto Dip","Taste the zestiness!",FurniData.TYPE_POSTER,1,3,0,FurniData.SPECIAL_SCORE,"build",FoodData.DIP_ZESTYPESTO),new FurniData("poster_window","Window",7500,"Improves Waiting Score","Get a view of the outside.",FurniData.TYPE_POSTER,3,3,3),new FurniData("poster_jojo","Jojo Poster",5000,"+ Score with Jojo","Show your love for the Food Critic!",FurniData.TYPE_POSTER,3,1,1,FurniData.SPECIAL_SCORE,"customer","jojo"),new FurniData("poster_flipline","Flipline Poster",1500,"Improves Waiting Score","Promote the developers!",FurniData.TYPE_POSTER,2,1,2),new FurniData("furni_wingeria_small","Sm. Wingeria Table",4500,"Improves Waiting Score","A small Wingeria table.",FurniData.TYPE_FURNI,2,1,2),new FurniData("furni_wingeria_large","Lg. Wingeria Table",8500,"Improves Waiting Score","A large Wingeria table.",FurniData.TYPE_FURNI,4,1,3),new FurniData("furni_wingeria_music","Wingeria Boombox",10000,"Improves Waiting Score","Crank up the tunes.",FurniData.TYPE_FURNI,3,1,3,FurniData.SPECIAL_MUSIC),new FurniData("furni_wingeria_fencewings","Wing Sign",8500,"+ Grill/Build Score with Wings","Advertise your delicious wings, and get a higher score!",FurniData.TYPE_FURNI,4,1,3,FurniData.SPECIAL_SCORE,"build",FoodData.MEAT_WING),new FurniData("furni_wingeria_fenceboneless","Boneless Sign",8500,"+ Grill/Build Score with Boneless","Promote your boneless wings, and get a higher score!",FurniData.TYPE_FURNI,4,1,3,FurniData.SPECIAL_SCORE,"build",FoodData.MEAT_BONELESS),new FurniData("furni_wingeria_fencestrips","Strips Sign",8500,"+ Grill/Build Score with Strips","Advertise your chicken strips, and get a higher score!",FurniData.TYPE_FURNI,4,1,3,FurniData.SPECIAL_SCORE,"build",FoodData.MEAT_STRIPS),new FurniData("furni_wingeria_fenceshrimp","Shrimp Sign",8500,"+ Grill/Build Score with Shrimp","Promote your deep-fried shrimp, and get a higher score!",FurniData.TYPE_FURNI,4,1,3,FurniData.SPECIAL_SCORE,"build",FoodData.MEAT_SHRIMP),new FurniData("furni_wingeria_streetlamp","Streetlamp",10000,"Improves Waiting Score","Bring the street inside!",FurniData.TYPE_FURNI,2,1,3),new FurniData("furni_jukebox","Jukebox",45000,"Improves Waiting Score","Put on some tunes for your guests.",FurniData.TYPE_FURNI,3,1,6,FurniData.SPECIAL_MUSIC),new FurniData("furni_newspapers","Newspaper Stand",8000,"Improves Waiting Score","Set out some reading material.",FurniData.TYPE_FURNI,3,1,4,FurniData.SPECIAL_NEWSPAPER),new FurniData("furni_small_table","Small Diner Table",3500,"Improves Waiting Score","A small table for your guests.",FurniData.TYPE_FURNI,2,1,1),new FurniData("furni_medium_table","Medium Diner Table",5500,"Improves Waiting Score","A medium diner table.",FurniData.TYPE_FURNI,3,1,2),new FurniData("furni_large_table","Large Diner Table",7500,"Improves Waiting Score","A large table.",FurniData.TYPE_FURNI,4,1,3),new FurniData("furni_gumballmachine","Gumballs",7000,"Improves Waiting Score","Something to chew while they wait.",FurniData.TYPE_FURNI,2,1,2,FurniData.SPECIAL_BUBBLEGUM),new FurniData("furni_arcade_steaknjake","SnJ Arcade Game",50000,"Improves Waiting Score","Play Steak and Jake\'s arcade game.  Beware, it\'s tough!",FurniData.TYPE_FURNI,5,1,6,FurniData.SPECIAL_ARCADE),new FurniData("furni_arcade_papalouie","Papa Louie Arcade",40000,"Improves Waiting Score","Papa\'s arcade machine is back!",FurniData.TYPE_FURNI,5,1,5,FurniData.SPECIAL_ARCADE),new FurniData("furni_arcade_mccoy","McCoy Arcade Game",45000,"Improves Waiting Score","Keep customers busy with McCoy\'s game!",FurniData.TYPE_FURNI,5,1,6,FurniData.SPECIAL_ARCADE),new FurniData("furni_coffee","Coffee Station",7000,"Improves Waiting Score","Customers will love some coffee while they wait.",FurniData.TYPE_FURNI,3,1,4,FurniData.SPECIAL_COFFEE),new FurniData("furni_popmachine","Soda Machine",25000,"Improves Waiting Score","Grab a can of Fizzo while you wait.",FurniData.TYPE_FURNI,4,1,4,FurniData.SPECIAL_SODA),new FurniData("furni_tiki_punch","Tropical Punch",7500,"Improves Waiting Score","How about some Hawaiian punch in a coconut?",FurniData.TYPE_FURNI,2,1,4,FurniData.SPECIAL_PUNCH),new FurniData("furni_fence","Picket Fence",4000,"Improves Waiting Score","Quaint and cozy.",FurniData.TYPE_FURNI,4,1,2),new FurniData("furni_comicbooks","Comic Books",15000,"Improves Waiting Score","Flip through some comics while you wait!",FurniData.TYPE_FURNI,2,1,3,FurniData.SPECIAL_COMICS),new FurniData("furni_tall_pillar","Tall Pillar",10000,"Improves Waiting Score","So classical.",FurniData.TYPE_FURNI,2,1,2),new FurniData("furni_romano_painting","Romano Painting",12000,"+ Waiting, + Romano Tips","The Romano Family will love this tribute.",FurniData.TYPE_FURNI,4,1,3,FurniData.SPECIAL_SCORE,"customer","romano"),new FurniData("furni_phonograph","Phonograph",17500,"Improves Waiting Score","A classy way to listen to some music.",FurniData.TYPE_FURNI,3,1,3,FurniData.SPECIAL_MUSIC),new FurniData("furni_bookshelf","Bookshelf",15000,"Improves Waiting Score","Grab a book while you wait.",FurniData.TYPE_FURNI,5,1,3,FurniData.SPECIAL_BOOK),new FurniData("furni_flag1","Medium Flag",3500,"Improves Waiting Score","A medium flag.",FurniData.TYPE_FURNI,2,1,2),new FurniData("furni_flag2","Small Flag",2500,"Improves Waiting Score","A small flag for the shop.",FurniData.TYPE_FURNI,2,1,1),new FurniData("furni_flag3","Large Flag",5000,"Improves Waiting Score","Fly this tall flag in the restaurant.",FurniData.TYPE_FURNI,2,1,2),new FurniData("furni_gumball_strawberry","Strawberry Gum",8500,"Improves Waiting Score","Sweet strawberry gum!",FurniData.TYPE_FURNI,2,1,2,FurniData.SPECIAL_BUBBLEGUM),new FurniData("furni_gumball_banana","Banana Gum",8500,"Improves Waiting Score","Go bananas for gumballs.",FurniData.TYPE_FURNI,2,1,2,FurniData.SPECIAL_BUBBLEGUM),new FurniData("furni_gumball_blueberry","Blueberry Gum",8500,"Improves Waiting Score","Chew on this!",FurniData.TYPE_FURNI,2,1,2,FurniData.SPECIAL_BUBBLEGUM),new FurniData("furni_cabin_log","Lumberjack Log",6000,"Improves Waiting Score","Take a break from chopping trees.",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_cabin_pinetree_small","Small Pine Tree",5500,"Improves Waiting Score","Bring the forest inside!",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_cabin_pinetree","Large Pine Tree",7500,"Improves Waiting Score","Bring the forest inside in a big way!",FurniData.TYPE_FURNI,4,1,4),new FurniData("furni_plants","Planter Box",3000,"Improves Waiting Score","A bit of flowers to spruce up the place.",FurniData.TYPE_FURNI,4,1,2),new FurniData("furni_taco_fence","Taco Fence",3000,"Improves Waiting Score","A Southwest-themed fence.",FurniData.TYPE_FURNI,4,1,3),new FurniData("furni_burger_glassblock","Burger Block Windows",10000,"Improves Waiting Score","Some tall glass-block windows.",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_burger_fence","Burger Block Wall",3000,"Improves Waiting Score","A wall of glass-block windows.",FurniData.TYPE_FURNI,4,1,3),new FurniData("furni_pizza_fence","Pizzeria Fence",3000,"Improves Waiting Score","A fence from the Pizzeria.",FurniData.TYPE_FURNI,4,1,3),new FurniData("furni_onion_1","Yellow Onion",10000,"Improves Waiting Score","Secret weapon of the Onion Ring.",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_onion_2","Onion",10000,"Improves Waiting Score","These guys are everywhere...",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_onion_3","Tribal Onion",10000,"Improves Waiting Score","Beware the Onion Tribe.",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_tiles_table_medium","Small Multigrain Tiles",3500,"Improves Waiting Score","Blocks from Papa\'s adventures.",FurniData.TYPE_FURNI,4,1,2),new FurniData("furni_tiles_table_large","Large Multigrain Tiles",5500,"Improves Waiting Score","Blocks from Papa\'s adventures.",FurniData.TYPE_FURNI,4,1,3),new FurniData("furni_tiles_table_medium2","Small Parsley Tiles",7500,"Improves Waiting Score","Blocks from Papa\'s adventures.",FurniData.TYPE_FURNI,4,1,2),new FurniData("furni_tiles_table_large2","Large Parsley Tiles",7500,"Improves Waiting Score","Blocks from Papa\'s adventures.",FurniData.TYPE_FURNI,4,1,3),new FurniData("furni_division_pepperoni_trophy","Pepperoni Division",10000,"Improves Waiting Score","Trophy from the Next Chefs Competition.",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_division_onion_trophy","Onion Division",10000,"Improves Waiting Score","Trophy from the Next Chefs Competition.",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_division_pineapple_trophy","Pineapple Division",10000,"Improves Waiting Score","Trophy from the Next Chefs Competition.",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_saucewheel","Sauce Wheel",15000,"Improves Waiting Score","Wheel of Sauces!",FurniData.TYPE_FURNI,5,1,5),new FurniData("furni_foodini_hat","Foodini Hat",9000,"Improves Waiting Score","Foodini\'s famous hat.",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_cabin2_waffletable","Waffle Table",7500,"Improves Waiting Score","Don\'t eat the table!",FurniData.TYPE_FURNI,4,1,4),new FurniData("furni_burgeria_balloon","Burgeria Balloons",4000,"Improves Waiting Score","Celebrate!",FurniData.TYPE_FURNI,3,1,3),new FurniData("furni_palm_tree","Palm Tree",10000,"Improves Waiting Score","Bring that island feel indoors!",FurniData.TYPE_FURNI,3,1,2,"none","none","none",false),new FurniData("furni_surfboard","Surfboard",15000,"Improves Waiting Score","Straight from the Surf Shack!",FurniData.TYPE_FURNI,2,1,3,"none","none","none",false),new FurniData("furni_freezeria_table_small","Sm. Freezeria Table",3500,"Improves Waiting Score","A small table with a Tiki.",FurniData.TYPE_FURNI,2,1,1,"none","none","none",false),new FurniData("furni_freezeria_table_medium","Md. Freezeria Table",5500,"Improves Waiting Score","A medium table with an Anchor.",FurniData.TYPE_FURNI,3,1,2,"none","none","none",false),new FurniData("furni_tiki_table","Lg. Freezeria Table",7500,"Improves Waiting Score","A large table for your customers.",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("poster_freezeria","Freezeria Poster",5000,"Improves Waiting Score","Promote the Freezeria!",FurniData.TYPE_POSTER,3,2,2,"none","none","none",false),new FurniData("furni_taco_trophy","Taco-Eating Trophy",10000,"Improves Waiting Score","From Mitch\'s Trophy Collection.",FurniData.TYPE_FURNI,3,1,3,"none","none","none",false),new FurniData("furni_taco_cactus","Desert Cactus",10000,"Improves Waiting Score","Bring the desert indoors!",FurniData.TYPE_FURNI,3,1,3,"none","none","none",false),new FurniData("furni_tacotable_small","Small Taco Table",3500,"Improves Waiting Score","A small table with a Cactus.",FurniData.TYPE_FURNI,2,1,1,"none","none","none",false),new FurniData("furni_tacotable_medium","Medium Taco Table",5500,"Improves Waiting Score","A medium table from the Taqueria.",FurniData.TYPE_FURNI,3,1,2,"none","none","none",false),new FurniData("furni_tacotable_large","Large Taco Table",7500,"Improves Waiting Score","A large table with some nachos.",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("poster_tacomia","Taco Mia Poster",5000,"Improves Waiting Score","Promote the Taqueria!",FurniData.TYPE_POSTER,2,3,2,"none","none","none",false),new FurniData("furni_burger_burger","Large Burger",10000,"Improves Waiting Score","A jumbo burger for the shop.",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("furni_burgertable_small","Small Burger Table",3500,"Improves Waiting Score","A small table from the Burgeria.",FurniData.TYPE_FURNI,2,1,1,"none","none","none",false),new FurniData("furni_burgertable_medium","Medium Burger Table",5500,"Improves Waiting Score","A medium table with condiments.",FurniData.TYPE_FURNI,3,1,2,"none","none","none",false),new FurniData("furni_burgertable_large","Large Burger Table",7500,"Improves Waiting Score","A large table with snacks.",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("furni_burger_hangingplant","Hanging Plant",8000,"Improves Waiting Score","Bring some nature inside the restaurant.",FurniData.TYPE_FURNI,2,1,2,"none","none","none",false),new FurniData("poster_burgeria","Burgeria Poster",5000,"Improves Waiting Score","Advertise for the Burgeria!",FurniData.TYPE_POSTER,3,2,2,"none","none","none",false),new FurniData("furni_pizza_pizzaboxes","Pizza Boxes",10000,"Improves Waiting Score","A large stack of pizza boxes.",FurniData.TYPE_FURNI,3,1,3,"none","none","none",false),new FurniData("furni_pizza_balloons","Papa Louie balloons",10000,"Improves Waiting Score","Celebrate!",FurniData.TYPE_FURNI,3,1,3,"none","none","none",false),new FurniData("furni_pizzatable_small","Small Pizza Table",3500,"Improves Waiting Score","A small table from the Pizzeria.",FurniData.TYPE_FURNI,2,1,1,"none","none","none",false),new FurniData("furni_pizzatable_medium","Medium Pizza Table",5500,"Improves Waiting Score","A medium table with condiments.",FurniData.TYPE_FURNI,3,1,2,"none","none","none",false),new FurniData("furni_pizzatable_large","Large Pizza Table",7500,"Improves Waiting Score","A large table with breadsticks.",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("poster_pizzeria","Pizzeria Poster",5000,"Improves Waiting Score","Promote the Pizzeria!",FurniData.TYPE_POSTER,2,2,2,"none","none","none",false),new FurniData("furni_gilded_small","Small Gilded Table",10000,"Improves Waiting Score","A small, gilded table.",FurniData.TYPE_FURNI,2,1,2,"none","none","none",false),new FurniData("furni_gilded_medium","Med. Gilded Table",10000,"Improves Waiting Score","A medium gilded table.",FurniData.TYPE_FURNI,3,1,2,"none","none","none",false),new FurniData("furni_gilded_large","Large Gilded Table",20000,"Improves Waiting Score","A large gilded table to make your shop look fancy.",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("furni_papalouie_bust","Papa Bust",30000,"Improves Waiting Score","Honor Papa with this solid-gold bust!",FurniData.TYPE_FURNI,2,1,4,"none","none","none",false),new FurniData("furni_velvet_rope","Velvet Rope",7500,"Improves Waiting Score","Keep customers in line with these classy barriers.",FurniData.TYPE_FURNI,5,1,2,"none","none","none",false),new FurniData("poster_papalouie","Papa Louie Poster",5000,"Improves Waiting Score","Papa on an adventure!",FurniData.TYPE_POSTER,3,2,2,"none","none","none",false),new FurniData("furni_velvet_rope_purple","Foodini Velvet Ropes",10000,"Improves Waiting Score","A fancier Velvet Rope.",FurniData.TYPE_FURNI,5,1,5,"none","none","none",false),new FurniData("furni_foodini_balloon","Foodini balloons",10000,"Improves Waiting Score","Celebrate with Foodini!",FurniData.TYPE_FURNI,3,1,3,"none","none","none",false),new FurniData("furni_foodinitable_small","Sm. Foodini Table",3500,"Improves Waiting Score","A small table from Foodini!",FurniData.TYPE_FURNI,2,1,1,"none","none","none",false),new FurniData("furni_foodinitable_medium","Md. Foodini Table",5500,"Improves Waiting Score","A medium table from Foodini!",FurniData.TYPE_FURNI,3,1,2,"none","none","none",false),new FurniData("furni_foodinitable_large","Lg. Foodini Table",7500,"Improves Waiting Score","A large table from Foodini!",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("poster_foodini","Foodini Poster",5000,"Improves Waiting Score","Just like a Prize Ticket.",FurniData.TYPE_POSTER,2,1,2,"none","none","none",false),new FurniData("furni_cabin2_fireplace","Red Fireplace",12000,"Improves Waiting Score","Keeps your customers toasty!",FurniData.TYPE_FURNI,5,1,4,"none","none","none",false),new FurniData("furni_cabin2_fence","Log Fence",3000,"Improves Waiting Score","A log fence.",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("furni_cabin2_small","Sm. Lumberjack Table",3500,"Improves Waiting Score","A small table with a weathervane.",FurniData.TYPE_FURNI,2,1,1,"none","none","none",false),new FurniData("furni_cabin2_medium","Md. Lumberjack Table",5500,"Improves Waiting Score","A medium lumberjack table.",FurniData.TYPE_FURNI,3,1,2,"none","none","none",false),new FurniData("furni_cabin2_large","Lg. Lumberjack Table",7500,"Improves Waiting Score","A large table stocked with syrups.",FurniData.TYPE_FURNI,4,1,3,"none","none","none",false),new FurniData("poster_pancakeria","Pancakeria Poster",5000,"Improves Waiting Score","Advertise for the Pancakeria!",FurniData.TYPE_POSTER,3,3,2,"none","none","none",false),new FurniData("wall1","Starter Wall",1,"Wallpaper","Your original Wingeria wall.",FurniData.TYPE_WALLPAPER),new FurniData("wall2","Taco Mia Wall",5000,"Wallpaper","Look like the taqueria!",FurniData.TYPE_WALLPAPER),new FurniData("wall3","Leaf Wall",5000,"Wallpaper","Give the shop a natural look.",FurniData.TYPE_WALLPAPER),new FurniData("wall4","Green Wall",6000,"Wallpaper","Green striped wallpaper.",FurniData.TYPE_WALLPAPER),new FurniData("wall5","Blue Wall",6000,"Wallpaper","Blue wallpaper for the shop.",FurniData.TYPE_WALLPAPER),new FurniData("wall6","Pink Waves Wall",7000,"Wallpaper","Pink and wavy.",FurniData.TYPE_WALLPAPER),new FurniData("wall7","Swirl Wall",7000,"Wallpaper","Orange swirl wallpaper.",FurniData.TYPE_WALLPAPER),new FurniData("wall8","Egg Wall",7500,"Wallpaper","Surfboard shapes for the wall.",FurniData.TYPE_WALLPAPER),new FurniData("wall9","Red Wall",7500,"Wallpaper","Rich, red stripes.",FurniData.TYPE_WALLPAPER),new FurniData("wall10","Pinstripe Wall",7500,"Wallpaper","Look like a good business suit!",FurniData.TYPE_WALLPAPER),new FurniData("wall11","Block Wall",8000,"Wallpaper","Patterned walls for the shop.",FurniData.TYPE_WALLPAPER),new FurniData("wall12","Starry Wall",10000,"Wallpaper","Capture the night sky.",FurniData.TYPE_WALLPAPER),new FurniData("wall13","Big Top Wall",7500,"Wallpaper","Make the shop look like a tent, or a whipped cream can!",FurniData.TYPE_WALLPAPER),new FurniData("wall14","Diamond Wall",7500,"Wallpaper","Just like the Drink Station.",FurniData.TYPE_WALLPAPER),new FurniData("wall15","Zaggy Wall",6000,"Wallpaper","Add some zigzags to the walls.",FurniData.TYPE_WALLPAPER),new FurniData("wall16","Shack Wall",7500,"Wallpaper","Look like Kahuna\'s Surf Shack.",FurniData.TYPE_WALLPAPER),new FurniData("wall17","Wood Wall",7500,"Wallpaper","New paneled walls.",FurniData.TYPE_WALLPAPER),new FurniData("wall18","Freezeria Wall",7500,"Wallpaper","Just like the Freezeria!",FurniData.TYPE_WALLPAPER,1,1,0,"none","none","none",false),new FurniData("wall19","Sunrise Wall",6500,"Wallpaper","The tropical sunrise for the walls.",FurniData.TYPE_WALLPAPER),new FurniData("wall20","Waffle Wall",8500,"Wallpaper","Cover the walls in waffles.",FurniData.TYPE_WALLPAPER),new FurniData("wall21","Plywood Wall",4500,"Wallpaper","Gets the job done.",FurniData.TYPE_WALLPAPER),new FurniData("wall22","Cabin Wall",4500,"Wallpaper","Just like the Pancakeria.",FurniData.TYPE_WALLPAPER,1,1,0,"none","none","none",false),new FurniData("wall23","Plaid Wall",7500,"Wallpaper","Perfect for lumberjacks.",FurniData.TYPE_WALLPAPER),new FurniData("wall24","Evergreen Wall",7500,"Wallpaper","Bring nature inside the shop.",FurniData.TYPE_WALLPAPER),new FurniData("wall25","Gray Block Wall",7500,"Wallpaper","Nice and sturdy.",FurniData.TYPE_WALLPAPER),new FurniData("wall26","Country Blue Wall",7500,"Wallpaper","Homey and inviting.",FurniData.TYPE_WALLPAPER),new FurniData("wall27","Dark Pink Wall",7500,"Wallpaper","Give the shop some design",FurniData.TYPE_WALLPAPER),new FurniData("wall28","Pizzeria Wall",7500,"Wallpaper","Just like the Pizzeria lobby.",FurniData.TYPE_WALLPAPER,1,1,0,"none","none","none",false),new FurniData("wall29","Pizzeria Wall",7500,"Wallpaper","Designed like the Pizzeria break room.",FurniData.TYPE_WALLPAPER),new FurniData("wall30","Taco Shell Wall",7500,"Wallpaper","Featuring the Hard Shell Taco design",FurniData.TYPE_WALLPAPER,1,1,0,"none","none","none",false),new FurniData("wall31","Multigrain Wall",7500,"Wallpaper","The nostalgic Multigrain Fields.",FurniData.TYPE_WALLPAPER,1,1,0,"none","none","none",false),new FurniData("wall32","Parsley Wall",7500,"Wallpaper","Just like in Papa Louie\'s first adventure.",FurniData.TYPE_WALLPAPER),new FurniData("wall33","Burgeria Wall",7500,"Wallpaper","Designed like the Burgeria.",FurniData.TYPE_WALLPAPER,1,1,0,"none","none","none",false),new FurniData("wall34","Burger Break Wall",7500,"Wallpaper","Just like Burgeria\'s break room.",FurniData.TYPE_WALLPAPER),new FurniData("wall35","Foodini Curtain",7500,"Wallpaper","What\'s behind the curtain?",FurniData.TYPE_WALLPAPER,1,1,0,"none","none","none",false),new FurniData("wall36","Prize Wall",7500,"Wallpaper","Get your tickets here!",FurniData.TYPE_WALLPAPER),new FurniData("wall37","Red Pattern Wall",7500,"Wallpaper","Warm and moody.",FurniData.TYPE_WALLPAPER),new FurniData("wall38","Yellow Plaid Wall",7500,"Wallpaper","Fit for a lumberjack.",FurniData.TYPE_WALLPAPER),new FurniData("floor1","Starter Floor",1,"Flooring","Your original floor.",FurniData.TYPE_FLOORING),new FurniData("floor2","Stone Floor",8500,"Flooring","Fancy and earthy.",FurniData.TYPE_FLOORING),new FurniData("floor3","Blue Carpet",7500,"Flooring","Soft blue carpet for the shop.",FurniData.TYPE_FLOORING),new FurniData("floor4","Pink Carpet",7500,"Flooring","Sweet pink carpet.",FurniData.TYPE_FLOORING),new FurniData("floor5","Lawn Floor",8500,"Flooring","Look like freshly mowed grass!",FurniData.TYPE_FLOORING),new FurniData("floor6","Sand Floor",8500,"Flooring","Bring the beach into the shop.",FurniData.TYPE_FLOORING),new FurniData("floor7","Wood Floor",8500,"Flooring","Natural wood planks.",FurniData.TYPE_FLOORING),new FurniData("floor8","Zigzag Floor",10000,"Flooring","Zigzag flooring.",FurniData.TYPE_FLOORING),new FurniData("floor9","Light Tile Floor",10000,"Flooring","Lighter tiles from the Freezeria.",FurniData.TYPE_FLOORING,1,1,0,"none","none","none",false),new FurniData("floor11","Green Floor",7500,"Flooring","Green flooring for the shop.",FurniData.TYPE_FLOORING),new FurniData("floor12","Herringbone Floor",7500,"Flooring","A mosaic tile pattern.",FurniData.TYPE_FLOORING),new FurniData("floor13","Cream Floor",7500,"Flooring","Wavy cream patterns.",FurniData.TYPE_FLOORING),new FurniData("floor14","Hardwood Floor",9500,"Flooring","A rich wooden floor.",FurniData.TYPE_FLOORING),new FurniData("floor15","Arrow Floor",8500,"Flooring","Follow the arrow.",FurniData.TYPE_FLOORING),new FurniData("floor16","Toast Floor",8500,"Flooring","Blueberry French Toast!",FurniData.TYPE_FLOORING),new FurniData("floor17","Pizzeria Floor",7500,"Flooring","Flooring like the Pizzeria",FurniData.TYPE_FLOORING,1,1,0,"none","none","none",false),new FurniData("floor18","Red Carpet",7500,"Flooring","Like the Pizzeria carpets.",FurniData.TYPE_FLOORING),new FurniData("floor19","Multigrain Floor",7500,"Flooring","Retro tiling.",FurniData.TYPE_FLOORING,1,1,0,"none","none","none",false),new FurniData("floor20","Pasta Floor",7500,"Flooring","How nostalgic.",FurniData.TYPE_FLOORING),new FurniData("floor21","Black Floor",7500,"Flooring","Black wood flooring",FurniData.TYPE_FLOORING),new FurniData("floor22","Golden Floor",7500,"Flooring","Yellow bricks!",FurniData.TYPE_FLOORING,1,1,0,"none","none","none",false),new FurniData("floor23","Foodini Floor",7500,"Flooring","Magical!",FurniData.TYPE_FLOORING),new FurniData("floor24","Terra Cotta",7500,"Flooring","Terra Cotta Tiles",FurniData.TYPE_FLOORING),new FurniData("floor25","Grouted Tiles",7500,"Flooring","Terra Cotta with attractive groutwork.",FurniData.TYPE_FLOORING,1,1,0,"none","none","none",false),new FurniData("floor26","Striped Carpet",7500,"Flooring","Blue striped carpet",FurniData.TYPE_FLOORING,1,1,0,"none","none","none",false),new FurniData("floor27","Blue Tile",7500,"Flooring","Blue tiles for the floor.",FurniData.TYPE_FLOORING),new FurniData("floor28","Dark Red Carpet",7500,"Flooring","Red striped carpet",FurniData.TYPE_FLOORING),new FurniData("floor29","Cherry Hardwood",7500,"Flooring","Rich cherry hardwood flooring.",FurniData.TYPE_FLOORING,1,1,0,"none","none","none",false)];
         super();
         var _loc2_:GameData = this;
         true;
         true;
         _loc2_.gameObj = param1;
      }
      
      public function getUpgradeFromTag(param1:String) : Upgrade
      {
         var _loc2_:Upgrade = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.shopItems.length)
         {
            if(Upgrade(this.shopItems[_loc3_]).tag == param1)
            {
               _loc2_ = this.shopItems[_loc3_];
               true;
               true;
               _loc2_.index = _loc3_ + 1;
               break;
            }
            _loc3_++;
            true;
            true;
         }
         return _loc2_;
      }
      
      public function getFurniFromTag(param1:String) : FurniData
      {
         false;
         true;
         var _loc2_:GameData = this;
         var _loc3_:FurniData = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.furniItems.length)
         {
            if(FurniData(_loc2_.furniItems[_loc4_]).tag == param1)
            {
               _loc3_ = _loc2_.furniItems[_loc4_];
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function getFurniStoreTags() : Array
      {
         false;
         true;
         var _loc1_:GameData = this;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.furniItems.length)
         {
            false;
            false;
            false;
            false;
            if(_loc1_.furniItems[_loc3_].tag != "wall1" && _loc1_.furniItems[_loc3_].tag != "floor1" && _loc1_.furniItems[_loc3_].inStore == true)
            {
               _loc2_.push(_loc1_.furniItems[_loc3_].tag);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getStoreTags(param1:String) : Array
      {
         false;
         true;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc2_:GameData = this;
         var _loc3_:Array = [];
         true;
         true;
         false;
         false;
         §§push(param1 == "furniture");
         if(!(param1 == "furniture"))
         {
            false;
            false;
            §§pop();
            §§push(param1 == "poster");
         }
         if(!§§pop())
         {
            false;
            false;
            §§pop();
            true;
            true;
            §§push(param1 == "wallfloor");
         }
         if(§§pop())
         {
            _loc4_ = 0;
            while(true)
            {
               false;
               false;
               if(_loc4_ >= _loc2_.furniItems.length)
               {
                  break;
               }
               false;
               false;
               false;
               false;
               §§push(_loc2_.furniItems[_loc4_].tag != "wall1");
               if(_loc2_.furniItems[_loc4_].tag != "wall1")
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  §§push(_loc2_.furniItems[_loc4_].tag != "floor1");
               }
               true;
               true;
               if(§§pop() && _loc2_.furniItems[_loc4_].inStore == true)
               {
                  false;
                  false;
                  false;
                  false;
                  false;
                  false;
                  if(param1 == "furniture" && _loc2_.furniItems[_loc4_].type == FurniData.TYPE_FURNI)
                  {
                     _loc3_.push(_loc2_.furniItems[_loc4_].tag);
                  }
                  else
                  {
                     true;
                     true;
                     true;
                     true;
                     if(param1 == "poster" && _loc2_.furniItems[_loc4_].type == FurniData.TYPE_POSTER)
                     {
                        _loc3_.push(_loc2_.furniItems[_loc4_].tag);
                        true;
                        true;
                     }
                     else
                     {
                        §§push(param1 == "wallfloor");
                        if(param1 == "wallfloor")
                        {
                           false;
                           false;
                           §§pop();
                           §§push(_loc2_.furniItems[_loc4_].type == FurniData.TYPE_WALLPAPER);
                           if(!(_loc2_.furniItems[_loc4_].type == FurniData.TYPE_WALLPAPER))
                           {
                              true;
                              true;
                              §§pop();
                              true;
                              true;
                              §§push(_loc2_.furniItems[_loc4_].type == FurniData.TYPE_FLOORING);
                           }
                        }
                        if(§§pop() && !_loc2_.gameObj.userData.alreadyOwnsFurniture(_loc2_.furniItems[_loc4_].tag))
                        {
                           _loc3_.push(_loc2_.furniItems[_loc4_].tag);
                           true;
                           true;
                        }
                     }
                  }
               }
               _loc4_++;
            }
         }
         else if(param1 == "upgrades")
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_.shopItems.length)
            {
               if(_loc2_.shopItems[_loc4_].tag == "napkin")
               {
                  false;
                  false;
                  _loc3_.push(_loc2_.shopItems[_loc4_].tag);
               }
               else
               {
                  false;
                  false;
                  false;
                  false;
                  if(!_loc2_.gameObj.userData.hasBonus(_loc2_.shopItems[_loc4_].tag))
                  {
                     false;
                     false;
                     _loc3_.push(_loc2_.shopItems[_loc4_].tag);
                     true;
                     true;
                  }
               }
               _loc4_++;
            }
         }
         else
         {
            true;
            true;
            if(param1 == "clothing")
            {
               _loc5_ = false;
               §§push(_loc2_.gameObj.userData.whichCharacter == "marty");
               if(!(_loc2_.gameObj.userData.whichCharacter == "marty"))
               {
                  false;
                  false;
                  §§pop();
                  §§push(_loc2_.gameObj.userData.whichCharacter == "rita");
               }
               if(§§pop())
               {
                  _loc5_ = true;
               }
               _loc3_ = _loc2_.gameObj.var_20.getAvailableClothingTags("any",_loc2_.gameObj.workerData.gender,true,false,_loc5_);
            }
         }
         return _loc3_;
      }
   }
}
