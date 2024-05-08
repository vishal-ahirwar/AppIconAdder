#ifndef MANAGER_H
#define MANAGER_H

#include <QObject>

namespace Vali {

class Manager : public QObject
{
    Q_OBJECT
public:
    explicit Manager(QObject *parent = nullptr);

signals:
};

} // namespace Vali

#endif // MANAGER_H
