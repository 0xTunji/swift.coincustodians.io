import Foundation
import Publish
import Plot

typealias Link = (name: String, url: String)
typealias AppStoreLink = String

// This type acts as the configuration for your website.
struct CoinLandingPage: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case index
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://app-landingpage-demo.netlify.com")!
    var name = "Coin Custodians"
    var description = "Leading lifestyle provide to crypto currency adoption and support. Coin Custodians embodies empowerment in the cryptomarket. Our Company focus is to give agency to those who want to participate in the crypto space as an individual. We want to service and support customers through the upcoming bear market. Targeting people who want fiat cutrrency conversion to crypto, at a moment's notice."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

extension Website {
    var appStoreLink: AppStoreLink? {
        nil //"https://itunes.apple.com/xyz"
    }

    var credits: Link {
        (" by S Tunji Turner + Sightuary Communications & Research", "https://")
    }
    
    var footerLinks: [Link] {
        [(name: "Home", url: "/"),
        (name: "Support", url: "mailto:"),
        (name: "About", url: "/about")]
    }
}

// This will generate your website using the built-in Foundation theme:
try CoinLandingPage().publish(withTheme: .landingpage)

