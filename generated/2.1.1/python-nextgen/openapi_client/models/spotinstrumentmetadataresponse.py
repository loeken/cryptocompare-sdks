# coding: utf-8

"""
    CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

    CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.  # noqa: E501

    The version of the OpenAPI document: 2.1.1
    Contact: data@cryptocompare.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import annotations
from inspect import getfullargspec
import pprint
import re  # noqa: F401
import json


from typing import Dict, Optional
from pydantic import BaseModel, Field
from openapi_client.models.spotinstrumentmarketdataresponse_err import SPOTINSTRUMENTMARKETDATARESPONSEErr
from openapi_client.models.spotinstrumentmetadata import SPOTINSTRUMENTMETADATA

class SPOTINSTRUMENTMETADATARESPONSE(BaseModel):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """
    data: Optional[Dict[str, SPOTINSTRUMENTMETADATA]] = Field(None, alias="Data")
    err: Optional[SPOTINSTRUMENTMARKETDATARESPONSEErr] = Field(None, alias="Err")
    __properties = ["Data", "Err"]

    class Config:
        allow_population_by_field_name = True
        validate_assignment = True

    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.dict(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> SPOTINSTRUMENTMETADATARESPONSE:
        """Create an instance of SPOTINSTRUMENTMETADATARESPONSE from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each value in data (dict)
        _field_dict = {}
        if self.data:
            for _key in self.data:
                if self.data[_key]:
                    _field_dict[_key] = self.data[_key].to_dict()
            _dict['Data'] = _field_dict
        # override the default output from pydantic by calling `to_dict()` of err
        if self.err:
            _dict['Err'] = self.err.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> SPOTINSTRUMENTMETADATARESPONSE:
        """Create an instance of SPOTINSTRUMENTMETADATARESPONSE from a dict"""
        if obj is None:
            return None

        if type(obj) is not dict:
            return SPOTINSTRUMENTMETADATARESPONSE.parse_obj(obj)

        _obj = SPOTINSTRUMENTMETADATARESPONSE.parse_obj({
            "data": dict((_k, Dict[str, SPOTINSTRUMENTMETADATA].from_dict(_v)) for _k, _v in obj.get("Data").items()),
            "err": SPOTINSTRUMENTMARKETDATARESPONSEErr.from_dict(obj.get("Err")) if obj.get("Err") is not None else None
        })
        return _obj

