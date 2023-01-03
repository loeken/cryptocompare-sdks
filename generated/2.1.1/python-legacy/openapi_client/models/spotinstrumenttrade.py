# coding: utf-8

"""
    CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

    CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.  # noqa: E501

    The version of the OpenAPI document: 2.1.1
    Contact: data@cryptocompare.com
    Generated by: https://openapi-generator.tech
"""


try:
    from inspect import getfullargspec
except ImportError:
    from inspect import getargspec as getfullargspec
import pprint
import re  # noqa: F401
import six

from openapi_client.configuration import Configuration


class SPOTINSTRUMENTTRADE(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'base': 'str',
        'ccseq': 'int',
        'id': 'str',
        'instrument': 'str',
        'mapped_instrument': 'str',
        'market': 'str',
        'price': 'int',
        'quantity': 'int',
        'quote': 'str',
        'quote_quantity': 'int',
        'received_timestamp': 'int',
        'received_timestamp_ns': 'int',
        'side': 'str',
        'source': 'str',
        'timestamp': 'int',
        'timestamp_ns': 'int',
        'type': 'str'
    }

    attribute_map = {
        'base': 'BASE',
        'ccseq': 'CCSEQ',
        'id': 'ID',
        'instrument': 'INSTRUMENT',
        'mapped_instrument': 'MAPPED_INSTRUMENT',
        'market': 'MARKET',
        'price': 'PRICE',
        'quantity': 'QUANTITY',
        'quote': 'QUOTE',
        'quote_quantity': 'QUOTE_QUANTITY',
        'received_timestamp': 'RECEIVED_TIMESTAMP',
        'received_timestamp_ns': 'RECEIVED_TIMESTAMP_NS',
        'side': 'SIDE',
        'source': 'SOURCE',
        'timestamp': 'TIMESTAMP',
        'timestamp_ns': 'TIMESTAMP_NS',
        'type': 'TYPE'
    }

    def __init__(self, base=None, ccseq=None, id=None, instrument=None, mapped_instrument=None, market=None, price=None, quantity=None, quote=None, quote_quantity=None, received_timestamp=None, received_timestamp_ns=None, side=None, source=None, timestamp=None, timestamp_ns=None, type=None, local_vars_configuration=None):  # noqa: E501
        """SPOTINSTRUMENTTRADE - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration.get_default_copy()
        self.local_vars_configuration = local_vars_configuration

        self._base = None
        self._ccseq = None
        self._id = None
        self._instrument = None
        self._mapped_instrument = None
        self._market = None
        self._price = None
        self._quantity = None
        self._quote = None
        self._quote_quantity = None
        self._received_timestamp = None
        self._received_timestamp_ns = None
        self._side = None
        self._source = None
        self._timestamp = None
        self._timestamp_ns = None
        self._type = None
        self.discriminator = None

        if base is not None:
            self.base = base
        if ccseq is not None:
            self.ccseq = ccseq
        if id is not None:
            self.id = id
        if instrument is not None:
            self.instrument = instrument
        if mapped_instrument is not None:
            self.mapped_instrument = mapped_instrument
        if market is not None:
            self.market = market
        if price is not None:
            self.price = price
        if quantity is not None:
            self.quantity = quantity
        if quote is not None:
            self.quote = quote
        if quote_quantity is not None:
            self.quote_quantity = quote_quantity
        if received_timestamp is not None:
            self.received_timestamp = received_timestamp
        if received_timestamp_ns is not None:
            self.received_timestamp_ns = received_timestamp_ns
        if side is not None:
            self.side = side
        if source is not None:
            self.source = source
        if timestamp is not None:
            self.timestamp = timestamp
        if timestamp_ns is not None:
            self.timestamp_ns = timestamp_ns
        if type is not None:
            self.type = type

    @property
    def base(self):
        """Gets the base of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).  # noqa: E501

        :return: The base of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._base

    @base.setter
    def base(self, base):
        """Sets the base of this SPOTINSTRUMENTTRADE.

        The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).  # noqa: E501

        :param base: The base of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type base: str
        """

        self._base = base

    @property
    def ccseq(self):
        """Gets the ccseq of this SPOTINSTRUMENTTRADE.  # noqa: E501

        Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.  # noqa: E501

        :return: The ccseq of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: int
        """
        return self._ccseq

    @ccseq.setter
    def ccseq(self, ccseq):
        """Sets the ccseq of this SPOTINSTRUMENTTRADE.

        Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.  # noqa: E501

        :param ccseq: The ccseq of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type ccseq: int
        """

        self._ccseq = ccseq

    @property
    def id(self):
        """Gets the id of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.  # noqa: E501

        :return: The id of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this SPOTINSTRUMENTTRADE.

        The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.  # noqa: E501

        :param id: The id of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type id: str
        """

        self._id = id

    @property
    def instrument(self):
        """Gets the instrument of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).  # noqa: E501

        :return: The instrument of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._instrument

    @instrument.setter
    def instrument(self, instrument):
        """Sets the instrument of this SPOTINSTRUMENTTRADE.

        The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).  # noqa: E501

        :param instrument: The instrument of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type instrument: str
        """

        self._instrument = instrument

    @property
    def mapped_instrument(self):
        """Gets the mapped_instrument of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).  # noqa: E501

        :return: The mapped_instrument of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._mapped_instrument

    @mapped_instrument.setter
    def mapped_instrument(self, mapped_instrument):
        """Sets the mapped_instrument of this SPOTINSTRUMENTTRADE.

        The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).  # noqa: E501

        :param mapped_instrument: The mapped_instrument of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type mapped_instrument: str
        """

        self._mapped_instrument = mapped_instrument

    @property
    def market(self):
        """Gets the market of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).  # noqa: E501

        :return: The market of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._market

    @market.setter
    def market(self, market):
        """Sets the market of this SPOTINSTRUMENTTRADE.

        The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).  # noqa: E501

        :param market: The market of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type market: str
        """

        self._market = market

    @property
    def price(self):
        """Gets the price of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.  # noqa: E501

        :return: The price of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: int
        """
        return self._price

    @price.setter
    def price(self, price):
        """Sets the price of this SPOTINSTRUMENTTRADE.

        The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.  # noqa: E501

        :param price: The price of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type price: int
        """

        self._price = price

    @property
    def quantity(self):
        """Gets the quantity of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.  # noqa: E501

        :return: The quantity of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: int
        """
        return self._quantity

    @quantity.setter
    def quantity(self, quantity):
        """Sets the quantity of this SPOTINSTRUMENTTRADE.

        The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.  # noqa: E501

        :param quantity: The quantity of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type quantity: int
        """

        self._quantity = quantity

    @property
    def quote(self):
        """Gets the quote of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).  # noqa: E501

        :return: The quote of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._quote

    @quote.setter
    def quote(self, quote):
        """Sets the quote of this SPOTINSTRUMENTTRADE.

        The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).  # noqa: E501

        :param quote: The quote of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type quote: str
        """

        self._quote = quote

    @property
    def quote_quantity(self):
        """Gets the quote_quantity of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.  # noqa: E501

        :return: The quote_quantity of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: int
        """
        return self._quote_quantity

    @quote_quantity.setter
    def quote_quantity(self, quote_quantity):
        """Sets the quote_quantity of this SPOTINSTRUMENTTRADE.

        The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.  # noqa: E501

        :param quote_quantity: The quote_quantity of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type quote_quantity: int
        """

        self._quote_quantity = quote_quantity

    @property
    def received_timestamp(self):
        """Gets the received_timestamp of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.  # noqa: E501

        :return: The received_timestamp of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: int
        """
        return self._received_timestamp

    @received_timestamp.setter
    def received_timestamp(self, received_timestamp):
        """Sets the received_timestamp of this SPOTINSTRUMENTTRADE.

        The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.  # noqa: E501

        :param received_timestamp: The received_timestamp of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type received_timestamp: int
        """

        self._received_timestamp = received_timestamp

    @property
    def received_timestamp_ns(self):
        """Gets the received_timestamp_ns of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The nanosecond part of the received timestamp.  # noqa: E501

        :return: The received_timestamp_ns of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: int
        """
        return self._received_timestamp_ns

    @received_timestamp_ns.setter
    def received_timestamp_ns(self, received_timestamp_ns):
        """Sets the received_timestamp_ns of this SPOTINSTRUMENTTRADE.

        The nanosecond part of the received timestamp.  # noqa: E501

        :param received_timestamp_ns: The received_timestamp_ns of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type received_timestamp_ns: int
        """

        self._received_timestamp_ns = received_timestamp_ns

    @property
    def side(self):
        """Gets the side of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.  # noqa: E501

        :return: The side of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._side

    @side.setter
    def side(self, side):
        """Sets the side of this SPOTINSTRUMENTTRADE.

        The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.  # noqa: E501

        :param side: The side of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type side: str
        """

        self._side = side

    @property
    def source(self):
        """Gets the source of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The source of the trade update: POLLING, STREAMING, GO, BLOB etc.  # noqa: E501

        :return: The source of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._source

    @source.setter
    def source(self, source):
        """Sets the source of this SPOTINSTRUMENTTRADE.

        The source of the trade update: POLLING, STREAMING, GO, BLOB etc.  # noqa: E501

        :param source: The source of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type source: str
        """

        self._source = source

    @property
    def timestamp(self):
        """Gets the timestamp of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.  # noqa: E501

        :return: The timestamp of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: int
        """
        return self._timestamp

    @timestamp.setter
    def timestamp(self, timestamp):
        """Sets the timestamp of this SPOTINSTRUMENTTRADE.

        The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.  # noqa: E501

        :param timestamp: The timestamp of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type timestamp: int
        """

        self._timestamp = timestamp

    @property
    def timestamp_ns(self):
        """Gets the timestamp_ns of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The nanosecond part of the reported timestamp.  # noqa: E501

        :return: The timestamp_ns of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: int
        """
        return self._timestamp_ns

    @timestamp_ns.setter
    def timestamp_ns(self, timestamp_ns):
        """Sets the timestamp_ns of this SPOTINSTRUMENTTRADE.

        The nanosecond part of the reported timestamp.  # noqa: E501

        :param timestamp_ns: The timestamp_ns of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type timestamp_ns: int
        """

        self._timestamp_ns = timestamp_ns

    @property
    def type(self):
        """Gets the type of this SPOTINSTRUMENTTRADE.  # noqa: E501

        The type of the message.  # noqa: E501

        :return: The type of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :rtype: str
        """
        return self._type

    @type.setter
    def type(self, type):
        """Sets the type of this SPOTINSTRUMENTTRADE.

        The type of the message.  # noqa: E501

        :param type: The type of this SPOTINSTRUMENTTRADE.  # noqa: E501
        :type type: str
        """

        self._type = type

    def to_dict(self, serialize=False):
        """Returns the model properties as a dict"""
        result = {}

        def convert(x):
            if hasattr(x, "to_dict"):
                args = getfullargspec(x.to_dict).args
                if len(args) == 1:
                    return x.to_dict()
                else:
                    return x.to_dict(serialize)
            else:
                return x

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            attr = self.attribute_map.get(attr, attr) if serialize else attr
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: convert(x),
                    value
                ))
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], convert(item[1])),
                    value.items()
                ))
            else:
                result[attr] = convert(value)

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, SPOTINSTRUMENTTRADE):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, SPOTINSTRUMENTTRADE):
            return True

        return self.to_dict() != other.to_dict()
