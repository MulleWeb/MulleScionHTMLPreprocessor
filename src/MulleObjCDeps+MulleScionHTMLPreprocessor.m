#import "import.h"

#ifdef __MULLE_OBJC__

@implementation MulleObjCDeps( MulleScionHTMLPreprocessor)

+ (struct _mulle_objc_dependency *) dependencies
{
   static struct _mulle_objc_dependency   dependencies[] =
   {
#include "objc-deps.inc"

      { MULLE_OBJC_NO_CLASSID, MULLE_OBJC_NO_CATEGORYID }
   };

   return( dependencies);
}

@end

#endif

