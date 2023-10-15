import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

    /// The "background" asset catalog color resource.
    static let background = DeveloperToolsSupport.ColorResource(name: "background", bundle: resourceBundle)

    /// The "buttonBackground" asset catalog color resource.
    static let buttonBackground = DeveloperToolsSupport.ColorResource(name: "buttonBackground", bundle: resourceBundle)

    /// The "buttonSecondaryBackground" asset catalog color resource.
    static let buttonSecondaryBackground = DeveloperToolsSupport.ColorResource(name: "buttonSecondaryBackground", bundle: resourceBundle)

    /// The "buttonSecondaryTitle" asset catalog color resource.
    static let buttonSecondaryTitle = DeveloperToolsSupport.ColorResource(name: "buttonSecondaryTitle", bundle: resourceBundle)

    /// The "buttonTitle" asset catalog color resource.
    static let buttonTitle = DeveloperToolsSupport.ColorResource(name: "buttonTitle", bundle: resourceBundle)

    /// The "cellBackground" asset catalog color resource.
    static let cellBackground = DeveloperToolsSupport.ColorResource(name: "cellBackground", bundle: resourceBundle)

    /// The "headerBackground" asset catalog color resource.
    static let headerBackground = DeveloperToolsSupport.ColorResource(name: "headerBackground", bundle: resourceBundle)

    /// The "scaffold" asset catalog color resource.
    static let scaffold = DeveloperToolsSupport.ColorResource(name: "scaffold", bundle: resourceBundle)

    /// The "shadowColor" asset catalog color resource.
    static let shadow = DeveloperToolsSupport.ColorResource(name: "shadowColor", bundle: resourceBundle)

    /// The "shadowColor 1" asset catalog color resource.
    static let shadowColor1 = DeveloperToolsSupport.ColorResource(name: "shadowColor 1", bundle: resourceBundle)

    /// The "shadowColor 2" asset catalog color resource.
    static let shadowColor2 = DeveloperToolsSupport.ColorResource(name: "shadowColor 2", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "O1LUkwy" asset catalog image resource.
    static let o1LUkwy = DeveloperToolsSupport.ImageResource(name: "O1LUkwy", bundle: resourceBundle)

    /// The "logout" asset catalog image resource.
    static let logout = DeveloperToolsSupport.ImageResource(name: "logout", bundle: resourceBundle)

    /// The "noImage" asset catalog image resource.
    static let no = DeveloperToolsSupport.ImageResource(name: "noImage", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "background" asset catalog color.
    static var background: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .background)
#else
        .init()
#endif
    }

    /// The "buttonBackground" asset catalog color.
    static var buttonBackground: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .buttonBackground)
#else
        .init()
#endif
    }

    /// The "buttonSecondaryBackground" asset catalog color.
    static var buttonSecondaryBackground: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .buttonSecondaryBackground)
#else
        .init()
#endif
    }

    /// The "buttonSecondaryTitle" asset catalog color.
    static var buttonSecondaryTitle: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .buttonSecondaryTitle)
#else
        .init()
#endif
    }

    /// The "buttonTitle" asset catalog color.
    static var buttonTitle: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .buttonTitle)
#else
        .init()
#endif
    }

    /// The "cellBackground" asset catalog color.
    static var cellBackground: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cellBackground)
#else
        .init()
#endif
    }

    /// The "headerBackground" asset catalog color.
    static var headerBackground: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .headerBackground)
#else
        .init()
#endif
    }

    /// The "scaffold" asset catalog color.
    static var scaffold: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .scaffold)
#else
        .init()
#endif
    }

    /// The "shadowColor" asset catalog color.
    static var shadow: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shadow)
#else
        .init()
#endif
    }

    /// The "shadowColor 1" asset catalog color.
    static var shadowColor1: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shadowColor1)
#else
        .init()
#endif
    }

    /// The "shadowColor 2" asset catalog color.
    static var shadowColor2: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shadowColor2)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "background" asset catalog color.
    static var background: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .background)
#else
        .init()
#endif
    }

    /// The "buttonBackground" asset catalog color.
    static var buttonBackground: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .buttonBackground)
#else
        .init()
#endif
    }

    /// The "buttonSecondaryBackground" asset catalog color.
    static var buttonSecondaryBackground: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .buttonSecondaryBackground)
#else
        .init()
#endif
    }

    /// The "buttonSecondaryTitle" asset catalog color.
    static var buttonSecondaryTitle: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .buttonSecondaryTitle)
