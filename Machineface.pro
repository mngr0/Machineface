TEMPLATE = app
NAME = Machineface

QT += qml quick widgets

SOURCES += main.cpp

RESOURCES += qml.qrc

QML_FILES = $$PWD/$$NAME/*.qml
OTHER_FILES += $$QML_FILES

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

ios: {
    LIBS += -L$$PROTOBUF_LIB_PATH
    LIBS += -L$$ZEROMQ_LIB_PATH
    LIBS += -L$$LIBSODIUM_LIB_PATH
    LIBS += -lsodium -lzmq -lprotobuf
}

android: {
    LIBS += -lmachinetalk-protobuf
}

TRANSLATIONS_PATH = $$PWD/translations
TRANSLATIONS_OUT_PATH = $$PWD/$$NAME/translations
include(translation.pri)

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../Documents/github/QtQuickVcp/3rdparty/machinetalk-protobuf-qt/release/ -lmachinetalk-pb2
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../Documents/github/QtQuickVcp/3rdparty/machinetalk-protobuf-qt/debug/ -lmachinetalk-pb2
else:unix: LIBS += -L$$PWD/../Documents/github/QtQuickVcp/3rdparty/machinetalk-protobuf-qt/ -lmachinetalk-pb2

INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/3rdparty/machinetalk-protobuf-qt
DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/3rdparty/machinetalk-protobuf-qt


INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Application
INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Application/Controls
INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Controls
INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/HalRemote
INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/HalRemote/Controls
INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/PathView
INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/VideoView
INCLUDEPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Service


DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Application
DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Application/Controls
DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Controls
DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/HalRemote
DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/HalRemote/Controls
DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/PathView
DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Service
DEPENDPATH += $$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/VideoView

LIBS += -L$$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Application/ -lmachinekitapplicationplugin
LIBS += -L$$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Application/Controls -lmachinekitapplicationplugin
LIBS += -L$$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Controls -lmachinekitapplicationplugin
LIBS += -L$$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/HalRemote -lmachinekitapplicationplugin
LIBS += -L$$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/HalRemote/Controls -lmachinekitapplicationplugin
LIBS += -L$$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/Service -lmachinekitapplicationplugin
LIBS += -L$$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/PathView -lmachinekitapplicationplugin
LIBS += -L$$PWD/../Documents/github/QtQuickVcp/imports/Machinekit/VideoView -lmachinekitapplicationplugin

