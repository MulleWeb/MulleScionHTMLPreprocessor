//
//  MulleScionHTMLPreprocessor.h
//  MulleScion
//
//  Created by Nat! on 07.10.18.
//  Copyright © 2018 Mulle kybernetiK. All rights reserved.
//

#import "import.h"


#define MULLE_SCION_HTML_PREPROCESSOR_VERSION  ((0UL << 20) | (2 << 8) | 10)


@interface MulleScionHTMLPreprocessor : NSObject < MulleObjCThreadSafe>

- (NSData *) preprocessedData:(NSData *) data;

@end

#ifdef __has_include
# if __has_include( "_MulleScionHTMLPreprocessor-versioncheck.h")
#  include "_MulleScionHTMLPreprocessor-versioncheck.h"
# endif
#endif
