
library app_deploy_to_cloud;

import "dart:io";
import "dart:async";
import "package:stream/stream.dart";
import 'model.dart' ;

part '../web/rsp/myView.rsp.dart';


class MyServer{
  
  String host;
  int port;
  
  MyServer(this.host,this.port);
  
  MyServer.forHeroku(){
    host ="0.0.0.0";
    port = int.parse(Platform.environment['PORT']);
  }
  
  void start(){
    new StreamServer(
        uriMapping: {
          "/*": myViewController
        }
    ).start(address:host, port:port);
  }

  Future myViewController(HttpConnect connect) {
    return myView(connect, blogLink: new BlogLink("gereinhartasdartisan.blogspot.fr","2014/01/dart-automatic-deployment-in-cloud.html"));
  }
  
}
