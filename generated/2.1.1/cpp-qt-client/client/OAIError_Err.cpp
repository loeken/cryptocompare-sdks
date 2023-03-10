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

#include "OAIError_Err.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIError_Err::OAIError_Err(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIError_Err::OAIError_Err() {
    this->initializeModel();
}

OAIError_Err::~OAIError_Err() {}

void OAIError_Err::initializeModel() {

    m_message_isSet = false;
    m_message_isValid = false;

    m_other_info_isSet = false;
    m_other_info_isValid = false;

    m_type_isSet = false;
    m_type_isValid = false;
}

void OAIError_Err::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIError_Err::fromJsonObject(QJsonObject json) {

    m_message_isValid = ::OpenAPI::fromJsonValue(message, json[QString("message")]);
    m_message_isSet = !json[QString("message")].isNull() && m_message_isValid;

    m_other_info_isValid = ::OpenAPI::fromJsonValue(other_info, json[QString("other_info")]);
    m_other_info_isSet = !json[QString("other_info")].isNull() && m_other_info_isValid;

    m_type_isValid = ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;
}

QString OAIError_Err::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIError_Err::asJsonObject() const {
    QJsonObject obj;
    if (m_message_isSet) {
        obj.insert(QString("message"), ::OpenAPI::toJsonValue(message));
    }
    if (other_info.isSet()) {
        obj.insert(QString("other_info"), ::OpenAPI::toJsonValue(other_info));
    }
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
    return obj;
}

QString OAIError_Err::getMessage() const {
    return message;
}
void OAIError_Err::setMessage(const QString &message) {
    this->message = message;
    this->m_message_isSet = true;
}

bool OAIError_Err::is_message_Set() const{
    return m_message_isSet;
}

bool OAIError_Err::is_message_Valid() const{
    return m_message_isValid;
}

OAIError_Err_other_info OAIError_Err::getOtherInfo() const {
    return other_info;
}
void OAIError_Err::setOtherInfo(const OAIError_Err_other_info &other_info) {
    this->other_info = other_info;
    this->m_other_info_isSet = true;
}

bool OAIError_Err::is_other_info_Set() const{
    return m_other_info_isSet;
}

bool OAIError_Err::is_other_info_Valid() const{
    return m_other_info_isValid;
}

qint32 OAIError_Err::getType() const {
    return type;
}
void OAIError_Err::setType(const qint32 &type) {
    this->type = type;
    this->m_type_isSet = true;
}

bool OAIError_Err::is_type_Set() const{
    return m_type_isSet;
}

bool OAIError_Err::is_type_Valid() const{
    return m_type_isValid;
}

bool OAIError_Err::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_message_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (other_info.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIError_Err::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
