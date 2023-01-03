/*
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 *
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// SPOTINSTRUMENTMARKETDATARESPONSEErr
    /// </summary>
    [DataContract(Name = "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err")]
    public partial class SPOTINSTRUMENTMARKETDATARESPONSEErr : IEquatable<SPOTINSTRUMENTMARKETDATARESPONSEErr>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SPOTINSTRUMENTMARKETDATARESPONSEErr" /> class.
        /// </summary>
        /// <param name="message">A message describing the error.</param>
        /// <param name="otherInfo">otherInfo.</param>
        /// <param name="type">A public facing error type. If you want to treat a specific error use the type..</param>
        public SPOTINSTRUMENTMARKETDATARESPONSEErr(string message = default(string), SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo otherInfo = default(SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo), int type = default(int))
        {
            this.Message = message;
            this.OtherInfo = otherInfo;
            this.Type = type;
        }

        /// <summary>
        /// A message describing the error
        /// </summary>
        /// <value>A message describing the error</value>
        [DataMember(Name = "message", EmitDefaultValue = false)]
        public string Message { get; set; }

        /// <summary>
        /// Gets or Sets OtherInfo
        /// </summary>
        [DataMember(Name = "other_info", EmitDefaultValue = false)]
        public SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo OtherInfo { get; set; }

        /// <summary>
        /// A public facing error type. If you want to treat a specific error use the type.
        /// </summary>
        /// <value>A public facing error type. If you want to treat a specific error use the type.</value>
        [DataMember(Name = "type", EmitDefaultValue = false)]
        public int Type { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SPOTINSTRUMENTMARKETDATARESPONSEErr {\n");
            sb.Append("  Message: ").Append(Message).Append("\n");
            sb.Append("  OtherInfo: ").Append(OtherInfo).Append("\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as SPOTINSTRUMENTMARKETDATARESPONSEErr);
        }

        /// <summary>
        /// Returns true if SPOTINSTRUMENTMARKETDATARESPONSEErr instances are equal
        /// </summary>
        /// <param name="input">Instance of SPOTINSTRUMENTMARKETDATARESPONSEErr to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SPOTINSTRUMENTMARKETDATARESPONSEErr input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.Message == input.Message ||
                    (this.Message != null &&
                    this.Message.Equals(input.Message))
                ) && 
                (
                    this.OtherInfo == input.OtherInfo ||
                    (this.OtherInfo != null &&
                    this.OtherInfo.Equals(input.OtherInfo))
                ) && 
                (
                    this.Type == input.Type ||
                    this.Type.Equals(input.Type)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Message != null)
                {
                    hashCode = (hashCode * 59) + this.Message.GetHashCode();
                }
                if (this.OtherInfo != null)
                {
                    hashCode = (hashCode * 59) + this.OtherInfo.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Type.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        public IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}