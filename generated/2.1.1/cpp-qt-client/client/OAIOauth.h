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

/**
 * Providing a Oauth2 Class and a ReplyServer for the Oauth2 authorization code flow. 
 */
#ifndef OAI_OAUTH2_H
#define OAI_OAUTH2_H

#include <QObject>
#include <QtCore>
#include <QtNetwork>
#include <QDesktopServices>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QNetworkAccessManager>
#include <QtDebug>
#include <QTcpServer>
#include <QTcpSocket>
#include <QByteArray>
#include <QString>
#include <QMap>
#include <QUrl>
#include <QUrlQuery>
#include <QDateTime>
#include <time.h>

namespace OpenAPI {

class oauthToken
{
public:
    oauthToken(QString token, int expiresIn, QString scope, QString tokenType) : m_token(token), m_scope(scope), m_type(tokenType){
        m_validUntil = time(nullptr) + expiresIn;
    }
    oauthToken(){
        m_validUntil = time(nullptr) - 1;
    }
    QString getToken(){return m_token;};
    QString getScope(){return m_scope;};
    QString getType(){return m_type;};
    bool isValid(){return time(nullptr) < m_validUntil;};

private:
    QString m_token;
    time_t m_validUntil;
    QString m_scope;
    QString m_type;
};

class ReplyServer : public QTcpServer
{
    Q_OBJECT
public:
    explicit ReplyServer(QObject *parent = nullptr);
    void setReply(QByteArray reply){m_reply = reply;};
    void run();
private:
    QByteArray m_reply;

signals:
    void dataReceived(QMap<QString, QString>);

public slots:
    void onConnected();
    void read();
    void start();
    void stop();
};

//Base class
class OauthBase : public QObject
{
    Q_OBJECT
public: 
    OauthBase(QObject* parent = nullptr) : QObject(parent) {};
    oauthToken getToken(QString scope);
    void addToken(oauthToken token);
    void removeToken(QString scope);
    bool linked(){return m_linked;};
    virtual void link()=0;
    virtual void unlink()=0;

protected:
    QMap<QString, oauthToken> m_oauthTokenMap;
    QUrl m_authUrl;
    QUrl m_tokenUrl;
    QString m_scope, m_accessType, m_state, m_redirectUri, m_clientId, m_clientSecret;
    bool m_linked;

public slots:
    virtual void authenticationNeededCallback()=0;
    void onFinish(QNetworkReply *rep);

signals:
    void authenticationNeeded();
    void tokenReceived();
};

// Authorization code flow
class OauthCode : public OauthBase
{
    Q_OBJECT
public:
    OauthCode(QObject *parent = nullptr);
    void link() override;
    void unlink() override;
    void setVariables(QString authUrl, QString tokenUrl, QString scope, QString state, QString redirectUri, QString clientId, QString clientSecret, QString accessType = "");

private:
    ReplyServer m_server;

public slots:
    void authenticationNeededCallback() override;
    void onVerificationReceived(const QMap<QString, QString> response);

};

// Implicit flow
class OauthImplicit : public OauthBase
{
    Q_OBJECT
public:
    OauthImplicit(QObject *parent = nullptr);
    void link() override;
    void unlink() override;
    void setVariables(QString authUrl, QString scope, QString state, QString redirectUri, QString clientId, QString accessType = "");

private:
    ReplyServer m_server;

public slots:
    void authenticationNeededCallback() override;
    void ImplicitTokenReceived(const QMap<QString, QString> response);
};

//client credentials flow
class OauthCredentials : public OauthBase
{
    Q_OBJECT
public:
    OauthCredentials(QObject *parent = nullptr);
    void link() override;
    void unlink() override;
    void setVariables(QString tokenUrl, QString scope, QString clientId, QString clientSecret);

public slots:
    void authenticationNeededCallback() override;

};

//resource owner password flow
class OauthPassword : public OauthBase
{
    Q_OBJECT
public:
    OauthPassword(QObject *parent = nullptr);
    void link() override;
    void unlink() override;
    void setVariables(QString tokenUrl, QString scope, QString clientId, QString clientSecret, QString username, QString password);

private:
    QString m_username, m_password;

public slots:
    void authenticationNeededCallback() override;

};


} // namespace OpenAPI
#endif // OAI_OAUTH2_H
