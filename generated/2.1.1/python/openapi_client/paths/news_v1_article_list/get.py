# coding: utf-8

"""


    Generated by: https://openapi-generator.tech
"""

from dataclasses import dataclass
import typing_extensions
import urllib3
from urllib3._collections import HTTPHeaderDict

from openapi_client import api_client, exceptions
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

from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error

from . import path

# Query params


class SourceIdsSchema(
    schemas.ListSchema
):


    class MetaOapg:
        items = schemas.StrSchema

    def __new__(
        cls,
        _arg: typing.Union[typing.Tuple[typing.Union[MetaOapg.items, str, ]], typing.List[typing.Union[MetaOapg.items, str, ]]],
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'SourceIdsSchema':
        return super().__new__(
            cls,
            _arg,
            _configuration=_configuration,
        )

    def __getitem__(self, i: int) -> MetaOapg.items:
        return super().__getitem__(i)


class LangSchema(
    schemas.EnumBase,
    schemas.StrSchema
):


    class MetaOapg:
        min_length = 1
        enum_value_to_name = {
            "EN": "EN",
            "ES": "ES",
            "PT": "PT",
            "": "EMPTY",
        }
    
    @schemas.classproperty
    def EN(cls):
        return cls("EN")
    
    @schemas.classproperty
    def ES(cls):
        return cls("ES")
    
    @schemas.classproperty
    def PT(cls):
        return cls("PT")
    
    @schemas.classproperty
    def EMPTY(cls):
        return cls("")


class CategoriesSchema(
    schemas.ListSchema
):


    class MetaOapg:
        max_items = 200
        
        
        class items(
            schemas.EnumBase,
            schemas.StrSchema
        ):
        
        
            class MetaOapg:
                enum_value_to_name = {
                    "1INCH": "INCH",
                    "AAVE": "AAVE",
                    "ADA": "ADA",
                    "ALGO": "ALGO",
                    "ALTCOIN": "ALTCOIN",
                    "ASIA": "ASIA",
                    "ATOM": "ATOM",
                    "AVAX": "AVAX",
                    "AXS": "AXS",
                    "BAL": "BAL",
                    "BAT": "BAT",
                    "BCH": "BCH",
                    "BLOCKCHAIN": "BLOCKCHAIN",
                    "BTC": "BTC",
                    "BUSINESS": "BUSINESS",
                    "COMMODITY": "COMMODITY",
                    "COMP": "COMP",
                    "CRV": "CRV",
                    "DASH": "DASH",
                    "DOGE": "DOGE",
                    "DOT": "DOT",
                    "ENJ": "ENJ",
                    "ETC": "ETC",
                    "ETH": "ETH",
                    "EXCHANGE": "EXCHANGE",
                    "FIAT": "FIAT",
                    "FIL": "FIL",
                    "FTM": "FTM",
                    "ICO": "ICO",
                    "KNC": "KNC",
                    "LINK": "LINK",
                    "LRC": "LRC",
                    "LTC": "LTC",
                    "LUNA": "LUNA",
                    "LUNC": "LUNC",
                    "MANA": "MANA",
                    "MARKET": "MARKET",
                    "MATIC": "MATIC",
                    "MINING": "MINING",
                    "MKR": "MKR",
                    "REGULATION": "REGULATION",
                    "REN": "REN",
                    "SAND": "SAND",
                    "SHIB": "SHIB",
                    "SNX": "SNX",
                    "SOL": "SOL",
                    "SPONSORED": "SPONSORED",
                    "SUSHI": "SUSHI",
                    "TECHNOLOGY": "TECHNOLOGY",
                    "TRADING": "TRADING",
                    "TRX": "TRX",
                    "UMA": "UMA",
                    "UNI": "UNI",
                    "USDT": "USDT",
                    "WALLET": "WALLET",
                    "XLM": "XLM",
                    "XMR": "XMR",
                    "XRP": "XRP",
                    "XTZ": "XTZ",
                    "YFI": "YFI",
                    "ZEC": "ZEC",
                    "ZRX": "ZRX",
                    "": "EMPTY",
                }
            
            @schemas.classproperty
            def INCH(cls):
                return cls("1INCH")
            
            @schemas.classproperty
            def AAVE(cls):
                return cls("AAVE")
            
            @schemas.classproperty
            def ADA(cls):
                return cls("ADA")
            
            @schemas.classproperty
            def ALGO(cls):
                return cls("ALGO")
            
            @schemas.classproperty
            def ALTCOIN(cls):
                return cls("ALTCOIN")
            
            @schemas.classproperty
            def ASIA(cls):
                return cls("ASIA")
            
            @schemas.classproperty
            def ATOM(cls):
                return cls("ATOM")
            
            @schemas.classproperty
            def AVAX(cls):
                return cls("AVAX")
            
            @schemas.classproperty
            def AXS(cls):
                return cls("AXS")
            
            @schemas.classproperty
            def BAL(cls):
                return cls("BAL")
            
            @schemas.classproperty
            def BAT(cls):
                return cls("BAT")
            
            @schemas.classproperty
            def BCH(cls):
                return cls("BCH")
            
            @schemas.classproperty
            def BLOCKCHAIN(cls):
                return cls("BLOCKCHAIN")
            
            @schemas.classproperty
            def BTC(cls):
                return cls("BTC")
            
            @schemas.classproperty
            def BUSINESS(cls):
                return cls("BUSINESS")
            
            @schemas.classproperty
            def COMMODITY(cls):
                return cls("COMMODITY")
            
            @schemas.classproperty
            def COMP(cls):
                return cls("COMP")
            
            @schemas.classproperty
            def CRV(cls):
                return cls("CRV")
            
            @schemas.classproperty
            def DASH(cls):
                return cls("DASH")
            
            @schemas.classproperty
            def DOGE(cls):
                return cls("DOGE")
            
            @schemas.classproperty
            def DOT(cls):
                return cls("DOT")
            
            @schemas.classproperty
            def ENJ(cls):
                return cls("ENJ")
            
            @schemas.classproperty
            def ETC(cls):
                return cls("ETC")
            
            @schemas.classproperty
            def ETH(cls):
                return cls("ETH")
            
            @schemas.classproperty
            def EXCHANGE(cls):
                return cls("EXCHANGE")
            
            @schemas.classproperty
            def FIAT(cls):
                return cls("FIAT")
            
            @schemas.classproperty
            def FIL(cls):
                return cls("FIL")
            
            @schemas.classproperty
            def FTM(cls):
                return cls("FTM")
            
            @schemas.classproperty
            def ICO(cls):
                return cls("ICO")
            
            @schemas.classproperty
            def KNC(cls):
                return cls("KNC")
            
            @schemas.classproperty
            def LINK(cls):
                return cls("LINK")
            
            @schemas.classproperty
            def LRC(cls):
                return cls("LRC")
            
            @schemas.classproperty
            def LTC(cls):
                return cls("LTC")
            
            @schemas.classproperty
            def LUNA(cls):
                return cls("LUNA")
            
            @schemas.classproperty
            def LUNC(cls):
                return cls("LUNC")
            
            @schemas.classproperty
            def MANA(cls):
                return cls("MANA")
            
            @schemas.classproperty
            def MARKET(cls):
                return cls("MARKET")
            
            @schemas.classproperty
            def MATIC(cls):
                return cls("MATIC")
            
            @schemas.classproperty
            def MINING(cls):
                return cls("MINING")
            
            @schemas.classproperty
            def MKR(cls):
                return cls("MKR")
            
            @schemas.classproperty
            def REGULATION(cls):
                return cls("REGULATION")
            
            @schemas.classproperty
            def REN(cls):
                return cls("REN")
            
            @schemas.classproperty
            def SAND(cls):
                return cls("SAND")
            
            @schemas.classproperty
            def SHIB(cls):
                return cls("SHIB")
            
            @schemas.classproperty
            def SNX(cls):
                return cls("SNX")
            
            @schemas.classproperty
            def SOL(cls):
                return cls("SOL")
            
            @schemas.classproperty
            def SPONSORED(cls):
                return cls("SPONSORED")
            
            @schemas.classproperty
            def SUSHI(cls):
                return cls("SUSHI")
            
            @schemas.classproperty
            def TECHNOLOGY(cls):
                return cls("TECHNOLOGY")
            
            @schemas.classproperty
            def TRADING(cls):
                return cls("TRADING")
            
            @schemas.classproperty
            def TRX(cls):
                return cls("TRX")
            
            @schemas.classproperty
            def UMA(cls):
                return cls("UMA")
            
            @schemas.classproperty
            def UNI(cls):
                return cls("UNI")
            
            @schemas.classproperty
            def USDT(cls):
                return cls("USDT")
            
            @schemas.classproperty
            def WALLET(cls):
                return cls("WALLET")
            
            @schemas.classproperty
            def XLM(cls):
                return cls("XLM")
            
            @schemas.classproperty
            def XMR(cls):
                return cls("XMR")
            
            @schemas.classproperty
            def XRP(cls):
                return cls("XRP")
            
            @schemas.classproperty
            def XTZ(cls):
                return cls("XTZ")
            
            @schemas.classproperty
            def YFI(cls):
                return cls("YFI")
            
            @schemas.classproperty
            def ZEC(cls):
                return cls("ZEC")
            
            @schemas.classproperty
            def ZRX(cls):
                return cls("ZRX")
            
            @schemas.classproperty
            def EMPTY(cls):
                return cls("")

    def __new__(
        cls,
        _arg: typing.Union[typing.Tuple[typing.Union[MetaOapg.items, str, ]], typing.List[typing.Union[MetaOapg.items, str, ]]],
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'CategoriesSchema':
        return super().__new__(
            cls,
            _arg,
            _configuration=_configuration,
        )

    def __getitem__(self, i: int) -> MetaOapg.items:
        return super().__getitem__(i)


class ExcludeCategoriesSchema(
    schemas.ListSchema
):


    class MetaOapg:
        max_items = 200
        
        
        class items(
            schemas.EnumBase,
            schemas.StrSchema
        ):
        
        
            class MetaOapg:
                enum_value_to_name = {
                    "1INCH": "INCH",
                    "AAVE": "AAVE",
                    "ADA": "ADA",
                    "ALGO": "ALGO",
                    "ALTCOIN": "ALTCOIN",
                    "ASIA": "ASIA",
                    "ATOM": "ATOM",
                    "AVAX": "AVAX",
                    "AXS": "AXS",
                    "BAL": "BAL",
                    "BAT": "BAT",
                    "BCH": "BCH",
                    "BLOCKCHAIN": "BLOCKCHAIN",
                    "BTC": "BTC",
                    "BUSINESS": "BUSINESS",
                    "COMMODITY": "COMMODITY",
                    "COMP": "COMP",
                    "CRV": "CRV",
                    "DASH": "DASH",
                    "DOGE": "DOGE",
                    "DOT": "DOT",
                    "ENJ": "ENJ",
                    "ETC": "ETC",
                    "ETH": "ETH",
                    "EXCHANGE": "EXCHANGE",
                    "FIAT": "FIAT",
                    "FIL": "FIL",
                    "FTM": "FTM",
                    "ICO": "ICO",
                    "KNC": "KNC",
                    "LINK": "LINK",
                    "LRC": "LRC",
                    "LTC": "LTC",
                    "LUNA": "LUNA",
                    "LUNC": "LUNC",
                    "MANA": "MANA",
                    "MARKET": "MARKET",
                    "MATIC": "MATIC",
                    "MINING": "MINING",
                    "MKR": "MKR",
                    "REGULATION": "REGULATION",
                    "REN": "REN",
                    "SAND": "SAND",
                    "SHIB": "SHIB",
                    "SNX": "SNX",
                    "SOL": "SOL",
                    "SPONSORED": "SPONSORED",
                    "SUSHI": "SUSHI",
                    "TECHNOLOGY": "TECHNOLOGY",
                    "TRADING": "TRADING",
                    "TRX": "TRX",
                    "UMA": "UMA",
                    "UNI": "UNI",
                    "USDT": "USDT",
                    "WALLET": "WALLET",
                    "XLM": "XLM",
                    "XMR": "XMR",
                    "XRP": "XRP",
                    "XTZ": "XTZ",
                    "YFI": "YFI",
                    "ZEC": "ZEC",
                    "ZRX": "ZRX",
                    "": "EMPTY",
                }
            
            @schemas.classproperty
            def INCH(cls):
                return cls("1INCH")
            
            @schemas.classproperty
            def AAVE(cls):
                return cls("AAVE")
            
            @schemas.classproperty
            def ADA(cls):
                return cls("ADA")
            
            @schemas.classproperty
            def ALGO(cls):
                return cls("ALGO")
            
            @schemas.classproperty
            def ALTCOIN(cls):
                return cls("ALTCOIN")
            
            @schemas.classproperty
            def ASIA(cls):
                return cls("ASIA")
            
            @schemas.classproperty
            def ATOM(cls):
                return cls("ATOM")
            
            @schemas.classproperty
            def AVAX(cls):
                return cls("AVAX")
            
            @schemas.classproperty
            def AXS(cls):
                return cls("AXS")
            
            @schemas.classproperty
            def BAL(cls):
                return cls("BAL")
            
            @schemas.classproperty
            def BAT(cls):
                return cls("BAT")
            
            @schemas.classproperty
            def BCH(cls):
                return cls("BCH")
            
            @schemas.classproperty
            def BLOCKCHAIN(cls):
                return cls("BLOCKCHAIN")
            
            @schemas.classproperty
            def BTC(cls):
                return cls("BTC")
            
            @schemas.classproperty
            def BUSINESS(cls):
                return cls("BUSINESS")
            
            @schemas.classproperty
            def COMMODITY(cls):
                return cls("COMMODITY")
            
            @schemas.classproperty
            def COMP(cls):
                return cls("COMP")
            
            @schemas.classproperty
            def CRV(cls):
                return cls("CRV")
            
            @schemas.classproperty
            def DASH(cls):
                return cls("DASH")
            
            @schemas.classproperty
            def DOGE(cls):
                return cls("DOGE")
            
            @schemas.classproperty
            def DOT(cls):
                return cls("DOT")
            
            @schemas.classproperty
            def ENJ(cls):
                return cls("ENJ")
            
            @schemas.classproperty
            def ETC(cls):
                return cls("ETC")
            
            @schemas.classproperty
            def ETH(cls):
                return cls("ETH")
            
            @schemas.classproperty
            def EXCHANGE(cls):
                return cls("EXCHANGE")
            
            @schemas.classproperty
            def FIAT(cls):
                return cls("FIAT")
            
            @schemas.classproperty
            def FIL(cls):
                return cls("FIL")
            
            @schemas.classproperty
            def FTM(cls):
                return cls("FTM")
            
            @schemas.classproperty
            def ICO(cls):
                return cls("ICO")
            
            @schemas.classproperty
            def KNC(cls):
                return cls("KNC")
            
            @schemas.classproperty
            def LINK(cls):
                return cls("LINK")
            
            @schemas.classproperty
            def LRC(cls):
                return cls("LRC")
            
            @schemas.classproperty
            def LTC(cls):
                return cls("LTC")
            
            @schemas.classproperty
            def LUNA(cls):
                return cls("LUNA")
            
            @schemas.classproperty
            def LUNC(cls):
                return cls("LUNC")
            
            @schemas.classproperty
            def MANA(cls):
                return cls("MANA")
            
            @schemas.classproperty
            def MARKET(cls):
                return cls("MARKET")
            
            @schemas.classproperty
            def MATIC(cls):
                return cls("MATIC")
            
            @schemas.classproperty
            def MINING(cls):
                return cls("MINING")
            
            @schemas.classproperty
            def MKR(cls):
                return cls("MKR")
            
            @schemas.classproperty
            def REGULATION(cls):
                return cls("REGULATION")
            
            @schemas.classproperty
            def REN(cls):
                return cls("REN")
            
            @schemas.classproperty
            def SAND(cls):
                return cls("SAND")
            
            @schemas.classproperty
            def SHIB(cls):
                return cls("SHIB")
            
            @schemas.classproperty
            def SNX(cls):
                return cls("SNX")
            
            @schemas.classproperty
            def SOL(cls):
                return cls("SOL")
            
            @schemas.classproperty
            def SPONSORED(cls):
                return cls("SPONSORED")
            
            @schemas.classproperty
            def SUSHI(cls):
                return cls("SUSHI")
            
            @schemas.classproperty
            def TECHNOLOGY(cls):
                return cls("TECHNOLOGY")
            
            @schemas.classproperty
            def TRADING(cls):
                return cls("TRADING")
            
            @schemas.classproperty
            def TRX(cls):
                return cls("TRX")
            
            @schemas.classproperty
            def UMA(cls):
                return cls("UMA")
            
            @schemas.classproperty
            def UNI(cls):
                return cls("UNI")
            
            @schemas.classproperty
            def USDT(cls):
                return cls("USDT")
            
            @schemas.classproperty
            def WALLET(cls):
                return cls("WALLET")
            
            @schemas.classproperty
            def XLM(cls):
                return cls("XLM")
            
            @schemas.classproperty
            def XMR(cls):
                return cls("XMR")
            
            @schemas.classproperty
            def XRP(cls):
                return cls("XRP")
            
            @schemas.classproperty
            def XTZ(cls):
                return cls("XTZ")
            
            @schemas.classproperty
            def YFI(cls):
                return cls("YFI")
            
            @schemas.classproperty
            def ZEC(cls):
                return cls("ZEC")
            
            @schemas.classproperty
            def ZRX(cls):
                return cls("ZRX")
            
            @schemas.classproperty
            def EMPTY(cls):
                return cls("")

    def __new__(
        cls,
        _arg: typing.Union[typing.Tuple[typing.Union[MetaOapg.items, str, ]], typing.List[typing.Union[MetaOapg.items, str, ]]],
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'ExcludeCategoriesSchema':
        return super().__new__(
            cls,
            _arg,
            _configuration=_configuration,
        )

    def __getitem__(self, i: int) -> MetaOapg.items:
        return super().__getitem__(i)
ToTsSchema = schemas.IntSchema
RequestRequiredQueryParams = typing_extensions.TypedDict(
    'RequestRequiredQueryParams',
    {
    }
)
RequestOptionalQueryParams = typing_extensions.TypedDict(
    'RequestOptionalQueryParams',
    {
        'source_ids': typing.Union[SourceIdsSchema, list, tuple, ],
        'lang': typing.Union[LangSchema, str, ],
        'categories': typing.Union[CategoriesSchema, list, tuple, ],
        'exclude_categories': typing.Union[ExcludeCategoriesSchema, list, tuple, ],
        'to_ts': typing.Union[ToTsSchema, decimal.Decimal, int, ],
    },
    total=False
)


class RequestQueryParams(RequestRequiredQueryParams, RequestOptionalQueryParams):
    pass


request_query_source_ids = api_client.QueryParameter(
    name="source_ids",
    style=api_client.ParameterStyle.FORM,
    schema=SourceIdsSchema,
)
request_query_lang = api_client.QueryParameter(
    name="lang",
    style=api_client.ParameterStyle.FORM,
    schema=LangSchema,
)
request_query_categories = api_client.QueryParameter(
    name="categories",
    style=api_client.ParameterStyle.FORM,
    schema=CategoriesSchema,
)
request_query_exclude_categories = api_client.QueryParameter(
    name="exclude_categories",
    style=api_client.ParameterStyle.FORM,
    schema=ExcludeCategoriesSchema,
)
request_query_to_ts = api_client.QueryParameter(
    name="to_ts",
    style=api_client.ParameterStyle.FORM,
    schema=ToTsSchema,
)
SchemaFor200ResponseBodyApplicationJson = GENERICRESPONSE


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor200ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
SchemaFor400ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor400(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor400ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_400 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor400,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor400ResponseBodyApplicationJson),
    },
)
SchemaFor401ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor401(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor401ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_401 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor401,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor401ResponseBodyApplicationJson),
    },
)
SchemaFor403ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor403(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor403ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_403 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor403,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor403ResponseBodyApplicationJson),
    },
)
SchemaFor404ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor404(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor404ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_404 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor404,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor404ResponseBodyApplicationJson),
    },
)
SchemaFor405ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor405(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor405ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_405 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor405,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor405ResponseBodyApplicationJson),
    },
)
SchemaFor429ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor429(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor429ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_429 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor429,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor429ResponseBodyApplicationJson),
    },
)
SchemaFor500ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor500(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor500ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_500 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor500,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor500ResponseBodyApplicationJson),
    },
)
SchemaFor502ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor502(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor502ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_502 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor502,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor502ResponseBodyApplicationJson),
    },
)
SchemaFor503ResponseBodyApplicationJson = Error


