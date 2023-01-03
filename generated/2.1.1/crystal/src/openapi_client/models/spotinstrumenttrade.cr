# #CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
#
##CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
#
#The version of the OpenAPI document: 2.1.1
#Contact: data@cryptocompare.com
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 6.3.0-SNAPSHOT
#

require "big"
require "json"
require "time"

module OpenAPIClient
  class SPOTINSTRUMENTTRADE
    include JSON::Serializable

    # Optional properties
    # The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
    @[JSON::Field(key: "BASE", type: String?, nillable: true, emit_null: false)]
    property base : String?

    # Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
    @[JSON::Field(key: "CCSEQ", type: Int32?, nillable: true, emit_null: false)]
    property ccseq : Int32?

    # The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
    @[JSON::Field(key: "ID", type: String?, nillable: true, emit_null: false)]
    property id : String?

    # The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
    @[JSON::Field(key: "INSTRUMENT", type: String?, nillable: true, emit_null: false)]
    property instrument : String?

    # The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
    @[JSON::Field(key: "MAPPED_INSTRUMENT", type: String?, nillable: true, emit_null: false)]
    property mapped_instrument : String?

    # The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
    @[JSON::Field(key: "MARKET", type: String?, nillable: true, emit_null: false)]
    property market : String?

    # The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
    @[JSON::Field(key: "PRICE", type: Int32?, nillable: true, emit_null: false)]
    property price : Int32?

    # The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
    @[JSON::Field(key: "QUANTITY", type: Int32?, nillable: true, emit_null: false)]
    property quantity : Int32?

    # The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
    @[JSON::Field(key: "QUOTE", type: String?, nillable: true, emit_null: false)]
    property quote : String?

    # The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
    @[JSON::Field(key: "QUOTE_QUANTITY", type: Int32?, nillable: true, emit_null: false)]
    property quote_quantity : Int32?

    # The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
    @[JSON::Field(key: "RECEIVED_TIMESTAMP", type: Int32?, nillable: true, emit_null: false)]
    property received_timestamp : Int32?

    # The nanosecond part of the received timestamp.
    @[JSON::Field(key: "RECEIVED_TIMESTAMP_NS", type: Int32?, nillable: true, emit_null: false)]
    property received_timestamp_ns : Int32?

    # The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
    @[JSON::Field(key: "SIDE", type: String?, nillable: true, emit_null: false)]
    property side : String?

    # The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
    @[JSON::Field(key: "SOURCE", type: String?, nillable: true, emit_null: false)]
    property source : String?

    # The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
    @[JSON::Field(key: "TIMESTAMP", type: Int32?, nillable: true, emit_null: false)]
    property timestamp : Int32?

    # The nanosecond part of the reported timestamp.
    @[JSON::Field(key: "TIMESTAMP_NS", type: Int32?, nillable: true, emit_null: false)]
    property timestamp_ns : Int32?

    # The type of the message.
    @[JSON::Field(key: "TYPE", type: String?, nillable: true, emit_null: false)]
    property _type : String?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(@base : String?, @ccseq : Int32?, @id : String?, @instrument : String?, @mapped_instrument : String?, @market : String?, @price : Int32?, @quantity : Int32?, @quote : String?, @quote_quantity : Int32?, @received_timestamp : Int32?, @received_timestamp_ns : Int32?, @side : String?, @source : String?, @timestamp : Int32?, @timestamp_ns : Int32?, @_type : String?)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
          base == o.base &&
          ccseq == o.ccseq &&
          id == o.id &&
          instrument == o.instrument &&
          mapped_instrument == o.mapped_instrument &&
          market == o.market &&
          price == o.price &&
          quantity == o.quantity &&
          quote == o.quote &&
          quote_quantity == o.quote_quantity &&
          received_timestamp == o.received_timestamp &&
          received_timestamp_ns == o.received_timestamp_ns &&
          side == o.side &&
          source == o.source &&
          timestamp == o.timestamp &&
          timestamp_ns == o.timestamp_ns &&
          _type == o._type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [base, ccseq, id, instrument, mapped_instrument, market, price, quantity, quote, quote_quantity, received_timestamp, received_timestamp_ns, side, source, timestamp, timestamp_ns, _type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of Symbol => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenAPIClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of Symbol => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of Symbol => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
