#import <Foundation/Foundation.h>
#import "OAIConfiguration.h"

/**
* CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
* CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
*
* The version of the OpenAPI document: 2.1.1
* Contact: data@cryptocompare.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


@class OAIApiClient;

@interface OAIDefaultConfiguration : NSObject <OAIConfiguration>


/**
 * Default api logger
 */
@property (nonatomic, strong) OAILogger * logger;

/**
 * Default base url
 */
@property (nonatomic) NSString *host;

/**
 * Api key values for Api Key type Authentication
 *
 * To add or remove api key, use `setApiKey:forApiKeyIdentifier:`.
 */
@property (readonly, nonatomic, strong) NSDictionary *apiKey;

/**
 * Api key prefix values to be prepend to the respective api key
 *
 * To add or remove prefix, use `setApiKeyPrefix:forApiKeyPrefixIdentifier:`.
 */
@property (readonly, nonatomic, strong) NSDictionary *apiKeyPrefix;

/**
 * Username for HTTP Basic Authentication
 */
 @property (nonatomic) NSString *username;

/**
 * Password for HTTP Basic Authentication
 */
@property (nonatomic) NSString *password;

/**
 * Access token for OAuth
 */
@property (nonatomic) NSString *accessToken;

/**
 * Temp folder for file download
 */
@property (nonatomic) NSString *tempFolderPath;

/**
 * Debug switch, default false
 */
@property (nonatomic) BOOL debug;

/**
 * Gets configuration singleton instance
 */
+ (instancetype) sharedConfig;

/**
 * SSL/TLS verification
 * Set this to NO to skip verifying SSL certificate when calling API from https server
 */
@property (nonatomic) BOOL verifySSL;

/**
 * SSL/TLS verification
 * Set this to customize the certificate file to verify the peer
 */
@property (nonatomic) NSString *sslCaCert;

/**
 * The time zone to use for date serialization
 */
@property (nonatomic) NSTimeZone *serializationTimeZone;

/**
 * Sets API key
 *
 * To remove an apiKey for an identifier, just set the apiKey to nil.
 *
 * @param apiKey     API key or token.
 * @param identifier API key identifier (authentication schema).
 *
 */
- (void) setApiKey:(NSString *)apiKey forApiKeyIdentifier:(NSString*)identifier;

/**
 * Removes api key
 *
 * @param identifier API key identifier.
 */
- (void) removeApiKey:(NSString *)identifier;

/**
 * Sets the prefix for API key
 *
 * @param prefix API key prefix.
 * @param identifier   API key identifier.
 */
- (void) setApiKeyPrefix:(NSString *)prefix forApiKeyPrefixIdentifier:(NSString *)identifier;

/**
 * Removes api key prefix
 *
 * @param identifier API key identifier.
 */
- (void) removeApiKeyPrefix:(NSString *)identifier;

/**
 * Gets API key (with prefix if set)
 */
- (NSString *) getApiKeyWithPrefix:(NSString *) key;

/**
 * Gets Basic Auth token
 */
- (NSString *) getBasicAuthToken;

/**
 * Gets OAuth access token
 */
- (NSString *) getAccessToken;

/**
 * Gets Authentication Settings
 */
- (NSDictionary *) authSettings;

/**
* Default headers for all services
*/
@property (readonly, nonatomic, strong) NSDictionary *defaultHeaders;

/**
* Removes header from defaultHeaders
*
* @param key Header name.
*/
-(void) removeDefaultHeaderForKey:(NSString*)key;

/**
* Sets the header for key
*
* @param value         Value for header name
* @param key           Header name
*/
-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key;

/**
* @param key Header key name.
*/
-(NSString*) defaultHeaderForKey:(NSString*)key;

@end