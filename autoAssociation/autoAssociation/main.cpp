#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "autoassociation.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<Autoassociation>("an.qt.Autoassociation",1,0,"Autoassociation");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

