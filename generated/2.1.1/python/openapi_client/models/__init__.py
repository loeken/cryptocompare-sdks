# coding: utf-8

# flake8: noqa

# import all models into this package
# if you have many models here with many references from one model to another this may
# raise a RecursionError
# to avoid this, import only the models that you directly need like:
# from openapi_client.model.pet import Pet
# or import this package, but before doing it, use:
# import sys
# sys.setrecursionlimit(n)

from openapi_client.model.error import Error
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.spotinstrumenthistodata import SPOTINSTRUMENTHISTODATA
from openapi_client.model.spotinstrumenthistodataresponse import SPOTINSTRUMENTHISTODATARESPONSE
from openapi_client.model.spotinstrumentmarketdata import SPOTINSTRUMENTMARKETDATA
from openapi_client.model.spotinstrumentmarketdataresponse import SPOTINSTRUMENTMARKETDATARESPONSE
from openapi_client.model.spotinstrumentmetadata import SPOTINSTRUMENTMETADATA
from openapi_client.model.spotinstrumentmetadataresponse import SPOTINSTRUMENTMETADATARESPONSE
from openapi_client.model.spotinstrumenttrade import SPOTINSTRUMENTTRADE
from openapi_client.model.spotinstrumenttraderesponse import SPOTINSTRUMENTTRADERESPONSE
