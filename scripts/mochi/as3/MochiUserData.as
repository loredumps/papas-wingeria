package mochi.as3
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.ObjectEncoding;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   
   public class MochiUserData extends EventDispatcher
   {
       
      
      public var _loader:URLLoader;
      
      public var key:String = null;
      
      public var data:* = null;
      
      public var error:Event = null;
      
      public var operation:String = null;
      
      public var callback:Function = null;
      
      public function MochiUserData(param1:String = "", param2:Function = null)
      {
         true;
         true;
         super();
         this.key = param1;
         this.callback = param2;
      }
      
      public static function method_6(param1:String, param2:Function) : void
      {
         false;
         true;
         var _loc3_:MochiUserData = new MochiUserData(param1,param2);
         _loc3_.getEvent();
      }
      
      public static function put(param1:String, param2:*, param3:Function) : void
      {
         var _loc4_:MochiUserData;
         (_loc4_ = new MochiUserData(param1,param3)).putEvent(param2);
      }
      
      public function serialize(param1:*) : ByteArray
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.objectEncoding = ObjectEncoding.AMF3;
         _loc2_.writeObject(param1);
         true;
         true;
         _loc2_.compress();
         return _loc2_;
      }
      
      public function deserialize(param1:ByteArray) : *
      {
         false;
         true;
         param1.objectEncoding = ObjectEncoding.AMF3;
         true;
         true;
         param1.uncompress();
         return param1.readObject();
      }
      
      public function request(param1:String, param2:ByteArray) : void
      {
         var _operation:String;
         var _data:ByteArray;
         var api_url:String;
         var api_token:String;
         var args:URLVariables;
         var req:URLRequest;
         false;
         true;
         true;
         true;
         true;
         true;
         _operation = param1;
         _data = param2;
         this.operation = _operation;
         api_url = MochiSocial.getAPIURL();
         true;
         true;
         false;
         false;
         api_token = MochiSocial.getAPIToken();
         true;
         true;
         true;
         true;
         if(api_url == null || api_token == null)
         {
            false;
            false;
            this.errorHandler(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"not logged in"));
            return;
         }
         this._loader = new URLLoader();
         args = new URLVariables();
         args.op = _operation;
         true;
         true;
         args.key = this.key;
         false;
         false;
         req = new URLRequest(MochiSocial.getAPIURL() + "/" + "MochiUserData?" + args.toString());
         true;
         true;
         req.method = URLRequestMethod.POST;
         req.contentType = "application/x-mochi-userdata";
         false;
         false;
         req.requestHeaders = [new URLRequestHeader("x-mochi-services-version",MochiServices.getVersion()),new URLRequestHeader("x-mochi-api-token",api_token)];
         req.data = _data;
         this._loader.dataFormat = URLLoaderDataFormat.BINARY;
         this._loader.addEventListener(Event.COMPLETE,this.completeHandler);
         this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
         this._loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
         try
         {
            this._loader.load(req);
         }
         catch(e:SecurityError)
         {
            errorHandler(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"security error: " + e.toString()));
         }
      }
      
      public function completeHandler(param1:Event) : void
      {
         var event:Event;
         false;
         true;
         event = param1;
         try
         {
            if(this._loader.data.length)
            {
               this.data = this.deserialize(this._loader.data);
               false;
               false;
            }
            else
            {
               this.data = null;
            }
         }
         catch(e:Error)
         {
            errorHandler(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"deserialize error: " + e.toString()));
            return;
         }
         if(this.callback != null)
         {
            this.performCallback();
         }
         else
         {
            dispatchEvent(event);
         }
         this.close();
      }
      
      public function errorHandler(param1:IOErrorEvent) : void
      {
         this.data = null;
         this.error = param1;
         if(this.callback != null)
         {
            true;
            true;
            this.performCallback();
         }
         else
         {
            dispatchEvent(param1);
            false;
            false;
         }
         this.close();
      }
      
      public function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         this.errorHandler(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"security error: " + param1.toString()));
      }
      
      public function performCallback() : void
      {
         try
         {
            this.callback(this);
         }
         catch(e:Error)
         {
            trace("[MochiUserData] exception during callback: " + e);
         }
      }
      
      public function close() : void
      {
         if(this._loader)
         {
            this._loader.removeEventListener(Event.COMPLETE,this.completeHandler);
            this._loader.removeEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
            this._loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
            this._loader.close();
            this._loader = null;
         }
         this.error = null;
         this.callback = null;
      }
      
      public function getEvent() : void
      {
         true;
         true;
         this.request("get",this.serialize(null));
      }
      
      public function putEvent(param1:*) : void
      {
         false;
         false;
         this.request("put",this.serialize(param1));
      }
      
      override public function toString() : String
      {
         false;
         true;
         true;
         true;
         return "[MochiUserData operation=" + this.operation + " key=\"" + this.key + "\" data=" + this.data + " error=\"" + this.error + "\"]";
      }
   }
}
