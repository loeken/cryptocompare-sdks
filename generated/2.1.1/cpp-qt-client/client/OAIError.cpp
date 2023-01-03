/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIError.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIError::OAIError(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIError::OAIError() {
    this->initializeModel();
}

OAIError::~OAIError() {}

void OAIError::initializeModel() {

    m_data_isSet = false;
    m_data_isValid = false;

    m_err_isSet = false;
    m_err_isValid = false;
}

void OAIError::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIError::fromJsonObject(QJsonObject json) {

    m_data_isValid = ::OpenAPI::fromJsonValue(data, json[QString("Data")]);
    m_data_isSet = !json[QString("Data")].isNull() && m_data_isValid;

    m_err_isValid = ::OpenAPI::fromJsonValue(err, json[QString("Err")]);
    m_err_isSet = !json[QString("Err")].isNull() && m_err_isValid;
}

QString OAIError::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIError::asJsonObject() const {
    QJsonObject obj;
    if (m_data_isSet) {
        obj.insert(QString("Data"), ::OpenAPI::toJsonValue(data));
    }
    if (err.isSet()) {
        obj.insert(QString("Err"), ::OpenAPI::toJsonValue(err));
    }
    return obj;
}

OAIObject OAIError::getData() const {
    return data;
}
void OAIError::setData(const OAIObject &data) {
    this->data = data;
    this->m_data_isSet = true;
}

bool OAIError::is_data_Set() const{
    return m_data_isSet;
}

bool OAIError::is_data_Valid() const{
    return m_data_isValid;
}

OAIError_Err OAIError::getErr() const {
    return err;
}
void OAIError::setErr(const OAIError_Err &err) {
    this->err = err;
    this->m_err_isSet = true;
}

bool OAIError::is_err_Set() const{
    return m_err_isSet;
}

bool OAIError::is_err_Valid() const{
    return m_err_isValid;
}

bool OAIError::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_data_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (err.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIError::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
