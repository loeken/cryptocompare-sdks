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


from typing import Any, Dict, List, Optional
from pydantic import BaseModel, Field
from openapi_client.models.spotinstrumenttrade import SPOTINSTRUMENTTRADE

class SPOTINSTRUMENTTRADERESPONSE(BaseModel):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """
    data: Optional[List[SPOTINSTRUMENTTRADE]] = Field(None, alias="Data")
    err: Optional[Dict[str, Any]] = Field(None, alias="Err")
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
    def from_json(cls, json_str: str) -> SPOTINSTRUMENTTRADERESPONSE:
        """Create an instance of SPOTINSTRUMENTTRADERESPONSE from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in data (list)
        _items = []
        if self.data:
            for _item in self.data:
                if _item:
                    _items.append(_item.to_dict())
            _dict['Data'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> SPOTINSTRUMENTTRADERESPONSE:
        """Create an instance of SPOTINSTRUMENTTRADERESPONSE from a dict"""
        if obj is None:
            return None

        if type(obj) is not dict:
            return SPOTINSTRUMENTTRADERESPONSE.parse_obj(obj)

        _obj = SPOTINSTRUMENTTRADERESPONSE.parse_obj({
            "data": [SPOTINSTRUMENTTRADE.from_dict(_item) for _item in obj.get("Data")] if obj.get("Data") is not None else None,
            "err": obj.get("Err")
        })
        return _obj

