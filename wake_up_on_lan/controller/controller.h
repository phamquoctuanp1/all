//#ifndef CONTROLLER_H
//#define CONTROLLER_H

//#include <QObject>

//class Controller : public QObject
//{
//    Q_OBJECT
//public:
//    explicit Controller(QObject *parent = nullptr);

//signals:

//public slots:
//};

//#endif // CONTROLLER_H
#ifndef CONTROLLER_H
#define CONTROLLER_Hi
#include <QMqttClient>
#include <QMqttSubscription>
#include <QObject>
#include <QMqttTopicFilter>
#include <qmqtttopicname.h>

class controller : public QObject
{
    Q_OBJECT
    QMqttClient mqttClient;
public:

    controller();
    void connectHost();
    void kichHoat(QString message);
public slots:
    void onStateChanged(QMqttClient::ClientState state);
    void onConnected();
    void onGoidien(QString message);
    void onMessageReceived(const QByteArray &message, const QMqttTopicName &topic);
    void updateStatus(QMqttSubscription::SubscriptionState state);
signals:
    void goidien(QString message="nhac may len");

};


#endif // CONTROLLER_H
