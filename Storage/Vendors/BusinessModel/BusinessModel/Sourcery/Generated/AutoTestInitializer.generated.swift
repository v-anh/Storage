// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT





import XCTest
@testable import BusinessModel

class TestInitializer: XCTestCase {


    func testAddress() {
            let testObject_ = Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )

            XCTAssertEqual(testObject_.addressId,"addressId")
            XCTAssertEqual(testObject_.createAt,"createAt")
            XCTAssertEqual(testObject_.firstAddress,"firstAddress")
            XCTAssertEqual(testObject_.firstName,"firstName")
            XCTAssertEqual(testObject_.isDefaultBilling,true)
            XCTAssertEqual(testObject_.isDefaultShipping,true)
            XCTAssertEqual(testObject_.lastName,"lastName")
            XCTAssertEqual(testObject_.phone,"phone")
            XCTAssertEqual(testObject_.postcode,"postcode")
            XCTAssertEqual(testObject_.secondAddress,"secondAddress")
            XCTAssertEqual(testObject_.updateAt,"updateAt")
            XCTAssertEqual(testObject_.cellPhone,"cellPhone")
            XCTAssertEqual(testObject_.city,"city")
            XCTAssertEqual(testObject_.cityIndex,"cityIndex")
            XCTAssertEqual(testObject_.region,"region")
            XCTAssertEqual(testObject_.regionIndex,"regionIndex")
            XCTAssertEqual(testObject_.addressThirdLevel,"addressThirdLevel")
            XCTAssertEqual(testObject_.landMark,"landMark")
    }
    func testAddressList() {
    func make_shipping_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let shipping_Address = make_shipping_Address()

    func make_billing_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let billing_Address = make_billing_Address()

    func make_fastlane_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let fastlane_Address = make_fastlane_Address()

    func make_other_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let other_Address = make_other_Address()

            let testObject_ = AddressList(
            shipping:  shipping_Address, 
            billing:  billing_Address, 
            fastlane: [fastlane_Address], 
            other: [other_Address]
        )

            XCTAssertEqual(testObject_.shipping, shipping_Address)
            XCTAssertEqual(testObject_.billing, billing_Address)
            XCTAssertEqual(testObject_.fastlane,[fastlane_Address])
            XCTAssertEqual(testObject_.other,[other_Address])
    }
    func testAddressOption() {
            let testObject_ = AddressOption(
            label: "label", 
            value: "value"
        )

            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.value,"value")
    }
    func testAddressOptionList() {
    func make_options_AddressOption() -> AddressOption {
        return AddressOption(
            label: "label", 
            value: "value"
        )
    }
        let options_AddressOption = make_options_AddressOption()

            let testObject_ = AddressOptionList(
            options: [options_AddressOption]
        )

            XCTAssertEqual(testObject_.options,[options_AddressOption])
    }
    func testBanner() {
            let testObject_ = Banner(
            imageURL: "imageURL", 
            linkURL: "linkURL", 
            adID: "adID"
        )

            XCTAssertEqual(testObject_.imageURL,"imageURL")
            XCTAssertEqual(testObject_.linkURL,"linkURL")
            XCTAssertEqual(testObject_.adID,"adID")
    }
    func testBrand() {
            let testObject_ = Brand(
            brandId: "brandId", 
            image: "image", 
            keywords: "keywords", 
            name: "name"
        )

            XCTAssertEqual(testObject_.brandId,"brandId")
            XCTAssertEqual(testObject_.image,"image")
            XCTAssertEqual(testObject_.keywords,"keywords")
            XCTAssertEqual(testObject_.name,"name")
    }
    func testBrandList() {
    func make_brands_Brand() -> Brand {
        return Brand(
            brandId: "brandId", 
            image: "image", 
            keywords: "keywords", 
            name: "name"
        )
    }
        let brands_Brand = make_brands_Brand()

            let testObject_ = BrandList(
            brands: [brands_Brand]
        )

            XCTAssertEqual(testObject_.brands,[brands_Brand])
    }
    func testBrandSuggestion() {
            let testObject_ = BrandSuggestion(
            brandUrl: "brandUrl", 
            brandId: "brandId", 
            name: "name", 
            productCount: 1
        )

            XCTAssertEqual(testObject_.brandUrl,"brandUrl")
            XCTAssertEqual(testObject_.brandId,"brandId")
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.productCount,1)
    }
    func testCMSResponse() {
            let testObject_ = CMSResponse(
            text: "text", 
            data: "data"
        )

            XCTAssertEqual(testObject_.text,"text")
            XCTAssertEqual(testObject_.data,"data")
    }
    func testCampaignResponse() {
            let testObject_ = CampaignResponse(
            content: "content", 
            expiryTime: 1
        )

            XCTAssertEqual(testObject_.content,"content")
            XCTAssertEqual(testObject_.expiryTime,1)
    }
    func testCart() {
            let testObject_ = Cart(
            name: "name"
        )

            XCTAssertEqual(testObject_.name,"name")
    }
    func testCatalogAds() {
    func make_catalogConfig_CatalogPositionConfig() -> CatalogPositionConfig {
                let positions_Int = 1
        return CatalogPositionConfig(
            columns: 1, 
            positions: [positions_Int]
        )
    }
        let catalogConfig_CatalogPositionConfig = make_catalogConfig_CatalogPositionConfig()

    func make_sponsoredProducts_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let sponsoredProducts_Product = make_sponsoredProducts_Product()

    func make_catalogBanner_Banner() -> Banner {
        return Banner(
            imageURL: "imageURL", 
            linkURL: "linkURL", 
            adID: "adID"
        )
    }
        let catalogBanner_Banner = make_catalogBanner_Banner()

    func make_bannerTiles_Banner() -> Banner {
        return Banner(
            imageURL: "imageURL", 
            linkURL: "linkURL", 
            adID: "adID"
        )
    }
        let bannerTiles_Banner = make_bannerTiles_Banner()

            let testObject_ = CatalogAds(
            catalogConfig:  catalogConfig_CatalogPositionConfig, 
            sponsoredProducts: [sponsoredProducts_Product], 
            catalogBanner:  catalogBanner_Banner, 
            bannerTiles: [bannerTiles_Banner]
        )

            XCTAssertEqual(testObject_.catalogConfig, catalogConfig_CatalogPositionConfig)
            XCTAssertEqual(testObject_.sponsoredProducts,[sponsoredProducts_Product])
            XCTAssertEqual(testObject_.catalogBanner, catalogBanner_Banner)
            XCTAssertEqual(testObject_.bannerTiles,[bannerTiles_Banner])
    }
    func testCatalogPositionConfig() {
                let positions_Int = 1
            let testObject_ = CatalogPositionConfig(
            columns: 1, 
            positions: [positions_Int]
        )

            XCTAssertEqual(testObject_.columns,1)
            XCTAssertEqual(testObject_.positions,[positions_Int])
    }
    func testCategoryList() {
    func make_categories_ProductCategory() -> ProductCategory {
        return ProductCategory(
            parent: "parent", 
            name: "name", 
            segments: "segments", 
            categoryId: "categoryId", 
            subTitle: "subTitle", 
            previewImageUrl: "previewImageUrl"
        )
    }
        let categories_ProductCategory = make_categories_ProductCategory()

            let testObject_ = CategoryList(
            categories: [categories_ProductCategory]
        )

            XCTAssertEqual(testObject_.categories,[categories_ProductCategory])
    }
    func testCategorySuggestion() {
            let testObject_ = CategorySuggestion(
            categoryUrl: "categoryUrl", 
            filteredBrandName: "filteredBrandName", 
            filteredBrandId: "filteredBrandId", 
            name: "name", 
            categoryId: "categoryId", 
            productCount: 1
        )

            XCTAssertEqual(testObject_.categoryUrl,"categoryUrl")
            XCTAssertEqual(testObject_.filteredBrandName,"filteredBrandName")
            XCTAssertEqual(testObject_.filteredBrandId,"filteredBrandId")
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.categoryId,"categoryId")
            XCTAssertEqual(testObject_.productCount,1)
    }
    func testColor() {
            let testObject_ = Color(
            color: "color", 
            hexValue: "hexValue", 
            imageUrl: "imageUrl"
        )

            XCTAssertEqual(testObject_.color,"color")
            XCTAssertEqual(testObject_.hexValue,"hexValue")
            XCTAssertEqual(testObject_.imageUrl,"imageUrl")
    }
    func testColorsList() {
    func make_colors_Color() -> Color {
        return Color(
            color: "color", 
            hexValue: "hexValue", 
            imageUrl: "imageUrl"
        )
    }
        let colors_Color = make_colors_Color()

            let testObject_ = ColorsList(
            md5: "md5", 
            colors: [colors_Color]
        )

            XCTAssertEqual(testObject_.md5,"md5")
            XCTAssertEqual(testObject_.colors,[colors_Color])
    }
    func testCorrectionHighlight() {
            let testObject_ = CorrectionHighlight(
            startIndex: 1, 
            length: 1, 
            term: "term"
        )

            XCTAssertEqual(testObject_.startIndex,1)
            XCTAssertEqual(testObject_.length,1)
            XCTAssertEqual(testObject_.term,"term")
    }
    func testCountriesList() {
    func make_countries_Country() -> Country {
    func make_languages_Language() -> Language {
        return Language(
            name: "name", 
            iso: "iso", 
            flag: "flag", 
            code: "code", 
            isDefault: true, 
            display: true
        )
    }
        let languages_Language = make_languages_Language()

    func make_currency_Currency() -> Currency {
        return Currency(
            iso: "iso", 
            thousandSeparator: "thousandSeparator", 
            decimals: 1, 
            decimalsSeparator: "decimalsSeparator", 
            displayFormat: "displayFormat"
        )
    }
        let currency_Currency = make_currency_Currency()

    func make_shopCatalogs_ShopCatalog() -> ShopCatalog {
    func make_segments_SegmentList() -> SegmentList {
    func make_list_Segment() -> Segment {
        return Segment(
            label: "label", 
            imageUrl: "imageUrl", 
            key: "key", 
            shopGenderLabel: "shopGenderLabel", 
            onSplashScreen: true
        )
    }
        let list_Segment = make_list_Segment()

        return SegmentList(
            md5: "md5", 
            list: [list_Segment]
        )
    }
        let segments_SegmentList = make_segments_SegmentList()

    func make_backgroundImageURL_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let backgroundImageURL_Image = make_backgroundImageURL_Image()

        return ShopCatalog(
            key: "key", 
            label: "label", 
            catalogDescription: "catalogDescription", 
            segments:  segments_SegmentList, 
            gaKey: "gaKey", 
            logo: "logo", 
            backgroundImageURL:  backgroundImageURL_Image, 
            logoURL: "logoURL"
        )
    }
        let shopCatalogs_ShopCatalog = make_shopCatalogs_ShopCatalog()

    func make_magazine_Magazine() -> Magazine {
    func make_backgroundURL_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let backgroundURL_Image = make_backgroundURL_Image()

        return Magazine(
            backgroundURL:  backgroundURL_Image, 
            key: "key", 
            label: "label", 
            magazineDescription: "magazineDescription", 
            logoURL: "logoURL"
        )
    }
        let magazine_Magazine = make_magazine_Magazine()

        return Country(
            ident: "ident", 
            descriptionName: "descriptionName", 
            flag: "flag", 
            apiUrl: "apiUrl", 
            iso2: "iso2", 
            checkoutUrl: "checkoutUrl", 
            languages: [languages_Language], 
            currency:  currency_Currency, 
            active: true, 
            shopCatalogs: [shopCatalogs_ShopCatalog], 
            magazine:  magazine_Magazine, 
            exchange_return_url: "exchange_return_url"
        )
    }
        let countries_Country = make_countries_Country()

            let testObject_ = CountriesList(
            md5: "md5", 
            countries: [countries_Country]
        )

            XCTAssertEqual(testObject_.md5,"md5")
            XCTAssertEqual(testObject_.countries,[countries_Country])
    }
    func testCountry() {
    func make_languages_Language() -> Language {
        return Language(
            name: "name", 
            iso: "iso", 
            flag: "flag", 
            code: "code", 
            isDefault: true, 
            display: true
        )
    }
        let languages_Language = make_languages_Language()

    func make_currency_Currency() -> Currency {
        return Currency(
            iso: "iso", 
            thousandSeparator: "thousandSeparator", 
            decimals: 1, 
            decimalsSeparator: "decimalsSeparator", 
            displayFormat: "displayFormat"
        )
    }
        let currency_Currency = make_currency_Currency()

    func make_shopCatalogs_ShopCatalog() -> ShopCatalog {
    func make_segments_SegmentList() -> SegmentList {
    func make_list_Segment() -> Segment {
        return Segment(
            label: "label", 
            imageUrl: "imageUrl", 
            key: "key", 
            shopGenderLabel: "shopGenderLabel", 
            onSplashScreen: true
        )
    }
        let list_Segment = make_list_Segment()

        return SegmentList(
            md5: "md5", 
            list: [list_Segment]
        )
    }
        let segments_SegmentList = make_segments_SegmentList()

    func make_backgroundImageURL_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let backgroundImageURL_Image = make_backgroundImageURL_Image()

        return ShopCatalog(
            key: "key", 
            label: "label", 
            catalogDescription: "catalogDescription", 
            segments:  segments_SegmentList, 
            gaKey: "gaKey", 
            logo: "logo", 
            backgroundImageURL:  backgroundImageURL_Image, 
            logoURL: "logoURL"
        )
    }
        let shopCatalogs_ShopCatalog = make_shopCatalogs_ShopCatalog()

    func make_magazine_Magazine() -> Magazine {
    func make_backgroundURL_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let backgroundURL_Image = make_backgroundURL_Image()

        return Magazine(
            backgroundURL:  backgroundURL_Image, 
            key: "key", 
            label: "label", 
            magazineDescription: "magazineDescription", 
            logoURL: "logoURL"
        )
    }
        let magazine_Magazine = make_magazine_Magazine()

            let testObject_ = Country(
            ident: "ident", 
            descriptionName: "descriptionName", 
            flag: "flag", 
            apiUrl: "apiUrl", 
            iso2: "iso2", 
            checkoutUrl: "checkoutUrl", 
            languages: [languages_Language], 
            currency:  currency_Currency, 
            active: true, 
            shopCatalogs: [shopCatalogs_ShopCatalog], 
            magazine:  magazine_Magazine, 
            exchange_return_url: "exchange_return_url"
        )

            XCTAssertEqual(testObject_.ident,"ident")
            XCTAssertEqual(testObject_.descriptionName,"descriptionName")
            XCTAssertEqual(testObject_.flag,"flag")
            XCTAssertEqual(testObject_.apiUrl,"apiUrl")
            XCTAssertEqual(testObject_.iso2,"iso2")
            XCTAssertEqual(testObject_.checkoutUrl,"checkoutUrl")
            XCTAssertEqual(testObject_.languages,[languages_Language])
            XCTAssertEqual(testObject_.currency, currency_Currency)
            XCTAssertEqual(testObject_.active,true)
            XCTAssertEqual(testObject_.shopCatalogs,[shopCatalogs_ShopCatalog])
            XCTAssertEqual(testObject_.magazine, magazine_Magazine)
            XCTAssertEqual(testObject_.exchange_return_url,"exchange_return_url")
    }
    func testCurrency() {
            let testObject_ = Currency(
            iso: "iso", 
            thousandSeparator: "thousandSeparator", 
            decimals: 1, 
            decimalsSeparator: "decimalsSeparator", 
            displayFormat: "displayFormat"
        )

            XCTAssertEqual(testObject_.iso,"iso")
            XCTAssertEqual(testObject_.thousandSeparator,"thousandSeparator")
            XCTAssertEqual(testObject_.decimals,1)
            XCTAssertEqual(testObject_.decimalsSeparator,"decimalsSeparator")
            XCTAssertEqual(testObject_.displayFormat,"displayFormat")
    }
    func testCustomer() {
    func make_wallet_Wallet() -> Wallet {
        return Wallet(
            credit: 1
        )
    }
        let wallet_Wallet = make_wallet_Wallet()

            let testObject_ = Customer(
            customerId: "customerId", 
            gender: "gender", 
            email: "email", 
            birthday: "birthday", 
            firstName: "firstName", 
            lastName: "lastName", 
            password: "password", 
            isNew: true, 
            createdAt: "createdAt", 
            updatedAt: "updatedAt", 
            zuid: "zuid", 
            wallet:  wallet_Wallet, 
            orderCount: 1, 
            isVIP: true
        )

            XCTAssertEqual(testObject_.customerId,"customerId")
            XCTAssertEqual(testObject_.gender,"gender")
            XCTAssertEqual(testObject_.email,"email")
            XCTAssertEqual(testObject_.birthday,"birthday")
            XCTAssertEqual(testObject_.firstName,"firstName")
            XCTAssertEqual(testObject_.lastName,"lastName")
            XCTAssertEqual(testObject_.password,"password")
            XCTAssertEqual(testObject_.isNew,true)
            XCTAssertEqual(testObject_.createdAt,"createdAt")
            XCTAssertEqual(testObject_.updatedAt,"updatedAt")
            XCTAssertEqual(testObject_.zuid,"zuid")
            XCTAssertEqual(testObject_.wallet, wallet_Wallet)
            XCTAssertEqual(testObject_.orderCount,1)
            XCTAssertEqual(testObject_.isVIP,true)
    }
    func testDeepLinkResponse() {
            let testObject_ = DeepLinkResponse(
            deeplink: "deeplink"
        )

            XCTAssertEqual(testObject_.deeplink,"deeplink")
    }
    func testDeliveryStatus() {
            let testObject_ = DeliveryStatus(
            date: "date", 
            label: "label"
        )

            XCTAssertEqual(testObject_.date,"date")
            XCTAssertEqual(testObject_.label,"label")
    }
    func testDeliveryStatusCategory() {
    func make_statuses_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let statuses_DeliveryStatus = make_statuses_DeliveryStatus()

            let testObject_ = DeliveryStatusCategory(
            label: "label", 
            activated: true, 
            statuses: [statuses_DeliveryStatus]
        )

            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.activated,true)
            XCTAssertEqual(testObject_.statuses,[statuses_DeliveryStatus])
    }
    func testExpressShippingEstimation() {
            let testObject_ = ExpressShippingEstimation(
            feeAmount: 1, 
            timeText: "timeText"
        )

            XCTAssertEqual(testObject_.feeAmount,1)
            XCTAssertEqual(testObject_.timeText,"timeText")
    }
    func testFacebookInvites() {
            let testObject_ = FacebookInvites(
            invitePreviewImageURL: "invitePreviewImageURL", 
            inviteAppLinkURL: "inviteAppLinkURL", 
            backgroundImagePhonePortrait: "backgroundImagePhonePortrait", 
            backgroundImagePadPortrait: "backgroundImagePadPortrait", 
            backgroundImagePadLandscape: "backgroundImagePadLandscape"
        )

            XCTAssertEqual(testObject_.invitePreviewImageURL,"invitePreviewImageURL")
            XCTAssertEqual(testObject_.inviteAppLinkURL,"inviteAppLinkURL")
            XCTAssertEqual(testObject_.backgroundImagePhonePortrait,"backgroundImagePhonePortrait")
            XCTAssertEqual(testObject_.backgroundImagePadPortrait,"backgroundImagePadPortrait")
            XCTAssertEqual(testObject_.backgroundImagePadLandscape,"backgroundImagePadLandscape")
    }
    func testFeed() {
    func make_posts_FeedPost() -> FeedPost {
    func make_body_PostBody() -> PostBody {
    func make_action_PostBodyAction() -> PostBodyAction {
        return PostBodyAction(
            label: "label", 
            deeplink: "deeplink"
        )
    }
        let action_PostBodyAction = make_action_PostBodyAction()

    func make_media_PostBodyMedia() -> PostBodyMedia {
        return PostBodyMedia(
            type: "type", 
            url: "url", 
            width: 1, 
            height: 1, 
            deeplink: "deeplink", 
            internalPromotionName: "internalPromotionName", 
            mediaDescription: "mediaDescription"
        )
    }
        let media_PostBodyMedia = make_media_PostBodyMedia()

        return PostBody(
            id: "id", 
            title: "title", 
            source: "source", 
            endpoint: "endpoint", 
            segment: "segment", 
            deeplink: "deeplink", 
            language: "language", 
            subtitle: "subtitle", 
            mainDescription: "mainDescription", 
            secondDescription: "secondDescription", 
            countdownTimerText: "countdownTimerText", 
            countdownTimerStart: "countdownTimerStart", 
            expiredAt: "expiredAt", 
            internalPromotionName: "internalPromotionName", 
            url: "url", 
            columns: 1, 
            autoScroll: true, 
            action:  action_PostBodyAction, 
            media: [media_PostBodyMedia]
        )
    }
        let body_PostBody = make_body_PostBody()

        return FeedPost(
            type: "type", 
            id: "id", 
            isPinned: true, 
            body:  body_PostBody
        )
    }
        let posts_FeedPost = make_posts_FeedPost()

    func make_paging_FeedCursorPagination() -> FeedCursorPagination {
        return FeedCursorPagination(
            nextPosts: "nextPosts", 
            previousPosts: "previousPosts"
        )
    }
        let paging_FeedCursorPagination = make_paging_FeedCursorPagination()

            let testObject_ = Feed(
            posts: [posts_FeedPost], 
            paging:  paging_FeedCursorPagination
        )

            XCTAssertEqual(testObject_.posts,[posts_FeedPost])
            XCTAssertEqual(testObject_.paging, paging_FeedCursorPagination)
    }
    func testFeedCursorPagination() {
            let testObject_ = FeedCursorPagination(
            nextPosts: "nextPosts", 
            previousPosts: "previousPosts"
        )

            XCTAssertEqual(testObject_.nextPosts,"nextPosts")
            XCTAssertEqual(testObject_.previousPosts,"previousPosts")
    }
    func testFeedPost() {
    func make_body_PostBody() -> PostBody {
    func make_action_PostBodyAction() -> PostBodyAction {
        return PostBodyAction(
            label: "label", 
            deeplink: "deeplink"
        )
    }
        let action_PostBodyAction = make_action_PostBodyAction()

    func make_media_PostBodyMedia() -> PostBodyMedia {
        return PostBodyMedia(
            type: "type", 
            url: "url", 
            width: 1, 
            height: 1, 
            deeplink: "deeplink", 
            internalPromotionName: "internalPromotionName", 
            mediaDescription: "mediaDescription"
        )
    }
        let media_PostBodyMedia = make_media_PostBodyMedia()

        return PostBody(
            id: "id", 
            title: "title", 
            source: "source", 
            endpoint: "endpoint", 
            segment: "segment", 
            deeplink: "deeplink", 
            language: "language", 
            subtitle: "subtitle", 
            mainDescription: "mainDescription", 
            secondDescription: "secondDescription", 
            countdownTimerText: "countdownTimerText", 
            countdownTimerStart: "countdownTimerStart", 
            expiredAt: "expiredAt", 
            internalPromotionName: "internalPromotionName", 
            url: "url", 
            columns: 1, 
            autoScroll: true, 
            action:  action_PostBodyAction, 
            media: [media_PostBodyMedia]
        )
    }
        let body_PostBody = make_body_PostBody()

            let testObject_ = FeedPost(
            type: "type", 
            id: "id", 
            isPinned: true, 
            body:  body_PostBody
        )

            XCTAssertEqual(testObject_.type,"type")
            XCTAssertEqual(testObject_.id,"id")
            XCTAssertEqual(testObject_.isPinned,true)
            XCTAssertEqual(testObject_.body, body_PostBody)
    }
    func testField() {
    func make_rules_Rule() -> Rule {
        return Rule(
            type: "type", 
            rule: "rule", 
            errorMessage: "errorMessage"
        )
    }
        let rules_Rule = make_rules_Rule()

                let dataset_String = "dataset"
    func make_fieldDependencies_FieldDependency() -> FieldDependency {
        return FieldDependency(
            fieldKey: "fieldKey", 
            dataSourceParameterName: "dataSourceParameterName"
        )
    }
        let fieldDependencies_FieldDependency = make_fieldDependencies_FieldDependency()

            let testObject_ = Field(
            key: "key", 
            type: "type", 
            label: "label", 
            value: "value", 
            hint: "hint", 
            keyboardType: "keyboardType", 
            rules: [rules_Rule], 
            dataset: [dataset_String], 
            datasetTranslation: [:], 
            addressDatasource: "addressDatasource", 
            fieldDependencies: [fieldDependencies_FieldDependency], 
            isCustomerPassword: true
        )

            XCTAssertEqual(testObject_.key,"key")
            XCTAssertEqual(testObject_.type,"type")
            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.value,"value")
            XCTAssertEqual(testObject_.hint,"hint")
            XCTAssertEqual(testObject_.keyboardType,"keyboardType")
            XCTAssertEqual(testObject_.rules,[rules_Rule])
            XCTAssertEqual(testObject_.dataset,[dataset_String])
            XCTAssertEqual(testObject_.datasetTranslation,[:])
            XCTAssertEqual(testObject_.addressDatasource,"addressDatasource")
            XCTAssertEqual(testObject_.fieldDependencies,[fieldDependencies_FieldDependency])
            XCTAssertEqual(testObject_.isCustomerPassword,true)
    }
    func testFieldDependency() {
            let testObject_ = FieldDependency(
            fieldKey: "fieldKey", 
            dataSourceParameterName: "dataSourceParameterName"
        )

            XCTAssertEqual(testObject_.fieldKey,"fieldKey")
            XCTAssertEqual(testObject_.dataSourceParameterName,"dataSourceParameterName")
    }
    func testFilter() {
    func make_options_FilterOption() -> FilterOption {
    func make_subOptions_FilterSubOption() -> FilterSubOption {
        return FilterSubOption(
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )
    }
        let subOptions_FilterSubOption = make_subOptions_FilterSubOption()

        return FilterOption(
            selected: true, 
            subOptions: [subOptions_FilterSubOption], 
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )
    }
        let options_FilterOption = make_options_FilterOption()

    func make_widget_FilterWidget() -> FilterWidget {
        return FilterWidget(
            type: "type", 
            minValue: 1, 
            maxValue: 1
        )
    }
        let widget_FilterWidget = make_widget_FilterWidget()

            let testObject_ = Filter(
            filterId: "filterId", 
            lable: "lable", 
            type: "type", 
            multi: true, 
            options: [options_FilterOption], 
            widget:  widget_FilterWidget, 
            uspCmsKey: "uspCmsKey", 
            group: .global
        )

            XCTAssertEqual(testObject_.filterId,"filterId")
            XCTAssertEqual(testObject_.lable,"lable")
            XCTAssertEqual(testObject_.type,"type")
            XCTAssertEqual(testObject_.multi,true)
            XCTAssertEqual(testObject_.options,[options_FilterOption])
            XCTAssertEqual(testObject_.widget, widget_FilterWidget)
            XCTAssertEqual(testObject_.uspCmsKey,"uspCmsKey")
            XCTAssertEqual(testObject_.group,.global)
    }
    func testFilterOption() {
    func make_subOptions_FilterSubOption() -> FilterSubOption {
        return FilterSubOption(
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )
    }
        let subOptions_FilterSubOption = make_subOptions_FilterSubOption()

            let testObject_ = FilterOption(
            selected: true, 
            subOptions: [subOptions_FilterSubOption], 
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )

            XCTAssertEqual(testObject_.selected,true)
            XCTAssertEqual(testObject_.subOptions,[subOptions_FilterSubOption])
            XCTAssertEqual(testObject_.lable,"lable")
            XCTAssertEqual(testObject_.value,"value")
            XCTAssertEqual(testObject_.resultsCount,1)
    }
    func testFilterSubOption() {
            let testObject_ = FilterSubOption(
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )

            XCTAssertEqual(testObject_.lable,"lable")
            XCTAssertEqual(testObject_.value,"value")
            XCTAssertEqual(testObject_.resultsCount,1)
    }
    func testFilterWidget() {
            let testObject_ = FilterWidget(
            type: "type", 
            minValue: 1, 
            maxValue: 1
        )

            XCTAssertEqual(testObject_.type,"type")
            XCTAssertEqual(testObject_.minValue,1)
            XCTAssertEqual(testObject_.maxValue,1)
    }
    func testFollowTheBrandBrand() {
            let testObject_ = FollowTheBrandBrand(
            brandAcquisitionManager: "brandAcquisitionManager", 
            brandId: "brandId", 
            brandTag: "brandTag", 
            brandTier: "brandTier", 
            country: "country", 
            name: "name", 
            nameEn: "nameEn", 
            status: "status", 
            updatedAt: "updatedAt", 
            urlKey: "urlKey"
        )

            XCTAssertEqual(testObject_.brandAcquisitionManager,"brandAcquisitionManager")
            XCTAssertEqual(testObject_.brandId,"brandId")
            XCTAssertEqual(testObject_.brandTag,"brandTag")
            XCTAssertEqual(testObject_.brandTier,"brandTier")
            XCTAssertEqual(testObject_.country,"country")
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.nameEn,"nameEn")
            XCTAssertEqual(testObject_.status,"status")
            XCTAssertEqual(testObject_.updatedAt,"updatedAt")
            XCTAssertEqual(testObject_.urlKey,"urlKey")
    }
    func testFollowTheBrandBrandList() {
    func make_brands_FollowTheBrandBrand() -> FollowTheBrandBrand {
        return FollowTheBrandBrand(
            brandAcquisitionManager: "brandAcquisitionManager", 
            brandId: "brandId", 
            brandTag: "brandTag", 
            brandTier: "brandTier", 
            country: "country", 
            name: "name", 
            nameEn: "nameEn", 
            status: "status", 
            updatedAt: "updatedAt", 
            urlKey: "urlKey"
        )
    }
        let brands_FollowTheBrandBrand = make_brands_FollowTheBrandBrand()

            let testObject_ = FollowTheBrandBrandList(
            brands: [brands_FollowTheBrandBrand], 
            nextPage: "nextPage", 
            previousPage: "previousPage"
        )

            XCTAssertEqual(testObject_.brands,[brands_FollowTheBrandBrand])
            XCTAssertEqual(testObject_.nextPage,"nextPage")
            XCTAssertEqual(testObject_.previousPage,"previousPage")
    }
    func testForm() {
    func make_fields_Field() -> Field {
    func make_rules_Rule() -> Rule {
        return Rule(
            type: "type", 
            rule: "rule", 
            errorMessage: "errorMessage"
        )
    }
        let rules_Rule = make_rules_Rule()

                let dataset_String = "dataset"
    func make_fieldDependencies_FieldDependency() -> FieldDependency {
        return FieldDependency(
            fieldKey: "fieldKey", 
            dataSourceParameterName: "dataSourceParameterName"
        )
    }
        let fieldDependencies_FieldDependency = make_fieldDependencies_FieldDependency()

        return Field(
            key: "key", 
            type: "type", 
            label: "label", 
            value: "value", 
            hint: "hint", 
            keyboardType: "keyboardType", 
            rules: [rules_Rule], 
            dataset: [dataset_String], 
            datasetTranslation: [:], 
            addressDatasource: "addressDatasource", 
            fieldDependencies: [fieldDependencies_FieldDependency], 
            isCustomerPassword: true
        )
    }
        let fields_Field = make_fields_Field()

            let testObject_ = Form(
            formId: "formId", 
            method: "method", 
            action: "action", 
            fields: [fields_Field]
        )

            XCTAssertEqual(testObject_.formId,"formId")
            XCTAssertEqual(testObject_.method,"method")
            XCTAssertEqual(testObject_.action,"action")
            XCTAssertEqual(testObject_.fields,[fields_Field])
    }
    func testGiftcardShipping() {
            let testObject_ = GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )

            XCTAssertEqual(testObject_.descriptionText,"descriptionText")
            XCTAssertEqual(testObject_.title,"title")
    }
    func testGroupedOrder() {
    func make_orderItemGroups_OrderItemGroup() -> OrderItemGroup {
    func make_orderItems_OrderItem() -> OrderItem {
    func make_deliveryStatusCategories_DeliveryStatusCategory() -> DeliveryStatusCategory {
    func make_statuses_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let statuses_DeliveryStatus = make_statuses_DeliveryStatus()

        return DeliveryStatusCategory(
            label: "label", 
            activated: true, 
            statuses: [statuses_DeliveryStatus]
        )
    }
        let deliveryStatusCategories_DeliveryStatusCategory = make_deliveryStatusCategories_DeliveryStatusCategory()

    func make_currentStatus_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let currentStatus_DeliveryStatus = make_currentStatus_DeliveryStatus()

        return OrderItem(
            orderItemId: "orderItemId", 
            brand: "brand", 
            configSku: "configSku", 
            simpleSku: "simpleSku", 
            quantity: 1, 
            name: "name", 
            unitPrice: 1, 
            image: "image", 
            size: "size", 
            deliveryStatusCategories: [deliveryStatusCategories_DeliveryStatusCategory], 
            selectedSizeSystem: "selectedSizeSystem", 
            currentStatus:  currentStatus_DeliveryStatus, 
            isCancelled: true
        )
    }
        let orderItems_OrderItem = make_orderItems_OrderItem()

        return OrderItemGroup(
            groupName: "groupName", 
            isTracked: true, 
            lastUpdate: "lastUpdate", 
            orderItems: [orderItems_OrderItem], 
            shipmentProviderName: "shipmentProviderName", 
            shipmentProviderUrl: "shipmentProviderUrl", 
            shipmentTrackingNumber: "shipmentTrackingNumber", 
            trackingStatus: "trackingStatus"
        )
    }
        let orderItemGroups_OrderItemGroup = make_orderItemGroups_OrderItemGroup()

            let testObject_ = GroupedOrder(
            orderId: "orderId", 
            orderItemGroups: [orderItemGroups_OrderItemGroup], 
            orderNumber: "orderNumber"
        )

            XCTAssertEqual(testObject_.orderId,"orderId")
            XCTAssertEqual(testObject_.orderItemGroups,[orderItemGroups_OrderItemGroup])
            XCTAssertEqual(testObject_.orderNumber,"orderNumber")
    }
    func testGroupedOrderList() {
    func make_groupedOrders_GroupedOrder() -> GroupedOrder {
    func make_orderItemGroups_OrderItemGroup() -> OrderItemGroup {
    func make_orderItems_OrderItem() -> OrderItem {
    func make_deliveryStatusCategories_DeliveryStatusCategory() -> DeliveryStatusCategory {
    func make_statuses_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let statuses_DeliveryStatus = make_statuses_DeliveryStatus()

        return DeliveryStatusCategory(
            label: "label", 
            activated: true, 
            statuses: [statuses_DeliveryStatus]
        )
    }
        let deliveryStatusCategories_DeliveryStatusCategory = make_deliveryStatusCategories_DeliveryStatusCategory()

    func make_currentStatus_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let currentStatus_DeliveryStatus = make_currentStatus_DeliveryStatus()

        return OrderItem(
            orderItemId: "orderItemId", 
            brand: "brand", 
            configSku: "configSku", 
            simpleSku: "simpleSku", 
            quantity: 1, 
            name: "name", 
            unitPrice: 1, 
            image: "image", 
            size: "size", 
            deliveryStatusCategories: [deliveryStatusCategories_DeliveryStatusCategory], 
            selectedSizeSystem: "selectedSizeSystem", 
            currentStatus:  currentStatus_DeliveryStatus, 
            isCancelled: true
        )
    }
        let orderItems_OrderItem = make_orderItems_OrderItem()

        return OrderItemGroup(
            groupName: "groupName", 
            isTracked: true, 
            lastUpdate: "lastUpdate", 
            orderItems: [orderItems_OrderItem], 
            shipmentProviderName: "shipmentProviderName", 
            shipmentProviderUrl: "shipmentProviderUrl", 
            shipmentTrackingNumber: "shipmentTrackingNumber", 
            trackingStatus: "trackingStatus"
        )
    }
        let orderItemGroups_OrderItemGroup = make_orderItemGroups_OrderItemGroup()

        return GroupedOrder(
            orderId: "orderId", 
            orderItemGroups: [orderItemGroups_OrderItemGroup], 
            orderNumber: "orderNumber"
        )
    }
        let groupedOrders_GroupedOrder = make_groupedOrders_GroupedOrder()

            let testObject_ = GroupedOrderList(
            groupedOrders: [groupedOrders_GroupedOrder]
        )

            XCTAssertEqual(testObject_.groupedOrders,[groupedOrders_GroupedOrder])
    }
    func testHomeScreen() {
    func make_rows_HomeScreenRow() -> HomeScreenRow {
    func make_data_HomeScreenRowData() -> HomeScreenRowData {
    func make_teasers_HomeScreenTeaser() -> HomeScreenTeaser {
        return HomeScreenTeaser(
            deepLink: "deepLink", 
            imageUrl: "imageUrl", 
            aspectRatio: 1, 
            name: "name", 
            creationDate: "creationDate"
        )
    }
        let teasers_HomeScreenTeaser = make_teasers_HomeScreenTeaser()

        return HomeScreenRowData(
            teasers: [teasers_HomeScreenTeaser], 
            dataJetEndpoint: "dataJetEndpoint", 
            dataJetParameters: [:], 
            dataJetIsPersonalized: true, 
            minNumOfProducts: 1
        )
    }
        let data_HomeScreenRowData = make_data_HomeScreenRowData()

        return HomeScreenRow(
            heightRatio: 1, 
            type: "type", 
            title: "title", 
            headerLeftButtonName: "headerLeftButtonName", 
            data:  data_HomeScreenRowData
        )
    }
        let rows_HomeScreenRow = make_rows_HomeScreenRow()

            let testObject_ = HomeScreen(
            rows: [rows_HomeScreenRow]
        )

            XCTAssertEqual(testObject_.rows,[rows_HomeScreenRow])
    }
    func testHomeScreenRecommendationProduct() {
            let testObject_ = HomeScreenRecommendationProduct(
            name: "name", 
            brand: "brand", 
            configSku: "configSku", 
            price: "price", 
            specialPrice: "specialPrice", 
            mainImageUrl: "mainImageUrl"
        )

            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.brand,"brand")
            XCTAssertEqual(testObject_.configSku,"configSku")
            XCTAssertEqual(testObject_.price,"price")
            XCTAssertEqual(testObject_.specialPrice,"specialPrice")
            XCTAssertEqual(testObject_.mainImageUrl,"mainImageUrl")
    }
    func testHomeScreenRecommendationProductList() {
    func make_products_HomeScreenRecommendationProduct() -> HomeScreenRecommendationProduct {
        return HomeScreenRecommendationProduct(
            name: "name", 
            brand: "brand", 
            configSku: "configSku", 
            price: "price", 
            specialPrice: "specialPrice", 
            mainImageUrl: "mainImageUrl"
        )
    }
        let products_HomeScreenRecommendationProduct = make_products_HomeScreenRecommendationProduct()

            let testObject_ = HomeScreenRecommendationProductList(
            title: "title", 
            cursor: "cursor", 
            hasNextPage: true, 
            products: [products_HomeScreenRecommendationProduct]
        )

            XCTAssertEqual(testObject_.title,"title")
            XCTAssertEqual(testObject_.cursor,"cursor")
            XCTAssertEqual(testObject_.hasNextPage,true)
            XCTAssertEqual(testObject_.products,[products_HomeScreenRecommendationProduct])
    }
    func testHomeScreenRow() {
    func make_data_HomeScreenRowData() -> HomeScreenRowData {
    func make_teasers_HomeScreenTeaser() -> HomeScreenTeaser {
        return HomeScreenTeaser(
            deepLink: "deepLink", 
            imageUrl: "imageUrl", 
            aspectRatio: 1, 
            name: "name", 
            creationDate: "creationDate"
        )
    }
        let teasers_HomeScreenTeaser = make_teasers_HomeScreenTeaser()

        return HomeScreenRowData(
            teasers: [teasers_HomeScreenTeaser], 
            dataJetEndpoint: "dataJetEndpoint", 
            dataJetParameters: [:], 
            dataJetIsPersonalized: true, 
            minNumOfProducts: 1
        )
    }
        let data_HomeScreenRowData = make_data_HomeScreenRowData()

            let testObject_ = HomeScreenRow(
            heightRatio: 1, 
            type: "type", 
            title: "title", 
            headerLeftButtonName: "headerLeftButtonName", 
            data:  data_HomeScreenRowData
        )

            XCTAssertEqual(testObject_.heightRatio,1)
            XCTAssertEqual(testObject_.type,"type")
            XCTAssertEqual(testObject_.title,"title")
            XCTAssertEqual(testObject_.headerLeftButtonName,"headerLeftButtonName")
            XCTAssertEqual(testObject_.data, data_HomeScreenRowData)
    }
    func testHomeScreenRowData() {
    func make_teasers_HomeScreenTeaser() -> HomeScreenTeaser {
        return HomeScreenTeaser(
            deepLink: "deepLink", 
            imageUrl: "imageUrl", 
            aspectRatio: 1, 
            name: "name", 
            creationDate: "creationDate"
        )
    }
        let teasers_HomeScreenTeaser = make_teasers_HomeScreenTeaser()

            let testObject_ = HomeScreenRowData(
            teasers: [teasers_HomeScreenTeaser], 
            dataJetEndpoint: "dataJetEndpoint", 
            dataJetParameters: [:], 
            dataJetIsPersonalized: true, 
            minNumOfProducts: 1
        )

            XCTAssertEqual(testObject_.teasers,[teasers_HomeScreenTeaser])
            XCTAssertEqual(testObject_.dataJetEndpoint,"dataJetEndpoint")
            XCTAssertEqual(testObject_.dataJetParameters,[:])
            XCTAssertEqual(testObject_.dataJetIsPersonalized,true)
            XCTAssertEqual(testObject_.minNumOfProducts,1)
    }
    func testHomeScreenTeaser() {
            let testObject_ = HomeScreenTeaser(
            deepLink: "deepLink", 
            imageUrl: "imageUrl", 
            aspectRatio: 1, 
            name: "name", 
            creationDate: "creationDate"
        )

            XCTAssertEqual(testObject_.deepLink,"deepLink")
            XCTAssertEqual(testObject_.imageUrl,"imageUrl")
            XCTAssertEqual(testObject_.aspectRatio,1)
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.creationDate,"creationDate")
    }
    func testImage() {
            let testObject_ = Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )

            XCTAssertEqual(testObject_.phonePortrait,"phonePortrait")
            XCTAssertEqual(testObject_.tabletPortrait,"tabletPortrait")
            XCTAssertEqual(testObject_.tabletLandscape,"tabletLandscape")
            XCTAssertEqual(testObject_.backgroundColor,"backgroundColor")
    }
    func testInitConstants() {
            let testObject_ = InitConstants(
            backgroundImageKey: "backgroundImageKey"
        )

            XCTAssertEqual(testObject_.backgroundImageKey,"backgroundImageKey")
    }
    func testInitResponse() {
    func make_countries_CountriesList() -> CountriesList {
    func make_countries_Country() -> Country {
    func make_languages_Language() -> Language {
        return Language(
            name: "name", 
            iso: "iso", 
            flag: "flag", 
            code: "code", 
            isDefault: true, 
            display: true
        )
    }
        let languages_Language = make_languages_Language()

    func make_currency_Currency() -> Currency {
        return Currency(
            iso: "iso", 
            thousandSeparator: "thousandSeparator", 
            decimals: 1, 
            decimalsSeparator: "decimalsSeparator", 
            displayFormat: "displayFormat"
        )
    }
        let currency_Currency = make_currency_Currency()

    func make_shopCatalogs_ShopCatalog() -> ShopCatalog {
    func make_segments_SegmentList() -> SegmentList {
    func make_list_Segment() -> Segment {
        return Segment(
            label: "label", 
            imageUrl: "imageUrl", 
            key: "key", 
            shopGenderLabel: "shopGenderLabel", 
            onSplashScreen: true
        )
    }
        let list_Segment = make_list_Segment()

        return SegmentList(
            md5: "md5", 
            list: [list_Segment]
        )
    }
        let segments_SegmentList = make_segments_SegmentList()

    func make_backgroundImageURL_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let backgroundImageURL_Image = make_backgroundImageURL_Image()

        return ShopCatalog(
            key: "key", 
            label: "label", 
            catalogDescription: "catalogDescription", 
            segments:  segments_SegmentList, 
            gaKey: "gaKey", 
            logo: "logo", 
            backgroundImageURL:  backgroundImageURL_Image, 
            logoURL: "logoURL"
        )
    }
        let shopCatalogs_ShopCatalog = make_shopCatalogs_ShopCatalog()

    func make_magazine_Magazine() -> Magazine {
    func make_backgroundURL_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let backgroundURL_Image = make_backgroundURL_Image()

        return Magazine(
            backgroundURL:  backgroundURL_Image, 
            key: "key", 
            label: "label", 
            magazineDescription: "magazineDescription", 
            logoURL: "logoURL"
        )
    }
        let magazine_Magazine = make_magazine_Magazine()

        return Country(
            ident: "ident", 
            descriptionName: "descriptionName", 
            flag: "flag", 
            apiUrl: "apiUrl", 
            iso2: "iso2", 
            checkoutUrl: "checkoutUrl", 
            languages: [languages_Language], 
            currency:  currency_Currency, 
            active: true, 
            shopCatalogs: [shopCatalogs_ShopCatalog], 
            magazine:  magazine_Magazine, 
            exchange_return_url: "exchange_return_url"
        )
    }
        let countries_Country = make_countries_Country()

        return CountriesList(
            md5: "md5", 
            countries: [countries_Country]
        )
    }
        let countries_CountriesList = make_countries_CountriesList()

    func make_colors_ColorsList() -> ColorsList {
    func make_colors_Color() -> Color {
        return Color(
            color: "color", 
            hexValue: "hexValue", 
            imageUrl: "imageUrl"
        )
    }
        let colors_Color = make_colors_Color()

        return ColorsList(
            md5: "md5", 
            colors: [colors_Color]
        )
    }
        let colors_ColorsList = make_colors_ColorsList()

    func make_shopBys_ShopByUrlList() -> ShopByUrlList {
    func make_shopBys_ShopBy() -> ShopBy {
    func make_navigationGroups_NavigationGroup() -> NavigationGroup {
    func make_navigations_Navigation() -> Navigation {
        return Navigation(
            label: "label", 
            type: "type", 
            url: "url", 
            imageUrl: "imageUrl", 
            menImageUrl: "menImageUrl", 
            womenImageUrl: "womenImageUrl", 
            previewImageUrl: "previewImageUrl", 
            kidImageUrl: "kidImageUrl", 
            cms: "cms"
        )
    }
        let navigations_Navigation = make_navigations_Navigation()

        return NavigationGroup(
            navigationsGroupName: "navigationsGroupName", 
            navigationsDisplayType: "navigationsDisplayType", 
            navigations: [navigations_Navigation]
        )
    }
        let navigationGroups_NavigationGroup = make_navigationGroups_NavigationGroup()

        return ShopBy(
            segment: "segment", 
            key: "key", 
            navigationGroups: [navigationGroups_NavigationGroup]
        )
    }
        let shopBys_ShopBy = make_shopBys_ShopBy()

        return ShopByUrlList(
            md5: "md5", 
            shopBys: [shopBys_ShopBy]
        )
    }
        let shopBys_ShopByUrlList = make_shopBys_ShopByUrlList()

    func make_segments_SegmentList() -> SegmentList {
    func make_list_Segment() -> Segment {
        return Segment(
            label: "label", 
            imageUrl: "imageUrl", 
            key: "key", 
            shopGenderLabel: "shopGenderLabel", 
            onSplashScreen: true
        )
    }
        let list_Segment = make_list_Segment()

        return SegmentList(
            md5: "md5", 
            list: [list_Segment]
        )
    }
        let segments_SegmentList = make_segments_SegmentList()

    func make_version_Version() -> Version {
        return Version(
            md5: "md5", 
            minVersion: "minVersion", 
            curVersion: "curVersion", 
            optionalUpdate: "optionalUpdate", 
            forceUpdate: "forceUpdate"
        )
    }
        let version_Version = make_version_Version()

                let enabledFeatures_String = "enabledFeatures"
    func make_services_Services() -> Services {
    func make_facebookInvites_FacebookInvites() -> FacebookInvites {
        return FacebookInvites(
            invitePreviewImageURL: "invitePreviewImageURL", 
            inviteAppLinkURL: "inviteAppLinkURL", 
            backgroundImagePhonePortrait: "backgroundImagePhonePortrait", 
            backgroundImagePadPortrait: "backgroundImagePadPortrait", 
            backgroundImagePadLandscape: "backgroundImagePadLandscape"
        )
    }
        let facebookInvites_FacebookInvites = make_facebookInvites_FacebookInvites()

        return Services(
            facebookInvites:  facebookInvites_FacebookInvites, 
            gaID: "gaID", 
            md5: "md5", 
            magazineURL: "magazineURL", 
            communityURL: "communityURL", 
            feedBaseUrl: "feedBaseUrl", 
            datajetApiKey: "datajetApiKey", 
            statsDAPIKey: "statsDAPIKey", 
            statsDAppURL: "statsDAppURL", 
            isStatsDEnabled: true
        )
    }
        let services_Services = make_services_Services()

    func make_urls_Urls() -> Urls {
        return Urls(
            privacyPolicyURL: "privacyPolicyURL", 
            aboutURL: "aboutURL", 
            exchangeReturnsURL: "exchangeReturnsURL", 
            faqURL: "faqURL", 
            bankTransferConfirmationURL: "bankTransferConfirmationURL"
        )
    }
        let urls_Urls = make_urls_Urls()

            let testObject_ = InitResponse(
            countries:  countries_CountriesList, 
            colors:  colors_ColorsList, 
            shopBys:  shopBys_ShopByUrlList, 
            segments:  segments_SegmentList, 
            cacheKey: "cacheKey", 
            thumborHost: "thumborHost", 
            version:  version_Version, 
            enabledFeatures: [enabledFeatures_String], 
            services:  services_Services, 
            images: [:], 
            networkCacheRefreshInterval: 1, 
            datajetCacheRefreshInterval: 1, 
            dataJetBaseUrl: "dataJetBaseUrl", 
            urls:  urls_Urls, 
            zrsBaseUrl: "zrsBaseUrl", 
            zendeskURL: "zendeskURL", 
            zendeskAppID: "zendeskAppID", 
            zendeskClientID: "zendeskClientID"
        )

            XCTAssertEqual(testObject_.countries, countries_CountriesList)
            XCTAssertEqual(testObject_.colors, colors_ColorsList)
            XCTAssertEqual(testObject_.shopBys, shopBys_ShopByUrlList)
            XCTAssertEqual(testObject_.segments, segments_SegmentList)
            XCTAssertEqual(testObject_.cacheKey,"cacheKey")
            XCTAssertEqual(testObject_.thumborHost,"thumborHost")
            XCTAssertEqual(testObject_.version, version_Version)
            XCTAssertEqual(testObject_.enabledFeatures,[enabledFeatures_String])
            XCTAssertEqual(testObject_.services, services_Services)
            XCTAssertEqual(testObject_.images,[:])
            XCTAssertEqual(testObject_.networkCacheRefreshInterval,1)
            XCTAssertEqual(testObject_.datajetCacheRefreshInterval,1)
            XCTAssertEqual(testObject_.dataJetBaseUrl,"dataJetBaseUrl")
            XCTAssertEqual(testObject_.urls, urls_Urls)
            XCTAssertEqual(testObject_.zrsBaseUrl,"zrsBaseUrl")
            XCTAssertEqual(testObject_.zendeskURL,"zendeskURL")
            XCTAssertEqual(testObject_.zendeskAppID,"zendeskAppID")
            XCTAssertEqual(testObject_.zendeskClientID,"zendeskClientID")
    }
    func testLanguage() {
            let testObject_ = Language(
            name: "name", 
            iso: "iso", 
            flag: "flag", 
            code: "code", 
            isDefault: true, 
            display: true
        )

            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.iso,"iso")
            XCTAssertEqual(testObject_.flag,"flag")
            XCTAssertEqual(testObject_.code,"code")
            XCTAssertEqual(testObject_.isDefault,true)
            XCTAssertEqual(testObject_.display,true)
    }
    func testMagazine() {
    func make_backgroundURL_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let backgroundURL_Image = make_backgroundURL_Image()

            let testObject_ = Magazine(
            backgroundURL:  backgroundURL_Image, 
            key: "key", 
            label: "label", 
            magazineDescription: "magazineDescription", 
            logoURL: "logoURL"
        )

            XCTAssertEqual(testObject_.backgroundURL, backgroundURL_Image)
            XCTAssertEqual(testObject_.key,"key")
            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.magazineDescription,"magazineDescription")
            XCTAssertEqual(testObject_.logoURL,"logoURL")
    }
    func testMedia() {
            let testObject_ = Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )

            XCTAssertEqual(testObject_.contentType,1)
            XCTAssertEqual(testObject_.meta,[:])
            XCTAssertEqual(testObject_.url,"url")
    }
    func testNavigation() {
            let testObject_ = Navigation(
            label: "label", 
            type: "type", 
            url: "url", 
            imageUrl: "imageUrl", 
            menImageUrl: "menImageUrl", 
            womenImageUrl: "womenImageUrl", 
            previewImageUrl: "previewImageUrl", 
            kidImageUrl: "kidImageUrl", 
            cms: "cms"
        )

            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.type,"type")
            XCTAssertEqual(testObject_.url,"url")
            XCTAssertEqual(testObject_.imageUrl,"imageUrl")
            XCTAssertEqual(testObject_.menImageUrl,"menImageUrl")
            XCTAssertEqual(testObject_.womenImageUrl,"womenImageUrl")
            XCTAssertEqual(testObject_.previewImageUrl,"previewImageUrl")
            XCTAssertEqual(testObject_.kidImageUrl,"kidImageUrl")
            XCTAssertEqual(testObject_.cms,"cms")
    }
    func testNavigationGroup() {
    func make_navigations_Navigation() -> Navigation {
        return Navigation(
            label: "label", 
            type: "type", 
            url: "url", 
            imageUrl: "imageUrl", 
            menImageUrl: "menImageUrl", 
            womenImageUrl: "womenImageUrl", 
            previewImageUrl: "previewImageUrl", 
            kidImageUrl: "kidImageUrl", 
            cms: "cms"
        )
    }
        let navigations_Navigation = make_navigations_Navigation()

            let testObject_ = NavigationGroup(
            navigationsGroupName: "navigationsGroupName", 
            navigationsDisplayType: "navigationsDisplayType", 
            navigations: [navigations_Navigation]
        )

            XCTAssertEqual(testObject_.navigationsGroupName,"navigationsGroupName")
            XCTAssertEqual(testObject_.navigationsDisplayType,"navigationsDisplayType")
            XCTAssertEqual(testObject_.navigations,[navigations_Navigation])
    }
    func testOnlineBestPromoApplicationResult() {
            let testObject_ = OnlineBestPromoApplicationResult(
            success: true, 
            message: "message"
        )

            XCTAssertEqual(testObject_.success,true)
            XCTAssertEqual(testObject_.message,"message")
    }
    func testOnlineCart() {
    func make_groupedCartItems_OnlineGroupedCartItem() -> OnlineGroupedCartItem {
    func make_onlineCartItems_OnlineCartItem() -> OnlineCartItem {
    func make_product_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let product_Product = make_product_Product()

                let appliedCartRules_String = "appliedCartRules"
    func make_discounts_OnlinePriceBreakdownLine() -> OnlinePriceBreakdownLine {
        return OnlinePriceBreakdownLine(
            name: "name", 
            value: "value"
        )
    }
        let discounts_OnlinePriceBreakdownLine = make_discounts_OnlinePriceBreakdownLine()

        return OnlineCartItem(
            product:  product_Product, 
            simpleSku: "simpleSku", 
            quantity: 1, 
            selectedSizeSystem: "selectedSizeSystem", 
            isExpressShippingEligible: true, 
            sourceCatalog: "sourceCatalog", 
            deliveryPromise: "deliveryPromise", 
            appliedCartRules: [appliedCartRules_String], 
            isCouponDiscountApplied: true, 
            isNonSaleItem: true, 
            totalPrice: 1, 
            discounts: [discounts_OnlinePriceBreakdownLine]
        )
    }
        let onlineCartItems_OnlineCartItem = make_onlineCartItems_OnlineCartItem()

        return OnlineGroupedCartItem(
            onlineCartItems: [onlineCartItems_OnlineCartItem], 
            sellerId: "sellerId", 
            sellerName: "sellerName", 
            shippingFee: "shippingFee", 
            minimumBasketSize: "minimumBasketSize", 
            shippingFeeDifference: "shippingFeeDifference", 
            isWaivedShippingFee: true, 
            isShippedFromOverseas: true, 
            internationalShippingFee: 1
        )
    }
        let groupedCartItems_OnlineGroupedCartItem = make_groupedCartItems_OnlineGroupedCartItem()

    func make_outOfStockItems_OnlineOutOfStockItem() -> OnlineOutOfStockItem {
        return OnlineOutOfStockItem(
            sku: "sku", 
            name: "name"
        )
    }
        let outOfStockItems_OnlineOutOfStockItem = make_outOfStockItems_OnlineOutOfStockItem()

    func make_cartRules_OnlineCartRule() -> OnlineCartRule {
        return OnlineCartRule(
            name: "name", 
            amount: 1
        )
    }
        let cartRules_OnlineCartRule = make_cartRules_OnlineCartRule()

    func make_vipMembershipCartItem_OnlineCartItem() -> OnlineCartItem {
    func make_product_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let product_Product = make_product_Product()

                let appliedCartRules_String = "appliedCartRules"
    func make_discounts_OnlinePriceBreakdownLine() -> OnlinePriceBreakdownLine {
        return OnlinePriceBreakdownLine(
            name: "name", 
            value: "value"
        )
    }
        let discounts_OnlinePriceBreakdownLine = make_discounts_OnlinePriceBreakdownLine()

        return OnlineCartItem(
            product:  product_Product, 
            simpleSku: "simpleSku", 
            quantity: 1, 
            selectedSizeSystem: "selectedSizeSystem", 
            isExpressShippingEligible: true, 
            sourceCatalog: "sourceCatalog", 
            deliveryPromise: "deliveryPromise", 
            appliedCartRules: [appliedCartRules_String], 
            isCouponDiscountApplied: true, 
            isNonSaleItem: true, 
            totalPrice: 1, 
            discounts: [discounts_OnlinePriceBreakdownLine]
        )
    }
        let vipMembershipCartItem_OnlineCartItem = make_vipMembershipCartItem_OnlineCartItem()

    func make_couponApplicationResult_OnlineCouponApplicationResult() -> OnlineCouponApplicationResult {
        return OnlineCouponApplicationResult(
            success: true, 
            hardError: true, 
            message: "message"
        )
    }
        let couponApplicationResult_OnlineCouponApplicationResult = make_couponApplicationResult_OnlineCouponApplicationResult()

    func make_rewardPoint_OnlineRewardPoint() -> OnlineRewardPoint {
        return OnlineRewardPoint(
            partnerId: "partnerId", 
            valueRemaining: 1, 
            valueToRedeem: 1, 
            totalValue: 1, 
            pointsRemaining: 1, 
            pointsToRedeem: 1, 
            totalPoints: 1
        )
    }
        let rewardPoint_OnlineRewardPoint = make_rewardPoint_OnlineRewardPoint()

    func make_priceBreakdowns_OnlinePriceBreakdownSection() -> OnlinePriceBreakdownSection {
    func make_lines_OnlinePriceBreakdownLine() -> OnlinePriceBreakdownLine {
        return OnlinePriceBreakdownLine(
            name: "name", 
            value: "value"
        )
    }
        let lines_OnlinePriceBreakdownLine = make_lines_OnlinePriceBreakdownLine()

        return OnlinePriceBreakdownSection(
            name: "name", 
            category: "category", 
            lines: [lines_OnlinePriceBreakdownLine]
        )
    }
        let priceBreakdowns_OnlinePriceBreakdownSection = make_priceBreakdowns_OnlinePriceBreakdownSection()

    func make_bestPromoApplicationResult_OnlineBestPromoApplicationResult() -> OnlineBestPromoApplicationResult {
        return OnlineBestPromoApplicationResult(
            success: true, 
            message: "message"
        )
    }
        let bestPromoApplicationResult_OnlineBestPromoApplicationResult = make_bestPromoApplicationResult_OnlineBestPromoApplicationResult()

            let testObject_ = OnlineCart(
            groupedCartItems: [groupedCartItems_OnlineGroupedCartItem], 
            outOfStockItems: [outOfStockItems_OnlineOutOfStockItem], 
            cartRules: [cartRules_OnlineCartRule], 
            couponCode: "couponCode", 
            couponMoneyValue: 1, 
            walletCredits: 1, 
            shippingAmount: 1, 
            shippingDiscountAmount: 1, 
            taxAmount: 1, 
            wrappingAmount: 1, 
            subTotal: 1, 
            grandTotal: 1, 
            vipMembershipInfoCMS: "vipMembershipInfoCMS", 
            vipMembershipCartItem:  vipMembershipCartItem_OnlineCartItem, 
            isVipMembershipEnabled: true, 
            isVipCustomer: true, 
            couponApplicationResult:  couponApplicationResult_OnlineCouponApplicationResult, 
            shouldHideMembershipProgram: true, 
            internationalShippingAmount: 1, 
            internationalShippingThreshold: 1, 
            rewardPoint:  rewardPoint_OnlineRewardPoint, 
            priceBreakdowns: [priceBreakdowns_OnlinePriceBreakdownSection], 
            isBestPromoApplied: true, 
            totalDiscountAmount: 1, 
            bestPromoApplicationResult:  bestPromoApplicationResult_OnlineBestPromoApplicationResult
        )

            XCTAssertEqual(testObject_.groupedCartItems,[groupedCartItems_OnlineGroupedCartItem])
            XCTAssertEqual(testObject_.outOfStockItems,[outOfStockItems_OnlineOutOfStockItem])
            XCTAssertEqual(testObject_.cartRules,[cartRules_OnlineCartRule])
            XCTAssertEqual(testObject_.couponCode,"couponCode")
            XCTAssertEqual(testObject_.couponMoneyValue,1)
            XCTAssertEqual(testObject_.walletCredits,1)
            XCTAssertEqual(testObject_.shippingAmount,1)
            XCTAssertEqual(testObject_.shippingDiscountAmount,1)
            XCTAssertEqual(testObject_.taxAmount,1)
            XCTAssertEqual(testObject_.wrappingAmount,1)
            XCTAssertEqual(testObject_.subTotal,1)
            XCTAssertEqual(testObject_.grandTotal,1)
            XCTAssertEqual(testObject_.vipMembershipInfoCMS,"vipMembershipInfoCMS")
            XCTAssertEqual(testObject_.vipMembershipCartItem, vipMembershipCartItem_OnlineCartItem)
            XCTAssertEqual(testObject_.isVipMembershipEnabled,true)
            XCTAssertEqual(testObject_.isVipCustomer,true)
            XCTAssertEqual(testObject_.couponApplicationResult, couponApplicationResult_OnlineCouponApplicationResult)
            XCTAssertEqual(testObject_.shouldHideMembershipProgram,true)
            XCTAssertEqual(testObject_.internationalShippingAmount,1)
            XCTAssertEqual(testObject_.internationalShippingThreshold,1)
            XCTAssertEqual(testObject_.rewardPoint, rewardPoint_OnlineRewardPoint)
            XCTAssertEqual(testObject_.priceBreakdowns,[priceBreakdowns_OnlinePriceBreakdownSection])
            XCTAssertEqual(testObject_.isBestPromoApplied,true)
            XCTAssertEqual(testObject_.totalDiscountAmount,1)
            XCTAssertEqual(testObject_.bestPromoApplicationResult, bestPromoApplicationResult_OnlineBestPromoApplicationResult)
    }
    func testOnlineCartItem() {
    func make_product_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let product_Product = make_product_Product()

                let appliedCartRules_String = "appliedCartRules"
    func make_discounts_OnlinePriceBreakdownLine() -> OnlinePriceBreakdownLine {
        return OnlinePriceBreakdownLine(
            name: "name", 
            value: "value"
        )
    }
        let discounts_OnlinePriceBreakdownLine = make_discounts_OnlinePriceBreakdownLine()

            let testObject_ = OnlineCartItem(
            product:  product_Product, 
            simpleSku: "simpleSku", 
            quantity: 1, 
            selectedSizeSystem: "selectedSizeSystem", 
            isExpressShippingEligible: true, 
            sourceCatalog: "sourceCatalog", 
            deliveryPromise: "deliveryPromise", 
            appliedCartRules: [appliedCartRules_String], 
            isCouponDiscountApplied: true, 
            isNonSaleItem: true, 
            totalPrice: 1, 
            discounts: [discounts_OnlinePriceBreakdownLine]
        )

            XCTAssertEqual(testObject_.product, product_Product)
            XCTAssertEqual(testObject_.simpleSku,"simpleSku")
            XCTAssertEqual(testObject_.quantity,1)
            XCTAssertEqual(testObject_.selectedSizeSystem,"selectedSizeSystem")
            XCTAssertEqual(testObject_.isExpressShippingEligible,true)
            XCTAssertEqual(testObject_.sourceCatalog,"sourceCatalog")
            XCTAssertEqual(testObject_.deliveryPromise,"deliveryPromise")
            XCTAssertEqual(testObject_.appliedCartRules,[appliedCartRules_String])
            XCTAssertEqual(testObject_.isCouponDiscountApplied,true)
            XCTAssertEqual(testObject_.isNonSaleItem,true)
            XCTAssertEqual(testObject_.totalPrice,1)
            XCTAssertEqual(testObject_.discounts,[discounts_OnlinePriceBreakdownLine])
    }
    func testOnlineCartRule() {
            let testObject_ = OnlineCartRule(
            name: "name", 
            amount: 1
        )

            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.amount,1)
    }
    func testOnlineCouponApplicationResult() {
            let testObject_ = OnlineCouponApplicationResult(
            success: true, 
            hardError: true, 
            message: "message"
        )

            XCTAssertEqual(testObject_.success,true)
            XCTAssertEqual(testObject_.hardError,true)
            XCTAssertEqual(testObject_.message,"message")
    }
    func testOnlineGroupedCartItem() {
    func make_onlineCartItems_OnlineCartItem() -> OnlineCartItem {
    func make_product_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let product_Product = make_product_Product()

                let appliedCartRules_String = "appliedCartRules"
    func make_discounts_OnlinePriceBreakdownLine() -> OnlinePriceBreakdownLine {
        return OnlinePriceBreakdownLine(
            name: "name", 
            value: "value"
        )
    }
        let discounts_OnlinePriceBreakdownLine = make_discounts_OnlinePriceBreakdownLine()

        return OnlineCartItem(
            product:  product_Product, 
            simpleSku: "simpleSku", 
            quantity: 1, 
            selectedSizeSystem: "selectedSizeSystem", 
            isExpressShippingEligible: true, 
            sourceCatalog: "sourceCatalog", 
            deliveryPromise: "deliveryPromise", 
            appliedCartRules: [appliedCartRules_String], 
            isCouponDiscountApplied: true, 
            isNonSaleItem: true, 
            totalPrice: 1, 
            discounts: [discounts_OnlinePriceBreakdownLine]
        )
    }
        let onlineCartItems_OnlineCartItem = make_onlineCartItems_OnlineCartItem()

            let testObject_ = OnlineGroupedCartItem(
            onlineCartItems: [onlineCartItems_OnlineCartItem], 
            sellerId: "sellerId", 
            sellerName: "sellerName", 
            shippingFee: "shippingFee", 
            minimumBasketSize: "minimumBasketSize", 
            shippingFeeDifference: "shippingFeeDifference", 
            isWaivedShippingFee: true, 
            isShippedFromOverseas: true, 
            internationalShippingFee: 1
        )

            XCTAssertEqual(testObject_.onlineCartItems,[onlineCartItems_OnlineCartItem])
            XCTAssertEqual(testObject_.sellerId,"sellerId")
            XCTAssertEqual(testObject_.sellerName,"sellerName")
            XCTAssertEqual(testObject_.shippingFee,"shippingFee")
            XCTAssertEqual(testObject_.minimumBasketSize,"minimumBasketSize")
            XCTAssertEqual(testObject_.shippingFeeDifference,"shippingFeeDifference")
            XCTAssertEqual(testObject_.isWaivedShippingFee,true)
            XCTAssertEqual(testObject_.isShippedFromOverseas,true)
            XCTAssertEqual(testObject_.internationalShippingFee,1)
    }
    func testOnlineOutOfStockItem() {
            let testObject_ = OnlineOutOfStockItem(
            sku: "sku", 
            name: "name"
        )

            XCTAssertEqual(testObject_.sku,"sku")
            XCTAssertEqual(testObject_.name,"name")
    }
    func testOnlinePriceBreakdownLine() {
            let testObject_ = OnlinePriceBreakdownLine(
            name: "name", 
            value: "value"
        )

            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.value,"value")
    }
    func testOnlinePriceBreakdownSection() {
    func make_lines_OnlinePriceBreakdownLine() -> OnlinePriceBreakdownLine {
        return OnlinePriceBreakdownLine(
            name: "name", 
            value: "value"
        )
    }
        let lines_OnlinePriceBreakdownLine = make_lines_OnlinePriceBreakdownLine()

            let testObject_ = OnlinePriceBreakdownSection(
            name: "name", 
            category: "category", 
            lines: [lines_OnlinePriceBreakdownLine]
        )

            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.category,"category")
            XCTAssertEqual(testObject_.lines,[lines_OnlinePriceBreakdownLine])
    }
    func testOnlineRewardPoint() {
            let testObject_ = OnlineRewardPoint(
            partnerId: "partnerId", 
            valueRemaining: 1, 
            valueToRedeem: 1, 
            totalValue: 1, 
            pointsRemaining: 1, 
            pointsToRedeem: 1, 
            totalPoints: 1
        )

            XCTAssertEqual(testObject_.partnerId,"partnerId")
            XCTAssertEqual(testObject_.valueRemaining,1)
            XCTAssertEqual(testObject_.valueToRedeem,1)
            XCTAssertEqual(testObject_.totalValue,1)
            XCTAssertEqual(testObject_.pointsRemaining,1)
            XCTAssertEqual(testObject_.pointsToRedeem,1)
            XCTAssertEqual(testObject_.totalPoints,1)
    }
    func testOrder() {
    func make_items_OrderItem() -> OrderItem {
    func make_deliveryStatusCategories_DeliveryStatusCategory() -> DeliveryStatusCategory {
    func make_statuses_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let statuses_DeliveryStatus = make_statuses_DeliveryStatus()

        return DeliveryStatusCategory(
            label: "label", 
            activated: true, 
            statuses: [statuses_DeliveryStatus]
        )
    }
        let deliveryStatusCategories_DeliveryStatusCategory = make_deliveryStatusCategories_DeliveryStatusCategory()

    func make_currentStatus_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let currentStatus_DeliveryStatus = make_currentStatus_DeliveryStatus()

        return OrderItem(
            orderItemId: "orderItemId", 
            brand: "brand", 
            configSku: "configSku", 
            simpleSku: "simpleSku", 
            quantity: 1, 
            name: "name", 
            unitPrice: 1, 
            image: "image", 
            size: "size", 
            deliveryStatusCategories: [deliveryStatusCategories_DeliveryStatusCategory], 
            selectedSizeSystem: "selectedSizeSystem", 
            currentStatus:  currentStatus_DeliveryStatus, 
            isCancelled: true
        )
    }
        let items_OrderItem = make_items_OrderItem()

    func make_billingAddress_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let billingAddress_Address = make_billingAddress_Address()

    func make_shippingAddress_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let shippingAddress_Address = make_shippingAddress_Address()

            let testObject_ = Order(
            date: "date", 
            salesOrderId: 1, 
            orderNumber: 1, 
            orderAmount: 1, 
            items: [items_OrderItem], 
            billingAddress:  billingAddress_Address, 
            shippingAddress:  shippingAddress_Address, 
            paymentMethod: "paymentMethod"
        )

            XCTAssertEqual(testObject_.date,"date")
            XCTAssertEqual(testObject_.salesOrderId,1)
            XCTAssertEqual(testObject_.orderNumber,1)
            XCTAssertEqual(testObject_.orderAmount,1)
            XCTAssertEqual(testObject_.items,[items_OrderItem])
            XCTAssertEqual(testObject_.billingAddress, billingAddress_Address)
            XCTAssertEqual(testObject_.shippingAddress, shippingAddress_Address)
            XCTAssertEqual(testObject_.paymentMethod,"paymentMethod")
    }
    func testOrderItem() {
    func make_deliveryStatusCategories_DeliveryStatusCategory() -> DeliveryStatusCategory {
    func make_statuses_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let statuses_DeliveryStatus = make_statuses_DeliveryStatus()

        return DeliveryStatusCategory(
            label: "label", 
            activated: true, 
            statuses: [statuses_DeliveryStatus]
        )
    }
        let deliveryStatusCategories_DeliveryStatusCategory = make_deliveryStatusCategories_DeliveryStatusCategory()

    func make_currentStatus_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let currentStatus_DeliveryStatus = make_currentStatus_DeliveryStatus()

            let testObject_ = OrderItem(
            orderItemId: "orderItemId", 
            brand: "brand", 
            configSku: "configSku", 
            simpleSku: "simpleSku", 
            quantity: 1, 
            name: "name", 
            unitPrice: 1, 
            image: "image", 
            size: "size", 
            deliveryStatusCategories: [deliveryStatusCategories_DeliveryStatusCategory], 
            selectedSizeSystem: "selectedSizeSystem", 
            currentStatus:  currentStatus_DeliveryStatus, 
            isCancelled: true
        )

            XCTAssertEqual(testObject_.orderItemId,"orderItemId")
            XCTAssertEqual(testObject_.brand,"brand")
            XCTAssertEqual(testObject_.configSku,"configSku")
            XCTAssertEqual(testObject_.simpleSku,"simpleSku")
            XCTAssertEqual(testObject_.quantity,1)
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.unitPrice,1)
            XCTAssertEqual(testObject_.image,"image")
            XCTAssertEqual(testObject_.size,"size")
            XCTAssertEqual(testObject_.deliveryStatusCategories,[deliveryStatusCategories_DeliveryStatusCategory])
            XCTAssertEqual(testObject_.selectedSizeSystem,"selectedSizeSystem")
            XCTAssertEqual(testObject_.currentStatus, currentStatus_DeliveryStatus)
            XCTAssertEqual(testObject_.isCancelled,true)
    }
    func testOrderItemGroup() {
    func make_orderItems_OrderItem() -> OrderItem {
    func make_deliveryStatusCategories_DeliveryStatusCategory() -> DeliveryStatusCategory {
    func make_statuses_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let statuses_DeliveryStatus = make_statuses_DeliveryStatus()

        return DeliveryStatusCategory(
            label: "label", 
            activated: true, 
            statuses: [statuses_DeliveryStatus]
        )
    }
        let deliveryStatusCategories_DeliveryStatusCategory = make_deliveryStatusCategories_DeliveryStatusCategory()

    func make_currentStatus_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let currentStatus_DeliveryStatus = make_currentStatus_DeliveryStatus()

        return OrderItem(
            orderItemId: "orderItemId", 
            brand: "brand", 
            configSku: "configSku", 
            simpleSku: "simpleSku", 
            quantity: 1, 
            name: "name", 
            unitPrice: 1, 
            image: "image", 
            size: "size", 
            deliveryStatusCategories: [deliveryStatusCategories_DeliveryStatusCategory], 
            selectedSizeSystem: "selectedSizeSystem", 
            currentStatus:  currentStatus_DeliveryStatus, 
            isCancelled: true
        )
    }
        let orderItems_OrderItem = make_orderItems_OrderItem()

            let testObject_ = OrderItemGroup(
            groupName: "groupName", 
            isTracked: true, 
            lastUpdate: "lastUpdate", 
            orderItems: [orderItems_OrderItem], 
            shipmentProviderName: "shipmentProviderName", 
            shipmentProviderUrl: "shipmentProviderUrl", 
            shipmentTrackingNumber: "shipmentTrackingNumber", 
            trackingStatus: "trackingStatus"
        )

            XCTAssertEqual(testObject_.groupName,"groupName")
            XCTAssertEqual(testObject_.isTracked,true)
            XCTAssertEqual(testObject_.lastUpdate,"lastUpdate")
            XCTAssertEqual(testObject_.orderItems,[orderItems_OrderItem])
            XCTAssertEqual(testObject_.shipmentProviderName,"shipmentProviderName")
            XCTAssertEqual(testObject_.shipmentProviderUrl,"shipmentProviderUrl")
            XCTAssertEqual(testObject_.shipmentTrackingNumber,"shipmentTrackingNumber")
            XCTAssertEqual(testObject_.trackingStatus,"trackingStatus")
    }
    func testOrderList() {
    func make_orders_Order() -> Order {
    func make_items_OrderItem() -> OrderItem {
    func make_deliveryStatusCategories_DeliveryStatusCategory() -> DeliveryStatusCategory {
    func make_statuses_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let statuses_DeliveryStatus = make_statuses_DeliveryStatus()

        return DeliveryStatusCategory(
            label: "label", 
            activated: true, 
            statuses: [statuses_DeliveryStatus]
        )
    }
        let deliveryStatusCategories_DeliveryStatusCategory = make_deliveryStatusCategories_DeliveryStatusCategory()

    func make_currentStatus_DeliveryStatus() -> DeliveryStatus {
        return DeliveryStatus(
            date: "date", 
            label: "label"
        )
    }
        let currentStatus_DeliveryStatus = make_currentStatus_DeliveryStatus()

        return OrderItem(
            orderItemId: "orderItemId", 
            brand: "brand", 
            configSku: "configSku", 
            simpleSku: "simpleSku", 
            quantity: 1, 
            name: "name", 
            unitPrice: 1, 
            image: "image", 
            size: "size", 
            deliveryStatusCategories: [deliveryStatusCategories_DeliveryStatusCategory], 
            selectedSizeSystem: "selectedSizeSystem", 
            currentStatus:  currentStatus_DeliveryStatus, 
            isCancelled: true
        )
    }
        let items_OrderItem = make_items_OrderItem()

    func make_billingAddress_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let billingAddress_Address = make_billingAddress_Address()

    func make_shippingAddress_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let shippingAddress_Address = make_shippingAddress_Address()

        return Order(
            date: "date", 
            salesOrderId: 1, 
            orderNumber: 1, 
            orderAmount: 1, 
            items: [items_OrderItem], 
            billingAddress:  billingAddress_Address, 
            shippingAddress:  shippingAddress_Address, 
            paymentMethod: "paymentMethod"
        )
    }
        let orders_Order = make_orders_Order()

            let testObject_ = OrderList(
            orders: [orders_Order]
        )

            XCTAssertEqual(testObject_.orders,[orders_Order])
    }
    func testOrderSuccessResponse() {
    func make_address_Address() -> Address {
        return Address(
            addressId: "addressId", 
            createAt: "createAt", 
            firstAddress: "firstAddress", 
            firstName: "firstName", 
            isDefaultBilling: true, 
            isDefaultShipping: true, 
            lastName: "lastName", 
            phone: "phone", 
            postcode: "postcode", 
            secondAddress: "secondAddress", 
            updateAt: "updateAt", 
            cellPhone: "cellPhone", 
            city: "city", 
            cityIndex: "cityIndex", 
            region: "region", 
            regionIndex: "regionIndex", 
            addressThirdLevel: "addressThirdLevel", 
            landMark: "landMark"
        )
    }
        let address_Address = make_address_Address()

            let testObject_ = OrderSuccessResponse(
            orderNumber: "orderNumber", 
            address:  address_Address, 
            grandTotal: 1, 
            convertedGrandTotal: 1, 
            taxAmount: 1, 
            shippingAmount: 1, 
            discountAmount: 1, 
            promoCode: "promoCode", 
            thirdPartyRedirectUrl: "thirdPartyRedirectUrl", 
            paymentMethod: "paymentMethod", 
            createdDateString: "createdDateString"
        )

            XCTAssertEqual(testObject_.orderNumber,"orderNumber")
            XCTAssertEqual(testObject_.address, address_Address)
            XCTAssertEqual(testObject_.grandTotal,1)
            XCTAssertEqual(testObject_.convertedGrandTotal,1)
            XCTAssertEqual(testObject_.taxAmount,1)
            XCTAssertEqual(testObject_.shippingAmount,1)
            XCTAssertEqual(testObject_.discountAmount,1)
            XCTAssertEqual(testObject_.promoCode,"promoCode")
            XCTAssertEqual(testObject_.thirdPartyRedirectUrl,"thirdPartyRedirectUrl")
            XCTAssertEqual(testObject_.paymentMethod,"paymentMethod")
            XCTAssertEqual(testObject_.createdDateString,"createdDateString")
    }
    func testOrderTracking() {
            let testObject_ = OrderTracking(
            message: "message", 
            trackingNumber: "trackingNumber", 
            updatedAt: "updatedAt"
        )

            XCTAssertEqual(testObject_.message,"message")
            XCTAssertEqual(testObject_.trackingNumber,"trackingNumber")
            XCTAssertEqual(testObject_.updatedAt,"updatedAt")
    }
    func testOrderTrackingList() {
    func make_trackings_OrderTracking() -> OrderTracking {
        return OrderTracking(
            message: "message", 
            trackingNumber: "trackingNumber", 
            updatedAt: "updatedAt"
        )
    }
        let trackings_OrderTracking = make_trackings_OrderTracking()

            let testObject_ = OrderTrackingList(
            trackings: [trackings_OrderTracking]
        )

            XCTAssertEqual(testObject_.trackings,[trackings_OrderTracking])
    }
    func testPostBody() {
    func make_action_PostBodyAction() -> PostBodyAction {
        return PostBodyAction(
            label: "label", 
            deeplink: "deeplink"
        )
    }
        let action_PostBodyAction = make_action_PostBodyAction()

    func make_media_PostBodyMedia() -> PostBodyMedia {
        return PostBodyMedia(
            type: "type", 
            url: "url", 
            width: 1, 
            height: 1, 
            deeplink: "deeplink", 
            internalPromotionName: "internalPromotionName", 
            mediaDescription: "mediaDescription"
        )
    }
        let media_PostBodyMedia = make_media_PostBodyMedia()

            let testObject_ = PostBody(
            id: "id", 
            title: "title", 
            source: "source", 
            endpoint: "endpoint", 
            segment: "segment", 
            deeplink: "deeplink", 
            language: "language", 
            subtitle: "subtitle", 
            mainDescription: "mainDescription", 
            secondDescription: "secondDescription", 
            countdownTimerText: "countdownTimerText", 
            countdownTimerStart: "countdownTimerStart", 
            expiredAt: "expiredAt", 
            internalPromotionName: "internalPromotionName", 
            url: "url", 
            columns: 1, 
            autoScroll: true, 
            action:  action_PostBodyAction, 
            media: [media_PostBodyMedia]
        )

            XCTAssertEqual(testObject_.id,"id")
            XCTAssertEqual(testObject_.title,"title")
            XCTAssertEqual(testObject_.source,"source")
            XCTAssertEqual(testObject_.endpoint,"endpoint")
            XCTAssertEqual(testObject_.segment,"segment")
            XCTAssertEqual(testObject_.deeplink,"deeplink")
            XCTAssertEqual(testObject_.language,"language")
            XCTAssertEqual(testObject_.subtitle,"subtitle")
            XCTAssertEqual(testObject_.mainDescription,"mainDescription")
            XCTAssertEqual(testObject_.secondDescription,"secondDescription")
            XCTAssertEqual(testObject_.countdownTimerText,"countdownTimerText")
            XCTAssertEqual(testObject_.countdownTimerStart,"countdownTimerStart")
            XCTAssertEqual(testObject_.expiredAt,"expiredAt")
            XCTAssertEqual(testObject_.internalPromotionName,"internalPromotionName")
            XCTAssertEqual(testObject_.url,"url")
            XCTAssertEqual(testObject_.columns,1)
            XCTAssertEqual(testObject_.autoScroll,true)
            XCTAssertEqual(testObject_.action, action_PostBodyAction)
            XCTAssertEqual(testObject_.media,[media_PostBodyMedia])
    }
    func testPostBodyAction() {
            let testObject_ = PostBodyAction(
            label: "label", 
            deeplink: "deeplink"
        )

            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.deeplink,"deeplink")
    }
    func testPostBodyMedia() {
            let testObject_ = PostBodyMedia(
            type: "type", 
            url: "url", 
            width: 1, 
            height: 1, 
            deeplink: "deeplink", 
            internalPromotionName: "internalPromotionName", 
            mediaDescription: "mediaDescription"
        )

            XCTAssertEqual(testObject_.type,"type")
            XCTAssertEqual(testObject_.url,"url")
            XCTAssertEqual(testObject_.width,1)
            XCTAssertEqual(testObject_.height,1)
            XCTAssertEqual(testObject_.deeplink,"deeplink")
            XCTAssertEqual(testObject_.internalPromotionName,"internalPromotionName")
            XCTAssertEqual(testObject_.mediaDescription,"mediaDescription")
    }
    func testProduct() {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

            let testObject_ = Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )

            XCTAssertEqual(testObject_.configSku,"configSku")
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.desc,"desc")
            XCTAssertEqual(testObject_.url,"url")
            XCTAssertEqual(testObject_.price,"price")
            XCTAssertEqual(testObject_.brand,"brand")
            XCTAssertEqual(testObject_.attributes,[:])
            XCTAssertEqual(testObject_.simples,[simples_ProductSimple])
            XCTAssertEqual(testObject_.imageList,[imageList_String])
            XCTAssertEqual(testObject_.variations,[variations_ProductVariation])
            XCTAssertEqual(testObject_.mainImageUrl,"mainImageUrl")
            XCTAssertEqual(testObject_.specialPrice,"specialPrice")
            XCTAssertEqual(testObject_.sizeSystemBrand,"sizeSystemBrand")
            XCTAssertEqual(testObject_.sizes,[:])
            XCTAssertEqual(testObject_.sizechartHtml,"sizechartHtml")
            XCTAssertEqual(testObject_.avgRating,1)
            XCTAssertEqual(testObject_.basketId,"basketId")
            XCTAssertEqual(testObject_.sellerName,"sellerName")
            XCTAssertEqual(testObject_.minBasketSize,"minBasketSize")
            XCTAssertEqual(testObject_.breadcrumbs,[breadcrumbs_String])
            XCTAssertEqual(testObject_.brandId,"brandId")
            XCTAssertEqual(testObject_.overlayUrl,"overlayUrl")
            XCTAssertEqual(testObject_.categoryIDs,[categoryIDs_String])
            XCTAssertEqual(testObject_.color,"color")
            XCTAssertEqual(testObject_.estimatedDelivery,"estimatedDelivery")
            XCTAssertEqual(testObject_.leadtimeEnabled,true)
            XCTAssertEqual(testObject_.mediaCollection,[mediaCollection_Media])
            XCTAssertEqual(testObject_.sellerInformation,"sellerInformation")
            XCTAssertEqual(testObject_.shippingCostInformation,"shippingCostInformation")
            XCTAssertEqual(testObject_.shortDescription,"shortDescription")
            XCTAssertEqual(testObject_.technicalDescription,"technicalDescription")
            XCTAssertEqual(testObject_.uniqueSellingPoints,[uniqueSellingPoints_UniqueSellingPoint])
            XCTAssertEqual(testObject_.isShippedFromOverseas,true)
            XCTAssertEqual(testObject_.adId,"adId")
            XCTAssertEqual(testObject_.specialLabel,"specialLabel")
            XCTAssertEqual(testObject_.markdownLabel,"markdownLabel")
            XCTAssertEqual(testObject_.isNonRefundable,true)
            XCTAssertEqual(testObject_.hasDifferentSimplePrices,true)
            XCTAssertEqual(testObject_.giftCardShipping, giftCardShipping_GiftcardShipping)
            XCTAssertEqual(testObject_.isEligibleForShippingEstimation,true)
    }
    func testProductCare() {
    func make_productCareAttributes_ProductCareAttribute() -> ProductCareAttribute {
        return ProductCareAttribute(
            label: "label", 
            value: "value"
        )
    }
        let productCareAttributes_ProductCareAttribute = make_productCareAttributes_ProductCareAttribute()

            let testObject_ = ProductCare(
            productCareAttributes: [productCareAttributes_ProductCareAttribute]
        )

            XCTAssertEqual(testObject_.productCareAttributes,[productCareAttributes_ProductCareAttribute])
    }
    func testProductCareAttribute() {
            let testObject_ = ProductCareAttribute(
            label: "label", 
            value: "value"
        )

            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.value,"value")
    }
    func testProductCategory() {
            let testObject_ = ProductCategory(
            parent: "parent", 
            name: "name", 
            segments: "segments", 
            categoryId: "categoryId", 
            subTitle: "subTitle", 
            previewImageUrl: "previewImageUrl"
        )

            XCTAssertEqual(testObject_.parent,"parent")
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.segments,"segments")
            XCTAssertEqual(testObject_.categoryId,"categoryId")
            XCTAssertEqual(testObject_.subTitle,"subTitle")
            XCTAssertEqual(testObject_.previewImageUrl,"previewImageUrl")
    }
    func testProductDetailSize() {
            let testObject_ = ProductDetailSize(
            configSku: "configSku", 
            measurements: "measurements", 
            modelsBodyMeasurements: "modelsBodyMeasurements", 
            sizeChart: "sizeChart"
        )

            XCTAssertEqual(testObject_.configSku,"configSku")
            XCTAssertEqual(testObject_.measurements,"measurements")
            XCTAssertEqual(testObject_.modelsBodyMeasurements,"modelsBodyMeasurements")
            XCTAssertEqual(testObject_.sizeChart,"sizeChart")
    }
    func testProductList() {
    func make_products_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let products_Product = make_products_Product()

    func make_sort_Sort() -> Sort {
    func make_options_SortOption() -> SortOption {
        return SortOption(
            label: "label", 
            parameter: "parameter"
        )
    }
        let options_SortOption = make_options_SortOption()

        return Sort(
            isMutuallyExclusive: true, 
            options: [options_SortOption]
        )
    }
        let sort_Sort = make_sort_Sort()

    func make_filters_Filter() -> Filter {
    func make_options_FilterOption() -> FilterOption {
    func make_subOptions_FilterSubOption() -> FilterSubOption {
        return FilterSubOption(
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )
    }
        let subOptions_FilterSubOption = make_subOptions_FilterSubOption()

        return FilterOption(
            selected: true, 
            subOptions: [subOptions_FilterSubOption], 
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )
    }
        let options_FilterOption = make_options_FilterOption()

    func make_widget_FilterWidget() -> FilterWidget {
        return FilterWidget(
            type: "type", 
            minValue: 1, 
            maxValue: 1
        )
    }
        let widget_FilterWidget = make_widget_FilterWidget()

        return Filter(
            filterId: "filterId", 
            lable: "lable", 
            type: "type", 
            multi: true, 
            options: [options_FilterOption], 
            widget:  widget_FilterWidget, 
            uspCmsKey: "uspCmsKey", 
            group: .global
        )
    }
        let filters_Filter = make_filters_Filter()

                let selectedCategoryIDs_String = "selectedCategoryIDs"
    func make_menuCategories_FilterOption() -> FilterOption {
    func make_subOptions_FilterSubOption() -> FilterSubOption {
        return FilterSubOption(
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )
    }
        let subOptions_FilterSubOption = make_subOptions_FilterSubOption()

        return FilterOption(
            selected: true, 
            subOptions: [subOptions_FilterSubOption], 
            lable: "lable", 
            value: "value", 
            resultsCount: 1
        )
    }
        let menuCategories_FilterOption = make_menuCategories_FilterOption()

            let testObject_ = ProductList(
            products: [products_Product], 
            productCount: 1, 
            brandId: "brandId", 
            searchImageId: "searchImageId", 
            sort:  sort_Sort, 
            filters: [filters_Filter], 
            actualSearchTerm: "actualSearchTerm", 
            selectedCategoryIDs: [selectedCategoryIDs_String], 
            selectedSegment: "selectedSegment", 
            menuCategories: [menuCategories_FilterOption], 
            catalogBanner: "catalogBanner", 
            catalogBannerLink: "catalogBannerLink", 
            catalogBannerAdId: "catalogBannerAdId", 
            originalSearchTerm: "originalSearchTerm", 
            correctedSearchTerm: "correctedSearchTerm"
        )

            XCTAssertEqual(testObject_.products,[products_Product])
            XCTAssertEqual(testObject_.productCount,1)
            XCTAssertEqual(testObject_.brandId,"brandId")
            XCTAssertEqual(testObject_.searchImageId,"searchImageId")
            XCTAssertEqual(testObject_.sort, sort_Sort)
            XCTAssertEqual(testObject_.filters,[filters_Filter])
            XCTAssertEqual(testObject_.actualSearchTerm,"actualSearchTerm")
            XCTAssertEqual(testObject_.selectedCategoryIDs,[selectedCategoryIDs_String])
            XCTAssertEqual(testObject_.selectedSegment,"selectedSegment")
            XCTAssertEqual(testObject_.menuCategories,[menuCategories_FilterOption])
            XCTAssertEqual(testObject_.catalogBanner,"catalogBanner")
            XCTAssertEqual(testObject_.catalogBannerLink,"catalogBannerLink")
            XCTAssertEqual(testObject_.catalogBannerAdId,"catalogBannerAdId")
            XCTAssertEqual(testObject_.originalSearchTerm,"originalSearchTerm")
            XCTAssertEqual(testObject_.correctedSearchTerm,"correctedSearchTerm")
    }
    func testProductReview() {
    func make_ratings_ReviewRating() -> ReviewRating {
        return ReviewRating(
            reviewRatingId: "reviewRatingId", 
            code: "code", 
            title: "title", 
            value: "value", 
            max: "max"
        )
    }
        let ratings_ReviewRating = make_ratings_ReviewRating()

            let testObject_ = ProductReview(
            title: "title", 
            detail: "detail", 
            nickname: "nickname", 
            createdAt: "createdAt", 
            ratings: [ratings_ReviewRating]
        )

            XCTAssertEqual(testObject_.title,"title")
            XCTAssertEqual(testObject_.detail,"detail")
            XCTAssertEqual(testObject_.nickname,"nickname")
            XCTAssertEqual(testObject_.createdAt,"createdAt")
            XCTAssertEqual(testObject_.ratings,[ratings_ReviewRating])
    }
    func testProductSimple() {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

            let testObject_ = ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )

            XCTAssertEqual(testObject_.simpleSku,"simpleSku")
            XCTAssertEqual(testObject_.price,"price")
            XCTAssertEqual(testObject_.quantity,1)
            XCTAssertEqual(testObject_.size,"size")
            XCTAssertEqual(testObject_.estimatedDelivery,"estimatedDelivery")
            XCTAssertEqual(testObject_.attributes,[:])
            XCTAssertEqual(testObject_.specialPrice,"specialPrice")
            XCTAssertEqual(testObject_.urgencyMessage,"urgencyMessage")
            XCTAssertEqual(testObject_.stockStatus,.inStock)
            XCTAssertEqual(testObject_.shipmentType,"shipmentType")
            XCTAssertEqual(testObject_.isShippedFromOverseas,true)
            XCTAssertEqual(testObject_.uniqueSellingPoints,[uniqueSellingPoints_UniqueSellingPoint])
            XCTAssertEqual(testObject_.isEligibleForShippingEstimation,true)
    }
    func testProductSize() {
            let testObject_ = ProductSize(
            label: "label", 
            position: "position"
        )

            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.position,"position")
    }
    func testProductVariation() {
            let testObject_ = ProductVariation(
            image: "image", 
            configSku: "configSku"
        )

            XCTAssertEqual(testObject_.image,"image")
            XCTAssertEqual(testObject_.configSku,"configSku")
    }
    func testRedirectResponse() {
            let testObject_ = RedirectResponse(
            redirectUrl: "redirectUrl"
        )

            XCTAssertEqual(testObject_.redirectUrl,"redirectUrl")
    }
    func testRegularShippingEstimation() {
            let testObject_ = RegularShippingEstimation(
            feeAmount: 1, 
            feeAmountAfterDiscount: 1, 
            feeText: "feeText", 
            isFeeDiscounted: true, 
            timeText: "timeText"
        )

            XCTAssertEqual(testObject_.feeAmount,1)
            XCTAssertEqual(testObject_.feeAmountAfterDiscount,1)
            XCTAssertEqual(testObject_.feeText,"feeText")
            XCTAssertEqual(testObject_.isFeeDiscounted,true)
            XCTAssertEqual(testObject_.timeText,"timeText")
    }
    func testReviewRating() {
            let testObject_ = ReviewRating(
            reviewRatingId: "reviewRatingId", 
            code: "code", 
            title: "title", 
            value: "value", 
            max: "max"
        )

            XCTAssertEqual(testObject_.reviewRatingId,"reviewRatingId")
            XCTAssertEqual(testObject_.code,"code")
            XCTAssertEqual(testObject_.title,"title")
            XCTAssertEqual(testObject_.value,"value")
            XCTAssertEqual(testObject_.max,"max")
    }
    func testReviewedProduct() {
    func make_review_ProductReview() -> ProductReview {
    func make_ratings_ReviewRating() -> ReviewRating {
        return ReviewRating(
            reviewRatingId: "reviewRatingId", 
            code: "code", 
            title: "title", 
            value: "value", 
            max: "max"
        )
    }
        let ratings_ReviewRating = make_ratings_ReviewRating()

        return ProductReview(
            title: "title", 
            detail: "detail", 
            nickname: "nickname", 
            createdAt: "createdAt", 
            ratings: [ratings_ReviewRating]
        )
    }
        let review_ProductReview = make_review_ProductReview()

    func make_aggregateRatings_ReviewRating() -> ReviewRating {
        return ReviewRating(
            reviewRatingId: "reviewRatingId", 
            code: "code", 
            title: "title", 
            value: "value", 
            max: "max"
        )
    }
        let aggregateRatings_ReviewRating = make_aggregateRatings_ReviewRating()

            let testObject_ = ReviewedProduct(
            configSku: "configSku", 
            name: "name", 
            reviewCount: 1, 
            review: [review_ProductReview], 
            aggregateRatings: [aggregateRatings_ReviewRating]
        )

            XCTAssertEqual(testObject_.configSku,"configSku")
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.reviewCount,1)
            XCTAssertEqual(testObject_.review,[review_ProductReview])
            XCTAssertEqual(testObject_.aggregateRatings,[aggregateRatings_ReviewRating])
    }
    func testRewardPointScheme() {
            let testObject_ = RewardPointScheme(
            partnerId: "partnerId", 
            name: "name", 
            pointTerm: "pointTerm", 
            logoURL: "logoURL", 
            points: 1, 
            value: 1, 
            enabled: true
        )

            XCTAssertEqual(testObject_.partnerId,"partnerId")
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.pointTerm,"pointTerm")
            XCTAssertEqual(testObject_.logoURL,"logoURL")
            XCTAssertEqual(testObject_.points,1)
            XCTAssertEqual(testObject_.value,1)
            XCTAssertEqual(testObject_.enabled,true)
    }
    func testRewardPoints() {
    func make_dbs_RewardPointScheme() -> RewardPointScheme {
        return RewardPointScheme(
            partnerId: "partnerId", 
            name: "name", 
            pointTerm: "pointTerm", 
            logoURL: "logoURL", 
            points: 1, 
            value: 1, 
            enabled: true
        )
    }
        let dbs_RewardPointScheme = make_dbs_RewardPointScheme()

    func make_posb_RewardPointScheme() -> RewardPointScheme {
        return RewardPointScheme(
            partnerId: "partnerId", 
            name: "name", 
            pointTerm: "pointTerm", 
            logoURL: "logoURL", 
            points: 1, 
            value: 1, 
            enabled: true
        )
    }
        let posb_RewardPointScheme = make_posb_RewardPointScheme()

            let testObject_ = RewardPoints(
            dbs:  dbs_RewardPointScheme, 
            posb:  posb_RewardPointScheme
        )

            XCTAssertEqual(testObject_.dbs, dbs_RewardPointScheme)
            XCTAssertEqual(testObject_.posb, posb_RewardPointScheme)
    }
    func testRule() {
            let testObject_ = Rule(
            type: "type", 
            rule: "rule", 
            errorMessage: "errorMessage"
        )

            XCTAssertEqual(testObject_.type,"type")
            XCTAssertEqual(testObject_.rule,"rule")
            XCTAssertEqual(testObject_.errorMessage,"errorMessage")
    }
    func testSegment() {
            let testObject_ = Segment(
            label: "label", 
            imageUrl: "imageUrl", 
            key: "key", 
            shopGenderLabel: "shopGenderLabel", 
            onSplashScreen: true
        )

            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.imageUrl,"imageUrl")
            XCTAssertEqual(testObject_.key,"key")
            XCTAssertEqual(testObject_.shopGenderLabel,"shopGenderLabel")
            XCTAssertEqual(testObject_.onSplashScreen,true)
    }
    func testSegmentList() {
    func make_list_Segment() -> Segment {
        return Segment(
            label: "label", 
            imageUrl: "imageUrl", 
            key: "key", 
            shopGenderLabel: "shopGenderLabel", 
            onSplashScreen: true
        )
    }
        let list_Segment = make_list_Segment()

            let testObject_ = SegmentList(
            md5: "md5", 
            list: [list_Segment]
        )

            XCTAssertEqual(testObject_.md5,"md5")
            XCTAssertEqual(testObject_.list,[list_Segment])
    }
    func testServices() {
    func make_facebookInvites_FacebookInvites() -> FacebookInvites {
        return FacebookInvites(
            invitePreviewImageURL: "invitePreviewImageURL", 
            inviteAppLinkURL: "inviteAppLinkURL", 
            backgroundImagePhonePortrait: "backgroundImagePhonePortrait", 
            backgroundImagePadPortrait: "backgroundImagePadPortrait", 
            backgroundImagePadLandscape: "backgroundImagePadLandscape"
        )
    }
        let facebookInvites_FacebookInvites = make_facebookInvites_FacebookInvites()

            let testObject_ = Services(
            facebookInvites:  facebookInvites_FacebookInvites, 
            gaID: "gaID", 
            md5: "md5", 
            magazineURL: "magazineURL", 
            communityURL: "communityURL", 
            feedBaseUrl: "feedBaseUrl", 
            datajetApiKey: "datajetApiKey", 
            statsDAPIKey: "statsDAPIKey", 
            statsDAppURL: "statsDAppURL", 
            isStatsDEnabled: true
        )

            XCTAssertEqual(testObject_.facebookInvites, facebookInvites_FacebookInvites)
            XCTAssertEqual(testObject_.gaID,"gaID")
            XCTAssertEqual(testObject_.md5,"md5")
            XCTAssertEqual(testObject_.magazineURL,"magazineURL")
            XCTAssertEqual(testObject_.communityURL,"communityURL")
            XCTAssertEqual(testObject_.feedBaseUrl,"feedBaseUrl")
            XCTAssertEqual(testObject_.datajetApiKey,"datajetApiKey")
            XCTAssertEqual(testObject_.statsDAPIKey,"statsDAPIKey")
            XCTAssertEqual(testObject_.statsDAppURL,"statsDAppURL")
            XCTAssertEqual(testObject_.isStatsDEnabled,true)
    }
    func testShippingEstimation() {
    func make_regularShipping_RegularShippingEstimation() -> RegularShippingEstimation {
        return RegularShippingEstimation(
            feeAmount: 1, 
            feeAmountAfterDiscount: 1, 
            feeText: "feeText", 
            isFeeDiscounted: true, 
            timeText: "timeText"
        )
    }
        let regularShipping_RegularShippingEstimation = make_regularShipping_RegularShippingEstimation()

    func make_expressShipping_ExpressShippingEstimation() -> ExpressShippingEstimation {
        return ExpressShippingEstimation(
            feeAmount: 1, 
            timeText: "timeText"
        )
    }
        let expressShipping_ExpressShippingEstimation = make_expressShipping_ExpressShippingEstimation()

            let testObject_ = ShippingEstimation(
            regularShipping:  regularShipping_RegularShippingEstimation, 
            expressShipping:  expressShipping_ExpressShippingEstimation
        )

            XCTAssertEqual(testObject_.regularShipping, regularShipping_RegularShippingEstimation)
            XCTAssertEqual(testObject_.expressShipping, expressShipping_ExpressShippingEstimation)
    }
    func testShopBy() {
    func make_navigationGroups_NavigationGroup() -> NavigationGroup {
    func make_navigations_Navigation() -> Navigation {
        return Navigation(
            label: "label", 
            type: "type", 
            url: "url", 
            imageUrl: "imageUrl", 
            menImageUrl: "menImageUrl", 
            womenImageUrl: "womenImageUrl", 
            previewImageUrl: "previewImageUrl", 
            kidImageUrl: "kidImageUrl", 
            cms: "cms"
        )
    }
        let navigations_Navigation = make_navigations_Navigation()

        return NavigationGroup(
            navigationsGroupName: "navigationsGroupName", 
            navigationsDisplayType: "navigationsDisplayType", 
            navigations: [navigations_Navigation]
        )
    }
        let navigationGroups_NavigationGroup = make_navigationGroups_NavigationGroup()

            let testObject_ = ShopBy(
            segment: "segment", 
            key: "key", 
            navigationGroups: [navigationGroups_NavigationGroup]
        )

            XCTAssertEqual(testObject_.segment,"segment")
            XCTAssertEqual(testObject_.key,"key")
            XCTAssertEqual(testObject_.navigationGroups,[navigationGroups_NavigationGroup])
    }
    func testShopByUrlList() {
    func make_shopBys_ShopBy() -> ShopBy {
    func make_navigationGroups_NavigationGroup() -> NavigationGroup {
    func make_navigations_Navigation() -> Navigation {
        return Navigation(
            label: "label", 
            type: "type", 
            url: "url", 
            imageUrl: "imageUrl", 
            menImageUrl: "menImageUrl", 
            womenImageUrl: "womenImageUrl", 
            previewImageUrl: "previewImageUrl", 
            kidImageUrl: "kidImageUrl", 
            cms: "cms"
        )
    }
        let navigations_Navigation = make_navigations_Navigation()

        return NavigationGroup(
            navigationsGroupName: "navigationsGroupName", 
            navigationsDisplayType: "navigationsDisplayType", 
            navigations: [navigations_Navigation]
        )
    }
        let navigationGroups_NavigationGroup = make_navigationGroups_NavigationGroup()

        return ShopBy(
            segment: "segment", 
            key: "key", 
            navigationGroups: [navigationGroups_NavigationGroup]
        )
    }
        let shopBys_ShopBy = make_shopBys_ShopBy()

            let testObject_ = ShopByUrlList(
            md5: "md5", 
            shopBys: [shopBys_ShopBy]
        )

            XCTAssertEqual(testObject_.md5,"md5")
            XCTAssertEqual(testObject_.shopBys,[shopBys_ShopBy])
    }
    func testShopCatalog() {
    func make_segments_SegmentList() -> SegmentList {
    func make_list_Segment() -> Segment {
        return Segment(
            label: "label", 
            imageUrl: "imageUrl", 
            key: "key", 
            shopGenderLabel: "shopGenderLabel", 
            onSplashScreen: true
        )
    }
        let list_Segment = make_list_Segment()

        return SegmentList(
            md5: "md5", 
            list: [list_Segment]
        )
    }
        let segments_SegmentList = make_segments_SegmentList()

    func make_backgroundImageURL_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let backgroundImageURL_Image = make_backgroundImageURL_Image()

            let testObject_ = ShopCatalog(
            key: "key", 
            label: "label", 
            catalogDescription: "catalogDescription", 
            segments:  segments_SegmentList, 
            gaKey: "gaKey", 
            logo: "logo", 
            backgroundImageURL:  backgroundImageURL_Image, 
            logoURL: "logoURL"
        )

            XCTAssertEqual(testObject_.key,"key")
            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.catalogDescription,"catalogDescription")
            XCTAssertEqual(testObject_.segments, segments_SegmentList)
            XCTAssertEqual(testObject_.gaKey,"gaKey")
            XCTAssertEqual(testObject_.logo,"logo")
            XCTAssertEqual(testObject_.backgroundImageURL, backgroundImageURL_Image)
            XCTAssertEqual(testObject_.logoURL,"logoURL")
    }
    func testSort() {
    func make_options_SortOption() -> SortOption {
        return SortOption(
            label: "label", 
            parameter: "parameter"
        )
    }
        let options_SortOption = make_options_SortOption()

            let testObject_ = Sort(
            isMutuallyExclusive: true, 
            options: [options_SortOption]
        )

            XCTAssertEqual(testObject_.isMutuallyExclusive,true)
            XCTAssertEqual(testObject_.options,[options_SortOption])
    }
    func testSortOption() {
            let testObject_ = SortOption(
            label: "label", 
            parameter: "parameter"
        )

            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.parameter,"parameter")
    }
    func testStaticScreen() {
            let testObject_ = StaticScreen(
            title: "title", 
            body: "body"
        )

            XCTAssertEqual(testObject_.title,"title")
            XCTAssertEqual(testObject_.body,"body")
    }
    func testSuggest() {
            let testObject_ = Suggest(
            suggest: "suggest", 
            amount: 1
        )

            XCTAssertEqual(testObject_.suggest,"suggest")
            XCTAssertEqual(testObject_.amount,1)
    }
    func testSuggestList() {
    func make_suggests_Suggest() -> Suggest {
        return Suggest(
            suggest: "suggest", 
            amount: 1
        )
    }
        let suggests_Suggest = make_suggests_Suggest()

    func make_brands_BrandSuggestion() -> BrandSuggestion {
        return BrandSuggestion(
            brandUrl: "brandUrl", 
            brandId: "brandId", 
            name: "name", 
            productCount: 1
        )
    }
        let brands_BrandSuggestion = make_brands_BrandSuggestion()

    func make_categories_CategorySuggestion() -> CategorySuggestion {
        return CategorySuggestion(
            categoryUrl: "categoryUrl", 
            filteredBrandName: "filteredBrandName", 
            filteredBrandId: "filteredBrandId", 
            name: "name", 
            categoryId: "categoryId", 
            productCount: 1
        )
    }
        let categories_CategorySuggestion = make_categories_CategorySuggestion()

    func make_correctionHighlights_CorrectionHighlight() -> CorrectionHighlight {
        return CorrectionHighlight(
            startIndex: 1, 
            length: 1, 
            term: "term"
        )
    }
        let correctionHighlights_CorrectionHighlight = make_correctionHighlights_CorrectionHighlight()

            let testObject_ = SuggestList(
            suggests: [suggests_Suggest], 
            brands: [brands_BrandSuggestion], 
            categories: [categories_CategorySuggestion], 
            correctionHighlights: [correctionHighlights_CorrectionHighlight], 
            searchTerm: "searchTerm", 
            userSearchTerm: "userSearchTerm"
        )

            XCTAssertEqual(testObject_.suggests,[suggests_Suggest])
            XCTAssertEqual(testObject_.brands,[brands_BrandSuggestion])
            XCTAssertEqual(testObject_.categories,[categories_CategorySuggestion])
            XCTAssertEqual(testObject_.correctionHighlights,[correctionHighlights_CorrectionHighlight])
            XCTAssertEqual(testObject_.searchTerm,"searchTerm")
            XCTAssertEqual(testObject_.userSearchTerm,"userSearchTerm")
    }
    func testTextFieldSuggestion() {
            let testObject_ = TextFieldSuggestion(
            suggestion: "suggestion"
        )

            XCTAssertEqual(testObject_.suggestion,"suggestion")
    }
    func testTutorialPage() {
    func make_image_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let image_Image = make_image_Image()

            let testObject_ = TutorialPage(
            name: "name", 
            headerTag: "headerTag", 
            header: "header", 
            headerImageUrl: "headerImageUrl", 
            tutorialDescription: "tutorialDescription", 
            minAppVersion: "minAppVersion", 
            topRatio: "topRatio", 
            image:  image_Image
        )

            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.headerTag,"headerTag")
            XCTAssertEqual(testObject_.header,"header")
            XCTAssertEqual(testObject_.headerImageUrl,"headerImageUrl")
            XCTAssertEqual(testObject_.tutorialDescription,"tutorialDescription")
            XCTAssertEqual(testObject_.minAppVersion,"minAppVersion")
            XCTAssertEqual(testObject_.topRatio,"topRatio")
            XCTAssertEqual(testObject_.image, image_Image)
    }
    func testTutorialPageList() {
    func make_pageList_TutorialPage() -> TutorialPage {
    func make_image_Image() -> Image {
        return Image(
            phonePortrait: "phonePortrait", 
            tabletPortrait: "tabletPortrait", 
            tabletLandscape: "tabletLandscape", 
            backgroundColor: "backgroundColor"
        )
    }
        let image_Image = make_image_Image()

        return TutorialPage(
            name: "name", 
            headerTag: "headerTag", 
            header: "header", 
            headerImageUrl: "headerImageUrl", 
            tutorialDescription: "tutorialDescription", 
            minAppVersion: "minAppVersion", 
            topRatio: "topRatio", 
            image:  image_Image
        )
    }
        let pageList_TutorialPage = make_pageList_TutorialPage()

            let testObject_ = TutorialPageList(
            md5: "md5", 
            pageList: [pageList_TutorialPage]
        )

            XCTAssertEqual(testObject_.md5,"md5")
            XCTAssertEqual(testObject_.pageList,[pageList_TutorialPage])
    }
    func testUniqueSellingPoint() {
            let testObject_ = UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )

            XCTAssertEqual(testObject_.extraInfomation,"extraInfomation")
            XCTAssertEqual(testObject_.iconUrl,"iconUrl")
            XCTAssertEqual(testObject_.tooltip,"tooltip")
            XCTAssertEqual(testObject_.uspDescription,"uspDescription")
            XCTAssertEqual(testObject_.learnMoreCmsBlock,"learnMoreCmsBlock")
    }
    func testUrls() {
            let testObject_ = Urls(
            privacyPolicyURL: "privacyPolicyURL", 
            aboutURL: "aboutURL", 
            exchangeReturnsURL: "exchangeReturnsURL", 
            faqURL: "faqURL", 
            bankTransferConfirmationURL: "bankTransferConfirmationURL"
        )

            XCTAssertEqual(testObject_.privacyPolicyURL,"privacyPolicyURL")
            XCTAssertEqual(testObject_.aboutURL,"aboutURL")
            XCTAssertEqual(testObject_.exchangeReturnsURL,"exchangeReturnsURL")
            XCTAssertEqual(testObject_.faqURL,"faqURL")
            XCTAssertEqual(testObject_.bankTransferConfirmationURL,"bankTransferConfirmationURL")
    }
    func testVersion() {
            let testObject_ = Version(
            md5: "md5", 
            minVersion: "minVersion", 
            curVersion: "curVersion", 
            optionalUpdate: "optionalUpdate", 
            forceUpdate: "forceUpdate"
        )

            XCTAssertEqual(testObject_.md5,"md5")
            XCTAssertEqual(testObject_.minVersion,"minVersion")
            XCTAssertEqual(testObject_.curVersion,"curVersion")
            XCTAssertEqual(testObject_.optionalUpdate,"optionalUpdate")
            XCTAssertEqual(testObject_.forceUpdate,"forceUpdate")
    }
    func testWallet() {
            let testObject_ = Wallet(
            credit: 1
        )

            XCTAssertEqual(testObject_.credit,1)
    }
    func testWalletHistory() {
    func make_transactions_WalletTransaction() -> WalletTransaction {
        return WalletTransaction(
            timeStamp: "timeStamp", 
            label: "label", 
            credited: 1, 
            spent: 1, 
            expirationDate: "expirationDate"
        )
    }
        let transactions_WalletTransaction = make_transactions_WalletTransaction()

            let testObject_ = WalletHistory(
            transactions: [transactions_WalletTransaction]
        )

            XCTAssertEqual(testObject_.transactions,[transactions_WalletTransaction])
    }
    func testWalletTransaction() {
            let testObject_ = WalletTransaction(
            timeStamp: "timeStamp", 
            label: "label", 
            credited: 1, 
            spent: 1, 
            expirationDate: "expirationDate"
        )

            XCTAssertEqual(testObject_.timeStamp,"timeStamp")
            XCTAssertEqual(testObject_.label,"label")
            XCTAssertEqual(testObject_.credited,1)
            XCTAssertEqual(testObject_.spent,1)
            XCTAssertEqual(testObject_.expirationDate,"expirationDate")
    }
    func testWishListItem() {
    func make_product_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let product_Product = make_product_Product()

            let testObject_ = WishListItem(
            itemId: "itemId", 
            product:  product_Product, 
            simpleSku: "simpleSku", 
            createdAt: 1, 
            selectedSizeSystem: "selectedSizeSystem"
        )

            XCTAssertEqual(testObject_.itemId,"itemId")
            XCTAssertEqual(testObject_.product, product_Product)
            XCTAssertEqual(testObject_.simpleSku,"simpleSku")
            XCTAssertEqual(testObject_.createdAt,1)
            XCTAssertEqual(testObject_.selectedSizeSystem,"selectedSizeSystem")
    }
    func testWishlist() {
    func make_items_WishListItem() -> WishListItem {
    func make_product_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let product_Product = make_product_Product()

        return WishListItem(
            itemId: "itemId", 
            product:  product_Product, 
            simpleSku: "simpleSku", 
            createdAt: 1, 
            selectedSizeSystem: "selectedSizeSystem"
        )
    }
        let items_WishListItem = make_items_WishListItem()

            let testObject_ = Wishlist(
            items: [items_WishListItem], 
            id: "id", 
            name: "name", 
            isDefault: true, 
            totalCount: 1
        )

            XCTAssertEqual(testObject_.items,[items_WishListItem])
            XCTAssertEqual(testObject_.id,"id")
            XCTAssertEqual(testObject_.name,"name")
            XCTAssertEqual(testObject_.isDefault,true)
            XCTAssertEqual(testObject_.totalCount,1)
    }
    func testWishlists() {
    func make_wishLists_Wishlist() -> Wishlist {
    func make_items_WishListItem() -> WishListItem {
    func make_product_Product() -> Product {
    func make_simples_ProductSimple() -> ProductSimple {
    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

        return ProductSimple(
            simpleSku: "simpleSku", 
            price: "price", 
            quantity: 1, 
            size: "size", 
            estimatedDelivery: "estimatedDelivery", 
            attributes: [:], 
            specialPrice: "specialPrice", 
            urgencyMessage: "urgencyMessage", 
            stockStatus: .inStock, 
            shipmentType: "shipmentType", 
            isShippedFromOverseas: true, 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isEligibleForShippingEstimation: true
        )
    }
        let simples_ProductSimple = make_simples_ProductSimple()

                let imageList_String = "imageList"
    func make_variations_ProductVariation() -> ProductVariation {
        return ProductVariation(
            image: "image", 
            configSku: "configSku"
        )
    }
        let variations_ProductVariation = make_variations_ProductVariation()

                let breadcrumbs_String = "breadcrumbs"
                let categoryIDs_String = "categoryIDs"
    func make_mediaCollection_Media() -> Media {
        return Media(
            contentType: 1, 
            meta: [:], 
            url: "url"
        )
    }
        let mediaCollection_Media = make_mediaCollection_Media()

    func make_uniqueSellingPoints_UniqueSellingPoint() -> UniqueSellingPoint {
        return UniqueSellingPoint(
            extraInfomation: "extraInfomation", 
            iconUrl: "iconUrl", 
            tooltip: "tooltip", 
            uspDescription: "uspDescription", 
            learnMoreCmsBlock: "learnMoreCmsBlock"
        )
    }
        let uniqueSellingPoints_UniqueSellingPoint = make_uniqueSellingPoints_UniqueSellingPoint()

    func make_giftCardShipping_GiftcardShipping() -> GiftcardShipping {
        return GiftcardShipping(
            descriptionText: "descriptionText", 
            title: "title"
        )
    }
        let giftCardShipping_GiftcardShipping = make_giftCardShipping_GiftcardShipping()

        return Product(
            configSku: "configSku", 
            name: "name", 
            desc: "desc", 
            url: "url", 
            price: "price", 
            brand: "brand", 
            attributes: [:], 
            simples: [simples_ProductSimple], 
            imageList: [imageList_String], 
            variations: [variations_ProductVariation], 
            mainImageUrl: "mainImageUrl", 
            specialPrice: "specialPrice", 
            sizeSystemBrand: "sizeSystemBrand", 
            sizes: [:], 
            sizechartHtml: "sizechartHtml", 
            avgRating: 1, 
            basketId: "basketId", 
            sellerName: "sellerName", 
            minBasketSize: "minBasketSize", 
            breadcrumbs: [breadcrumbs_String], 
            brandId: "brandId", 
            overlayUrl: "overlayUrl", 
            categoryIDs: [categoryIDs_String], 
            color: "color", 
            estimatedDelivery: "estimatedDelivery", 
            leadtimeEnabled: true, 
            mediaCollection: [mediaCollection_Media], 
            sellerInformation: "sellerInformation", 
            shippingCostInformation: "shippingCostInformation", 
            shortDescription: "shortDescription", 
            technicalDescription: "technicalDescription", 
            uniqueSellingPoints: [uniqueSellingPoints_UniqueSellingPoint], 
            isShippedFromOverseas: true, 
            adId: "adId", 
            specialLabel: "specialLabel", 
            markdownLabel: "markdownLabel", 
            isNonRefundable: true, 
            hasDifferentSimplePrices: true, 
            giftCardShipping:  giftCardShipping_GiftcardShipping, 
            isEligibleForShippingEstimation: true
        )
    }
        let product_Product = make_product_Product()

        return WishListItem(
            itemId: "itemId", 
            product:  product_Product, 
            simpleSku: "simpleSku", 
            createdAt: 1, 
            selectedSizeSystem: "selectedSizeSystem"
        )
    }
        let items_WishListItem = make_items_WishListItem()

        return Wishlist(
            items: [items_WishListItem], 
            id: "id", 
            name: "name", 
            isDefault: true, 
            totalCount: 1
        )
    }
        let wishLists_Wishlist = make_wishLists_Wishlist()

            let testObject_ = Wishlists(
            wishLists: [wishLists_Wishlist]
        )

            XCTAssertEqual(testObject_.wishLists,[wishLists_Wishlist])
    }
}
