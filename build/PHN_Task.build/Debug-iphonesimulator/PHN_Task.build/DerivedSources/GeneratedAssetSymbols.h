#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"com.phntech.PHN-Task";

/// The "background" asset catalog color resource.
static NSString * const ACColorNameBackground AC_SWIFT_PRIVATE = @"background";

/// The "buttonBackground" asset catalog color resource.
static NSString * const ACColorNameButtonBackground AC_SWIFT_PRIVATE = @"buttonBackground";

/// The "buttonSecondaryBackground" asset catalog color resource.
static NSString * const ACColorNameButtonSecondaryBackground AC_SWIFT_PRIVATE = @"buttonSecondaryBackground";

/// The "buttonSecondaryTitle" asset catalog color resource.
static NSString * const ACColorNameButtonSecondaryTitle AC_SWIFT_PRIVATE = @"buttonSecondaryTitle";

/// The "buttonTitle" asset catalog color resource.
static NSString * const ACColorNameButtonTitle AC_SWIFT_PRIVATE = @"buttonTitle";

/// The "cellBackground" asset catalog color resource.
static NSString * const ACColorNameCellBackground AC_SWIFT_PRIVATE = @"cellBackground";

/// The "headerBackground" asset catalog color resource.
static NSString * const ACColorNameHeaderBackground AC_SWIFT_PRIVATE = @"headerBackground";

/// The "scaffold" asset catalog color resource.
static NSString * const ACColorNameScaffold AC_SWIFT_PRIVATE = @"scaffold";

/// The "shadowColor" asset catalog color resource.
static NSString * const ACColorNameShadowColor AC_SWIFT_PRIVATE = @"shadowColor";

/// The "shadowColor 1" asset catalog color resource.
static NSString * const ACColorNameShadowColor1 AC_SWIFT_PRIVATE = @"shadowColor 1";

/// The "shadowColor 2" asset catalog color resource.
static NSString * const ACColorNameShadowColor2 AC_SWIFT_PRIVATE = @"shadowColor 2";

/// The "O1LUkwy" asset catalog image resource.
static NSString * const ACImageNameO1LUkwy AC_SWIFT_PRIVATE = @"O1LUkwy";

/// The "logout" asset catalog image resource.
static NSString * const ACImageNameLogout AC_SWIFT_PRIVATE = @"logout";

/// The "noImage" asset catalog image resource.
static NSString * const ACImageNameNoImage AC_SWIFT_PRIVATE = @"noImage";

#undef AC_SWIFT_PRIVATE