@dataclass
class ApiResponseFor503(api_client.ApiResponse):
    response: urllib3.HTTPResponse
    body: typing.Union[
        SchemaFor503ResponseBodyApplicationJson,
    ]
    headers: schemas.Unset = schemas.unset


_response_for_503 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor503,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor503ResponseBodyApplicationJson),
    },
)
_status_code_to_response = {
    '200': _response_for_200,
    '400': _response_for_400,
    '401': _response_for_401,
    '403': _response_for_403,
    '404': _response_for_404,
    '405': _response_for_405,
    '429': _response_for_429,
    '500': _response_for_500,
    '502': _response_for_502,
    '503': _response_for_503,
}
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):
    @typing.overload
    def _news_v1_article_list_oapg(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: typing_extensions.Literal[False] = ...,
    ) -> typing.Union[
        ApiResponseFor200,
    ]: ...

    @typing.overload
    def _news_v1_article_list_oapg(
        self,
        skip_deserialization: typing_extensions.Literal[True],
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
    ) -> api_client.ApiResponseWithoutDeserialization: ...

    @typing.overload
    def _news_v1_article_list_oapg(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = ...,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]: ...

    def _news_v1_article_list_oapg(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = False,
    ):
        """
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestQueryParams, query_params)
        used_path = path.value

        prefix_separator_iterator = None
        for parameter in (
            request_query_source_ids,
            request_query_lang,
            request_query_categories,
            request_query_exclude_categories,
            request_query_to_ts,
        ):
            parameter_data = query_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            if prefix_separator_iterator is None:
                prefix_separator_iterator = parameter.get_prefix_separator_iterator()
            serialized_data = parameter.serialize(parameter_data, prefix_separator_iterator)
            for serialized_value in serialized_data.values():
                used_path += serialized_value

        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)

        response = self.api_client.call_api(
            resource_path=used_path,
            method='get'.upper(),
            headers=_headers,
            stream=stream,
            timeout=timeout,
        )

        if skip_deserialization:
            api_response = api_client.ApiResponseWithoutDeserialization(response=response)
        else:
            response_for_status = _status_code_to_response.get(str(response.status))
            if response_for_status:
                api_response = response_for_status.deserialize(response, self.api_client.configuration)
            else:
                api_response = api_client.ApiResponseWithoutDeserialization(response=response)

        if not 200 <= response.status <= 299:
            raise exceptions.ApiException(
                status=response.status,
                reason=response.reason,
                api_response=api_response
            )

        return api_response


class NewsV1ArticleList(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    @typing.overload
    def news_v1_article_list(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: typing_extensions.Literal[False] = ...,
    ) -> typing.Union[
        ApiResponseFor200,
    ]: ...

    @typing.overload
    def news_v1_article_list(
        self,
        skip_deserialization: typing_extensions.Literal[True],
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
    ) -> api_client.ApiResponseWithoutDeserialization: ...

    @typing.overload
    def news_v1_article_list(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = ...,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]: ...

    def news_v1_article_list(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = False,
    ):
        return self._news_v1_article_list_oapg(
            query_params=query_params,
            accept_content_types=accept_content_types,
            stream=stream,
            timeout=timeout,
            skip_deserialization=skip_deserialization
        )


class ApiForget(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    @typing.overload
    def get(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: typing_extensions.Literal[False] = ...,
    ) -> typing.Union[
        ApiResponseFor200,
    ]: ...

    @typing.overload
    def get(
        self,
        skip_deserialization: typing_extensions.Literal[True],
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
    ) -> api_client.ApiResponseWithoutDeserialization: ...

    @typing.overload
    def get(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = ...,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]: ...

    def get(
        self,
        query_params: RequestQueryParams = frozendict.frozendict(),
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        skip_deserialization: bool = False,
    ):
        return self._news_v1_article_list_oapg(
            query_params=query_params,
            accept_content_types=accept_content_types,
            stream=stream,
            timeout=timeout,
            skip_deserialization=skip_deserialization
        )


