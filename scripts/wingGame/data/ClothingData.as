package wingGame.data
{
   import package_2.class_5;
   import package_4.class_4;
   
   public class ClothingData
   {
       
      
      public var gameObj:class_4;
      
      public var clothing:Array;
      
      public function ClothingData(param1:class_4)
      {
         this.clothing = [new ClothingItem("hat01_male","Worker Visor","The classic Gameria visor.",ClothingItem.TYPE_HAIR,2500,ClothingItem.GENDER_MALE),new ClothingItem("hat01_female","Worker Visor","The classic Gameria visor.",ClothingItem.TYPE_HAIR,2500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat01_premale","Worker Visor","The classic Gameria visor.",ClothingItem.TYPE_HAIR,2500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat01_prefemale","Worker Visor","The classic Gameria visor.",ClothingItem.TYPE_HAIR,2500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat02_male","Blue Bandana","Keep your head covered with this bandana.",ClothingItem.TYPE_HAIR,5500,ClothingItem.GENDER_MALE),new ClothingItem("hat02_female","Blue Bandana","Keep your head covered with this bandana.",ClothingItem.TYPE_HAIR,5500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat02_premale","Blue Bandana","Keep your head covered with this bandana.",ClothingItem.TYPE_HAIR,5500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat02_prefemale","Blue Bandana","Keep your head covered with this bandana.",ClothingItem.TYPE_HAIR,5500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat03_male","Jojo Beret","Now you\'re prepared to be a Food Critic too.",ClothingItem.TYPE_HAIR,7500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("hat03_female","Jojo Beret","Now you\'re prepared to be a Food Critic too.",ClothingItem.TYPE_HAIR,7500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat03_premale","Jojo Beret","Now you\'re prepared to be a Food Critic too.",ClothingItem.TYPE_HAIR,7500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE,false),new ClothingItem("hat03_prefemale","Jojo Beret","Now you\'re prepared to be a Food Critic too.",ClothingItem.TYPE_HAIR,7500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat04_male","Ranger Hat","Join the Maple Mountain Rangers!",ClothingItem.TYPE_HAIR,7500,ClothingItem.GENDER_MALE),new ClothingItem("hat04_female","Ranger Hat","Join the Maple Mountain Rangers!",ClothingItem.TYPE_HAIR,7500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat04_premale","Ranger Hat","Join the Maple Mountain Rangers!",ClothingItem.TYPE_HAIR,7500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat04_prefemale","Ranger Hat","Join the Maple Mountain Rangers!",ClothingItem.TYPE_HAIR,7500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat05_male","Captain Hat","Permission to come aboard?",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("hat05_female","Captain Hat","Permission to come aboard?",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat05_premale","Captain Hat","Permission to come aboard?",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE,false),new ClothingItem("hat05_prefemale","Captain Hat","Permission to come aboard?",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat06_male","Purple Cap","A solid purple baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE),new ClothingItem("hat06_female","Purple Cap","A solid purple baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat06_premale","Purple Cap","A solid purple baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat06_prefemale","Purple Cap","A solid purple baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat07_male","Blue Cap","A blue-and-white baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE),new ClothingItem("hat07_female","Blue Cap","A blue-and-white baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat07_premale","Blue Cap","A blue-and-white baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat07_prefemale","Blue Cap","A blue-and-white baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat08_male","Wingeria Cap","A baseball cap in the Wingeria colors.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE),new ClothingItem("hat08_female","Wingeria Cap","A baseball cap in the Wingeria colors.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat08_premale","Wingeria Cap","A baseball cap in the Wingeria colors.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat08_prefemale","Wingeria Cap","A baseball cap in the Wingeria colors.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat09_male","Orange Cap","A backwards orange baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE),new ClothingItem("hat09_female","Orange Cap","A backwards orange baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat09_premale","Orange Cap","A backwards orange baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat09_prefemale","Orange Cap","A backwards orange baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat10_male","Green Cap","A backwards green baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE),new ClothingItem("hat10_female","Green Cap","A backwards green baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat10_premale","Green Cap","A backwards green baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat10_prefemale","Green Cap","A backwards green baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat11_male","Pink Cap","A backwards pink baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE),new ClothingItem("hat11_female","Pink Cap","A backwards pink baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat11_premale","Pink Cap","A backwards pink baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat11_prefemale","Pink Cap","A backwards pink baseball cap.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat12_male","Chef Hat","Join the ranks of Papa with this culinary cap.",ClothingItem.TYPE_HAIR,12500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("hat12_female","Chef Hat","Join the ranks of Papa with this culinary cap.",ClothingItem.TYPE_HAIR,12500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat12_premale","Chef Hat","Join the ranks of Papa with this culinary cap.",ClothingItem.TYPE_HAIR,12500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE,false),new ClothingItem("hat12_prefemale","Chef Hat","Join the ranks of Papa with this culinary cap.",ClothingItem.TYPE_HAIR,12500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat13_male","Royal Crown","Reign over the Wingeria.",ClothingItem.TYPE_HAIR,25000,ClothingItem.GENDER_MALE),new ClothingItem("hat13_female","Royal Crown","Reign over the Wingeria.",ClothingItem.TYPE_HAIR,25000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat13_premale","Royal Crown","Reign over the Wingeria.",ClothingItem.TYPE_HAIR,25000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat13_prefemale","Royal Crown","Reign over the Wingeria.",ClothingItem.TYPE_HAIR,25000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat14_male","Sombrero","Have a fiesta in Starlight City.",ClothingItem.TYPE_HAIR,9500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("hat14_female","Sombrero","Have a fiesta in Starlight City.",ClothingItem.TYPE_HAIR,9500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat14_premale","Sombrero","Have a fiesta in Starlight City.",ClothingItem.TYPE_HAIR,9500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE,false),new ClothingItem("hat14_prefemale","Sombrero","Have a fiesta in Starlight City.",ClothingItem.TYPE_HAIR,9500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat15_male","Straw Hat","Stay in the shade with this straw hat.",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_MALE),new ClothingItem("hat15_female","Straw Hat","Stay in the shade with this straw hat.",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat15_premale","Straw Hat","Stay in the shade with this straw hat.",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat15_prefemale","Straw Hat","Stay in the shade with this straw hat.",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat16_male","Pirate Hat","Ahoy, matey!",ClothingItem.TYPE_HAIR,10000,ClothingItem.GENDER_MALE),new ClothingItem("hat16_female","Pirate Hat","Ahoy, matey!",ClothingItem.TYPE_HAIR,10000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat16_premale","Pirate Hat","Ahoy, matey!",ClothingItem.TYPE_HAIR,10000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat16_prefemale","Pirate Hat","Ahoy, matey!",ClothingItem.TYPE_HAIR,10000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat17_male","Foodini Hat","Host your own Mini-Game Show!",ClothingItem.TYPE_HAIR,12000,ClothingItem.GENDER_MALE,0,false),new ClothingItem("hat17_female","Foodini Hat","Host your own Mini-Game Show!",ClothingItem.TYPE_HAIR,12000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat17_premale","Foodini Hat","Host your own Mini-Game Show!",ClothingItem.TYPE_HAIR,12000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE,false),new ClothingItem("hat17_prefemale","Foodini Hat","Host your own Mini-Game Show!",ClothingItem.TYPE_HAIR,12000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat18_male","Cowboy Hat","Give yourself a Western look.",ClothingItem.TYPE_HAIR,11000,ClothingItem.GENDER_MALE),new ClothingItem("hat18_female","Cowboy Hat","Give yourself a Western look.",ClothingItem.TYPE_HAIR,11000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat18_premale","Cowboy Hat","Give yourself a Western look.",ClothingItem.TYPE_HAIR,11000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat18_prefemale","Cowboy Hat","Give yourself a Western look.",ClothingItem.TYPE_HAIR,11000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat19_male","Fur Cap","Stay warm in this fur cap.",ClothingItem.TYPE_HAIR,9000,ClothingItem.GENDER_MALE,0,false),new ClothingItem("hat19_female","Fur Cap","Stay warm in this fur cap.",ClothingItem.TYPE_HAIR,9000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat19_premale","Fur Cap","Stay warm in this fur cap.",ClothingItem.TYPE_HAIR,9000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE,false),new ClothingItem("hat19_prefemale","Fur Cap","Stay warm in this fur cap.",ClothingItem.TYPE_HAIR,9000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat20_male","Viking Helmet","Show off your wild side -- or your weird side.",ClothingItem.TYPE_HAIR,15000,ClothingItem.GENDER_MALE),new ClothingItem("hat20_female","Viking Helmet","Show off your wild side -- or your weird side.",ClothingItem.TYPE_HAIR,15000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat20_premale","Viking Helmet","Show off your wild side -- or your weird side.",ClothingItem.TYPE_HAIR,15000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat20_prefemale","Viking Helmet","Show off your wild side -- or your weird side.",ClothingItem.TYPE_HAIR,15000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat21_male","Knit Hat","A red knit winter hat.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("hat21_female","Knit Hat","A red knit winter hat.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat21_premale","Knit Hat","A red knit winter hat.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE,false),new ClothingItem("hat21_prefemale","Knit Hat","A red knit winter hat.",ClothingItem.TYPE_HAIR,6500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR,false),new ClothingItem("hat22_male","Yellow Hat","A long yellow winter hat.",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_MALE),new ClothingItem("hat22_female","Yellow Hat","A long yellow winter hat.",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("hat22_premale","Yellow Hat","A long yellow winter hat.",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_PREMADE),new ClothingItem("hat22_prefemale","Yellow Hat","A long yellow winter hat.",ClothingItem.TYPE_HAIR,8500,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_PREMADE | ClothingItem.OPTIONS_HAS_BACK_HAIR),new ClothingItem("shirt_00_male","Uniform","",ClothingItem.TYPE_SHIRT,0,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SHORT_COLLAR,false,true),new ClothingItem("shirt_00_female","Uniform","",ClothingItem.TYPE_SHIRT,0,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SHORT_COLLAR,false,true),new ClothingItem("shirt_01_male","Tropical Shirt","Chuck\'s favorite shirt!",ClothingItem.TYPE_SHIRT,5000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SHORT_COLLAR),new ClothingItem("shirt_01_female","Tropical Shirt","Chuck\'s favorite shirt, now for ladies!",ClothingItem.TYPE_SHIRT,5000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SHORT_COLLAR),new ClothingItem("shirt_02_male","Green Shirt","A green striped shirt.",ClothingItem.TYPE_SHIRT,5000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SHORT_COLLAR),new ClothingItem("shirt_02_female","Green Top","A green striped top.",ClothingItem.TYPE_SHIRT,5000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SLEEVELESS),new ClothingItem("shirt_03_male","Western Shirt","Giddy\'up!",ClothingItem.TYPE_SHIRT,7500,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_LONG_COLLAR,false),new ClothingItem("shirt_03_female","Western Shirt","Giddy\'up!",ClothingItem.TYPE_SHIRT,7500,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_LONG_COLLAR,false),new ClothingItem("shirt_04_male","White Shirt","A crisp white dress shirt.",ClothingItem.TYPE_SHIRT,9000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_LONG_COLLAR),new ClothingItem("shirt_04_female","White Top","A loose and casual white top.",ClothingItem.TYPE_SHIRT,9000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SHORT),new ClothingItem("shirt_05_male","Pastel Shirt","A light blue shirt.",ClothingItem.TYPE_SHIRT,6500,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SHORT_COLLAR),new ClothingItem("shirt_05_female","Pastel Top","A cute pink top.",ClothingItem.TYPE_SHIRT,6500,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SHORT),new ClothingItem("shirt_06_male","McCoy Shirt","Dress like you\'re under the Curse of Thorns.",ClothingItem.TYPE_SHIRT,7000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SHORT,false),new ClothingItem("shirt_06_female","McCoy Shirt","Dress like you\'re under the Curse of Thorns.",ClothingItem.TYPE_SHIRT,7000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SHORT,false),new ClothingItem("shirt_07_male","Rugby Shirt","The perfect shirt for summer.",ClothingItem.TYPE_SHIRT,5000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SHORT_COLLAR),new ClothingItem("shirt_07_female","Rugby Shirt","The perfect shirt for summer.",ClothingItem.TYPE_SHIRT,5000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SHORT_COLLAR),new ClothingItem("shirt_08_male","Papa Louie Tee","Papa Pride!",ClothingItem.TYPE_SHIRT,7000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SHORT,false),new ClothingItem("shirt_08_female","Papa Louie Tee","Papa Pride!",ClothingItem.TYPE_SHIRT,7000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SHORT,false),new ClothingItem("shirt_09_male","Sarge Sweatshirt","Sarge Fan would be so jealous.",ClothingItem.TYPE_SHIRT,8000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_LONG,false),new ClothingItem("shirt_09_female","Sarge Sweatshirt","Sarge Fan would be so jealous.",ClothingItem.TYPE_SHIRT,8000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_LONG,false),new ClothingItem("shirt_10_male","Aqua Zip-Up","Zip it up!",ClothingItem.TYPE_SHIRT,9000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_LONG_COLLAR,false),new ClothingItem("shirt_10_female","Aqua Zip-Up","Zip it up!",ClothingItem.TYPE_SHIRT,9000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_LONG_COLLAR,false),new ClothingItem("shirt_11_male","Xolo Tank","Blend in with Xolo and Xandra!",ClothingItem.TYPE_SHIRT,10000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SLEEVELESS,false),new ClothingItem("shirt_11_female","Xandra Tank","Blend in with Xolo and Xandra!",ClothingItem.TYPE_SHIRT,10000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SLEEVELESS,false),new ClothingItem("shirt_12_male","Star Shirt","You\'re a star!",ClothingItem.TYPE_SHIRT,8000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SLEEVELESS),new ClothingItem("shirt_12_female","Star Top","You\'re a star!",ClothingItem.TYPE_SHIRT,8000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SLEEVELESS),new ClothingItem("shirt_13_male","Guppy Sweater","Show your love for the Guppy!",ClothingItem.TYPE_SHIRT,8500,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_LONG,false),new ClothingItem("shirt_13_female","Guppy Sweater","Show your love for the Guppy!",ClothingItem.TYPE_SHIRT,8500,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_LONG,false),new ClothingItem("shirt_14_male","Turtleneck","Stylish and sophisticated.",ClothingItem.TYPE_SHIRT,8500,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_LONG_COLLAR),new ClothingItem("shirt_14_female","Turtleneck","Stylish and sophisticated.",ClothingItem.TYPE_SHIRT,8500,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_LONG_COLLAR),new ClothingItem("shirt_15_male","Owly Tee","Mandi\'s favorite shirt, now for guys!",ClothingItem.TYPE_SHIRT,6000,ClothingItem.GENDER_MALE,ClothingItem.SHIRT_SHORT),new ClothingItem("shirt_15_female","Owly Tee","Mandi\'s favorite shirt!",ClothingItem.TYPE_SHIRT,6000,ClothingItem.GENDER_FEMALE,ClothingItem.SHIRT_SHORT),new ClothingItem("pants_01_male","Black Pants","Your uniform pants.",ClothingItem.TYPE_PANTS,0,ClothingItem.GENDER_MALE,0,false,true),new ClothingItem("pants_01_female","Black Pants","Your uniform pants.",ClothingItem.TYPE_PANTS,0,ClothingItem.GENDER_FEMALE,0,false,true),new ClothingItem("pants_02_male","White Pants","Clean white pants.",ClothingItem.TYPE_PANTS,2500,ClothingItem.GENDER_MALE),new ClothingItem("pants_02_female","White Skirt","Clean white skirt.",ClothingItem.TYPE_PANTS,2500,ClothingItem.GENDER_FEMALE),new ClothingItem("pants_03_male","Blue Pants","A pair of blue pants.",ClothingItem.TYPE_PANTS,2500,ClothingItem.GENDER_MALE),new ClothingItem("pants_03_female","Blue Pants","A pair of blue pants.",ClothingItem.TYPE_PANTS,2500,ClothingItem.GENDER_FEMALE),new ClothingItem("pants_04_male","Blue Jeans","Keep it casual with blue jeans.",ClothingItem.TYPE_PANTS,3000,ClothingItem.GENDER_MALE),new ClothingItem("pants_04_female","Blue Jeans","Keep it casual with blue jeans.",ClothingItem.TYPE_PANTS,3000,ClothingItem.GENDER_FEMALE),new ClothingItem("pants_05_male","Stonewash Jeans","Lighter, stonewashed blue jeans.",ClothingItem.TYPE_PANTS,3000,ClothingItem.GENDER_MALE,0,false),new ClothingItem("pants_05_female","Pinstripe Pants","Fancy pants!",ClothingItem.TYPE_PANTS,3000,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("pants_06_male","Khaki Pants","Comfortable khaki slacks.",ClothingItem.TYPE_PANTS,3500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("pants_06_female","Orange Pants","Bright orange pants!",ClothingItem.TYPE_PANTS,3500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("pants_07_male","Orange Pants","Bright orange pants!",ClothingItem.TYPE_PANTS,3500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("pants_07_female","Star Pants","Star-studded red pants, perfect for Starlight City.",ClothingItem.TYPE_PANTS,4500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("pants_08_male","White Stripes","Black and white pinstripe pants.",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_MALE,0,false),new ClothingItem("pants_08_female","Camo Pants","A pair of camo pants.",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("pants_09_male","Pinestripe Pants","Fancy brown pinstripe pants.",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_MALE,0,false),new ClothingItem("pants_09_female","Blue Skirt","A casual blue skirt.",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("pants_10_male","Purple Pants","Funky purple-striped pants!",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_MALE),new ClothingItem("pants_10_female","Khaki Skirt","A comfortable khaki skirt.",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_FEMALE),new ClothingItem("pants_11_male","Star Pants","Star-studded red pants, perfect for Starlight City.",ClothingItem.TYPE_PANTS,4500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("pants_11_female","Summer Skirt","Yellow and white polka-dotted skirt.",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("pants_12_male","Fireman Pants","Slide down the firepole in these Fireman Pants.",ClothingItem.TYPE_PANTS,5000,ClothingItem.GENDER_MALE),new ClothingItem("pants_12_female","Polkadot Skirt","Retro pink and black polkadots!",ClothingItem.TYPE_PANTS,5000,ClothingItem.GENDER_FEMALE),new ClothingItem("pants_13_male","Plaid Pants","Red plaid pants.",ClothingItem.TYPE_PANTS,5000,ClothingItem.GENDER_MALE),new ClothingItem("pants_13_female","Striped Skirt","A black and white pinstripe skirt.",ClothingItem.TYPE_PANTS,5000,ClothingItem.GENDER_FEMALE),new ClothingItem("pants_14_male","Camo Pants","A pair of camo pants.",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_MALE,0,false),new ClothingItem("pants_14_female","Purple Skirt","A funky purple skirt.",ClothingItem.TYPE_PANTS,4000,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("pants_15_female","Plaid Skirt","Classic red plaid skirt.",ClothingItem.TYPE_PANTS,5000,ClothingItem.GENDER_FEMALE),new ClothingItem("jacket_01_male","Trenchcoat","The classic brown trenchcoat.",ClothingItem.TYPE_JACKET,17500,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_01_female","Trenchcoat","The classic brown trenchcoat.",ClothingItem.TYPE_JACKET,17500,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_02_male","Track Jacket","Run the relay with this track jacket.",ClothingItem.TYPE_JACKET,10000,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COVERARMS),new ClothingItem("jacket_02_female","Track Jacket","Run the relay with this track jacket.",ClothingItem.TYPE_JACKET,10000,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COVERARMS),new ClothingItem("jacket_03_male","Raincoat","Keep yourself dry in this rubber raincoat.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COLLAR_COVERARMS,false),new ClothingItem("jacket_03_female","Raincoat","Keep yourself dry in this rubber raincoat.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COLLAR_COVERARMS,false),new ClothingItem("jacket_04_male","Winter Parka","Bundle up in this heavy parka.",ClothingItem.TYPE_JACKET,17500,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_04_female","Winter Parka","Bundle up in this heavy parka.",ClothingItem.TYPE_JACKET,17500,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_05_male","Letter Jacket","Perfect for that Friday night sports game.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COVERARMS,false),new ClothingItem("jacket_05_female","Letter Jacket","Perfect for that Friday night sports game.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COVERARMS,false),new ClothingItem("jacket_06_male","Lab Coat","Is there a doctor in the house?",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COVERARMS,false),new ClothingItem("jacket_06_female","Lab Coat","Is there a doctor in the house?",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COVERARMS,false),new ClothingItem("jacket_07_male","Blue Hoodie","A casual blue hoodie.",ClothingItem.TYPE_JACKET,8500,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_07_female","Blue Hoodie","A casual blue hoodie.",ClothingItem.TYPE_JACKET,8500,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_08_male","Harrington Jacket","A classic lightweight jacket.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COLLAR_COVERARMS,false),new ClothingItem("jacket_08_female","Harrington Jacket","A classic lightweight jacket.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COLLAR_COVERARMS,false),new ClothingItem("jacket_09_male","Down Vest","Stay warm and cozy in this down vest.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_HAS_NECK,false),new ClothingItem("jacket_09_female","Down Vest","Stay warm and cozy in this down vest.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_NECK,false),new ClothingItem("jacket_10_male","Denim Vest","A casual denim vest.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_HAS_NECK,false),new ClothingItem("jacket_10_female","Denim Vest","A casual denim vest.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_FEMALE,ClothingItem.OPTIONS_HAS_NECK,false),new ClothingItem("jacket_11_male","Bomber Jacket","Take flight in this bomber jacket.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COLLAR_COVERARMS,false),new ClothingItem("jacket_11_female","Bomber Jacket","Take flight in this bomber jacket.",ClothingItem.TYPE_JACKET,15000,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COLLAR_COVERARMS,false),new ClothingItem("jacket_12_male","Blazer","Get dressed up for work.",ClothingItem.TYPE_JACKET,12500,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COVERARMS),new ClothingItem("jacket_12_female","Blazer","Get dressed up for work.",ClothingItem.TYPE_JACKET,12500,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COVERARMS),new ClothingItem("jacket_13_male","Biker Jacket","Ride your bike in to the Wingeria.",ClothingItem.TYPE_JACKET,15500,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_13_female","Biker Jacket","Ride your bike in to the Wingeria.",ClothingItem.TYPE_JACKET,15500,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_14_male","Windbreaker","Keep warm in this lightweight windbreaker.",ClothingItem.TYPE_JACKET,7500,ClothingItem.GENDER_MALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("jacket_14_female","Windbreaker","Keep warm in this lightweight windbreaker.",ClothingItem.TYPE_JACKET,7500,ClothingItem.GENDER_FEMALE,ClothingItem.JACKET_COLLAR_COVERARMS),new ClothingItem("hair_short_1","Short Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_wedge_1","Wedge Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_fade_1","Fade","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_wave_1","Wavy Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_fauxhawk_1","Fauxhawk","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_pompadour_1","Pompadour","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_hitopfade_1","Hi-Top Fade","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_shaved_1","Shaved Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_mohawk_1","Mohawk","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_afro_1","Afro","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_cornrows_1","Cornrows","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_twist_1","Twist","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_dreadlocks_1","Dreadlocks","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_mullet_1","Mullet","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_primitive_1","Primitive","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_curly_1","Curly Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_sidepart_1","Parted Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_bald_1","Bald","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_combover_1","Combover","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_spiked_1","Spiked Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_emo_1","Emo Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_chuck_1","Chuck Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_shaggy_1","Shaggy","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_curtains_1","Curtains","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_ponytailbangs_1","Ponytail Bangs","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_ponytail_1","Ponytail","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_straight_1","Straight","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_curls_1","Curls","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_wavy_1","Wavy","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_crimped_1","Crimped","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_pinup_1","Pinup","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_flipped_1","Flipped Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_glam_1","Glam Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_chelsea_1","Chelsea","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_pixie_1","Pixie","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_mandi_1","Mandi Hair","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_odango_1","Odango","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_pigtails_1","Pigtails","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_twintails_1","Twintails","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("hair_afropuffs_1","Puffs","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("hair_bun_1","Bun","",ClothingItem.TYPE_HAIR,0,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_BACK_HAIR,false,true),new ClothingItem("shoes1","Brown Shoes","Basic brown shoes.",ClothingItem.TYPE_SHOES,0,ClothingItem.GENDER_ALL,0,false,true),new ClothingItem("shoes2","B-Ball Shoes","Hit the court with these shoes.",ClothingItem.TYPE_SHOES,5000,ClothingItem.GENDER_ALL),new ClothingItem("shoes3","White Shoes","Clean bright shoes.",ClothingItem.TYPE_SHOES,5000,ClothingItem.GENDER_ALL),new ClothingItem("shoes4","Black Shoes","Black shoes with brown accents.",ClothingItem.TYPE_SHOES,5000,ClothingItem.GENDER_ALL),new ClothingItem("shoes5","Pink Shoes","Light pink shoes.",ClothingItem.TYPE_SHOES,6000,ClothingItem.GENDER_ALL),new ClothingItem("shoes6","Blue Shoes","Connor\'s favorites on the court.",ClothingItem.TYPE_SHOES,6000,ClothingItem.GENDER_ALL),new ClothingItem("shoes7","Gray Shoes","A pair of gray shoes.",ClothingItem.TYPE_SHOES,5000,ClothingItem.GENDER_ALL),new ClothingItem("shoes8","Red Shoes","Bright red kicks.",ClothingItem.TYPE_SHOES,6000,ClothingItem.GENDER_ALL),new ClothingItem("shoes9","Maroon Shoes","Dark maroon shoes.",ClothingItem.TYPE_SHOES,5000,ClothingItem.GENDER_ALL),new ClothingItem("shoes10","Red Laces","Black shoes with red laces.",ClothingItem.TYPE_SHOES,5000,ClothingItem.GENDER_ALL),new ClothingItem("shoes11","Yellow Laces","White shoes with bright yellow laces.",ClothingItem.TYPE_SHOES,5000,ClothingItem.GENDER_ALL),new ClothingItem("shoes12","Fancy Shoes","Fancy shoes for hitting the town.",ClothingItem.TYPE_SHOES,6000,ClothingItem.GENDER_ALL),new ClothingItem("stubble","Stubble","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTBASE,false,true),new ClothingItem("beardstache","Beardstache","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_FULL,false,true),new ClothingItem("chinstrap","Chinstrap","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTBASE,false,true),new ClothingItem("mitchee","Mitchee","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTMOUTH,false,true),new ClothingItem("fullbeard","Full Beard","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_FULL,false,true),new ClothingItem("goatee","Goatee","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTMOUTH,false,true),new ClothingItem("handlebar","Handlebar","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTMOUTH,false,true),new ClothingItem("mustache1","Mustache 1","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTMOUTH,false,true),new ClothingItem("mustache2","Mustache 2","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTMOUTH,false,true),new ClothingItem("mustache3","Mustache 3","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTMOUTH,false,true),new ClothingItem("muttonchops","Muttonchops","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTBASE,false,true),new ClothingItem("shortbeard","Short Beard","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_FULL,false,true),new ClothingItem("sideburns","Sideburns","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTBASE,false,true),new ClothingItem("soulpatch","Soul Patch","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTMOUTH,false,true),new ClothingItem("vandyke","Van Dyke","",ClothingItem.TYPE_FACIALHAIR,0,ClothingItem.GENDER_MALE,ClothingItem.FACIALHAIR_JUSTMOUTH,false,true),new ClothingItem("belt_01_male","Brown Belt","Standard brown belt.",ClothingItem.TYPE_ACC_BELT,3000,ClothingItem.GENDER_MALE),new ClothingItem("belt_01_female","Brown Belt","Standard brown belt.",ClothingItem.TYPE_ACC_BELT,3000,ClothingItem.GENDER_FEMALE),new ClothingItem("belt_02_male","Anchor Belt","Anchor\'s Aweigh!",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_MALE),new ClothingItem("belt_02_female","Anchor Belt","Anchor\'s Aweigh!",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_FEMALE),new ClothingItem("belt_03_male","Checker Belt","Check it out.",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_MALE),new ClothingItem("belt_03_female","Checker Belt","Check it out.",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_FEMALE),new ClothingItem("belt_04_male","Rivet Belt","A riveted belt.",ClothingItem.TYPE_ACC_BELT,6500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("belt_04_female","Rivet Belt","A riveted belt.",ClothingItem.TYPE_ACC_BELT,6500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("belt_05_male","Pyramid Belt","A belt covered in pyramid studs.",ClothingItem.TYPE_ACC_BELT,5500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("belt_05_female","Pyramid Belt","A belt covered in pyramid studs.",ClothingItem.TYPE_ACC_BELT,5500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("belt_06_male","Bright Belt","A fabric belt with bright stripes",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("belt_06_female","Bright Belt","A fabric belt with bright stripes",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("belt_07_male","Patterned Belt","A fabric belt with blue and purple patterns.",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("belt_07_female","Patterned Belt","A fabric belt with blue and purple patterns.",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("belt_08_male","Wallet Chain","A belt with a wallet chain.",ClothingItem.TYPE_ACC_BELT,6500,ClothingItem.GENDER_MALE),new ClothingItem("belt_08_female","Wallet Chain","A belt with a wallet chain.",ClothingItem.TYPE_ACC_BELT,6500,ClothingItem.GENDER_FEMALE),new ClothingItem("belt_09_male","Utility Belt","Plenty of pockets and pouches to store your goodies.",ClothingItem.TYPE_ACC_BELT,8500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("belt_09_female","Utility Belt","Plenty of pockets and pouches to store your goodies.",ClothingItem.TYPE_ACC_BELT,8500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("belt_10_male","White Belt","A white riveted belt.",ClothingItem.TYPE_ACC_BELT,6500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("belt_10_female","White Belt","A white riveted belt.",ClothingItem.TYPE_ACC_BELT,6500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("belt_11_male","Green Belt","A green fabric belt.",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_MALE,0,false),new ClothingItem("belt_11_female","Green Belt","A green fabric belt.",ClothingItem.TYPE_ACC_BELT,4500,ClothingItem.GENDER_FEMALE,0,false),new ClothingItem("glasses01","Sunglasses","Black sunglasses.",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES),new ClothingItem("glasses02","Monocle","Fancy and sophisticated.",ClothingItem.TYPE_ACC_FACE,9000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES),new ClothingItem("glasses03","Rose-Colored Glasses","Makes everything look rosy.",ClothingItem.TYPE_ACC_FACE,7500,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES),new ClothingItem("glasses04","Round Glasses","Large round glasses.",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES,true,true),new ClothingItem("glasses05","Gold Wireframes","Gold wireframe glasses.",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES,true,true),new ClothingItem("glasses06","Reading Glasses","Need help reading the tickets?",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES),new ClothingItem("glasses07","Aviators","Large aviator sunglasses.",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES,false),new ClothingItem("glasses08","Silver Frames","Silver wireframe glasses.",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES,true,true),new ClothingItem("glasses09","Black Glasses","Black stylish glasses.",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES,true,true),new ClothingItem("glasses10","Eyepatch","Arrrr!  Set sail while wearing this eyepatch.",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES,false),new ClothingItem("glasses12","Clown Nose","Your customers will stop taking you seriously.",ClothingItem.TYPE_ACC_FACE,6000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_TRACKEYES,false),new ClothingItem("body_backpack01","Orange Backpack","Stock it with your stuff!",ClothingItem.TYPE_ACC_BODY,7000,ClothingItem.GENDER_ALL,ClothingItem.BODYACC_FULL),new ClothingItem("body_backpack02","Green Backpack","Fill it with books, or clothes!",ClothingItem.TYPE_ACC_BODY,7000,ClothingItem.GENDER_ALL,ClothingItem.BODYACC_FULL,false),new ClothingItem("body_backbag01","Brown Bag","Keep all of your stuff handy.  For boys AND girls!",ClothingItem.TYPE_ACC_BODY,8000,ClothingItem.GENDER_ALL,ClothingItem.BODYACC_FULL | ClothingItem.OPTIONS_ACCSTAYSBACK,false),new ClothingItem("body_backbag02","Messenger Bag","Hit the streets in this stylish messenger bag.",ClothingItem.TYPE_ACC_BODY,9000,ClothingItem.GENDER_ALL,ClothingItem.BODYACC_FULL | ClothingItem.OPTIONS_ACCSTAYSBACK),new ClothingItem("camppack","Camping Pack","Hit the trails with this hiking backpack.",ClothingItem.TYPE_ACC_BODY,12000,ClothingItem.GENDER_ALL,ClothingItem.BODYACC_FULL),new ClothingItem("body_cape01","Red Cape","Look like a superhero in this red cape!",ClothingItem.TYPE_ACC_BODY,15000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_HAS_BACKBODY),new ClothingItem("body_cape02","Purple Cape","Look like a count in this purple cape!",ClothingItem.TYPE_ACC_BODY,15000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_HAS_BACKBODY),new ClothingItem("body_scarf01","Plaid Scarf","Keep yourself warm in this plaid wool scarf.",ClothingItem.TYPE_ACC_BODY,6000,ClothingItem.GENDER_ALL,ClothingItem.BODYACC_FULL_NECK,false),new ClothingItem("body_necklace","Necklace","A sparkling necklace.",ClothingItem.TYPE_ACC_BODY,10000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_FRONTBODY),new ClothingItem("body_puka","Puka Necklace","Some puka shells strung onto a necklace.",ClothingItem.TYPE_ACC_BODY,5000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_BEHINDCOLLAR),new ClothingItem("bodyacc_01_male","Red Necktie","A solid red necktie.",ClothingItem.TYPE_ACC_BODY,5000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_HAS_FRONTBODY),new ClothingItem("bodyacc_02_male","Striped Necktie","A striped necktie.",ClothingItem.TYPE_ACC_BODY,6000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_HAS_FRONTBODY),new ClothingItem("bodyacc_03_male","Foodini Bowtie","Just like Foodini!",ClothingItem.TYPE_ACC_BODY,7500,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_HAS_NECK,false),new ClothingItem("bodyacc_04_male","Green Bowtie","A green bowtie.",ClothingItem.TYPE_ACC_BODY,5000,ClothingItem.GENDER_MALE,ClothingItem.OPTIONS_HAS_NECK),new ClothingItem("bodyacc_01_female","Red Bag","Hit the town with this bright red bag.",ClothingItem.TYPE_ACC_BODY,5000,ClothingItem.GENDER_FEMALE,ClothingItem.BODYACC_FULL | ClothingItem.OPTIONS_ACCSTAYSBACK),new ClothingItem("bodyacc_02_female","Pink Purse","You\'ll look great with this pink purse.",ClothingItem.TYPE_ACC_BODY,5000,ClothingItem.GENDER_FEMALE,ClothingItem.BODYACC_FULL | ClothingItem.OPTIONS_ACCSTAYSBACK),new ClothingItem("bodyacc_03_female","Foodini Bag","A must-have for Foodini fans!",ClothingItem.TYPE_ACC_BODY,6000,ClothingItem.GENDER_FEMALE,ClothingItem.BODYACC_FULL | ClothingItem.OPTIONS_ACCSTAYSBACK,false),new ClothingItem("bodyacc_04_female","Teal Bag","Keep all your belongings safe in this bag.",ClothingItem.TYPE_ACC_BODY,7000,ClothingItem.GENDER_FEMALE,ClothingItem.BODYACC_FULL | ClothingItem.OPTIONS_ACCSTAYSBACK),new ClothingItem("bracelets","Bracelets","Colorful plastic bracelets.",ClothingItem.TYPE_ACC_ARMS,2000,ClothingItem.GENDER_ALL),new ClothingItem("goldbracelets","Gold Bracelets","Shiny gold bracelets.",ClothingItem.TYPE_ACC_ARMS,5000,ClothingItem.GENDER_ALL),new ClothingItem("pukawrist","Puka Wristband","Some puka shells for your wrists.",ClothingItem.TYPE_ACC_ARMS,4000,ClothingItem.GENDER_ALL),new ClothingItem("wristwatch","Gray Wristwatch","Got the time?",ClothingItem.TYPE_ACC_ARMS,2000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_ONLYONEARM),new ClothingItem("goldwatch","Gold Wristwatch","Tell time in style.",ClothingItem.TYPE_ACC_ARMS,8000,ClothingItem.GENDER_ALL,ClothingItem.OPTIONS_ONLYONEARM)];
         false;
         false;
         super();
         false;
         false;
         this.gameObj = param1;
      }
      
      public function getAvailableClothingTags(param1:String, param2:String, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false) : Array
      {
         var _loc8_:int = 0;
         var _loc9_:ClothingItem = null;
         var _loc6_:ClothingData = this;
         var _loc7_:Array = [];
         if(param4)
         {
            true;
            true;
            _loc8_ = 0;
            while(true)
            {
               false;
               false;
               if(_loc8_ >= _loc6_.clothing.length)
               {
                  break;
               }
               false;
               false;
               false;
               false;
               if((_loc9_ = _loc6_.clothing[_loc8_]).type == param1 && (_loc9_.gender == ClothingItem.GENDER_ALL || _loc9_.gender == param2) && (!param4 || param4 && _loc9_.addToDefaultInventory == true))
               {
                  _loc7_.push(_loc9_.tag);
                  false;
                  false;
               }
               _loc8_++;
            }
            true;
            true;
         }
         else if(param3)
         {
            true;
            true;
            false;
            false;
            _loc8_ = 0;
            false;
            false;
            while(_loc8_ < _loc6_.clothing.length)
            {
               true;
               true;
               §§push((_loc9_ = _loc6_.clothing[_loc8_]).inStore == true);
               if((_loc9_ = _loc6_.clothing[_loc8_]).inStore == true)
               {
                  true;
                  true;
                  §§pop();
                  false;
                  false;
                  true;
                  true;
                  §§push(_loc9_.gender == ClothingItem.GENDER_ALL || _loc9_.gender == param2);
               }
               if(§§pop() && _loc6_.gameObj.userData.alreadyOwnsClothing(_loc9_.tag) == false)
               {
                  if(_loc9_.type != ClothingItem.TYPE_HAIR || _loc6_.clothingHasOption(_loc9_.tag,ClothingItem.OPTIONS_PREMADE) == param5)
                  {
                     false;
                     false;
                     _loc7_.push(_loc9_.tag);
                  }
               }
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_.clothing.length)
            {
               _loc9_ = _loc6_.clothing[_loc8_];
               if(_loc6_.gameObj.userData.clothingInventory.indexOf(_loc9_.tag) > -1)
               {
                  false;
                  false;
                  true;
                  true;
                  false;
                  false;
                  true;
                  true;
                  §§push(_loc9_.type == param1);
                  if(_loc9_.type == param1)
                  {
                     true;
                     true;
                     §§pop();
                     true;
                     true;
                     false;
                     false;
                     §§push(_loc9_.gender == ClothingItem.GENDER_ALL);
                     if(!(_loc9_.gender == ClothingItem.GENDER_ALL))
                     {
                        false;
                        false;
                        §§pop();
                        §§push(_loc9_.gender == param2);
                     }
                  }
                  if(§§pop())
                  {
                     _loc7_.push(_loc9_.tag);
                     true;
                     true;
                  }
               }
               _loc8_++;
            }
         }
         return _loc7_;
      }
      
      public function clothingHasOption(param1:String, param2:uint) : Boolean
      {
         false;
         true;
         var _loc3_:ClothingData = this;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.clothing.length)
         {
            true;
            true;
            false;
            false;
            true;
            true;
            if(_loc3_.clothing[_loc5_].tag == param1 && Boolean(_loc3_.clothing[_loc5_].hasOption(param2)))
            {
               false;
               false;
               _loc4_ = true;
               true;
               true;
               break;
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public function clothingExists(param1:String) : Boolean
      {
         false;
         true;
         var _loc2_:ClothingData = this;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.clothing.length)
         {
            if(_loc2_.clothing[_loc4_].tag == param1)
            {
               _loc3_ = true;
               break;
            }
            _loc4_++;
            true;
            true;
         }
         return _loc3_;
      }
      
      public function getSKUsForInventory(param1:String, param2:String) : Array
      {
         var _loc5_:int = 0;
         var _loc6_:ClothingItem = null;
         var _loc3_:ClothingData = this;
         var _loc4_:Array = [];
         true;
         true;
         true;
         true;
         if(param1 == "marty")
         {
            _loc4_ = ["pants_01_male","shirt_00_male","shirt_01_male","hair_chuck_1","shoes1","pukawrist","body_puka","belt_01_male"];
         }
         else if(param1 == "rita")
         {
            false;
            false;
            _loc4_ = ["pants_01_female","shirt_00_female","shirt_15_female","hair_mandi_1","shoes1","belt_02_female"];
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < _loc3_.clothing.length)
            {
               false;
               false;
               §§push((_loc6_ = _loc3_.clothing[_loc5_]).addToDefaultInventory == true);
               if((_loc6_ = _loc3_.clothing[_loc5_]).addToDefaultInventory == true)
               {
                  §§pop();
                  true;
                  true;
                  false;
                  false;
                  false;
                  false;
                  §§push(_loc6_.gender == ClothingItem.GENDER_ALL);
                  if(!(_loc6_.gender == ClothingItem.GENDER_ALL))
                  {
                     true;
                     true;
                     §§pop();
                     §§push(_loc6_.gender == param2);
                  }
               }
               if(§§pop())
               {
                  true;
                  true;
                  _loc4_.push(_loc6_.tag);
               }
               _loc5_++;
            }
         }
         class_5.method_25("Generate Inventory: " + _loc4_.toString());
         return _loc4_;
      }
      
      public function getItemFromSKU(param1:String) : ClothingItem
      {
         false;
         true;
         var _loc2_:ClothingData = this;
         var _loc3_:ClothingItem = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.clothing.length)
         {
            false;
            false;
            if(_loc2_.clothing[_loc4_].tag == param1)
            {
               true;
               true;
               _loc3_ = _loc2_.clothing[_loc4_];
               break;
            }
            _loc4_++;
            false;
            false;
         }
         return _loc3_;
      }
   }
}
