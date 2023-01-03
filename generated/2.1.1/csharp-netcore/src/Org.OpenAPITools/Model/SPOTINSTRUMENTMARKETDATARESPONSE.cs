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
    /// SPOTINSTRUMENTMARKETDATARESPONSE
    /// </summary>
    [DataContract(Name = "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE")]
    public partial class SPOTINSTRUMENTMARKETDATARESPONSE : IEquatable<SPOTINSTRUMENTMARKETDATARESPONSE>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SPOTINSTRUMENTMARKETDATARESPONSE" /> class.
        /// </summary>
        /// <param name="data">data.</param>
        /// <param name="err">err.</param>
        public SPOTINSTRUMENTMARKETDATARESPONSE(Dictionary<string, SPOTINSTRUMENTMARKETDATA> data = default(Dictionary<string, SPOTINSTRUMENTMARKETDATA>), SPOTINSTRUMENTMARKETDATARESPONSEErr err = default(SPOTINSTRUMENTMARKETDATARESPONSEErr))
        {
            this.Data = data;
            this.Err = err;
        }

        /// <summary>
        /// Gets or Sets Data
        /// </summary>
        [DataMember(Name = "Data", EmitDefaultValue = false)]
        public Dictionary<string, SPOTINSTRUMENTMARKETDATA> Data { get; set; }

        /// <summary>
        /// Gets or Sets Err
        /// </summary>
        [DataMember(Name = "Err", EmitDefaultValue = false)]
        public SPOTINSTRUMENTMARKETDATARESPONSEErr Err { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SPOTINSTRUMENTMARKETDATARESPONSE {\n");
            sb.Append("  Data: ").Append(Data).Append("\n");
            sb.Append("  Err: ").Append(Err).Append("\n");
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
            return this.Equals(input as SPOTINSTRUMENTMARKETDATARESPONSE);
        }

        /// <summary>
        /// Returns true if SPOTINSTRUMENTMARKETDATARESPONSE instances are equal
        /// </summary>
        /// <param name="input">Instance of SPOTINSTRUMENTMARKETDATARESPONSE to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SPOTINSTRUMENTMARKETDATARESPONSE input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.Data == input.Data ||
                    this.Data != null &&
                    input.Data != null &&
                    this.Data.SequenceEqual(input.Data)
                ) && 
                (
                    this.Err == input.Err ||
                    (this.Err != null &&
                    this.Err.Equals(input.Err))
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
                if (this.Data != null)
                {
                    hashCode = (hashCode * 59) + this.Data.GetHashCode();
                }
                if (this.Err != null)
                {
                    hashCode = (hashCode * 59) + this.Err.GetHashCode();
                }
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
