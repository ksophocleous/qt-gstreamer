project(qtgst-example-recorder)

if (NOT BUILDING_QTGSTREAMER)
    set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../cmake/modules)
    find_package(Qt4or5 COMPONENTS Core Gui Widgets REQUIRED)
    if (${QT_VERSION} STREQUAL "5")
        find_package(Qt5GStreamer REQUIRED)
    else()
        find_package(QtGStreamer REQUIRED)
    endif()
    set(CMAKE_AUTOMOC ON)
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
endif()

include_directories(${QTGSTREAMER_INCLUDES})
add_definitions(${QTGSTREAMER_DEFINITIONS})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${QTGSTREAMER_FLAGS}")

qt5_wrap_ui(recorder_UI_SRCS recorder.ui)
add_executable(recorder main.cpp ${recorder_UI_SRCS})
target_link_libraries(recorder ${QTGSTREAMER_LIBRARIES}
	Qt5::Core
	Qt5::Widgets
	Qt5::Gui)
# qt4or5_use_modules(recorder Core Gui Widgets)
