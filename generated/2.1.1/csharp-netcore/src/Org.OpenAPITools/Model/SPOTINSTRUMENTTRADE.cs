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
    /// SPOTINSTRUMENTTRADE
    /// </summary>
    [DataContract(Name = "SPOT_INSTRUMENT_TRADE")]
    public partial class SPOTINSTRUMENTTRADE : IEquatable<SPOTINSTRUMENTTRADE>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SPOTINSTRUMENTTRADE" /> class.
        /// </summary>
        /// <param name="bASE">The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC)..</param>
        /// <param name="cCSEQ">Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order..</param>
        /// <param name="iD">The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second..</param>
        /// <param name="iNSTRUMENT">The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD)..</param>
        /// <param name="mAPPEDINSTRUMENT">The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD)..</param>
        /// <param name="mARKET">The market / exchange under consideration (e.g. Coinbase, Kraken, etc.)..</param>
        /// <param name="pRICE">The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract..</param>
        /// <param name="qUANTITY">The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded..</param>
        /// <param name="qUOTE">The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD)..</param>
        /// <param name="qUOTEQUANTITY">The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded..</param>
        /// <param name="rECEIVEDTIMESTAMP">The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits..</param>
        /// <param name="rECEIVEDTIMESTAMPNS">The nanosecond part of the received timestamp..</param>
        /// <param name="sIDE">The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned..</param>
        /// <param name="sOURCE">The source of the trade update: POLLING, STREAMING, GO, BLOB etc..</param>
        /// <param name="tIMESTAMP">The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one..</param>
        /// <param name="tIMESTAMPNS">The nanosecond part of the reported timestamp..</param>
        /// <param name="tYPE">The type of the message..</param>
        public SPOTINSTRUMENTTRADE(string bASE = default(string), int cCSEQ = default(int), string iD = default(string), string iNSTRUMENT = default(string), string mAPPEDINSTRUMENT = default(string), string mARKET = default(string), int pRICE = default(int), int qUANTITY = default(int), string qUOTE = default(string), int qUOTEQUANTITY = default(int), int rECEIVEDTIMESTAMP = default(int), int rECEIVEDTIMESTAMPNS = default(int), string sIDE = default(string), string sOURCE = default(string), int tIMESTAMP = default(int), int tIMESTAMPNS = default(int), string tYPE = default(string))
        {
            this.BASE = bASE;
            this.CCSEQ = cCSEQ;
            this.ID = iD;
            this.INSTRUMENT = iNSTRUMENT;
            this.MAPPED_INSTRUMENT = mAPPEDINSTRUMENT;
            this.MARKET = mARKET;
            this.PRICE = pRICE;
            this.QUANTITY = qUANTITY;
            this.QUOTE = qUOTE;
            this.QUOTE_QUANTITY = qUOTEQUANTITY;
            this.RECEIVED_TIMESTAMP = rECEIVEDTIMESTAMP;
            this.RECEIVED_TIMESTAMP_NS = rECEIVEDTIMESTAMPNS;
            this.SIDE = sIDE;
            this.SOURCE = sOURCE;
            this.TIMESTAMP = tIMESTAMP;
            this.TIMESTAMP_NS = tIMESTAMPNS;
            this.TYPE = tYPE;
        }

        /// <summary>
        /// The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
        /// </summary>
        /// <value>The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).</value>
        [DataMember(Name = "BASE", EmitDefaultValue = false)]
        public string BASE { get; set; }

        /// <summary>
        /// Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
        /// </summary>
        /// <value>Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.</value>
        [DataMember(Name = "CCSEQ", EmitDefaultValue = false)]
        public int CCSEQ { get; set; }

        /// <summary>
        /// The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
        /// </summary>
        /// <value>The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.</value>
        [DataMember(Name = "ID", EmitDefaultValue = false)]
        public string ID { get; set; }

        /// <summary>
        /// The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
        /// </summary>
        /// <value>The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).</value>
        [DataMember(Name = "INSTRUMENT", EmitDefaultValue = false)]
        public string INSTRUMENT { get; set; }

        /// <summary>
        /// The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD).
        /// </summary>
        /// <value>The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD).</value>
        [DataMember(Name = "MAPPED_INSTRUMENT", EmitDefaultValue = false)]
        public string MAPPED_INSTRUMENT { get; set; }

        /// <summary>
        /// The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
        /// </summary>
        /// <value>The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).</value>
        [DataMember(Name = "MARKET", EmitDefaultValue = false)]
        public string MARKET { get; set; }

        /// <summary>
        /// The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
        /// </summary>
        /// <value>The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.</value>
        [DataMember(Name = "PRICE", EmitDefaultValue = false)]
        public int PRICE { get; set; }

        /// <summary>
        /// The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
        /// </summary>
        /// <value>The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.</value>
        [DataMember(Name = "QUANTITY", EmitDefaultValue = false)]
        public int QUANTITY { get; set; }

        /// <summary>
        /// The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
        /// </summary>
        /// <value>The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).</value>
        [DataMember(Name = "QUOTE", EmitDefaultValue = false)]
        public string QUOTE { get; set; }

        /// <summary>
        /// The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
        /// </summary>
        /// <value>The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.</value>
        [DataMember(Name = "QUOTE_QUANTITY", EmitDefaultValue = false)]
        public int QUOTE_QUANTITY { get; set; }

        /// <summary>
        /// The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
        /// </summary>
        /// <value>The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.</value>
        [DataMember(Name = "RECEIVED_TIMESTAMP", EmitDefaultValue = false)]
        public int RECEIVED_TIMESTAMP { get; set; }

        /// <summary>
        /// The nanosecond part of the received timestamp.
        /// </summary>
        /// <value>The nanosecond part of the received timestamp.</value>
        [DataMember(Name = "RECEIVED_TIMESTAMP_NS", EmitDefaultValue = false)]
        public int RECEIVED_TIMESTAMP_NS { get; set; }

        /// <summary>
        /// The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned.
        /// </summary>
        /// <value>The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned.</value>
        [DataMember(Name = "SIDE", EmitDefaultValue = false)]
        public string SIDE { get; set; }

        /// <summary>
        /// The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
        /// </summary>
        /// <value>The source of the trade update: POLLING, STREAMING, GO, BLOB etc.</value>
        [DataMember(Name = "SOURCE", EmitDefaultValue = false)]
        public string SOURCE { get; set; }

        /// <summary>
        /// The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
        /// </summary>
        /// <value>The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.</value>
        [DataMember(Name = "TIMESTAMP", EmitDefaultValue = false)]
        public int TIMESTAMP { get; set; }

        /// <summary>
        /// The nanosecond part of the reported timestamp.
        /// </summary>
        /// <value>The nanosecond part of the reported timestamp.</value>
        [DataMember(Name = "TIMESTAMP_NS", EmitDefaultValue = false)]
        public int TIMESTAMP_NS { get; set; }

        /// <summary>
        /// The type of the message.
        /// </summary>
        /// <value>The type of the message.</value>
        [DataMember(Name = "TYPE", EmitDefaultValue = false)]
        public string TYPE { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SPOTINSTRUMENTTRADE {\n");
            sb.Append("  BASE: ").Append(BASE).Append("\n");
            sb.Append("  CCSEQ: ").Append(CCSEQ).Append("\n");
            sb.Append("  ID: ").Append(ID).Append("\n");
            sb.Append("  INSTRUMENT: ").Append(INSTRUMENT).Append("\n");
            sb.Append("  MAPPED_INSTRUMENT: ").Append(MAPPED_INSTRUMENT).Append("\n");
            sb.Append("  MARKET: ").Append(MARKET).Append("\n");
            sb.Append("  PRICE: ").Append(PRICE).Append("\n");
            sb.Append("  QUANTITY: ").Append(QUANTITY).Append("\n");
            sb.Append("  QUOTE: ").Append(QUOTE).Append("\n");
            sb.Append("  QUOTE_QUANTITY: ").Append(QUOTE_QUANTITY).Append("\n");
            sb.Append("  RECEIVED_TIMESTAMP: ").Append(RECEIVED_TIMESTAMP).Append("\n");
            sb.Append("  RECEIVED_TIMESTAMP_NS: ").Append(RECEIVED_TIMESTAMP_NS).Append("\n");
            sb.Append("  SIDE: ").Append(SIDE).Append("\n");
            sb.Append("  SOURCE: ").Append(SOURCE).Append("\n");
            sb.Append("  TIMESTAMP: ").Append(TIMESTAMP).Append("\n");
            sb.Append("  TIMESTAMP_NS: ").Append(TIMESTAMP_NS).Append("\n");
            sb.Append("  TYPE: ").Append(TYPE).Append("\n");
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
            return this.Equals(input as SPOTINSTRUMENTTRADE);
        }

        /// <summary>
        /// Returns true if SPOTINSTRUMENTTRADE instances are equal
        /// </summary>
        /// <param name="input">Instance of SPOTINSTRUMENTTRADE to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SPOTINSTRUMENTTRADE input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.BASE == input.BASE ||
                    (this.BASE != null &&
                    this.BASE.Equals(input.BASE))
                ) && 
                (
                    this.CCSEQ == input.CCSEQ ||
                    this.CCSEQ.Equals(input.CCSEQ)
                ) && 
                (
                    this.ID == input.ID ||
                    (this.ID != null &&
                    this.ID.Equals(input.ID))
                ) && 
                (
                    this.INSTRUMENT == input.INSTRUMENT ||
                    (this.INSTRUMENT != null &&
                    this.INSTRUMENT.Equals(input.INSTRUMENT))
                ) && 
                (
                    this.MAPPED_INSTRUMENT == input.MAPPED_INSTRUMENT ||
                    (this.MAPPED_INSTRUMENT != null &&
                    this.MAPPED_INSTRUMENT.Equals(input.MAPPED_INSTRUMENT))
                ) && 
                (
                    this.MARKET == input.MARKET ||
                    (this.MARKET != null &&
                    this.MARKET.Equals(input.MARKET))
                ) && 
                (
                    this.PRICE == input.PRICE ||
                    this.PRICE.Equals(input.PRICE)
                ) && 
                (
                    this.QUANTITY == input.QUANTITY ||
                    this.QUANTITY.Equals(input.QUANTITY)
                ) && 
                (
                    this.QUOTE == input.QUOTE ||
                    (this.QUOTE != null &&
                    this.QUOTE.Equals(input.QUOTE))
                ) && 
                (
                    this.QUOTE_QUANTITY == input.QUOTE_QUANTITY ||
                    this.QUOTE_QUANTITY.Equals(input.QUOTE_QUANTITY)
                ) && 
                (
                    this.RECEIVED_TIMESTAMP == input.RECEIVED_TIMESTAMP ||
                    this.RECEIVED_TIMESTAMP.Equals(input.RECEIVED_TIMESTAMP)
                ) && 
                (
                    this.RECEIVED_TIMESTAMP_NS == input.RECEIVED_TIMESTAMP_NS ||
                    this.RECEIVED_TIMESTAMP_NS.Equals(input.RECEIVED_TIMESTAMP_NS)
                ) && 
                (
                    this.SIDE == input.SIDE ||
                    (this.SIDE != null &&
                    this.SIDE.Equals(input.SIDE))
                ) && 
                (
                    this.SOURCE == input.SOURCE ||
                    (this.SOURCE != null &&
                    this.SOURCE.Equals(input.SOURCE))
                ) && 
                (
                    this.TIMESTAMP == input.TIMESTAMP ||
                    this.TIMESTAMP.Equals(input.TIMESTAMP)
                ) && 
                (
                    this.TIMESTAMP_NS == input.TIMESTAMP_NS ||
                    this.TIMESTAMP_NS.Equals(input.TIMESTAMP_NS)
                ) && 
                (
                    this.TYPE == input.TYPE ||
                    (this.TYPE != null &&
                    this.TYPE.Equals(input.TYPE))
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
                if (this.BASE != null)
                {
                    hashCode = (hashCode * 59) + this.BASE.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.CCSEQ.GetHashCode();
                if (this.ID != null)
                {
                    hashCode = (hashCode * 59) + this.ID.GetHashCode();
                }
                if (this.INSTRUMENT != null)
                {
                    hashCode = (hashCode * 59) + this.INSTRUMENT.GetHashCode();
                }
                if (this.MAPPED_INSTRUMENT != null)
                {
                    hashCode = (hashCode * 59) + this.MAPPED_INSTRUMENT.GetHashCode();
                }
                if (this.MARKET != null)
                {
                    hashCode = (hashCode * 59) + this.MARKET.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.PRICE.GetHashCode();
                hashCode = (hashCode * 59) + this.QUANTITY.GetHashCode();
                if (this.QUOTE != null)
                {
                    hashCode = (hashCode * 59) + this.QUOTE.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.QUOTE_QUANTITY.GetHashCode();
                hashCode = (hashCode * 59) + this.RECEIVED_TIMESTAMP.GetHashCode();
                hashCode = (hashCode * 59) + this.RECEIVED_TIMESTAMP_NS.GetHashCode();
                if (this.SIDE != null)
                {
                    hashCode = (hashCode * 59) + this.SIDE.GetHashCode();
                }
                if (this.SOURCE != null)
                {
                    hashCode = (hashCode * 59) + this.SOURCE.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.TIMESTAMP.GetHashCode();
                hashCode = (hashCode * 59) + this.TIMESTAMP_NS.GetHashCode();
                if (this.TYPE != null)
                {
                    hashCode = (hashCode * 59) + this.TYPE.GetHashCode();
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