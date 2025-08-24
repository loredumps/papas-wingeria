package minigames_fla
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
   
   [Embed(source="/_assets/assets.swf", symbol="minigames_fla.minigame_blast_flyingbread_60")]
   public dynamic class minigame_blast_flyingbread_60 extends MovieClip
   {
       
      
      public var top:MovieClip;
      
      public var bottom:MovieClip;
      
      public var __animFactory_topaf1:AnimatorFactory3D;
      
      public var __animArray_topaf1:Array;
      
      public var ____motion_topaf1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_topaf1_matArray__:Array;
      
      public var __motion_topaf1:MotionBase;
      
      public function minigame_blast_flyingbread_60()
      {
         false;
         true;
         super();
         true;
         true;
         if(this.__animFactory_topaf1 == null)
         {
            this.__animArray_topaf1 = new Array();
            this.__motion_topaf1 = new MotionBase();
            this.__motion_topaf1.duration = 1;
            this.__motion_topaf1.overrideTargetTransform();
            this.__motion_topaf1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion_topaf1.addPropertyArray("blendMode",["normal"]);
            this.__motion_topaf1.is3D = true;
            this.__motion_topaf1.motion_internal::spanStart = 0;
            this.____motion_topaf1_matArray__ = new Array();
            this.____motion_topaf1_mat3DVec__ = new Vector.<Number>(16);
            this.____motion_topaf1_mat3DVec__[0] = 1;
            this.____motion_topaf1_mat3DVec__[1] = 0;
            this.____motion_topaf1_mat3DVec__[2] = 0;
            this.____motion_topaf1_mat3DVec__[3] = 0;
            this.____motion_topaf1_mat3DVec__[4] = 0;
            false;
            false;
            this.____motion_topaf1_mat3DVec__[5] = 0.996195;
            this.____motion_topaf1_mat3DVec__[6] = -0.087156;
            this.____motion_topaf1_mat3DVec__[7] = 0;
            this.____motion_topaf1_mat3DVec__[8] = 0;
            this.____motion_topaf1_mat3DVec__[9] = 0.087156;
            this.____motion_topaf1_mat3DVec__[10] = 0.996195;
            this.____motion_topaf1_mat3DVec__[11] = 0;
            true;
            true;
            this.____motion_topaf1_mat3DVec__[12] = 0;
            this.____motion_topaf1_mat3DVec__[13] = -0.228311;
            false;
            false;
            this.____motion_topaf1_mat3DVec__[14] = -5.229345;
            this.____motion_topaf1_mat3DVec__[15] = 1;
            this.____motion_topaf1_matArray__.push(new Matrix3D(this.____motion_topaf1_mat3DVec__));
            this.__motion_topaf1.addPropertyArray("matrix3D",this.____motion_topaf1_matArray__);
            this.__animArray_topaf1.push(this.__motion_topaf1);
            this.__animFactory_topaf1 = new AnimatorFactory3D(null,this.__animArray_topaf1);
            this.__animFactory_topaf1.sceneName = "minigame_blast_flyingbread";
            true;
            true;
            this.__animFactory_topaf1.addTargetInfo(this,"top",0,true,0,true,null,-1);
         }
      }
   }
}
