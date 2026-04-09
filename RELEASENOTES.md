## 0.3.0







feature: register MulleScionHTMLPreprocessor with Objective-C dependency loader

* add MulleObjCDeps category returning dependency entries for MulleScionHTMLPreprocessor
* include generated objc-deps.inc so the ObjC runtime/loader recognizes the MulleScionHTMLPreprocessor symbol
* remove obsolete src/reflect/objc-loader.inc
* clarify developer comment in `src/reflect/_MulleScionHTMLPreprocessor-import.h` ("toggle objc")