#else
        .init()
#endif
    }

    /// The "buttonTitle" asset catalog color.
    static var buttonTitle: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .buttonTitle)
#else
        .init()
#endif
    }

    /// The "cellBackground" asset catalog color.
    static var cellBackground: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .cellBackground)
#else
        .init()
#endif
    }

    /// The "headerBackground" asset catalog color.
    static var headerBackground: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .headerBackground)
#else
        .init()
#endif
    }

    /// The "scaffold" asset catalog color.
    static var scaffold: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .scaffold)
#else
        .init()
#endif
    }

    /// The "shadowColor" asset catalog color.
    static var shadow: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .shadow)
#else
        .init()
#endif
    }

    /// The "shadowColor 1" asset catalog color.
    static var shadowColor1: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .shadowColor1)
#else
        .init()
#endif
    }

    /// The "shadowColor 2" asset catalog color.
    static var shadowColor2: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .shadowColor2)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "background" asset catalog color.
    static var background: SwiftUI.Color { .init(.background) }

    /// The "buttonBackground" asset catalog color.
    static var buttonBackground: SwiftUI.Color { .init(.buttonBackground) }

    /// The "buttonSecondaryBackground" asset catalog color.
    static var buttonSecondaryBackground: SwiftUI.Color { .init(.buttonSecondaryBackground) }

    /// The "buttonSecondaryTitle" asset catalog color.
    static var buttonSecondaryTitle: SwiftUI.Color { .init(.buttonSecondaryTitle) }

    /// The "buttonTitle" asset catalog color.
    static var buttonTitle: SwiftUI.Color { .init(.buttonTitle) }

    /// The "cellBackground" asset catalog color.
    static var cellBackground: SwiftUI.Color { .init(.cellBackground) }

    /// The "headerBackground" asset catalog color.
    static var headerBackground: SwiftUI.Color { .init(.headerBackground) }

    /// The "scaffold" asset catalog color.
    static var scaffold: SwiftUI.Color { .init(.scaffold) }

    /// The "shadowColor" asset catalog color.
    static var shadow: SwiftUI.Color { .init(.shadow) }

    /// The "shadowColor 1" asset catalog color.
    static var shadowColor1: SwiftUI.Color { .init(.shadowColor1) }

    /// The "shadowColor 2" asset catalog color.
    static var shadowColor2: SwiftUI.Color { .init(.shadowColor2) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "background" asset catalog color.
    static var background: SwiftUI.Color { .init(.background) }

    /// The "buttonBackground" asset catalog color.
    static var buttonBackground: SwiftUI.Color { .init(.buttonBackground) }

    /// The "buttonSecondaryBackground" asset catalog color.
    static var buttonSecondaryBackground: SwiftUI.Color { .init(.buttonSecondaryBackground) }

    /// The "buttonSecondaryTitle" asset catalog color.
    static var buttonSecondaryTitle: SwiftUI.Color { .init(.buttonSecondaryTitle) }

    /// The "buttonTitle" asset catalog color.
    static var buttonTitle: SwiftUI.Color { .init(.buttonTitle) }

    /// The "cellBackground" asset catalog color.
    static var cellBackground: SwiftUI.Color { .init(.cellBackground) }

    /// The "headerBackground" asset catalog color.
    static var headerBackground: SwiftUI.Color { .init(.headerBackground) }

    /// The "scaffold" asset catalog color.
    static var scaffold: SwiftUI.Color { .init(.scaffold) }

    /// The "shadowColor" asset catalog color.
    static var shadow: SwiftUI.Color { .init(.shadow) }

    /// The "shadowColor 1" asset catalog color.
    static var shadowColor1: SwiftUI.Color { .init(.shadowColor1) }

    /// The "shadowColor 2" asset catalog color.
    static var shadowColor2: SwiftUI.Color { .init(.shadowColor2) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "O1LUkwy" asset catalog image.
    static var o1LUkwy: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .o1LUkwy)
#else
        .init()
#endif
    }

    /// The "logout" asset catalog image.
    static var logout: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .logout)
#else
        .init()
#endif
    }

    /// The "noImage" asset catalog image.
    static var no: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .no)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "O1LUkwy" asset catalog image.
    static var o1LUkwy: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .o1LUkwy)
#else
        .init()
#endif
    }

    /// The "logout" asset catalog image.
    static var logout: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .logout)
#else
        .init()
#endif
    }

    /// The "noImage" asset catalog image.
    static var no: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .no)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

