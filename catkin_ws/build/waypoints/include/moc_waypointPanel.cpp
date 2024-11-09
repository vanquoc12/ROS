/****************************************************************************
** Meta object code from reading C++ file 'waypointPanel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/waypoints/include/waypointPanel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'waypointPanel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_waypoints__waypointPanel_t {
    QByteArrayData data[18];
    char stringdata0[202];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_waypoints__waypointPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_waypoints__waypointPanel_t qt_meta_stringdata_waypoints__waypointPanel = {
    {
QT_MOC_LITERAL(0, 0, 24), // "waypoints::waypointPanel"
QT_MOC_LITERAL(1, 25, 16), // "onDeleteWaypoint"
QT_MOC_LITERAL(2, 42, 0), // ""
QT_MOC_LITERAL(3, 43, 10), // "onNewGroup"
QT_MOC_LITERAL(4, 54, 13), // "onDeleteGroup"
QT_MOC_LITERAL(5, 68, 11), // "onAdd2Group"
QT_MOC_LITERAL(6, 80, 14), // "onDelete2Group"
QT_MOC_LITERAL(7, 95, 10), // "onRunGroup"
QT_MOC_LITERAL(8, 106, 7), // "onRunWp"
QT_MOC_LITERAL(9, 114, 11), // "onStopGroup"
QT_MOC_LITERAL(10, 126, 10), // "onGroupBox"
QT_MOC_LITERAL(11, 137, 5), // "group"
QT_MOC_LITERAL(12, 143, 6), // "onLoop"
QT_MOC_LITERAL(13, 150, 5), // "state"
QT_MOC_LITERAL(14, 156, 10), // "onSaveFile"
QT_MOC_LITERAL(15, 167, 10), // "onLoadFile"
QT_MOC_LITERAL(16, 178, 11), // "publishPath"
QT_MOC_LITERAL(17, 190, 11) // "std::string"

    },
    "waypoints::waypointPanel\0onDeleteWaypoint\0"
    "\0onNewGroup\0onDeleteGroup\0onAdd2Group\0"
    "onDelete2Group\0onRunGroup\0onRunWp\0"
    "onStopGroup\0onGroupBox\0group\0onLoop\0"
    "state\0onSaveFile\0onLoadFile\0publishPath\0"
    "std::string"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_waypoints__waypointPanel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   79,    2, 0x09 /* Protected */,
       3,    0,   80,    2, 0x09 /* Protected */,
       4,    0,   81,    2, 0x09 /* Protected */,
       5,    0,   82,    2, 0x09 /* Protected */,
       6,    0,   83,    2, 0x09 /* Protected */,
       7,    0,   84,    2, 0x09 /* Protected */,
       8,    0,   85,    2, 0x09 /* Protected */,
       9,    0,   86,    2, 0x09 /* Protected */,
      10,    1,   87,    2, 0x09 /* Protected */,
      12,    1,   90,    2, 0x09 /* Protected */,
      14,    0,   93,    2, 0x09 /* Protected */,
      15,    0,   94,    2, 0x09 /* Protected */,
      16,    1,   95,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   11,
    QMetaType::Void, QMetaType::Int,   13,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 17,   11,

       0        // eod
};

void waypoints::waypointPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<waypointPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->onDeleteWaypoint(); break;
        case 1: _t->onNewGroup(); break;
        case 2: _t->onDeleteGroup(); break;
        case 3: _t->onAdd2Group(); break;
        case 4: _t->onDelete2Group(); break;
        case 5: _t->onRunGroup(); break;
        case 6: _t->onRunWp(); break;
        case 7: _t->onStopGroup(); break;
        case 8: _t->onGroupBox((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 9: _t->onLoop((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->onSaveFile(); break;
        case 11: _t->onLoadFile(); break;
        case 12: _t->publishPath((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject waypoints::waypointPanel::staticMetaObject = { {
    &rviz::Panel::staticMetaObject,
    qt_meta_stringdata_waypoints__waypointPanel.data,
    qt_meta_data_waypoints__waypointPanel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *waypoints::waypointPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *waypoints::waypointPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_waypoints__waypointPanel.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int waypoints::waypointPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 13;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
