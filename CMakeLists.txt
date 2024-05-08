cmake_minimum_required(VERSION 3.16)

project(AppIconAdder VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appAppIconAdder
    main.cpp
)

qt_add_qml_module(appAppIconAdder
    URI AppIconAdder
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES StyleButton.qml
        SOURCES manager.h manager.cpp
        QML_FILES SelectApplication.qml
        QML_FILES SelectIcon.qml
        QML_FILES FinalPage.qml
        QML_FILES IconButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appAppIconAdder PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appAppIconAdder
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appAppIconAdder
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appAppIconAdder
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
