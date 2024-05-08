#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<manager.h>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Vali::Manager Manager{&app};
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/AppIconAdder/Main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
