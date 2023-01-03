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
    /// GENERICRESPONSEData
    /// </summary>
    [DataContract(Name = "GENERIC_RESPONSE_Data")]
    public partial class GENERICRESPONSEData : IEquatable<GENERICRESPONSEData>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GENERICRESPONSEData" /> class.
        /// </summary>
        /// <param name="nODATA">The endpoint does not have a reponse defined.</param>
        public GENERICRESPONSEData(string nODATA = default(string))
        {
            this.NO_DATA = nODATA;
        }

        /// <summary>
        /// The endpoint does not have a reponse defined
        /// </summary>
        /// <value>The endpoint does not have a reponse defined</value>
        [DataMember(Name = "NO_DATA", EmitDefaultValue = false)]
        public string NO_DATA { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class GENERICRESPONSEData {\n");
            sb.Append("  NO_DATA: ").Append(NO_DATA).Append("\n");
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
            return this.Equals(input as GENERICRESPONSEData);
        }

        /// <summary>
        /// Returns true if GENERICRESPONSEData instances are equal
        /// </summary>
        /// <param name="input">Instance of GENERICRESPONSEData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(GENERICRESPONSEData input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.NO_DATA == input.NO_DATA ||
                    (this.NO_DATA != null &&
                    this.NO_DATA.Equals(input.NO_DATA))
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
                if (this.NO_DATA != null)
                {
                    hashCode = (hashCode * 59) + this.NO_DATA.GetHashCode();
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