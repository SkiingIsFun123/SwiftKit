# Release notes


## 1.0

After a lot of waiting and stabilizing, I think it's time to push the major release button.

There are no drastic changes, but I use this in most of my projects and find it very helpful and stable.  

This version drastically improves documentation and ships with a DocC documentation archive. 



## 0.7.0

This version requires Xcode 13 and later, since it refers to the latest api:s.

This version also cleans up the code and makes changes to conform to the latest standards. 

### ✨ New features

* `Calendar+Date` has new `same` functions to provide the comparison date.
* `DispatchQueue+Throttle` has new `throttle` and `debounce` functions.
* `String+Split` has a new `split(by:)` components splitting function.
* `Url+Global` has a new `userSubscriptions` url.

### 💥 Breaking changes

* All previously deprecated features have been removed.
* `ApiService` moves the `type` param before the `httpMethod`, since `httpMethod` now has a default value.
* `ApiRoute` and `ApiService` now use enum-based HTTP methods instead of string-based ones.
* `DispatchQueue+Async` now requires that you explicitly define `seconds` when using that `asyncAfter` function.
* `URL+Global` `appStoreUrl(forAppId:)` now returns an optional url.



## 0.6.1 - 0.6.2

These versions remove explicit url encoding of `ApiRoute` query params and always url encode form data params.



## 0.6.0

### ✨ New features

* `ApiRoute` has more explicit properties for working with post data.
* `ApiRoute` has a new `shouldUrlEncodeParams` parameter.
* `iCloudDocumentSync` is a new protocol for syncing iCloud document changes. 
* `String+Slugify` is a new extension that can convert a string to a slugified version.
* `StandardiCloudDocumentSync` is a new class for syncing iCloud document changes.
* `URL+iCloud` contains iCloud-specific URLs and fallback URLs.

### 💡 Behavior changes

* `ApiRoute` has more required properties.
* `URL+setQueryParameter` no longer url encodes the strings you send in. 

### 💥 Breaking changes

* `ApiRoute` requires new post properties to be defined.



## 0.5.0

This version adjusts code that made the demo not being able to use the SPM package instead of the source files.

### ✨ New features

* `ApiError` is a new enum that replaces the old `ApiServiceError`.
* `FileExporter` is a new protocol for exporting data to the file system.
* `MimeType` is a new enum for simplifying working with mime types.
* `MFMailComposeViewController` has a new `addAttachmentData` that uses the new `MimeType`.
* `StandardFileExporter` is a new `FileExporter` implementation.

### 🗑 Deprecations

* `ApiServiceError` has been deprecated in favor of `ApiError`.

### 💥 Breaking changes

* `ApiError` is a lot easier than before, with many cases gone and more info in the remaining ones.



## 0.4.4

This version adds a new `HttpMethod` enum that can be used with the network components.



## 0.4.3

This version adds new `ApiRoute` request functions and adjusts the url of form data requests.



## 0.4.2

This version adds missing initializers to map services.



## 0.4.1

This version updates dependencies, adjusts project setup, tweak icons and display names etc.



## 0.4.0

This version adds a new `String+Dictation` extension to cleanup dictation objects and spaces from a string.



## 0.3.3

This version adds a new `ExternalMapService` protocol as well as an Apple and a Google implementation.

This version also adds a new `Network` namespace, with api-specific protocols and errors for communicating with external REST apis.



## 0.3.2

This version adds a `UserDefaults+Codable` extension for persisting codable types in `UserDefaults`.



## 0.3.1

This version makes the standard cvs parser use paths instead of urls when parsing files.



## 0.3.0

This version adds improved support for watchOS and tvOS.

The bump version process has been improved to also add linting and a unit test confirmation.



## 0.2.0

This version adds:

* new `Localization` utilities, like `Translator`s and `LocalizationService`s.
* new `FileDirectoryService` utilities.

This version also adds macOS support.



## 0.1.0

This version adds:

* a new `Filter` type that simplifies filtering object collections.
* new `Date` [extensions][Extensions].
* new `Numeric` conversion [extensions][Extensions].



## 0.0.6

This version adds a bunch of [extensions][Extensions] and common utils and updates external test dependencies to the latest versions.



## 0.0.5

This version adds a bunch of [extensions][Extensions] and common types.



## 0.0.4

This version adds [device][Device] and [keychain][Keychain] utils.



## 0.0.3

This version adds a bunch of convenient [extensions][Extensions]. 



## 0.0.2

This version adjusts [authentication][Authentication] service signatures, as well as [coding][Coding] and [IoC][IoC] functionality  



## 0.0.1

This version adds [authentication][Authentication] functionality to `SwiftKit`.


[Authentication]: Readmes/Authentication.md
[Coding]: Readmes/Coding.md 
[Device]: Readmes/Device.md
[Extensions]: Readmes/Extensions.md
[IoC]: Readmes/IoC.md
[Keychain]: Readmes/Keychain.md
