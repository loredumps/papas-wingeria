package wingGame.screens
{
   import flash.display.*;
   import flash.events.*;
   import flash.filters.DropShadowFilter;
   import flash.geom.*;
   import flash.utils.getDefinitionByName;
   import package_2.*;
   import package_4.*;
   import wingGame.data.*;
   import wingGame.models.Ramp;
   
   public class MiniGamePachinko extends MiniGame
   {
       
      
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var isDonePlaying:Boolean = false;
      
      public var whichDifficulty:Number = 1;
      
      public var lastPlayedSoundOnFrame:Number = 0;
      
      public var gameTimer:Number = 0;
      
      public var totalBalls:Number = 1;
      
      public var usingWhichBall:Number = 1;
      
      public var landedWhichHole:Array;
      
      public var prizeAmounts:Array;
      
      public var didLaunch:Boolean = false;
      
      public var ballSpeed:Number = 10;
      
      public var ballDirection:Number = 1;
      
      public var ballRadius:Number = 17;
      
      public var ballStartY:Number = 80;
      
      public var defaultRampDecay:Number = 0.5;
      
      public var ball:MovieClip;
      
      public var gravity:Number = 1;
      
      public var terminalVelocity:Number = 20;
      
      public var ballSpeedX:Number = 0;
      
      public var ballSpeedY:Number = 0;
      
      public var bumperTypes:Array;
      
      public var bumperRadii:Array;
      
      public var bumperBounce:Array;
      
      public var bottomBounds:Number = 430;
      
      public var didDropBelow:Boolean = false;
      
      public var dropBelowTimer:Number = 0;
      
      public var dropBelowTimerMax:Number = 15;
      
      public var endDelayTimer:Number = 0;
      
      public var endDelayTimerMax:Number = 40;
      
      public var rampCoords:Array;
      
      public var barCoords:Array;
      
      public var bumperCoords:Array;
      
      public var ramps:Array;
      
      public var bumpers:Array;
      
      public var banks:Array;
      
      public function MiniGamePachinko(param1:MiniGameScreen, param2:MovieClip)
      {
         false;
         true;
         this.prizeSKUs = ["poster_pizzeria","shirt_08","furni_pizzatable_small","wall28","pants_11","furni_pizza_balloons","furni_pizzatable_medium","belt_06","jacket_05","furni_pizzatable_large","hat21","floor17","body_scarf01","furni_pizza_pizzaboxes"];
         this.prizeIsClothing = [false,true,false,false,true,false,false,true,true,false,true,false,true,false];
         this.prizeClothingMode = ["","gender","","","gender","","","gender","gender","","hat","","",""];
         this.allowedForRandom = [1,0,1,0,0,1,1,0,0,1,0,0,0,1];
         true;
         true;
         this.landedWhichHole = [0,0,0,0,0];
         this.prizeAmounts = [50,100,0,100,50];
         this.bumperTypes = ["olive","mushroom","sausage","pepperoni","pepper","onion"];
         this.bumperRadii = [5,10,12,20,20,16];
         this.bumperBounce = [2,10,30,40,50,36];
         this.rampCoords = [[0,0],[2,329],[87,480],[135,480],[189,385],[240,471],[289,385],[291,480],[348,480],[350,385],[399,471],[450,385],[506,480],[553,480],[638,330],[640,0]];
         true;
         true;
         true;
         true;
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
         true;
         true;
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
         false;
         false;
         true;
         true;
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
         true;
         true;
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
         true;
         true;
         false;
         false;
         false;
         false;
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
         this.barCoords = [[],[[64,131,123,182],[168,252,236,290],[392,260,458,218],[485,162,557,131],[533,308,609,292],[56,284,124,323]],[[39,182,97,234],[129,261,201,291],[538,224,600,177],[433,285,507,259]],[[70,152,128,204],[247,218,311,174],[114,258,179,302],[364,316,438,290],[522,212,572,152]],[[200,231,264,186],[430,237,375,181],[83,259,152,295],[470,294,539,258]],[[442,329,514,298],[123,312,198,333]],[[354,321,430,302],[212,304,284,335],[206,152,262,206],[436,150,377,201]],[],[[334,189,405,157],[223,159,294,191]],[[405,270,341,309],[212,215,285,242]],[[122,207,190,168],[433,147,501,186]],[[405,252,344,300],[528,173,595,133],[52,307,108,253],[346,137,408,185],[533,249,599,291],[59,137,122,183],[210,181,272,134],[211,258,275,303]],[[512,295,580,256],[59,252,116,305]],[[491,365,567,346],[70,345,142,376]],[[297,286,358,237],[206,210,278,239],[189,120,236,182],[459,185,494,115]]];
         true;
         true;
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
         false;
         false;
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
         false;
         false;
         false;
         false;
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
         true;
         true;
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
         false;
         false;
         true;
         true;
         false;
         false;
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
         true;
         true;
         false;
         false;
         false;
         false;
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
         true;
         true;
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
         true;
         true;
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
         true;
         true;
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
         false;
         false;
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
         true;
         true;
         true;
         true;
         false;
         false;
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
         true;
         true;
         false;
         false;
         false;
         false;
         false;
         false;
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
         false;
         false;
         false;
         false;
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
         true;
         true;
         false;
         false;
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
         true;
         true;
         true;
         true;
         false;
         false;
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
         false;
         false;
         false;
         false;
         true;
         true;
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
         true;
         true;
         false;
         false;
         true;
         true;
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
         true;
         true;
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
         false;
         false;
         false;
         false;
         this.bumperCoords = [[],[[380,347,"pepperoni"],[263,337,"sausage"],[522,244,"sausage"],[486,345,"sausage"],[131,373,"pepperoni"],[604,187,"pepperoni"],[34,219,"pepperoni"],[320,216,"pepperoni"],[376,152,"mushroom"],[262,154,"mushroom"]],[[165,157,"pepper"],[392,221,"onion"],[579,298,"sausage"],[232,226,"onion"],[52,127,"sausage"],[458,167,"pepper"],[564,116,"sausage"],[305,180,"pepper"],[57,293,"sausage"],[272,322,"olive"],[355,322,"olive"],[428,344,"olive"],[195,345,"olive"],[126,346,"olive"],[505,343,"olive"]],[[231,335,"pepperoni"],[189,193,"mushroom"],[491,260,"mushroom"],[379,191,"mushroom"],[102,358,"mushroom"],[459,139,"pepperoni"],[585,287,"pepperoni"],[61,254,"pepperoni"],[328,244,"onion"],[509,354,"onion"]],[[173,329,"pepperoni"],[446,330,"pepperoni"],[350,246,"olive"],[285,245,"olive"],[319,173,"pepperoni"],[463,165,"onion"],[150,168,"onion"],[563,323,"pepper"],[78,337,"pepper"],[599,166,"olive"],[529,168,"olive"],[90,172,"olive"],[39,171,"olive"]],[[103,249,"pepper"],[373,216,"pepper"],[520,238,"pepper"],[232,221,"pepper"],[455,169,"pepperoni"],[314,164,"pepperoni"],[168,169,"pepperoni"],[377,361,"sausage"],[255,364,"sausage"],[57,173,"pepperoni"],[573,168,"pepperoni"],[48,315,"mushroom"],[593,305,"mushroom"],[315,266,"olive"],[236,126,"olive"],[389,126,"olive"],[113,132,"olive"],[520,127,"olive"]],[[319,234,"pepperoni"],[504,217,"pepper"],[128,221,"pepper"],[136,320,"sausage"],[496,310,"sausage"],[596,205,"olive"],[42,209,"olive"],[552,138,"olive"],[96,141,"olive"],[569,281,"olive"],[73,294,"olive"]],[[419,280,"mushroom"],[214,288,"mushroom"],[530,174,"olive"],[104,283,"pepperoni"],[533,273,"pepperoni"],[589,154,"olive"],[475,198,"olive"],[417,223,"olive"],[220,229,"olive"],[173,205,"olive"],[124,178,"olive"],[74,155,"olive"],[319,261,"pepperoni"],[320,169,"pepperoni"],[628,234,"pepperoni"],[6,244,"pepperoni"],[488,347,"olive"],[541,360,"olive"],[157,354,"olive"],[102,381,"olive"],[270,343,"onion"],[374,338,"onion"],[56,335,"olive"],[587,315,"olive"]],[[361,215,"pepperoni"],[266,217,"pepperoni"],[432,283,"sausage"],[379,309,"olive"],[312,300,"sausage"],[252,313,"olive"],[193,284,"sausage"],[84,319,"olive"],[579,157,"onion"],[511,160,"onion"],[543,225,"mushroom"],[481,249,"onion"],[523,345,"onion"],[80,221,"mushroom"],[134,257,"onion"],[119,166,"onion"],[55,157,"onion"],[139,358,"onion"],[590,306,"olive"]],[[370,194,"sausage"],[431,136,"onion"],[490,201,"mushroom"],[591,167,"sausage"],[572,300,"pepperoni"],[86,283,"mushroom"],[172,181,"onion"],[297,160,"mushroom"],[37,160,"sausage"],[180,304,"pepperoni"],[449,352,"pepper"],[113,124,"olive"],[96,208,"olive"],[253,295,"olive"],[241,361,"olive"],[343,132,"olive"],[331,255,"olive"],[435,232,"olive"],[516,144,"olive"],[499,301,"olive"],[534,242,"olive"],[532,359,"olive"],[602,242,"olive"],[106,355,"olive"],[234,140,"olive"]],[[319,259,"pepperoni"],[271,201,"olive"],[268,313,"olive"],[376,202,"olive"],[381,315,"olive"],[432,253,"sausage"],[204,259,"sausage"],[488,335,"pepper"],[171,332,"mushroom"],[113,274,"onion"],[590,257,"mushroom"],[61,162,"sausage"],[324,150,"onion"],[576,150,"pepperoni"],[55,317,"sausage"],[576,328,"olive"],[506,251,"onion"]],[[158,320,"sausage"],[308,219,"sausage"],[466,131,"mushroom"],[161,127,"mushroom"],[464,324,"sausage"],[112,382,"olive"],[164,226,"pepperoni"],[464,224,"pepper"],[542,373,"olive"]],[[371,250,"sausage"],[303,279,"olive"],[430,210,"sausage"],[482,171,"olive"],[112,165,"olive"],[239,241,"sausage"],[180,203,"sausage"],[539,136,"mushroom"],[56,119,"mushroom"],[73,349,"onion"],[574,334,"onion"],[158,346,"onion"],[472,340,"onion"],[11,216,"olive"],[619,196,"olive"],[251,340,"olive"],[377,337,"olive"]],[[76,179,"onion"],[174,178,"onion"],[275,177,"onion"],[373,176,"onion"],[474,174,"onion"],[570,172,"onion"],[322,243,"olive"],[523,237,"olive"],[124,244,"olive"],[224,242,"sausage"],[423,242,"sausage"],[66,298,"mushroom"],[170,305,"mushroom"],[284,302,"mushroom"],[379,304,"mushroom"],[476,299,"mushroom"],[575,294,"mushroom"],[621,235,"sausage"],[18,241,"sausage"]],[[120,190,"pepper"],[590,248,"sausage"],[281,355,"olive"],[459,281,"olive"],[114,335,"sausage"],[91,291,"onion"],[530,288,"pepperoni"],[384,300,"pepperoni"],[218,344,"pepperoni"],[400,362,"olive"],[543,182,"pepper"],[56,235,"pepperoni"],[144,370,"olive"],[531,370,"onion"],[382,143,"olive"],[43,144,"olive"]]];
         this.ramps = [];
         this.bumpers = [];
         this.banks = [];
         super(param1,param2);
      }
      
      override public function setupScreen() : void
      {
         false;
         true;
         var _loc1_:MiniGamePachinko = this;
         true;
         true;
         _loc1_.clip = new minigamePachinkoMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Pizza Pachinko");
         _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
         false;
         false;
         _loc1_.decideDifficulty();
         false;
         false;
         _loc1_.ball = _loc1_.clip.ball;
         _loc1_.usingWhichBall = 0;
         _loc1_.resetBall();
         false;
         false;
         _loc1_.setupWalls();
         _loc1_.setupBumpers();
         _loc1_.clip.reload.gotoAndPlay("sliding1");
         _loc1_.clip.reload.visible = false;
         true;
         true;
         _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
      }
      
      public function setupWalls() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Ramp = null;
         var _loc6_:Number = NaN;
         var _loc7_:Ramp = null;
         var _loc8_:MovieClip = null;
         var _loc9_:DropShadowFilter = null;
         var _loc1_:MiniGamePachinko = this;
         _loc1_.ramps = null;
         _loc1_.ramps = [];
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            if(_loc2_ >= _loc1_.banks.length)
            {
               break;
            }
            _loc1_.clip.holder.removeChild(_loc1_.banks[_loc2_]);
            false;
            false;
            true;
            true;
            false;
            false;
            _loc1_.banks[_loc2_] = null;
            false;
            false;
            _loc2_++;
            true;
            true;
         }
         _loc1_.banks = null;
         _loc1_.banks = [];
         true;
         true;
         _loc2_ = 0;
         true;
         true;
         while(_loc2_ < _loc1_.rampCoords.length - 1)
         {
            true;
            true;
            true;
            true;
            _loc3_ = _loc1_.rampCoords[_loc2_];
            _loc4_ = _loc1_.rampCoords[_loc2_ + 1];
            _loc5_ = new Ramp(_loc3_[0],_loc3_[1],_loc4_[0],_loc4_[1],_loc1_.defaultRampDecay);
            true;
            true;
            _loc1_.ramps.push(_loc5_);
            false;
            false;
            _loc2_++;
         }
         false;
         false;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.barCoords[_loc1_.whichDifficulty].length)
         {
            _loc6_ = _loc1_.defaultRampDecay;
            false;
            false;
            false;
            false;
            true;
            true;
            if(_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_].length == 5)
            {
               _loc6_ = Number(_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][4]);
            }
            _loc7_ = new Ramp(_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][0],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][1],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][2],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][3],_loc6_,true);
            _loc1_.ramps.push(_loc7_);
            (_loc8_ = new pachinko_anchovy()).x = _loc7_.x1;
            _loc8_.y = _loc7_.y1;
            _loc8_.rotation = this.radsToDegrees(_loc7_.getAngle());
            _loc9_ = new DropShadowFilter(5,90,9726215,1,2,2,0.71);
            true;
            true;
            _loc8_.filters = [_loc9_];
            _loc1_.clip.holder.addChild(_loc8_);
            false;
            false;
            _loc1_.banks.push(_loc8_);
            false;
            false;
            true;
            true;
            true;
            true;
            _loc2_++;
         }
      }
      
      public function setupBumpers() : void
      {
         false;
         true;
         var _loc2_:Number = NaN;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:DropShadowFilter = null;
         var _loc1_:MiniGamePachinko = this;
         true;
         true;
         _loc2_ = 0;
         while(true)
         {
            true;
            true;
            false;
            false;
            if(_loc2_ >= _loc1_.bumpers.length)
            {
               break;
            }
            _loc1_.clip.holder.removeChild(_loc1_.bumpers[_loc2_]);
            _loc1_.bumpers[_loc2_] = null;
            true;
            true;
            false;
            false;
            false;
            false;
            _loc2_++;
         }
         _loc1_.bumpers = null;
         _loc1_.bumpers = [];
         true;
         true;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.bumperCoords[_loc1_.whichDifficulty].length)
         {
            _loc3_ = getDefinitionByName("pachinko_" + _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][2]) as Class;
            (_loc4_ = new _loc3_() as MovieClip).x = _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][0];
            false;
            false;
            _loc4_.y = _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][1];
            true;
            true;
            _loc4_.rotation = Math.floor(Math.random() * 360);
            _loc5_ = new DropShadowFilter(5,90,9726215,1,2,2,0.71);
            true;
            true;
            _loc4_.filters = [_loc5_];
            true;
            true;
            _loc1_.clip.holder.addChild(_loc4_);
            _loc1_.bumpers.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function clickScreen(param1:MouseEvent = null) : void
      {
         false;
         true;
         var _loc2_:MiniGamePachinko = this;
         if(!_loc2_.didLaunch)
         {
            true;
            true;
            _loc2_.didLaunch = true;
            if(_loc2_.usingWhichBall == 1 || _loc2_.usingWhichBall == 2)
            {
               _loc2_.clip.reload.gotoAndPlay("drop" + (_loc2_.usingWhichBall + 1));
            }
            _loc2_.ballSpeedX = 0;
         }
      }
      
      public function resetBall() : void
      {
         false;
         true;
         var _loc1_:MiniGamePachinko = this;
         true;
         true;
         if(_loc1_.usingWhichBall == _loc1_.totalBalls || _loc1_.landedWhichHole[2] > 0)
         {
            _loc1_.isDonePlaying = true;
            _loc1_.checkSuccess();
         }
         else
         {
            _loc1_.ball.x = _loc1_.ballRadius;
            _loc1_.ball.y = _loc1_.ballStartY;
            _loc1_.ballSpeedY = 0;
            _loc1_.ballSpeedX = 0;
            _loc1_.gravity = 1;
            _loc1_.ballDirection = 1;
            _loc1_.didLaunch = false;
            var _loc2_:*;
            var _loc3_:* = (_loc2_ = _loc1_).usingWhichBall + 1;
            true;
            true;
            _loc2_.usingWhichBall = _loc3_;
            true;
            true;
            true;
            true;
            true;
            true;
            true;
            true;
            §§push(_loc1_.usingWhichBall == 1 || _loc1_.usingWhichBall == 2);
            if(!(_loc1_.usingWhichBall == 1 || _loc1_.usingWhichBall == 2))
            {
               true;
               true;
               §§pop();
               §§push(_loc1_.usingWhichBall == 3);
            }
            if(§§pop())
            {
               _loc1_.clip.reload.gotoAndPlay("sliding" + _loc1_.usingWhichBall);
            }
         }
      }
      
      public function getBallSlope() : Number
      {
         false;
         true;
         var _loc1_:MiniGamePachinko = this;
         true;
         true;
         var _loc2_:Number = _loc1_.ballSpeedY / _loc1_.ballSpeedX;
         if(_loc2_ == Number.POSITIVE_INFINITY)
         {
            true;
            true;
            true;
            true;
            _loc2_ = 1000000;
            true;
            true;
         }
         else if(_loc2_ == Number.NEGATIVE_INFINITY)
         {
            _loc2_ = -1000000;
         }
         return _loc2_;
      }
      
      public function decideDifficulty() : void
      {
         false;
         true;
         var _loc1_:MiniGamePachinko = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(_loc2_ < this.prizeSKUs.length)
         {
            false;
            false;
            _loc1_.whichDifficulty = _loc2_ + 1;
         }
         else
         {
            _loc1_.whichDifficulty = Math.ceil(Math.random() * 14);
         }
      }
      
      public function checkSuccess() : void
      {
         false;
         true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGamePachinko = this;
         if(_loc1_.landedWhichHole[2] > 0)
         {
            false;
            false;
            if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
            {
               false;
               false;
               _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
               true;
               true;
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               false;
               false;
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            else
            {
               _loc2_ = [];
               _loc3_ = 0;
               while(_loc3_ < _loc1_.prizeSKUs.length)
               {
                  if(_loc1_.allowedForRandom[_loc3_] == 1)
                  {
                     true;
                     true;
                     _loc2_.push(_loc1_.prizeSKUs[_loc3_]);
                     false;
                     false;
                  }
                  _loc3_++;
               }
               _loc4_ = Math.floor(Math.random() * _loc2_.length);
               false;
               false;
               _loc1_.skuToWin = _loc2_[_loc4_];
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               false;
               false;
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            _loc1_.amountToWin = 1;
            true;
            true;
            _loc1_.screen.gameObj.soundManager.playSound("customer_happy.wav");
         }
         else
         {
            _loc1_.skuToWin = "tips";
            false;
            false;
            _loc1_.skuIsClothing = false;
            _loc1_.skuClothingMode = "";
            _loc1_.amountToWin = 0;
            _loc1_.amountToWin += _loc1_.landedWhichHole[0] * _loc1_.prizeAmounts[0];
            _loc1_.amountToWin += _loc1_.landedWhichHole[1] * _loc1_.prizeAmounts[1];
            _loc1_.amountToWin += _loc1_.landedWhichHole[3] * _loc1_.prizeAmounts[3];
            true;
            true;
            true;
            true;
            _loc1_.amountToWin += _loc1_.landedWhichHole[4] * _loc1_.prizeAmounts[4];
            false;
            false;
            if(_loc1_.amountToWin == 0)
            {
               _loc1_.skuToWin = null;
            }
            _loc1_.screen.gameObj.soundManager.playSound("customer_decent.wav");
         }
      }
      
      override public function updateScreen() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:MiniGamePachinko = this;
         if(!_loc1_.isDonePlaying)
         {
            true;
            true;
            var _loc3_:*;
            var _loc4_:* = (_loc3_ = _loc1_).gameTimer + 1;
            false;
            false;
            _loc3_.gameTimer = _loc4_;
            false;
            false;
            if(!_loc1_.didLaunch)
            {
               false;
               false;
               _loc1_.ball.x += _loc1_.ballSpeed * _loc1_.ballDirection;
               true;
               true;
               §§push(_loc1_.ball.x > 640 - _loc1_.ballRadius);
               if(_loc1_.ball.x > 640 - _loc1_.ballRadius)
               {
                  false;
                  false;
                  §§pop();
                  false;
                  false;
                  §§push(_loc1_.ballDirection == 1);
               }
               if(§§pop())
               {
                  true;
                  true;
                  _loc1_.ball.x = 640 - _loc1_.ballRadius;
                  _loc1_.ballDirection = -1;
               }
               else if(_loc1_.ball.x < _loc1_.ballRadius && _loc1_.ballDirection == -1)
               {
                  _loc1_.ball.x = _loc1_.ballRadius;
                  _loc1_.ballDirection = 1;
               }
            }
            else
            {
               _loc1_.ballSpeedY += _loc1_.gravity;
               true;
               true;
               if(_loc1_.ballSpeedY > _loc1_.terminalVelocity)
               {
                  _loc1_.ballSpeedY = _loc1_.terminalVelocity;
               }
               _loc1_.checkForCollisions();
               true;
               true;
               false;
               false;
               if(_loc1_.ball.y > _loc1_.bottomBounds && !_loc1_.didDropBelow)
               {
                  _loc1_.didDropBelow = true;
                  false;
                  false;
               }
               else if(_loc1_.ball.y < _loc1_.bottomBounds && _loc1_.didDropBelow)
               {
                  _loc1_.didDropBelow = false;
                  _loc1_.dropBelowTimer = 0;
                  true;
                  true;
               }
               else if(_loc1_.didDropBelow)
               {
                  false;
                  false;
                  ++_loc1_.dropBelowTimer;
                  true;
                  true;
                  false;
                  false;
                  if(_loc1_.dropBelowTimer >= _loc1_.dropBelowTimerMax && _loc1_.ball.y > _loc1_.bottomBounds)
                  {
                     _loc2_ = -1;
                     if(_loc1_.ball.x < 161)
                     {
                        false;
                        false;
                        _loc2_ = 0;
                     }
                     else if(_loc1_.ball.x < 280)
                     {
                        false;
                        false;
                        _loc2_ = 1;
                     }
                     else if(_loc1_.ball.x < 347)
                     {
                        false;
                        false;
                        true;
                        true;
                        _loc2_ = 2;
                     }
                     else if(_loc1_.ball.x < 450)
                     {
                        true;
                        true;
                        true;
                        true;
                        _loc2_ = 3;
                     }
                     else
                     {
                        false;
                        false;
                        _loc2_ = 4;
                     }
                     var _loc5_:* = (_loc3_ = _loc1_.landedWhichHole)[_loc4_ = _loc2_] + 1;
                     false;
                     false;
                     _loc3_[_loc4_] = _loc5_;
                     _loc1_.clip.fireworks.x = _loc1_.ball.x;
                     _loc1_.clip.fireworks.y = _loc1_.ball.y;
                     _loc1_.clip.fireworks.gotoAndPlay(1);
                     _loc1_.screen.gameObj.soundManager.playSound("getstar.wav");
                     false;
                     false;
                     _loc1_.resetBall();
                  }
               }
            }
            _loc1_.clip.shadowball.x = _loc1_.clip.ball.x;
            _loc1_.clip.shadowball.y = _loc1_.clip.ball.y;
         }
         else
         {
            false;
            false;
            ++_loc1_.endDelayTimer;
            if(_loc1_.endDelayTimer == _loc1_.endDelayTimerMax)
            {
               _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
            }
         }
      }
      
      public function checkForCollisions() : void
      {
         var _loc1_:MiniGamePachinko = this;
         var _loc2_:Boolean = _loc1_.checkIntersectingRamps();
         var _loc3_:Boolean = _loc1_.checkIntersectingBumpers();
         true;
         true;
         true;
         true;
         §§push(!_loc2_);
         if(!_loc2_)
         {
            true;
            true;
            §§pop();
            true;
            true;
            §§push(!_loc3_);
         }
         if(§§pop())
         {
            true;
            true;
            _loc1_.ball.x += _loc1_.ballSpeedX;
            _loc1_.ball.y += _loc1_.ballSpeedY;
         }
      }
      
      public function checkIntersectingBumpers() : Boolean
      {
         false;
         true;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:* = undefined;
         var _loc33_:Boolean = false;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:* = undefined;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc1_:MiniGamePachinko = this;
         var _loc2_:Boolean = false;
         var _loc3_:Number = this.ball.x;
         var _loc4_:Number = this.ball.y;
         var _loc5_:int = 0;
         while(_loc5_ < _loc1_.bumperCoords[_loc1_.whichDifficulty].length)
         {
            _loc6_ = Number(_loc1_.bumperCoords[_loc1_.whichDifficulty][_loc5_][0]);
            _loc7_ = Number(_loc1_.bumperCoords[_loc1_.whichDifficulty][_loc5_][1]);
            _loc8_ = String(_loc1_.bumperCoords[_loc1_.whichDifficulty][_loc5_][2]);
            true;
            true;
            _loc9_ = 0;
            _loc10_ = 0;
            if(_loc1_.bumperCoords[_loc1_.whichDifficulty][_loc5_].length == 5)
            {
               true;
               true;
               _loc9_ = Number(_loc1_.bumperCoords[_loc1_.whichDifficulty][_loc5_][3]);
               _loc10_ = Number(_loc1_.bumperCoords[_loc1_.whichDifficulty][_loc5_][4]);
            }
            else
            {
               true;
               true;
               false;
               false;
               _loc9_ = Number(_loc1_.bumperRadii[_loc1_.bumperTypes.indexOf(_loc1_.bumperCoords[_loc1_.whichDifficulty][_loc5_][2])]);
               _loc10_ = Number(_loc1_.bumperBounce[_loc1_.bumperTypes.indexOf(_loc1_.bumperCoords[_loc1_.whichDifficulty][_loc5_][2])]);
            }
            _loc11_ = _loc1_.ballSpeedX;
            _loc12_ = _loc1_.ballSpeedY;
            false;
            false;
            _loc13_ = 0;
            _loc14_ = 0;
            false;
            false;
            _loc15_ = _loc3_;
            _loc16_ = _loc4_;
            _loc17_ = _loc6_;
            _loc18_ = _loc7_;
            false;
            false;
            true;
            true;
            _loc19_ = this.ballRadius + _loc9_;
            false;
            false;
            true;
            true;
            true;
            true;
            true;
            true;
            true;
            true;
            _loc20_ = -2 * _loc11_ * _loc13_ + _loc11_ * _loc11_ + _loc13_ * _loc13_;
            true;
            true;
            false;
            false;
            true;
            true;
            _loc21_ = -2 * _loc15_ * _loc13_ - 2 * _loc17_ * _loc11_ + 2 * _loc15_ * _loc11_ + 2 * _loc17_ * _loc13_;
            false;
            false;
            true;
            true;
            false;
            false;
            true;
            true;
            _loc22_ = -2 * _loc15_ * _loc17_ + _loc15_ * _loc15_ + _loc17_ * _loc17_;
            true;
            true;
            false;
            false;
            false;
            false;
            _loc23_ = -2 * _loc12_ * _loc14_ + _loc12_ * _loc12_ + _loc14_ * _loc14_;
            false;
            false;
            true;
            true;
            true;
            true;
            false;
            false;
            _loc24_ = -2 * _loc16_ * _loc14_ - 2 * _loc18_ * _loc12_ + 2 * _loc16_ * _loc12_ + 2 * _loc18_ * _loc14_;
            true;
            true;
            true;
            true;
            false;
            false;
            _loc25_ = -2 * _loc16_ * _loc18_ + _loc16_ * _loc16_ + _loc18_ * _loc18_;
            false;
            false;
            _loc26_ = _loc20_ + _loc23_;
            false;
            false;
            _loc27_ = _loc21_ + _loc24_;
            false;
            false;
            _loc28_ = _loc22_ + _loc25_ - _loc19_ * _loc19_;
            _loc29_ = Math.sqrt(_loc27_ * _loc27_ - 4 * _loc26_ * _loc28_);
            true;
            true;
            false;
            false;
            _loc30_ = (-_loc27_ + _loc29_) / (2 * _loc26_);
            true;
            true;
            false;
            false;
            _loc31_ = (-_loc27_ - _loc29_) / (2 * _loc26_);
            _loc32_ = null;
            _loc33_ = false;
            false;
            false;
            false;
            false;
            if(_loc30_ > 0 && _loc30_ <= 1)
            {
               _loc32_ = _loc30_;
               false;
               false;
               _loc33_ = true;
            }
            true;
            true;
            false;
            false;
            if(_loc31_ > 0 && _loc31_ <= 1)
            {
               true;
               true;
               §§push(_loc32_ == null);
               if(!(_loc32_ == null))
               {
                  true;
                  true;
                  §§pop();
                  §§push(_loc31_ < _loc30_);
               }
               if(§§pop())
               {
                  _loc32_ = _loc31_;
                  true;
                  true;
                  _loc33_ = true;
               }
            }
            if(_loc33_)
            {
               false;
               false;
               _loc34_ = _loc3_ - _loc6_;
               _loc35_ = _loc4_ - _loc7_;
               _loc36_ = Math.atan2(_loc35_,_loc34_);
               false;
               false;
               true;
               true;
               false;
               false;
               _loc37_ = (this.ballRadius + _loc9_ + 2) * Math.cos(_loc36_);
               false;
               false;
               true;
               true;
               false;
               false;
               _loc38_ = (this.ballRadius + _loc9_ + 2) * Math.sin(_loc36_);
               false;
               false;
               this.ball.x = _loc6_ + _loc37_;
               this.ball.y = _loc7_ + _loc38_;
               false;
               false;
               _loc3_ = this.ball.x;
               _loc4_ = this.ball.y;
               _loc39_ = 1;
               true;
               true;
               _loc40_ = _loc10_;
               _loc41_ = _loc3_ - _loc6_;
               true;
               true;
               true;
               true;
               _loc42_ = _loc4_ - _loc7_;
               false;
               false;
               _loc43_ = Math.atan2(_loc42_,_loc41_);
               false;
               false;
               _loc44_ = Math.cos(_loc43_);
               true;
               true;
               _loc45_ = Math.sin(_loc43_);
               true;
               true;
               false;
               false;
               false;
               false;
               _loc46_ = _loc11_ * _loc44_ + _loc12_ * _loc45_;
               true;
               true;
               true;
               true;
               true;
               true;
               _loc47_ = _loc13_ * _loc44_ + _loc14_ * _loc45_;
               true;
               true;
               true;
               true;
               true;
               true;
               _loc48_ = _loc12_ * _loc44_ - _loc11_ * _loc45_;
               false;
               false;
               _loc49_ = _loc14_ * _loc44_ - _loc13_ * _loc45_;
               true;
               true;
               true;
               true;
               _loc50_ = _loc39_ * _loc46_ + _loc40_ * _loc47_;
               _loc51_ = _loc46_ - _loc47_;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               true;
               _loc46_ = _loc53_ = (_loc52_ = (_loc50_ + _loc39_ * _loc51_) / (_loc39_ + _loc40_)) - _loc46_ + _loc47_;
               false;
               false;
               _loc47_ = _loc52_;
               false;
               false;
               false;
               false;
               _loc11_ = _loc46_ * _loc44_ - _loc48_ * _loc45_;
               false;
               false;
               _loc12_ = _loc48_ * _loc44_ + _loc46_ * _loc45_;
               false;
               false;
               _loc1_.ballSpeedX = _loc11_;
               _loc1_.ballSpeedY = _loc12_;
               true;
               true;
               if(_loc1_.ballSpeedX > -0.1 && _loc1_.ballSpeedX < 0.1)
               {
                  if(_loc1_.ballSpeedX >= 0)
                  {
                     true;
                     true;
                     _loc1_.ballSpeedX = 0.1;
                     false;
                     false;
                  }
                  else
                  {
                     _loc1_.ballSpeedX = -0.1;
                  }
               }
               try
               {
                  _loc1_.bumpers[_loc5_].gotoAndPlay("bounce");
               }
               catch(err:Error)
               {
               }
               true;
               true;
               if(_loc1_.lastPlayedSoundOnFrame < _loc1_.gameTimer - 1)
               {
                  false;
                  false;
                  true;
                  true;
                  true;
                  true;
                  if(_loc8_ == "pepper" || _loc8_ == "pepperoni")
                  {
                     _loc1_.screen.gameObj.soundManager.playSound("boing.wav");
                  }
                  else if(_loc8_ == "olive" || _loc8_ == "mushroom")
                  {
                     _loc1_.screen.gameObj.soundManager.playSound("grabtopping.wav");
                  }
                  else
                  {
                     _loc1_.screen.gameObj.soundManager.playSound("droptopping.wav");
                  }
                  _loc1_.lastPlayedSoundOnFrame = _loc1_.gameTimer;
               }
               _loc2_ = true;
            }
            _loc5_++;
         }
         return _loc2_;
      }
      
      public function getSingleRampIntersectionArray(param1:Number, param2:Number, param3:Number, param4:Number, param5:Ramp) : Array
      {
         false;
         true;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = false;
         var _loc17_:Point = null;
         var _loc18_:Point = null;
         this;
         var _loc7_:Array = [];
         true;
         true;
         false;
         false;
         false;
         false;
         var _loc8_:Number = (param5.x2 - param5.x1) * (param5.x2 - param5.x1) + (param5.y2 - param5.y1) * (param5.y2 - param5.y1);
         true;
         true;
         false;
         false;
         false;
         false;
         true;
         true;
         var _loc9_:Number = 2 * ((param5.x2 - param5.x1) * (param5.x1 - param1) + (param5.y2 - param5.y1) * (param5.y1 - param2));
         false;
         false;
         false;
         false;
         false;
         false;
         false;
         false;
         false;
         false;
         var _loc10_:Number = param1 * param1 + param2 * param2 + param5.x1 * param5.x1 + param5.y1 * param5.y1 - 2 * (param1 * param5.x1 + param2 * param5.y1) - this.ballRadius * this.ballRadius;
         true;
         true;
         false;
         false;
         false;
         false;
         var _loc11_:Number;
         if((_loc11_ = _loc9_ * _loc9_ - 4 * _loc8_ * _loc10_) > 0)
         {
            _loc12_ = Math.sqrt(_loc11_);
            true;
            true;
            false;
            false;
            true;
            true;
            _loc13_ = (-_loc9_ + _loc12_) / (2 * _loc8_);
            _loc14_ = (-_loc9_ - _loc12_) / (2 * _loc8_);
            _loc15_ = false;
            _loc16_ = false;
            §§push(_loc13_ < 0);
            if(!(_loc13_ < 0))
            {
               true;
               true;
               §§pop();
               §§push(_loc13_ > 1);
            }
            true;
            true;
            if(§§pop() && (_loc14_ < 0 || _loc14_ > 1))
            {
               true;
               true;
               if(_loc13_ < 0 && _loc14_ < 0 || _loc13_ > 1 && _loc14_ > 1)
               {
                  true;
                  true;
                  _loc15_ = true;
               }
               else
               {
                  _loc16_ = true;
                  _loc7_.push(new Point(param5.x1,param5.y1));
                  _loc7_.push(new Point(param5.x2,param5.y2));
               }
            }
            false;
            false;
            if(!_loc15_)
            {
               true;
               true;
               false;
               false;
               §§push(0 < _loc14_);
               if(0 < _loc14_)
               {
                  true;
                  true;
                  §§pop();
                  §§push(_loc14_ <= 1);
               }
               if(§§pop() && !_loc16_)
               {
                  true;
                  true;
                  _loc17_ = Point.interpolate(new Point(param5.x1,param5.y1),new Point(param5.x2,param5.y2),1 - _loc14_);
                  _loc7_.push(_loc17_);
               }
               if(0 < _loc13_ && _loc13_ <= 1 && !_loc16_)
               {
                  _loc18_ = Point.interpolate(new Point(param5.x1,param5.y1),new Point(param5.x2,param5.y2),1 - _loc13_);
                  _loc7_.push(_loc18_);
               }
            }
         }
         return _loc7_;
      }
      
      public function checkIntersectingRamps() : Boolean
      {
         var _loc9_:Number = NaN;
         var _loc10_:Ramp = null;
         var _loc11_:Array = null;
         var _loc12_:Point = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Ramp = null;
         var _loc24_:Array = null;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:* = undefined;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc59_:Number = NaN;
         var _loc60_:Number = NaN;
         var _loc61_:Number = NaN;
         var _loc62_:Number = NaN;
         var _loc63_:Number = NaN;
         var _loc64_:Number = NaN;
         var _loc65_:Number = NaN;
         var _loc66_:Number = NaN;
         var _loc67_:Number = NaN;
         var _loc68_:Number = NaN;
         var _loc69_:Number = NaN;
         var _loc70_:Number = NaN;
         var _loc71_:Number = NaN;
         var _loc72_:Number = NaN;
         var _loc73_:Number = NaN;
         var _loc74_:Number = NaN;
         var _loc75_:Number = NaN;
         var _loc76_:Number = NaN;
         var _loc77_:Number = NaN;
         var _loc1_:MiniGamePachinko = this;
         var _loc2_:Boolean = false;
         var _loc3_:Number = _loc1_.ballSpeedX;
         var _loc4_:Number = this.ball.x + _loc1_.ballSpeedX;
         var _loc5_:Number = this.ball.y + _loc1_.ballSpeedY;
         false;
         false;
         var _loc6_:Number = _loc1_.getBallSlope();
         var _loc7_:Number = _loc5_ - _loc6_ * _loc4_;
         var _loc8_:int = 0;
         while(_loc8_ < _loc1_.ramps.length)
         {
            _loc9_ = _loc8_;
            true;
            true;
            false;
            false;
            if(_loc3_ < 0)
            {
               false;
               false;
               _loc9_ = _loc1_.ramps.length - 1 - _loc8_;
               true;
               true;
            }
            _loc10_ = _loc1_.ramps[_loc8_];
            _loc11_ = _loc1_.getSingleRampIntersectionArray(_loc4_,_loc5_,_loc6_,_loc7_,_loc10_);
            _loc12_ = null;
            false;
            false;
            _loc13_ = false;
            _loc14_ = false;
            if(_loc11_.length == 1)
            {
               _loc17_ = Math.sqrt((_loc4_ - _loc10_.x1) * (_loc4_ - _loc10_.x1) + (_loc5_ - _loc10_.y1) * (_loc5_ - _loc10_.y1));
               _loc18_ = Math.sqrt((_loc4_ - _loc10_.x2) * (_loc4_ - _loc10_.x2) + (_loc5_ - _loc10_.y2) * (_loc5_ - _loc10_.y2));
               false;
               false;
               if(_loc17_ <= this.ballRadius)
               {
                  _loc15_ = new Point(_loc10_.x1,_loc10_.y1);
                  _loc16_ = new Point(_loc10_.x2,_loc10_.y2);
               }
               else
               {
                  _loc15_ = new Point(_loc10_.x2,_loc10_.y2);
                  _loc16_ = new Point(_loc10_.x1,_loc10_.y1);
               }
               true;
               true;
               _loc19_ = Math.atan2(_loc1_.ballSpeedY,_loc1_.ballSpeedX);
               false;
               false;
               _loc20_ = 1000;
               _loc21_ = _loc15_.x + _loc20_ * Math.cos(_loc19_);
               _loc22_ = _loc15_.y + _loc20_ * Math.sin(_loc19_);
               _loc23_ = new Ramp(_loc15_.x,_loc15_.y,_loc21_,_loc22_,_loc1_.defaultRampDecay);
               if((_loc24_ = _loc1_.getSingleRampIntersectionArray(_loc4_,_loc5_,_loc6_,_loc7_,_loc23_)).length == 1)
               {
                  _loc25_ = _loc4_;
                  _loc26_ = _loc5_;
                  false;
                  false;
                  _loc27_ = Number(_loc24_[0].x);
                  _loc28_ = Number(_loc24_[0].y);
                  true;
                  true;
                  true;
                  true;
                  _loc29_ = _loc27_ - _loc15_.x;
                  true;
                  true;
                  _loc30_ = _loc28_ - _loc15_.y;
                  _loc31_ = (_loc31_ = Math.sqrt(_loc29_ * _loc29_ + _loc30_ * _loc30_)) + 2;
                  true;
                  true;
                  _loc32_ = _loc19_ + Math.PI;
                  true;
                  true;
                  _loc33_ = _loc4_ + _loc31_ * Math.cos(_loc32_);
                  _loc34_ = _loc5_ + _loc31_ * Math.sin(_loc32_);
                  this.ball.x = _loc33_;
                  this.ball.y = _loc34_;
                  false;
                  false;
                  _loc2_ = true;
                  _loc4_ = this.ball.x;
                  true;
                  true;
                  true;
                  true;
                  _loc7_ = (_loc5_ = this.ball.y) - _loc6_ * _loc4_;
                  if(_loc10_.isFloating)
                  {
                     try
                     {
                        false;
                        false;
                        _loc1_.banks[_loc8_ - _loc1_.rampCoords.length + 1].gotoAndPlay("bounce");
                     }
                     catch(err:Error)
                     {
                     }
                  }
                  false;
                  false;
                  _loc35_ = _loc1_.ballSpeedX;
                  true;
                  true;
                  _loc36_ = _loc1_.ballSpeedY;
                  true;
                  true;
                  _loc37_ = 0;
                  true;
                  true;
                  _loc38_ = 0;
                  _loc39_ = 1;
                  true;
                  true;
                  _loc40_ = 2;
                  false;
                  false;
                  true;
                  true;
                  _loc41_ = _loc27_ - _loc4_;
                  _loc42_ = _loc28_ - _loc5_;
                  true;
                  true;
                  _loc43_ = Math.atan2(_loc42_,_loc41_);
                  _loc44_ = Math.cos(_loc43_);
                  true;
                  true;
                  _loc45_ = Math.sin(_loc43_);
                  _loc46_ = _loc35_ * _loc44_ + _loc36_ * _loc45_;
                  true;
                  true;
                  false;
                  false;
                  _loc47_ = _loc37_ * _loc44_ + _loc38_ * _loc45_;
                  true;
                  true;
                  false;
                  false;
                  false;
                  false;
                  _loc48_ = _loc36_ * _loc44_ - _loc35_ * _loc45_;
                  false;
                  false;
                  false;
                  false;
                  _loc49_ = _loc38_ * _loc44_ - _loc37_ * _loc45_;
                  true;
                  true;
                  true;
                  true;
                  _loc50_ = _loc39_ * _loc46_ + _loc40_ * _loc47_;
                  _loc51_ = _loc46_ - _loc47_;
                  false;
                  false;
                  true;
                  true;
                  true;
                  true;
                  _loc46_ = _loc53_ = (_loc52_ = (_loc50_ + _loc39_ * _loc51_) / (_loc39_ + _loc40_)) - _loc46_ + _loc47_;
                  _loc47_ = _loc52_;
                  true;
                  true;
                  false;
                  false;
                  false;
                  false;
                  true;
                  true;
                  _loc35_ = _loc46_ * _loc44_ - _loc48_ * _loc45_;
                  true;
                  true;
                  true;
                  true;
                  _loc36_ = _loc48_ * _loc44_ + _loc46_ * _loc45_;
                  _loc1_.ballSpeedX = _loc35_;
                  _loc1_.ballSpeedY = _loc36_;
                  true;
                  true;
                  if(_loc1_.ballSpeedX > -0.1 && _loc1_.ballSpeedX < 0.1)
                  {
                     if(_loc1_.ballSpeedX >= 0)
                     {
                        true;
                        true;
                        _loc1_.ballSpeedX = 0.1;
                        true;
                        true;
                     }
                     else
                     {
                        _loc1_.ballSpeedX = -0.1;
                     }
                  }
               }
            }
            if(_loc11_.length == 2)
            {
               _loc12_ = Point.interpolate(_loc11_[0],_loc11_[1],0.5);
            }
            if(_loc12_ != null)
            {
               true;
               true;
               _loc54_ = -1 / _loc10_.getSlope();
               _loc55_ = _loc12_.y - _loc54_ * _loc12_.x;
               if(_loc54_ == Number.POSITIVE_INFINITY)
               {
                  _loc54_ = 1000000;
               }
               else if(_loc54_ == Number.NEGATIVE_INFINITY)
               {
                  _loc54_ = -1000000;
                  true;
                  true;
               }
               _loc56_ = 400;
               _loc57_ = _loc54_ * _loc56_ + _loc55_;
               true;
               true;
               _loc58_ = _loc12_.x - _loc56_;
               _loc59_ = _loc12_.y - _loc57_;
               if(_loc57_ < _loc12_.y)
               {
                  false;
                  false;
                  _loc58_ = _loc56_ - _loc12_.x;
                  _loc59_ = _loc57_ - _loc12_.y;
               }
               false;
               false;
               true;
               true;
               true;
               true;
               if((_loc60_ = (_loc10_.getRightX() - _loc10_.getLeftX()) * (this.ball.y - _loc10_.getLeftY()) - (_loc10_.getRightY() - _loc10_.getLeftY()) * (this.ball.x - _loc10_.getLeftX())) >= 0)
               {
                  true;
                  true;
                  _loc58_ = _loc56_ - _loc12_.x;
                  true;
                  true;
                  _loc59_ = _loc57_ - _loc12_.y;
                  if(_loc57_ < _loc12_.y)
                  {
                     true;
                     true;
                     _loc58_ = _loc12_.x - _loc56_;
                     true;
                     true;
                     _loc59_ = _loc12_.y - _loc57_;
                  }
               }
               _loc61_ = Math.atan2(_loc59_,_loc58_);
               _loc62_ = this.ballRadius * Math.cos(_loc61_);
               _loc63_ = this.ballRadius * Math.sin(_loc61_);
               this.ball.x = _loc12_.x + _loc62_;
               this.ball.y = _loc12_.y + _loc63_;
               _loc2_ = true;
               _loc4_ = this.ball.x;
               false;
               false;
               true;
               true;
               _loc7_ = (_loc5_ = this.ball.y) - _loc6_ * _loc4_;
               if(_loc10_.isFloating)
               {
                  try
                  {
                     _loc1_.banks[_loc8_ - _loc1_.rampCoords.length + 1].gotoAndPlay("bounce");
                  }
                  catch(err:Error)
                  {
                  }
               }
               _loc13_ = true;
               true;
               true;
            }
            true;
            true;
            if(_loc13_)
            {
               _loc64_ = _loc10_.getAngle();
               _loc65_ = Math.cos(_loc64_);
               _loc66_ = Math.sin(_loc64_);
               true;
               true;
               _loc67_ = _loc1_.ballSpeedY;
               _loc68_ = _loc1_.ballSpeedX;
               _loc69_ = _loc67_ * _loc65_ - _loc68_ * _loc66_;
               true;
               true;
               _loc70_ = _loc68_ * _loc65_ + _loc67_ * _loc66_;
               _loc71_ = _loc10_.decay;
               false;
               false;
               false;
               false;
               false;
               false;
               _loc72_ = -_loc69_ * _loc71_;
               _loc73_ = _loc70_;
               false;
               false;
               _loc74_ = _loc72_ * _loc65_ + _loc73_ * _loc66_;
               true;
               true;
               true;
               true;
               _loc75_ = _loc73_ * _loc65_ - _loc72_ * _loc66_;
               if(_loc14_)
               {
                  _loc76_ = _loc1_.ballSpeedX;
                  _loc77_ = _loc1_.ballSpeedY;
                  true;
                  true;
                  _loc1_.ballSpeedX = 0.9 * _loc76_ + 0.1 * _loc75_;
                  true;
                  true;
                  false;
                  false;
                  false;
                  false;
                  _loc1_.ballSpeedY = 0.9 * _loc77_ + 0.1 * _loc74_;
               }
               else
               {
                  _loc1_.ballSpeedX = _loc75_;
                  _loc1_.ballSpeedY = _loc74_;
                  false;
                  false;
               }
            }
            _loc8_++;
         }
         return _loc2_;
      }
      
      public function radsToDegrees(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      public function degreesToRads(param1:Number) : Number
      {
         false;
         true;
         true;
         true;
         return param1 * Math.PI / 180;
      }
      
      override public function destroy() : void
      {
         false;
         true;
         var _loc1_:MiniGamePachinko = this;
         true;
         true;
         _loc1_.container.removeChild(_loc1_.clip);
         true;
         true;
         _loc1_.clip = null;
      }
   }
}
