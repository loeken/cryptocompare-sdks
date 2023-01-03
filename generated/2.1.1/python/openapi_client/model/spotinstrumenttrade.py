# coding: utf-8

"""
    CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

    CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.  # noqa: E501

    The version of the OpenAPI document: 2.1.1
    Contact: data@cryptocompare.com
    Generated by: https://openapi-generator.tech
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from openapi_client import schemas  # noqa: F401


class SPOTINSTRUMENTTRADE(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """


    class MetaOapg:
        
        class properties:
            BASE = schemas.StrSchema
            CCSEQ = schemas.IntSchema
            ID = schemas.StrSchema
            INSTRUMENT = schemas.StrSchema
            MAPPED_INSTRUMENT = schemas.StrSchema
            MARKET = schemas.StrSchema
            PRICE = schemas.IntSchema
            QUANTITY = schemas.IntSchema
            QUOTE = schemas.StrSchema
            QUOTE_QUANTITY = schemas.IntSchema
            RECEIVED_TIMESTAMP = schemas.IntSchema
            RECEIVED_TIMESTAMP_NS = schemas.IntSchema
            SIDE = schemas.StrSchema
            SOURCE = schemas.StrSchema
            TIMESTAMP = schemas.IntSchema
            TIMESTAMP_NS = schemas.IntSchema
            TYPE = schemas.StrSchema
            __annotations__ = {
                "BASE": BASE,
                "CCSEQ": CCSEQ,
                "ID": ID,
                "INSTRUMENT": INSTRUMENT,
                "MAPPED_INSTRUMENT": MAPPED_INSTRUMENT,
                "MARKET": MARKET,
                "PRICE": PRICE,
                "QUANTITY": QUANTITY,
                "QUOTE": QUOTE,
                "QUOTE_QUANTITY": QUOTE_QUANTITY,
                "RECEIVED_TIMESTAMP": RECEIVED_TIMESTAMP,
                "RECEIVED_TIMESTAMP_NS": RECEIVED_TIMESTAMP_NS,
                "SIDE": SIDE,
                "SOURCE": SOURCE,
                "TIMESTAMP": TIMESTAMP,
                "TIMESTAMP_NS": TIMESTAMP_NS,
                "TYPE": TYPE,
            }
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["BASE"]) -> MetaOapg.properties.BASE: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["CCSEQ"]) -> MetaOapg.properties.CCSEQ: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["ID"]) -> MetaOapg.properties.ID: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["INSTRUMENT"]) -> MetaOapg.properties.INSTRUMENT: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["MAPPED_INSTRUMENT"]) -> MetaOapg.properties.MAPPED_INSTRUMENT: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["MARKET"]) -> MetaOapg.properties.MARKET: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["PRICE"]) -> MetaOapg.properties.PRICE: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["QUANTITY"]) -> MetaOapg.properties.QUANTITY: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["QUOTE"]) -> MetaOapg.properties.QUOTE: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["QUOTE_QUANTITY"]) -> MetaOapg.properties.QUOTE_QUANTITY: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["RECEIVED_TIMESTAMP"]) -> MetaOapg.properties.RECEIVED_TIMESTAMP: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["RECEIVED_TIMESTAMP_NS"]) -> MetaOapg.properties.RECEIVED_TIMESTAMP_NS: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["SIDE"]) -> MetaOapg.properties.SIDE: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["SOURCE"]) -> MetaOapg.properties.SOURCE: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["TIMESTAMP"]) -> MetaOapg.properties.TIMESTAMP: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["TIMESTAMP_NS"]) -> MetaOapg.properties.TIMESTAMP_NS: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["TYPE"]) -> MetaOapg.properties.TYPE: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["BASE", "CCSEQ", "ID", "INSTRUMENT", "MAPPED_INSTRUMENT", "MARKET", "PRICE", "QUANTITY", "QUOTE", "QUOTE_QUANTITY", "RECEIVED_TIMESTAMP", "RECEIVED_TIMESTAMP_NS", "SIDE", "SOURCE", "TIMESTAMP", "TIMESTAMP_NS", "TYPE", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["BASE"]) -> typing.Union[MetaOapg.properties.BASE, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["CCSEQ"]) -> typing.Union[MetaOapg.properties.CCSEQ, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["ID"]) -> typing.Union[MetaOapg.properties.ID, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["INSTRUMENT"]) -> typing.Union[MetaOapg.properties.INSTRUMENT, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["MAPPED_INSTRUMENT"]) -> typing.Union[MetaOapg.properties.MAPPED_INSTRUMENT, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["MARKET"]) -> typing.Union[MetaOapg.properties.MARKET, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["PRICE"]) -> typing.Union[MetaOapg.properties.PRICE, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["QUANTITY"]) -> typing.Union[MetaOapg.properties.QUANTITY, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["QUOTE"]) -> typing.Union[MetaOapg.properties.QUOTE, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["QUOTE_QUANTITY"]) -> typing.Union[MetaOapg.properties.QUOTE_QUANTITY, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["RECEIVED_TIMESTAMP"]) -> typing.Union[MetaOapg.properties.RECEIVED_TIMESTAMP, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["RECEIVED_TIMESTAMP_NS"]) -> typing.Union[MetaOapg.properties.RECEIVED_TIMESTAMP_NS, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["SIDE"]) -> typing.Union[MetaOapg.properties.SIDE, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["SOURCE"]) -> typing.Union[MetaOapg.properties.SOURCE, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["TIMESTAMP"]) -> typing.Union[MetaOapg.properties.TIMESTAMP, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["TIMESTAMP_NS"]) -> typing.Union[MetaOapg.properties.TIMESTAMP_NS, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["TYPE"]) -> typing.Union[MetaOapg.properties.TYPE, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["BASE", "CCSEQ", "ID", "INSTRUMENT", "MAPPED_INSTRUMENT", "MARKET", "PRICE", "QUANTITY", "QUOTE", "QUOTE_QUANTITY", "RECEIVED_TIMESTAMP", "RECEIVED_TIMESTAMP_NS", "SIDE", "SOURCE", "TIMESTAMP", "TIMESTAMP_NS", "TYPE", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *_args: typing.Union[dict, frozendict.frozendict, ],
        BASE: typing.Union[MetaOapg.properties.BASE, str, schemas.Unset] = schemas.unset,
        CCSEQ: typing.Union[MetaOapg.properties.CCSEQ, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        ID: typing.Union[MetaOapg.properties.ID, str, schemas.Unset] = schemas.unset,
        INSTRUMENT: typing.Union[MetaOapg.properties.INSTRUMENT, str, schemas.Unset] = schemas.unset,
        MAPPED_INSTRUMENT: typing.Union[MetaOapg.properties.MAPPED_INSTRUMENT, str, schemas.Unset] = schemas.unset,
        MARKET: typing.Union[MetaOapg.properties.MARKET, str, schemas.Unset] = schemas.unset,
        PRICE: typing.Union[MetaOapg.properties.PRICE, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        QUANTITY: typing.Union[MetaOapg.properties.QUANTITY, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        QUOTE: typing.Union[MetaOapg.properties.QUOTE, str, schemas.Unset] = schemas.unset,
        QUOTE_QUANTITY: typing.Union[MetaOapg.properties.QUOTE_QUANTITY, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        RECEIVED_TIMESTAMP: typing.Union[MetaOapg.properties.RECEIVED_TIMESTAMP, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        RECEIVED_TIMESTAMP_NS: typing.Union[MetaOapg.properties.RECEIVED_TIMESTAMP_NS, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        SIDE: typing.Union[MetaOapg.properties.SIDE, str, schemas.Unset] = schemas.unset,
        SOURCE: typing.Union[MetaOapg.properties.SOURCE, str, schemas.Unset] = schemas.unset,
        TIMESTAMP: typing.Union[MetaOapg.properties.TIMESTAMP, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        TIMESTAMP_NS: typing.Union[MetaOapg.properties.TIMESTAMP_NS, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        TYPE: typing.Union[MetaOapg.properties.TYPE, str, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'SPOTINSTRUMENTTRADE':
        return super().__new__(
            cls,
            *_args,
            BASE=BASE,
            CCSEQ=CCSEQ,
            ID=ID,
            INSTRUMENT=INSTRUMENT,
            MAPPED_INSTRUMENT=MAPPED_INSTRUMENT,
            MARKET=MARKET,
            PRICE=PRICE,
            QUANTITY=QUANTITY,
            QUOTE=QUOTE,
            QUOTE_QUANTITY=QUOTE_QUANTITY,
            RECEIVED_TIMESTAMP=RECEIVED_TIMESTAMP,
            RECEIVED_TIMESTAMP_NS=RECEIVED_TIMESTAMP_NS,
            SIDE=SIDE,
            SOURCE=SOURCE,
            TIMESTAMP=TIMESTAMP,
            TIMESTAMP_NS=TIMESTAMP_NS,
            TYPE=TYPE,
            _configuration=_configuration,
            **kwargs,
        )