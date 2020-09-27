//#include "controller.h"

//Controller::Controller(QObject *parent) : QObject(parent)
//{

//}
#include "controller/controller.h"


controller::controller()
{
  mqttClient.setHostname("10.0.50.182");//10;0;50;182
  mqttClient.setPort(1883);

  connect(&mqttClient,&QMqttClient::stateChanged,this,&controller::onStateChanged);
  connect(&mqttClient,&QMqttClient::connected,this,&controller::onConnected);
  connect(this,&controller::goidien,this,&controller::onGoidien);
  connect(&mqttClient,&QMqttClient::messageReceived,this,&controller::onMessageReceived);


}


void controller::connectHost()
{
    mqttClient.connectToHost();
}

void controller::kichHoat(QString message)
{
    //phat tin hieu/ trigger signal
    qDebug()<<__LINE__;
    emit goidien(message);
}

void controller::onStateChanged(QMqttClient::ClientState state)
{
    qDebug()<<state;
}

void controller::onConnected()
{
    qDebug()<<"gui message";
    mqttClient.publish(QMqttTopicName("whtever"),"message");
   QMqttSubscription *m  = mqttClient.subscribe(QMqttTopicFilter("whtever"));
   connect(m,&QMqttSubscription::stateChanged,this,&controller::updateStatus);
}


void controller::onGoidien(QString message)
{
    qDebug()<<__LINE__;
    qDebug()<<message;
}

void controller::onMessageReceived(const QByteArray &message,const QMqttTopicName &topic)
{

    qDebug()<<message;
    //qDebug()<<topic;
}

void controller::updateStatus(QMqttSubscription::SubscriptionState state)
{
    qDebug()<<state<<"subscribe";
}


