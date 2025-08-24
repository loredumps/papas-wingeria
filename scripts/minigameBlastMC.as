package
{
   import adobe.utils.*;
   import fl.motion.AnimatorFactory3D;
   import fl.motion.MotionBase;
   import fl.motion.motion_internal;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.engine.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   [Embed(source="/_assets/assets.swf", symbol="minigameBlastMC")]
   public dynamic class minigameBlastMC extends MovieClip
   {
       
      
      public var shot_3:MovieClip;
      
      public var shot_4:MovieClip;
      
      public var shots_txt:TextField;
      
      public var reticule:MovieClip;
      
      public var break1:MovieClip;
      
      public var icon_0:MovieClip;
      
      public var break2:MovieClip;
      
      public var bread1:MovieClip;
      
      public var icon_1:MovieClip;
      
      public var bread2:MovieClip;
      
      public var icon_2:MovieClip;
      
      public var shadowholder:MovieClip;
      
      public var icon_3:MovieClip;
      
      public var icon_4:MovieClip;
      
      public var icon_5:MovieClip;
      
      public var icon_6:MovieClip;
      
      public var round_txt:TextField;
      
      public var panel:MovieClip;
      
      public var icon_7:MovieClip;
      
      public var icon_8:MovieClip;
      
      public var shadow1:MovieClip;
      
      public var icon_9:MovieClip;
      
      public var shadow2:MovieClip;
      
      public var shadowmask:MovieClip;
      
      public var hit_txt:TextField;
      
      public var popup:MovieClip;
      
      public var backholder:MovieClip;
      
      public var shot_0:MovieClip;
      
      public var topholder:MovieClip;
      
      public var shot_1:MovieClip;
      
      public var shot_2:MovieClip;
      
      public var flasher:MovieClip;
      
      public var __animFactory_shadow2af1:AnimatorFactory3D;
      
      public var __animArray_shadow2af1:Array;
      
      public var ____motion_shadow2af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_shadow2af1_matArray__:Array;
      
      public var __motion_shadow2af1:MotionBase;
      
      public var __animFactory_shadow1af1:AnimatorFactory3D;
      
      public var __animArray_shadow1af1:Array;
      
      public var ____motion_shadow1af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_shadow1af1_matArray__:Array;
      
      public var __motion_shadow1af1:MotionBase;
      
      public var __animFactory_bread2af1:AnimatorFactory3D;
      
      public var __animArray_bread2af1:Array;
      
      public var ____motion_bread2af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_bread2af1_matArray__:Array;
      
      public var __motion_bread2af1:MotionBase;
      
      public var __animFactory_bread1af1:AnimatorFactory3D;
      
      public var __animArray_bread1af1:Array;
      
      public var ____motion_bread1af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_bread1af1_matArray__:Array;
      
      public var __motion_bread1af1:MotionBase;
      
      public function minigameBlastMC()
      {
         super();
         if(this.__animFactory_shadow2af1 == null)
         {
            this.__animArray_shadow2af1 = new Array();
            this.__motion_shadow2af1 = new MotionBase();
            true;
            true;
            true;
            true;
            this.__motion_shadow2af1.duration = 1;
            this.__motion_shadow2af1.overrideTargetTransform();
            false;
            false;
            this.__motion_shadow2af1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion_shadow2af1.addPropertyArray("blendMode",["normal"]);
            this.__motion_shadow2af1.is3D = true;
            this.__motion_shadow2af1.motion_internal::spanStart = 0;
            this.____motion_shadow2af1_matArray__ = new Array();
            this.____motion_shadow2af1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion_shadow2af1_mat3DVec__[0] = 1;
            this.____motion_shadow2af1_mat3DVec__[1] = 0;
            this.____motion_shadow2af1_mat3DVec__[2] = 0;
            this.____motion_shadow2af1_mat3DVec__[3] = 0;
            this.____motion_shadow2af1_mat3DVec__[4] = 0;
            this.____motion_shadow2af1_mat3DVec__[5] = 0;
            this.____motion_shadow2af1_mat3DVec__[6] = -1;
            this.____motion_shadow2af1_mat3DVec__[7] = 0;
            this.____motion_shadow2af1_mat3DVec__[8] = 0;
            this.____motion_shadow2af1_mat3DVec__[9] = 1;
            this.____motion_shadow2af1_mat3DVec__[10] = 0;
            this.____motion_shadow2af1_mat3DVec__[11] = 0;
            this.____motion_shadow2af1_mat3DVec__[12] = 685;
            this.____motion_shadow2af1_mat3DVec__[13] = 421.000061;
            this.____motion_shadow2af1_mat3DVec__[14] = 42.200012;
            this.____motion_shadow2af1_mat3DVec__[15] = 1;
            false;
            false;
            this.____motion_shadow2af1_matArray__.push(new Matrix3D(this.____motion_shadow2af1_mat3DVec__));
            this.__motion_shadow2af1.addPropertyArray("matrix3D",this.____motion_shadow2af1_matArray__);
            this.__animArray_shadow2af1.push(this.__motion_shadow2af1);
            this.__animFactory_shadow2af1 = new AnimatorFactory3D(null,this.__animArray_shadow2af1);
            this.__animFactory_shadow2af1.sceneName = "minigameBlastMC";
            false;
            false;
            this.__animFactory_shadow2af1.addTargetInfo(this,"shadow2",0,true,0,true,null,-1);
         }
         if(this.__animFactory_shadow1af1 == null)
         {
            false;
            false;
            this.__animArray_shadow1af1 = new Array();
            true;
            true;
            this.__motion_shadow1af1 = new MotionBase();
            this.__motion_shadow1af1.duration = 1;
            false;
            false;
            this.__motion_shadow1af1.overrideTargetTransform();
            false;
            false;
            this.__motion_shadow1af1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion_shadow1af1.addPropertyArray("blendMode",["normal"]);
            true;
            true;
            false;
            false;
            this.__motion_shadow1af1.is3D = true;
            true;
            true;
            this.__motion_shadow1af1.motion_internal::spanStart = 0;
            this.____motion_shadow1af1_matArray__ = new Array();
            this.____motion_shadow1af1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion_shadow1af1_mat3DVec__[0] = 1;
            this.____motion_shadow1af1_mat3DVec__[1] = 0;
            this.____motion_shadow1af1_mat3DVec__[2] = 0;
            this.____motion_shadow1af1_mat3DVec__[3] = 0;
            this.____motion_shadow1af1_mat3DVec__[4] = 0;
            this.____motion_shadow1af1_mat3DVec__[5] = 0;
            this.____motion_shadow1af1_mat3DVec__[6] = -1;
            this.____motion_shadow1af1_mat3DVec__[7] = 0;
            this.____motion_shadow1af1_mat3DVec__[8] = 0;
            this.____motion_shadow1af1_mat3DVec__[9] = 1;
            this.____motion_shadow1af1_mat3DVec__[10] = 0;
            this.____motion_shadow1af1_mat3DVec__[11] = 0;
            this.____motion_shadow1af1_mat3DVec__[12] = -142.949997;
            this.____motion_shadow1af1_mat3DVec__[13] = 421.000061;
            true;
            true;
            this.____motion_shadow1af1_mat3DVec__[14] = 42.200012;
            this.____motion_shadow1af1_mat3DVec__[15] = 1;
            this.____motion_shadow1af1_matArray__.push(new Matrix3D(this.____motion_shadow1af1_mat3DVec__));
            this.__motion_shadow1af1.addPropertyArray("matrix3D",this.____motion_shadow1af1_matArray__);
            this.__animArray_shadow1af1.push(this.__motion_shadow1af1);
            this.__animFactory_shadow1af1 = new AnimatorFactory3D(null,this.__animArray_shadow1af1);
            this.__animFactory_shadow1af1.sceneName = "minigameBlastMC";
            true;
            true;
            this.__animFactory_shadow1af1.addTargetInfo(this,"shadow1",0,true,0,true,null,-1);
         }
         if(this.__animFactory_bread2af1 == null)
         {
            this.__animArray_bread2af1 = new Array();
            this.__motion_bread2af1 = new MotionBase();
            false;
            false;
            this.__motion_bread2af1.duration = 1;
            this.__motion_bread2af1.overrideTargetTransform();
            this.__motion_bread2af1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion_bread2af1.addPropertyArray("blendMode",["normal"]);
            this.__motion_bread2af1.initFilters(["flash.filters.GlowFilter"],[0],0,1);
            true;
            true;
            this.__motion_bread2af1.addFilterPropertyArray(0,"alpha",[1],0,1);
            this.__motion_bread2af1.addFilterPropertyArray(0,"knockout",[false],0,1);
            false;
            false;
            this.__motion_bread2af1.addFilterPropertyArray(0,"strength",[4],0,1);
            this.__motion_bread2af1.addFilterPropertyArray(0,"blurX",[2],0,1);
            true;
            true;
            this.__motion_bread2af1.addFilterPropertyArray(0,"blurY",[2],0,1);
            this.__motion_bread2af1.addFilterPropertyArray(0,"inner",[false],0,1);
            true;
            true;
            this.__motion_bread2af1.addFilterPropertyArray(0,"color",[5126173],0,1);
            true;
            true;
            this.__motion_bread2af1.addFilterPropertyArray(0,"quality",[1],0,1);
            false;
            false;
            this.__motion_bread2af1.is3D = true;
            this.__motion_bread2af1.motion_internal::spanStart = 0;
            this.____motion_bread2af1_matArray__ = new Array();
            true;
            true;
            this.____motion_bread2af1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion_bread2af1_mat3DVec__[0] = 1;
            this.____motion_bread2af1_mat3DVec__[1] = 0;
            this.____motion_bread2af1_mat3DVec__[2] = 0;
            this.____motion_bread2af1_mat3DVec__[3] = 0;
            false;
            false;
            this.____motion_bread2af1_mat3DVec__[4] = 0;
            this.____motion_bread2af1_mat3DVec__[5] = 0;
            this.____motion_bread2af1_mat3DVec__[6] = -1;
            this.____motion_bread2af1_mat3DVec__[7] = 0;
            true;
            true;
            this.____motion_bread2af1_mat3DVec__[8] = 0;
            this.____motion_bread2af1_mat3DVec__[9] = 1;
            this.____motion_bread2af1_mat3DVec__[10] = 0;
            true;
            true;
            this.____motion_bread2af1_mat3DVec__[11] = 0;
            this.____motion_bread2af1_mat3DVec__[12] = 685;
            this.____motion_bread2af1_mat3DVec__[13] = 421.000061;
            this.____motion_bread2af1_mat3DVec__[14] = 42.200012;
            this.____motion_bread2af1_mat3DVec__[15] = 1;
            false;
            false;
            this.____motion_bread2af1_matArray__.push(new Matrix3D(this.____motion_bread2af1_mat3DVec__));
            false;
            false;
            this.__motion_bread2af1.addPropertyArray("matrix3D",this.____motion_bread2af1_matArray__);
            true;
            true;
            this.__animArray_bread2af1.push(this.__motion_bread2af1);
            this.__animFactory_bread2af1 = new AnimatorFactory3D(null,this.__animArray_bread2af1);
            true;
            true;
            this.__animFactory_bread2af1.sceneName = "minigameBlastMC";
            this.__animFactory_bread2af1.addTargetInfo(this,"bread2",0,true,0,true,null,-1);
         }
         true;
         true;
         if(this.__animFactory_bread1af1 == null)
         {
            this.__animArray_bread1af1 = new Array();
            this.__motion_bread1af1 = new MotionBase();
            true;
            true;
            this.__motion_bread1af1.duration = 1;
            this.__motion_bread1af1.overrideTargetTransform();
            this.__motion_bread1af1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion_bread1af1.addPropertyArray("blendMode",["normal"]);
            false;
            false;
            this.__motion_bread1af1.initFilters(["flash.filters.GlowFilter"],[0],0,1);
            false;
            false;
            false;
            false;
            this.__motion_bread1af1.addFilterPropertyArray(0,"alpha",[1],0,1);
            this.__motion_bread1af1.addFilterPropertyArray(0,"knockout",[false],0,1);
            this.__motion_bread1af1.addFilterPropertyArray(0,"strength",[4],0,1);
            false;
            false;
            false;
            false;
            this.__motion_bread1af1.addFilterPropertyArray(0,"blurX",[2],0,1);
            this.__motion_bread1af1.addFilterPropertyArray(0,"blurY",[2],0,1);
            false;
            false;
            this.__motion_bread1af1.addFilterPropertyArray(0,"inner",[false],0,1);
            false;
            false;
            this.__motion_bread1af1.addFilterPropertyArray(0,"color",[5126173],0,1);
            this.__motion_bread1af1.addFilterPropertyArray(0,"quality",[1],0,1);
            this.__motion_bread1af1.is3D = true;
            this.__motion_bread1af1.motion_internal::spanStart = 0;
            this.____motion_bread1af1_matArray__ = new Array();
            this.____motion_bread1af1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion_bread1af1_mat3DVec__[0] = 1;
            this.____motion_bread1af1_mat3DVec__[1] = 0;
            true;
            true;
            this.____motion_bread1af1_mat3DVec__[2] = 0;
            this.____motion_bread1af1_mat3DVec__[3] = 0;
            this.____motion_bread1af1_mat3DVec__[4] = 0;
            true;
            true;
            this.____motion_bread1af1_mat3DVec__[5] = 0;
            this.____motion_bread1af1_mat3DVec__[6] = -1;
            false;
            false;
            this.____motion_bread1af1_mat3DVec__[7] = 0;
            this.____motion_bread1af1_mat3DVec__[8] = 0;
            false;
            false;
            this.____motion_bread1af1_mat3DVec__[9] = 1;
            this.____motion_bread1af1_mat3DVec__[10] = 0;
            this.____motion_bread1af1_mat3DVec__[11] = 0;
            this.____motion_bread1af1_mat3DVec__[12] = -141.949997;
            this.____motion_bread1af1_mat3DVec__[13] = 420.450043;
            this.____motion_bread1af1_mat3DVec__[14] = 42.200012;
            this.____motion_bread1af1_mat3DVec__[15] = 1;
            this.____motion_bread1af1_matArray__.push(new Matrix3D(this.____motion_bread1af1_mat3DVec__));
            this.__motion_bread1af1.addPropertyArray("matrix3D",this.____motion_bread1af1_matArray__);
            this.__animArray_bread1af1.push(this.__motion_bread1af1);
            true;
            true;
            this.__animFactory_bread1af1 = new AnimatorFactory3D(null,this.__animArray_bread1af1);
            false;
            false;
            this.__animFactory_bread1af1.sceneName = "minigameBlastMC";
            this.__animFactory_bread1af1.addTargetInfo(this,"bread1",0,true,0,true,null,-1);
         }
      }
   }
}
