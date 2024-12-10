# Server for Deeplinking

First, a simple nodejs project is created.
 
The .well-known folder is created.

assetlinks.json file is created.

```
[{
    "relation": ["delegate_permission/common.handle_all_urls"],
    "target": {
      "namespace": "android_app",
      "package_name": "com.suleymangunes.deeplinking_autorotue.deeplinking_autoroute",
      "sha256_cert_fingerprints":
      ["74:36:A7:11:4A:54:65:9F:F1:94:7C:91:93:80:17:A4:7D:53:F0:D8:3D:1C:7D:80:AE:7F:96:88:B7:45:5B:C9"]
    }
  }]

```
Information in the flutter application or android application is defined for package name and sha256 key.

Node JS application is published free of charge on [this site](https://render.com/). 

If you want to try the Flutter application, you can check out [this repo](https://github.com/suleymangunes/deeplinking-auto_route/tree/main).
