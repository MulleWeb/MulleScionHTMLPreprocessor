#ifdef __MULLE_OBJC__
# import <MulleScionHTMLPreprocessor/MulleScionHTMLPreprocessor.h>
# include <mulle-testallocator/mulle-testallocator.h>
#else
# import <Foundation/Foundation.h>
#endif
#include <stdio.h>
#include <stdlib.h>
#if defined(__unix__) || defined(__unix) || (defined(__APPLE__) && defined(__MACH__))
# include <unistd.h>
#endif


//
// noleak checks for alloc/dealloc/finalize
// and also load/unload initialize/deinitialize
// if the test environment sets MULLE_OBJC_PEDANTIC_EXIT
//
static void   test_noleak( void)
{
   MulleScionHTMLPreprocessor  *obj;

   @autoreleasepool
   {
      obj = [[MulleScionHTMLPreprocessor new] autorelease];
      if( ! obj)
      {
         fprintf( stderr, "failed to allocate\n");
         _exit( 1);
      }
   }
}




int   main( int argc, char *argv[])
{
#ifdef __MULLE_OBJC__
   // check that no classes are "stuck"
   if( mulle_objc_global_check_universe( __MULLE_OBJC_UNIVERSENAME__) !=
         mulle_objc_universe_is_ok)
      _exit( 1);
#endif

   test_noleak();
   return( 0);
}
