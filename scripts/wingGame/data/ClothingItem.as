package wingGame.data
{
   public class ClothingItem
   {
      
      public static const GENDER_MALE:String = "male";
      
      public static const GENDER_FEMALE:String = "female";
      
      public static const GENDER_ALL:String = "all";
      
      public static const TYPE_SHIRT:String = "shirt";
      
      public static const TYPE_PANTS:String = "pants";
      
      public static const TYPE_JACKET:String = "jacket";
      
      public static const TYPE_SHOES:String = "shoes";
      
      public static const TYPE_HAIR:String = "hair";
      
      public static const TYPE_FACIALHAIR:String = "facialhair";
      
      public static const TYPE_ACC_BODY:String = "acca";
      
      public static const TYPE_ACC_BELT:String = "accb";
      
      public static const TYPE_ACC_ARMS:String = "accc";
      
      public static const TYPE_ACC_FACE:String = "accd";
      
      public static const OPTIONS_HIDE_SHIRTNECK:uint = 1;
      
      public static const OPTIONS_HIDE_SHIRTBICEP:uint = 2;
      
      public static const OPTIONS_HIDE_JACKETNECK:uint = 4;
      
      public static const OPTIONS_HAS_BICEP:uint = 8;
      
      public static const OPTIONS_HAS_FOREARM:uint = 16;
      
      public static const OPTIONS_HAS_NECK:uint = 32;
      
      public static const OPTIONS_HAS_FRONTBODY:uint = 64;
      
      public static const OPTIONS_HAS_BACKBODY:uint = 128;
      
      public static const OPTIONS_HAS_BACK_HAIR:uint = 256;
      
      public static const OPTIONS_HAS_MOUTH_FACIALHAIR:uint = 512;
      
      public static const OPTIONS_HAS_BASE_FACIALHAIR:uint = 1024;
      
      public static const OPTIONS_TRACKEYES:uint = 2048;
      
      public static const OPTIONS_ONLYONEARM:uint = 4096;
      
      public static const OPTIONS_HIDE_SHIRTFOREARM:uint = 8192;
      
      public static const OPTIONS_PREMADE:uint = 16384;
      
      public static const OPTIONS_BEHINDCOLLAR:uint = 32768;
      
      public static const OPTIONS_ACCSTAYSBACK:uint = 65536;
      
      public static const SHIRT_SHORT:uint = ClothingItem.OPTIONS_HAS_BICEP;
      
      public static const SHIRT_LONG:uint = ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_FOREARM;
      
      public static const SHIRT_SLEEVELESS:uint = 0;
      
      public static const SHIRT_SHORT_COLLAR:uint = ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_NECK;
      
      public static const SHIRT_LONG_COLLAR:uint = ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_FOREARM | ClothingItem.OPTIONS_HAS_NECK;
      
      public static const FACIALHAIR_FULL:uint = ClothingItem.OPTIONS_HAS_BASE_FACIALHAIR | ClothingItem.OPTIONS_HAS_MOUTH_FACIALHAIR;
      
      public static const FACIALHAIR_JUSTMOUTH:uint = ClothingItem.OPTIONS_HAS_MOUTH_FACIALHAIR;
      
      public static const FACIALHAIR_JUSTBASE:uint = ClothingItem.OPTIONS_HAS_BASE_FACIALHAIR;
      
      public static const BODYACC_FULL:uint = ClothingItem.OPTIONS_HAS_BACKBODY | ClothingItem.OPTIONS_HAS_FRONTBODY;
      
      public static const BODYACC_FULL_NECK:uint = ClothingItem.OPTIONS_HAS_BACKBODY | ClothingItem.OPTIONS_HAS_FRONTBODY | ClothingItem.OPTIONS_HAS_NECK;
      
      public static const BODYACC_FRONT:uint = ClothingItem.OPTIONS_HAS_FRONTBODY;
      
      public static const BODYACC_BACK:uint = ClothingItem.OPTIONS_HAS_BACKBODY;
      
      public static const JACKET_COLLAR_COVERARMS:uint = ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_FOREARM | ClothingItem.OPTIONS_HIDE_SHIRTBICEP | ClothingItem.OPTIONS_HIDE_SHIRTFOREARM;
      
      public static const JACKET_COLLAR_COVERARMSANDNECK:uint = ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_FOREARM | ClothingItem.OPTIONS_HIDE_SHIRTBICEP | ClothingItem.OPTIONS_HIDE_SHIRTFOREARM | ClothingItem.OPTIONS_HIDE_SHIRTNECK;
      
      public static const JACKET_COVERARMS:uint = ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_FOREARM | ClothingItem.OPTIONS_HIDE_SHIRTBICEP | ClothingItem.OPTIONS_HIDE_SHIRTFOREARM;
      
      {
         false;
         false;
         false;
         false;
         true;
         true;
         true;
         true;
         false;
         false;
         true;
         true;
         true;
         true;
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
         false;
         false;
         true;
         true;
         false;
         false;
         false;
         false;
      }
      
      public var gender:String;
      
      public var type:String;
      
      public var tag:String;
      
      public var title:String;
      
      public var description:String;
      
      public var options:uint;
      
      public var price:Number = 0;
      
      public var inStore:Boolean = true;
      
      public var addToDefaultInventory:Boolean = false;
      
      public function ClothingItem(param1:String, param2:String, param3:String, param4:String, param5:Number = 0, param6:String = "all", param7:uint = 0, param8:Boolean = true, param9:Boolean = false)
      {
         super();
         this.tag = param1;
         this.title = param2;
         this.description = param3;
         true;
         true;
         this.type = param4;
         this.price = param5;
         true;
         true;
         this.gender = param6;
         this.options = param7;
         this.inStore = param8;
         false;
         false;
         this.addToDefaultInventory = param9;
      }
      
      public function hasOption(param1:uint) : Boolean
      {
         return (this.options & param1) == param1;
      }
   }
}
