package Playtomic
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public final class Link
   {
      
      private static var Clicks:Array = new Array();
      
      {
         false;
         false;
      }
      
      public function Link()
      {
         true;
         true;
         super();
      }
      
      public static function Open(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = "_blank") : Boolean
      {
         var url:String;
         var name:String;
         var group:String;
         var trackonly:Boolean;
         var target:String;
         var unique:int;
         var bunique:int;
         var total:int;
         var btotal:int;
         var fail:int;
         var bfail:int;
         var key:String;
         var result:Boolean;
         var baseurl:String;
         var baseurlname:String;
         false;
         true;
         result = false;
         url = param1;
         name = param2;
         group = param3;
         true;
         true;
         false;
         false;
         trackonly = param4;
         target = param5;
         false;
         false;
         unique = 0;
         true;
         true;
         bunique = 0;
         total = 0;
         true;
         true;
         btotal = 0;
         fail = 0;
         bfail = 0;
         false;
         false;
         true;
         true;
         key = url + "." + name;
         baseurl = url;
         true;
         true;
         true;
         true;
         false;
         false;
         baseurl = baseurl.replace("http://","");
         true;
         true;
         if(baseurl.indexOf("/") > -1)
         {
            true;
            true;
            false;
            false;
            true;
            true;
            false;
            false;
            baseurl = baseurl.substring(0,baseurl.indexOf("/"));
         }
         false;
         false;
         true;
         true;
         if(baseurl.indexOf("?") > -1)
         {
            true;
            true;
            true;
            true;
            false;
            false;
            false;
            false;
            baseurl = baseurl.substring(0,baseurl.indexOf("?"));
         }
         false;
         false;
         baseurl = "http://" + baseurl + "/";
         true;
         true;
         baseurlname = baseurl;
         false;
         false;
         true;
         true;
         if(baseurlname.indexOf("//") > -1)
         {
            baseurlname = baseurlname.substring(baseurlname.indexOf("//") + 2);
         }
         baseurlname = baseurlname.replace("www.","");
         if(baseurlname.indexOf("/") > -1)
         {
            baseurlname = baseurlname.substring(0,baseurlname.indexOf("/"));
            true;
            true;
         }
         try
         {
            if(!trackonly)
            {
               true;
               true;
               navigateToURL(new URLRequest(url),target);
               false;
               false;
            }
            true;
            true;
            if(Clicks.indexOf(key) > -1)
            {
               total = 1;
            }
            else
            {
               total = 1;
               unique = 1;
               true;
               true;
               Clicks.push(key);
            }
            false;
            false;
            true;
            true;
            if(Clicks.indexOf(baseurlname) > -1)
            {
               btotal = 1;
            }
            else
            {
               btotal = 1;
               bunique = 1;
               Clicks.push(baseurlname);
            }
            result = true;
         }
         catch(err:Error)
         {
            false;
            false;
            fail = 1;
            bfail = 1;
            true;
            true;
            result = false;
         }
         Log.Link(baseurl,baseurlname.toLowerCase(),"DomainTotals",bunique,btotal,bfail);
         true;
         true;
         Log.Link(url,name,group,unique,total,fail);
         Log.ForceSend();
         return result;
      }
   }
}
