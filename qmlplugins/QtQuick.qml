import QtQuick.tooling 1.1

// This file describes the plugin-supplied types contained in the library.
// It is used for QML tooling purposes only.
//
// This file was auto-generated with the command 'qml1plugindump -builtins'.

Module {
    Component {
        name: "QDeclarativeAbstractAnimation"
        prototype: "QObject"
        exports: ["QtQuick/Animation 1.0"]
        Enum {
            name: "Loops"
            values: {
                "Infinite": -2
            }
        }
        Property { name: "running"; type: "bool" }
        Property { name: "paused"; type: "bool" }
        Property { name: "alwaysRunToEnd"; type: "bool" }
        Property { name: "loops"; type: "int" }
        Signal { name: "started" }
        Signal { name: "completed" }
        Signal {
            name: "runningChanged"
            Parameter { type: "bool" }
        }
        Signal {
            name: "pausedChanged"
            Parameter { type: "bool" }
        }
        Signal {
            name: "alwaysRunToEndChanged"
            Parameter { type: "bool" }
        }
        Signal {
            name: "loopCountChanged"
            Parameter { type: "int" }
        }
        Method { name: "restart" }
        Method { name: "start" }
        Method { name: "pause" }
        Method { name: "resume" }
        Method { name: "stop" }
        Method { name: "complete" }
    }
    Component {
        name: "QDeclarativeAnchorAnimation"
        prototype: "QDeclarativeAbstractAnimation"
        exports: ["QtQuick/AnchorAnimation 1.0"]
        Property { name: "targets"; type: "QDeclarativeItem"; isList: true; isReadonly: true }
        Property { name: "duration"; type: "int" }
        Property { name: "easing"; type: "QEasingCurve" }
        Signal {
            name: "durationChanged"
            Parameter { type: "int" }
        }
        Signal {
            name: "easingChanged"
            Parameter { type: "QEasingCurve" }
        }
    }
    Component {
        name: "QDeclarativeAnchorChanges"
        prototype: "QDeclarativeStateOperation"
        exports: ["QtQuick/AnchorChanges 1.0"]
        Property { name: "target"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "anchors"; type: "QDeclarativeAnchorSet"; isReadonly: true; isPointer: true }
    }
    Component {
        name: "QDeclarativeAnchorSet"
        prototype: "QObject"
        Property { name: "left"; type: "QDeclarativeScriptString" }
        Property { name: "right"; type: "QDeclarativeScriptString" }
        Property { name: "horizontalCenter"; type: "QDeclarativeScriptString" }
        Property { name: "top"; type: "QDeclarativeScriptString" }
        Property { name: "bottom"; type: "QDeclarativeScriptString" }
        Property { name: "verticalCenter"; type: "QDeclarativeScriptString" }
        Property { name: "baseline"; type: "QDeclarativeScriptString" }
    }
    Component {
        name: "QDeclarativeAnchors"
        prototype: "QObject"
        Property { name: "left"; type: "QDeclarativeAnchorLine" }
        Property { name: "right"; type: "QDeclarativeAnchorLine" }
        Property { name: "horizontalCenter"; type: "QDeclarativeAnchorLine" }
        Property { name: "top"; type: "QDeclarativeAnchorLine" }
        Property { name: "bottom"; type: "QDeclarativeAnchorLine" }
        Property { name: "verticalCenter"; type: "QDeclarativeAnchorLine" }
        Property { name: "baseline"; type: "QDeclarativeAnchorLine" }
        Property { name: "margins"; type: "double" }
        Property { name: "leftMargin"; type: "double" }
        Property { name: "rightMargin"; type: "double" }
        Property { name: "horizontalCenterOffset"; type: "double" }
        Property { name: "topMargin"; type: "double" }
        Property { name: "bottomMargin"; type: "double" }
        Property { name: "verticalCenterOffset"; type: "double" }
        Property { name: "baselineOffset"; type: "double" }
        Property { name: "fill"; type: "QGraphicsObject"; isPointer: true }
        Property { name: "centerIn"; type: "QGraphicsObject"; isPointer: true }
    }
    Component {
        name: "QDeclarativeAnimatedImage"
        defaultProperty: "data"
        prototype: "QDeclarativeImage"
        exports: ["QtQuick/AnimatedImage 1.0"]
        Property { name: "playing"; type: "bool" }
        Property { name: "paused"; type: "bool" }
        Property { name: "currentFrame"; type: "int" }
        Property { name: "frameCount"; type: "int"; isReadonly: true }
        Property { name: "sourceSize"; type: "QSize"; isReadonly: true }
        Signal { name: "frameChanged" }
    }
    Component {
        name: "QDeclarativeAnimationGroup"
        defaultProperty: "animations"
        prototype: "QDeclarativeAbstractAnimation"
        Property {
            name: "animations"
            type: "QDeclarativeAbstractAnimation"
            isList: true
            isReadonly: true
        }
    }
    Component {
        name: "QDeclarativeApplication"
        prototype: "QObject"
        exports: ["QtQuick/Application 1.1"]
        Property { name: "active"; type: "bool"; isReadonly: true }
        Property { name: "layoutDirection"; type: "Qt::LayoutDirection"; isReadonly: true }
    }
    Component {
        name: "QDeclarativeBasePositioner"
        defaultProperty: "data"
        prototype: "QDeclarativeImplicitSizeItem"
        Property { name: "spacing"; type: "int" }
        Property { name: "move"; type: "QDeclarativeTransition"; isPointer: true }
        Property { name: "add"; type: "QDeclarativeTransition"; isPointer: true }
    }
    Component {
        name: "QDeclarativeBehavior"
        defaultProperty: "animation"
        prototype: "QObject"
        exports: ["QtQuick/Behavior 1.0"]
        Property { name: "animation"; type: "QDeclarativeAbstractAnimation"; isPointer: true }
        Property { name: "enabled"; type: "bool" }
    }
    Component {
        name: "QDeclarativeBind"
        prototype: "QObject"
        exports: ["QtQuick/Binding 1.0"]
        Property { name: "target"; type: "QObject"; isPointer: true }
        Property { name: "property"; type: "string" }
        Property { name: "value"; type: "QVariant" }
        Property { name: "when"; type: "bool" }
    }
    Component {
        name: "QDeclarativeBorderImage"
        defaultProperty: "data"
        prototype: "QDeclarativeImageBase"
        exports: ["QtQuick/BorderImage 1.0"]
        Enum {
            name: "TileMode"
            values: {
                "Stretch": 0,
                "Repeat": 1,
                "Round": 2
            }
        }
        Property { name: "border"; type: "QDeclarativeScaleGrid"; isReadonly: true; isPointer: true }
        Property { name: "horizontalTileMode"; type: "TileMode" }
        Property { name: "verticalTileMode"; type: "TileMode" }
    }
    Component {
        name: "QDeclarativeColorAnimation"
        prototype: "QDeclarativePropertyAnimation"
        exports: ["QtQuick/ColorAnimation 1.0"]
        Property { name: "from"; type: "QColor" }
        Property { name: "to"; type: "QColor" }
    }
    Component {
        name: "QDeclarativeColumn"
        defaultProperty: "data"
        prototype: "QDeclarativeBasePositioner"
        exports: ["QtQuick/Column 1.0"]
    }
    Component {
        name: "QDeclarativeComponent"
        prototype: "QObject"
        exports: ["QtQuick/Component 1.0"]
        attachedType: "QDeclarativeComponentAttached"
        Enum {
            name: "Status"
            values: {
                "Null": 0,
                "Ready": 1,
                "Loading": 2,
                "Error": 3
            }
        }
        Property { name: "progress"; type: "double"; isReadonly: true }
        Property { name: "status"; type: "Status"; isReadonly: true }
        Property { name: "url"; type: "QUrl"; isReadonly: true }
        Signal {
            name: "statusChanged"
            Parameter { type: "QDeclarativeComponent::Status" }
        }
        Signal {
            name: "progressChanged"
            Parameter { type: "double" }
        }
        Method { name: "errorString"; type: "string" }
    }
    Component {
        name: "QDeclarativeComponentAttached"
        prototype: "QObject"
        Signal { name: "completed" }
        Signal { name: "destruction" }
    }
    Component {
        name: "QDeclarativeConnections"
        prototype: "QObject"
        exports: ["QtQuick/Connections 1.0"]
        Property { name: "target"; type: "QObject"; isPointer: true }
        Property { name: "ignoreUnknownSignals"; type: "bool" }
    }
    Component {
        name: "QDeclarativeCurve"
        prototype: "QDeclarativePathElement"
        Property { name: "x"; type: "double" }
        Property { name: "y"; type: "double" }
    }
    Component {
        name: "QDeclarativeDrag"
        prototype: "QObject"
        exports: ["QtQuick/Drag 1.0"]
        Enum {
            name: "Axis"
            values: {
                "XAxis": 1,
                "YAxis": 2,
                "XandYAxis": 3
            }
        }
        Property { name: "target"; type: "QGraphicsObject"; isPointer: true }
        Property { name: "axis"; type: "Axis" }
        Property { name: "minimumX"; type: "double" }
        Property { name: "maximumX"; type: "double" }
        Property { name: "minimumY"; type: "double" }
        Property { name: "maximumY"; type: "double" }
        Property { name: "active"; type: "bool"; isReadonly: true }
        Property { name: "filterChildren"; type: "bool" }
    }
    Component {
        name: "QDeclarativeEasingValueType"
        prototype: "QDeclarativeValueType"
        exports: ["QtQuick/Easing 1.0"]
        Enum {
            name: "Type"
            values: {
                "Linear": 0,
                "InQuad": 1,
                "OutQuad": 2,
                "InOutQuad": 3,
                "OutInQuad": 4,
                "InCubic": 5,
                "OutCubic": 6,
                "InOutCubic": 7,
                "OutInCubic": 8,
                "InQuart": 9,
                "OutQuart": 10,
                "InOutQuart": 11,
                "OutInQuart": 12,
                "InQuint": 13,
                "OutQuint": 14,
                "InOutQuint": 15,
                "OutInQuint": 16,
                "InSine": 17,
                "OutSine": 18,
                "InOutSine": 19,
                "OutInSine": 20,
                "InExpo": 21,
                "OutExpo": 22,
                "InOutExpo": 23,
                "OutInExpo": 24,
                "InCirc": 25,
                "OutCirc": 26,
                "InOutCirc": 27,
                "OutInCirc": 28,
                "InElastic": 29,
                "OutElastic": 30,
                "InOutElastic": 31,
                "OutInElastic": 32,
                "InBack": 33,
                "OutBack": 34,
                "InOutBack": 35,
                "OutInBack": 36,
                "InBounce": 37,
                "OutBounce": 38,
                "InOutBounce": 39,
                "OutInBounce": 40,
                "InCurve": 41,
                "OutCurve": 42,
                "SineCurve": 43,
                "CosineCurve": 44
            }
        }
        Property { name: "type"; type: "Type" }
        Property { name: "amplitude"; type: "double" }
        Property { name: "overshoot"; type: "double" }
        Property { name: "period"; type: "double" }
    }
    Component {
        name: "QDeclarativeFlickable"
        defaultProperty: "flickableData"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/Flickable 1.0", "QtQuick/Flickable 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Enum {
            name: "BoundsBehavior"
            values: {
                "StopAtBounds": 0,
                "DragOverBounds": 1,
                "DragAndOvershootBounds": 2
            }
        }
        Enum {
            name: "FlickableDirection"
            values: {
                "AutoFlickDirection": 0,
                "HorizontalFlick": 1,
                "VerticalFlick": 2,
                "HorizontalAndVerticalFlick": 3
            }
        }
        Property { name: "contentWidth"; type: "double" }
        Property { name: "contentHeight"; type: "double" }
        Property { name: "contentX"; type: "double" }
        Property { name: "contentY"; type: "double" }
        Property { name: "contentItem"; type: "QDeclarativeItem"; isReadonly: true; isPointer: true }
        Property { name: "horizontalVelocity"; type: "double"; isReadonly: true }
        Property { name: "verticalVelocity"; type: "double"; isReadonly: true }
        Property { name: "boundsBehavior"; type: "BoundsBehavior" }
        Property { name: "maximumFlickVelocity"; type: "double" }
        Property { name: "flickDeceleration"; type: "double" }
        Property { name: "moving"; type: "bool"; isReadonly: true }
        Property { name: "movingHorizontally"; type: "bool"; isReadonly: true }
        Property { name: "movingVertically"; type: "bool"; isReadonly: true }
        Property { name: "flicking"; type: "bool"; isReadonly: true }
        Property { name: "flickingHorizontally"; type: "bool"; isReadonly: true }
        Property { name: "flickingVertically"; type: "bool"; isReadonly: true }
        Property { name: "flickableDirection"; type: "FlickableDirection" }
        Property { name: "interactive"; type: "bool" }
        Property { name: "pressDelay"; type: "int" }
        Property { name: "atXEnd"; type: "bool"; isReadonly: true }
        Property { name: "atYEnd"; type: "bool"; isReadonly: true }
        Property { name: "atXBeginning"; type: "bool"; isReadonly: true }
        Property { name: "atYBeginning"; type: "bool"; isReadonly: true }
        Property {
            name: "visibleArea"
            type: "QDeclarativeFlickableVisibleArea"
            isReadonly: true
            isPointer: true
        }
        Property { name: "flickableData"; type: "QObject"; isList: true; isReadonly: true }
        Property { name: "flickableChildren"; type: "QGraphicsObject"; isList: true; isReadonly: true }
        Signal { name: "isAtBoundaryChanged" }
        Signal { name: "movementStarted" }
        Signal { name: "movementEnded" }
        Signal { name: "flickStarted" }
        Signal { name: "flickEnded" }
        Method {
            name: "resizeContent"
            revision: 1
            Parameter { name: "w"; type: "double" }
            Parameter { name: "h"; type: "double" }
            Parameter { name: "center"; type: "QPointF" }
        }
        Method { name: "returnToBounds"; revision: 1 }
    }
    Component {
        name: "QDeclarativeFlickableVisibleArea"
        prototype: "QObject"
        Property { name: "xPosition"; type: "double"; isReadonly: true }
        Property { name: "yPosition"; type: "double"; isReadonly: true }
        Property { name: "widthRatio"; type: "double"; isReadonly: true }
        Property { name: "heightRatio"; type: "double"; isReadonly: true }
        Signal {
            name: "xPositionChanged"
            Parameter { name: "xPosition"; type: "double" }
        }
        Signal {
            name: "yPositionChanged"
            Parameter { name: "yPosition"; type: "double" }
        }
        Signal {
            name: "widthRatioChanged"
            Parameter { name: "widthRatio"; type: "double" }
        }
        Signal {
            name: "heightRatioChanged"
            Parameter { name: "heightRatio"; type: "double" }
        }
    }
    Component {
        name: "QDeclarativeFlipable"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/Flipable 1.0"]
        Enum {
            name: "Side"
            values: {
                "Front": 0,
                "Back": 1
            }
        }
        Property { name: "front"; type: "QGraphicsObject"; isPointer: true }
        Property { name: "back"; type: "QGraphicsObject"; isPointer: true }
        Property { name: "side"; type: "Side"; isReadonly: true }
    }
    Component {
        name: "QDeclarativeFlow"
        defaultProperty: "data"
        prototype: "QDeclarativeBasePositioner"
        exports: ["QtQuick/Flow 1.0", "QtQuick/Flow 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Enum {
            name: "Flow"
            values: {
                "LeftToRight": 0,
                "TopToBottom": 1
            }
        }
        Property { name: "flow"; type: "Flow" }
        Property { name: "layoutDirection"; revision: 1; type: "Qt::LayoutDirection" }
        Signal { name: "layoutDirectionChanged"; revision: 1 }
    }
    Component {
        name: "QDeclarativeFocusPanel"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/FocusPanel 1.0"]
        Property { name: "active"; type: "bool" }
    }
    Component {
        name: "QDeclarativeFocusScope"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/FocusScope 1.0"]
    }
    Component {
        name: "QDeclarativeFontLoader"
        prototype: "QObject"
        exports: ["QtQuick/FontLoader 1.0"]
        Enum {
            name: "Status"
            values: {
                "Null": 0,
                "Ready": 1,
                "Loading": 2,
                "Error": 3
            }
        }
        Property { name: "source"; type: "QUrl" }
        Property { name: "name"; type: "string" }
        Property { name: "status"; type: "Status"; isReadonly: true }
    }
    Component {
        name: "QDeclarativeFontValueType"
        prototype: "QDeclarativeValueType"
        exports: ["QtQuick/Font 1.0"]
        Enum {
            name: "FontWeight"
            values: {
                "Light": 25,
                "Normal": 50,
                "DemiBold": 63,
                "Bold": 75,
                "Black": 87
            }
        }
        Enum {
            name: "Capitalization"
            values: {
                "MixedCase": 0,
                "AllUppercase": 1,
                "AllLowercase": 2,
                "SmallCaps": 3,
                "Capitalize": 4
            }
        }
        Property { name: "family"; type: "string" }
        Property { name: "bold"; type: "bool" }
        Property { name: "weight"; type: "FontWeight" }
        Property { name: "italic"; type: "bool" }
        Property { name: "underline"; type: "bool" }
        Property { name: "overline"; type: "bool" }
        Property { name: "strikeout"; type: "bool" }
        Property { name: "pointSize"; type: "double" }
        Property { name: "pixelSize"; type: "int" }
        Property { name: "capitalization"; type: "Capitalization" }
        Property { name: "letterSpacing"; type: "double" }
        Property { name: "wordSpacing"; type: "double" }
    }
    Component {
        name: "QDeclarativeGradient"
        defaultProperty: "stops"
        prototype: "QObject"
        exports: ["QtQuick/Gradient 1.0"]
        Property { name: "stops"; type: "QDeclarativeGradientStop"; isList: true; isReadonly: true }
        Signal { name: "updated" }
    }
    Component {
        name: "QDeclarativeGradientStop"
        prototype: "QObject"
        exports: ["QtQuick/GradientStop 1.0"]
        Property { name: "position"; type: "double" }
        Property { name: "color"; type: "QColor" }
    }
    Component {
        name: "QDeclarativeGraphicsWidget"
        defaultProperty: "children"
        prototype: "QGraphicsWidget"
        exports: ["QtQuick/QGraphicsWidget 1.0"]
        Property { name: "anchors"; type: "QDeclarativeAnchors"; isReadonly: true; isPointer: true }
        Property { name: "left"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "right"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "horizontalCenter"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "top"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "bottom"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "verticalCenter"; type: "QDeclarativeAnchorLine"; isReadonly: true }
    }
    Component {
        name: "QDeclarativeGrid"
        defaultProperty: "data"
        prototype: "QDeclarativeBasePositioner"
        exports: ["QtQuick/Grid 1.0", "QtQuick/Grid 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Enum {
            name: "Flow"
            values: {
                "LeftToRight": 0,
                "TopToBottom": 1
            }
        }
        Property { name: "rows"; type: "int" }
        Property { name: "columns"; type: "int" }
        Property { name: "flow"; type: "Flow" }
        Property { name: "layoutDirection"; revision: 1; type: "Qt::LayoutDirection" }
        Signal { name: "layoutDirectionChanged"; revision: 1 }
    }
    Component {
        name: "QDeclarativeGridView"
        defaultProperty: "data"
        prototype: "QDeclarativeFlickable"
        exports: ["QtQuick/GridView 1.0", "QtQuick/GridView 1.1"]
        exportMetaObjectRevisions: [0, 1]
        attachedType: "QDeclarativeGridViewAttached"
        Enum {
            name: "HighlightRangeMode"
            values: {
                "NoHighlightRange": 0,
                "ApplyRange": 1,
                "StrictlyEnforceRange": 2
            }
        }
        Enum {
            name: "Flow"
            values: {
                "LeftToRight": 0,
                "TopToBottom": 1
            }
        }
        Enum {
            name: "SnapMode"
            values: {
                "NoSnap": 0,
                "SnapToRow": 1,
                "SnapOneRow": 2
            }
        }
        Enum {
            name: "PositionMode"
            values: {
                "Beginning": 0,
                "Center": 1,
                "End": 2,
                "Visible": 3,
                "Contain": 4
            }
        }
        Property { name: "model"; type: "QVariant" }
        Property { name: "delegate"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "currentIndex"; type: "int" }
        Property { name: "currentItem"; type: "QDeclarativeItem"; isReadonly: true; isPointer: true }
        Property { name: "count"; type: "int"; isReadonly: true }
        Property { name: "highlight"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "highlightItem"; type: "QDeclarativeItem"; isReadonly: true; isPointer: true }
        Property { name: "highlightFollowsCurrentItem"; type: "bool" }
        Property { name: "highlightMoveDuration"; type: "int" }
        Property { name: "preferredHighlightBegin"; type: "double" }
        Property { name: "preferredHighlightEnd"; type: "double" }
        Property { name: "highlightRangeMode"; type: "HighlightRangeMode" }
        Property { name: "flow"; type: "Flow" }
        Property { name: "layoutDirection"; revision: 1; type: "Qt::LayoutDirection" }
        Property { name: "keyNavigationWraps"; type: "bool" }
        Property { name: "cacheBuffer"; type: "int" }
        Property { name: "cellWidth"; type: "int" }
        Property { name: "cellHeight"; type: "int" }
        Property { name: "snapMode"; type: "SnapMode" }
        Property { name: "header"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "footer"; type: "QDeclarativeComponent"; isPointer: true }
        Signal { name: "layoutDirectionChanged"; revision: 1 }
        Method { name: "moveCurrentIndexUp" }
        Method { name: "moveCurrentIndexDown" }
        Method { name: "moveCurrentIndexLeft" }
        Method { name: "moveCurrentIndexRight" }
        Method {
            name: "positionViewAtIndex"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "mode"; type: "int" }
        }
        Method {
            name: "indexAt"
            type: "int"
            Parameter { name: "x"; type: "double" }
            Parameter { name: "y"; type: "double" }
        }
        Method { name: "positionViewAtBeginning"; revision: 1 }
        Method { name: "positionViewAtEnd"; revision: 1 }
    }
    Component {
        name: "QDeclarativeGridViewAttached"
        prototype: "QObject"
        Property { name: "view"; type: "QDeclarativeGridView"; isReadonly: true; isPointer: true }
        Property { name: "isCurrentItem"; type: "bool"; isReadonly: true }
        Property { name: "delayRemove"; type: "bool" }
        Signal { name: "currentItemChanged" }
        Signal { name: "add" }
        Signal { name: "remove" }
    }
    Component {
        name: "QDeclarativeImage"
        defaultProperty: "data"
        prototype: "QDeclarativeImageBase"
        exports: ["QtQuick/Image 1.0"]
        Enum {
            name: "FillMode"
            values: {
                "Stretch": 0,
                "PreserveAspectFit": 1,
                "PreserveAspectCrop": 2,
                "Tile": 3,
                "TileVertically": 4,
                "TileHorizontally": 5
            }
        }
        Property { name: "fillMode"; type: "FillMode" }
        Property { name: "paintedWidth"; type: "double"; isReadonly: true }
        Property { name: "paintedHeight"; type: "double"; isReadonly: true }
        Signal { name: "paintedGeometryChanged" }
    }
    Component {
        name: "QDeclarativeImageBase"
        defaultProperty: "data"
        prototype: "QDeclarativeImplicitSizeItem"
        exports: ["QtQuick/ 1.1"]
        exportMetaObjectRevisions: [1]
        Enum {
            name: "Status"
            values: {
                "Null": 0,
                "Ready": 1,
                "Loading": 2,
                "Error": 3
            }
        }
        Property { name: "status"; type: "Status"; isReadonly: true }
        Property { name: "source"; type: "QUrl" }
        Property { name: "progress"; type: "double"; isReadonly: true }
        Property { name: "asynchronous"; type: "bool" }
        Property { name: "cache"; revision: 1; type: "bool" }
        Property { name: "sourceSize"; type: "QSize" }
        Property { name: "mirror"; revision: 1; type: "bool" }
        Signal {
            name: "sourceChanged"
            Parameter { type: "QUrl" }
        }
        Signal {
            name: "statusChanged"
            Parameter { type: "QDeclarativeImageBase::Status" }
        }
        Signal {
            name: "progressChanged"
            Parameter { name: "progress"; type: "double" }
        }
        Signal { name: "cacheChanged"; revision: 1 }
        Signal { name: "mirrorChanged"; revision: 1 }
    }
    Component {
        name: "QDeclarativeImplicitSizeItem"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/ 1.0", "QtQuick/ 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Property { name: "implicitWidth"; revision: 1; type: "double"; isReadonly: true }
        Property { name: "implicitHeight"; revision: 1; type: "double"; isReadonly: true }
        Signal { name: "implicitWidthChanged"; revision: 1 }
        Signal { name: "implicitHeightChanged"; revision: 1 }
    }
    Component {
        name: "QDeclarativeImplicitSizePaintedItem"
        defaultProperty: "data"
        prototype: "QDeclarativePaintedItem"
        exports: ["QtQuick/ 1.0", "QtQuick/ 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Property { name: "implicitWidth"; revision: 1; type: "double"; isReadonly: true }
        Property { name: "implicitHeight"; revision: 1; type: "double"; isReadonly: true }
        Signal { name: "implicitWidthChanged"; revision: 1 }
        Signal { name: "implicitHeightChanged"; revision: 1 }
    }
    Component {
        name: "QDeclarativeItem"
        defaultProperty: "data"
        prototype: "QGraphicsObject"
        exports: ["QtQuick/Item 1.0", "QtQuick/Item 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Enum {
            name: "TransformOrigin"
            values: {
                "TopLeft": 0,
                "Top": 1,
                "TopRight": 2,
                "Left": 3,
                "Center": 4,
                "Right": 5,
                "BottomLeft": 6,
                "Bottom": 7,
                "BottomRight": 8
            }
        }
        Property { name: "parent"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "data"; type: "QObject"; isList: true; isReadonly: true }
        Property { name: "resources"; type: "QObject"; isList: true; isReadonly: true }
        Property { name: "states"; type: "QDeclarativeState"; isList: true; isReadonly: true }
        Property { name: "transitions"; type: "QDeclarativeTransition"; isList: true; isReadonly: true }
        Property { name: "state"; type: "string" }
        Property { name: "childrenRect"; type: "QRectF"; isReadonly: true }
        Property { name: "anchors"; type: "QDeclarativeAnchors"; isReadonly: true; isPointer: true }
        Property { name: "left"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "right"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "horizontalCenter"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "top"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "bottom"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "verticalCenter"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "baseline"; type: "QDeclarativeAnchorLine"; isReadonly: true }
        Property { name: "baselineOffset"; type: "double" }
        Property { name: "clip"; type: "bool" }
        Property { name: "focus"; type: "bool" }
        Property { name: "activeFocus"; type: "bool"; isReadonly: true }
        Property { name: "transform"; type: "QGraphicsTransform"; isList: true; isReadonly: true }
        Property { name: "transformOrigin"; type: "TransformOrigin" }
        Property { name: "transformOriginPoint"; type: "QPointF"; isReadonly: true }
        Property { name: "smooth"; type: "bool" }
        Property { name: "implicitWidth"; revision: 1; type: "double" }
        Property { name: "implicitHeight"; revision: 1; type: "double" }
        Signal {
            name: "childrenRectChanged"
            Parameter { type: "QRectF" }
        }
        Signal {
            name: "baselineOffsetChanged"
            Parameter { type: "double" }
        }
        Signal {
            name: "stateChanged"
            Parameter { type: "string" }
        }
        Signal {
            name: "focusChanged"
            Parameter { type: "bool" }
        }
        Signal {
            name: "activeFocusChanged"
            Parameter { type: "bool" }
        }
        Signal {
            name: "parentChanged"
            Parameter { type: "QDeclarativeItem"; isPointer: true }
        }
        Signal {
            name: "transformOriginChanged"
            Parameter { type: "TransformOrigin" }
        }
        Signal {
            name: "smoothChanged"
            Parameter { type: "bool" }
        }
        Signal {
            name: "clipChanged"
            Parameter { type: "bool" }
        }
        Signal { name: "implicitWidthChanged"; revision: 1 }
        Signal { name: "implicitHeightChanged"; revision: 1 }
        Method {
            name: "mapFromItem"
            type: "QScriptValue"
            Parameter { name: "item"; type: "QScriptValue" }
            Parameter { name: "x"; type: "double" }
            Parameter { name: "y"; type: "double" }
        }
        Method {
            name: "mapToItem"
            type: "QScriptValue"
            Parameter { name: "item"; type: "QScriptValue" }
            Parameter { name: "x"; type: "double" }
            Parameter { name: "y"; type: "double" }
        }
        Method { name: "forceActiveFocus" }
        Method {
            name: "childAt"
            type: "QDeclarativeItem*"
            Parameter { name: "x"; type: "double" }
            Parameter { name: "y"; type: "double" }
        }
    }
    Component {
        name: "QDeclarativeKeyNavigationAttached"
        prototype: "QObject"
        exports: ["QtQuick/KeyNavigation 1.0"]
        Enum {
            name: "Priority"
            values: {
                "BeforeItem": 0,
                "AfterItem": 1
            }
        }
        Property { name: "left"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "right"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "up"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "down"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "tab"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "backtab"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "priority"; type: "Priority" }
    }
    Component {
        name: "QDeclarativeKeysAttached"
        prototype: "QObject"
        exports: ["QtQuick/Keys 1.0"]
        Enum {
            name: "Priority"
            values: {
                "BeforeItem": 0,
                "AfterItem": 1
            }
        }
        Property { name: "enabled"; type: "bool" }
        Property { name: "forwardTo"; type: "QDeclarativeItem"; isList: true; isReadonly: true }
        Property { name: "priority"; type: "Priority" }
        Signal {
            name: "pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "released"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit0Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit1Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit2Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit3Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit4Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit5Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit6Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit7Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit8Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "digit9Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "leftPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "rightPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "upPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "downPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "tabPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "backtabPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "asteriskPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "numberSignPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "escapePressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "returnPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "enterPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "deletePressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "spacePressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "backPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "cancelPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "selectPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "yesPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "noPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "context1Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "context2Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "context3Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "context4Pressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "callPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "hangupPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "flipPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "menuPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "volumeUpPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
        Signal {
            name: "volumeDownPressed"
            Parameter { name: "event"; type: "QDeclarativeKeyEvent"; isPointer: true }
        }
    }
    Component {
        name: "QDeclarativeLayoutItem"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/LayoutItem 1.0"]
        Property { name: "maximumSize"; type: "QSizeF" }
        Property { name: "minimumSize"; type: "QSizeF" }
        Property { name: "preferredSize"; type: "QSizeF" }
    }
    Component {
        name: "QDeclarativeLayoutMirroringAttached"
        prototype: "QObject"
        exports: ["QtQuick/LayoutMirroring 1.1"]
        Property { name: "enabled"; type: "bool" }
        Property { name: "childrenInherit"; type: "bool" }
    }
    Component {
        name: "QDeclarativeListElement"
        prototype: "QObject"
        exports: ["QtQuick/ListElement 1.0"]
    }
    Component {
        name: "QDeclarativeListModel"
        prototype: "QListModelInterface"
        exports: ["QtQuick/ListModel 1.0"]
        Property { name: "count"; type: "int"; isReadonly: true }
        Method { name: "clear" }
        Method {
            name: "remove"
            Parameter { name: "index"; type: "int" }
        }
        Method {
            name: "append"
            Parameter { type: "QScriptValue" }
        }
        Method {
            name: "insert"
            Parameter { name: "index"; type: "int" }
            Parameter { type: "QScriptValue" }
        }
        Method {
            name: "get"
            type: "QScriptValue"
            Parameter { name: "index"; type: "int" }
        }
        Method {
            name: "set"
            Parameter { name: "index"; type: "int" }
            Parameter { type: "QScriptValue" }
        }
        Method {
            name: "setProperty"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "property"; type: "string" }
            Parameter { name: "value"; type: "QVariant" }
        }
        Method {
            name: "move"
            Parameter { name: "from"; type: "int" }
            Parameter { name: "to"; type: "int" }
            Parameter { name: "count"; type: "int" }
        }
        Method { name: "sync" }
    }
    Component {
        name: "QDeclarativeListView"
        defaultProperty: "data"
        prototype: "QDeclarativeFlickable"
        exports: ["QtQuick/ListView 1.0", "QtQuick/ListView 1.1"]
        exportMetaObjectRevisions: [0, 1]
        attachedType: "QDeclarativeListViewAttached"
        Enum {
            name: "HighlightRangeMode"
            values: {
                "NoHighlightRange": 0,
                "ApplyRange": 1,
                "StrictlyEnforceRange": 2
            }
        }
        Enum {
            name: "Orientation"
            values: {
                "Horizontal": 1,
                "Vertical": 2
            }
        }
        Enum {
            name: "SnapMode"
            values: {
                "NoSnap": 0,
                "SnapToItem": 1,
                "SnapOneItem": 2
            }
        }
        Enum {
            name: "PositionMode"
            values: {
                "Beginning": 0,
                "Center": 1,
                "End": 2,
                "Visible": 3,
                "Contain": 4
            }
        }
        Property { name: "model"; type: "QVariant" }
        Property { name: "delegate"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "currentIndex"; type: "int" }
        Property { name: "currentItem"; type: "QDeclarativeItem"; isReadonly: true; isPointer: true }
        Property { name: "count"; type: "int"; isReadonly: true }
        Property { name: "highlight"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "highlightItem"; type: "QDeclarativeItem"; isReadonly: true; isPointer: true }
        Property { name: "highlightFollowsCurrentItem"; type: "bool" }
        Property { name: "highlightMoveSpeed"; type: "double" }
        Property { name: "highlightMoveDuration"; type: "int" }
        Property { name: "highlightResizeSpeed"; type: "double" }
        Property { name: "highlightResizeDuration"; type: "int" }
        Property { name: "preferredHighlightBegin"; type: "double" }
        Property { name: "preferredHighlightEnd"; type: "double" }
        Property { name: "highlightRangeMode"; type: "HighlightRangeMode" }
        Property { name: "spacing"; type: "double" }
        Property { name: "orientation"; type: "Orientation" }
        Property { name: "layoutDirection"; revision: 1; type: "Qt::LayoutDirection" }
        Property { name: "keyNavigationWraps"; type: "bool" }
        Property { name: "cacheBuffer"; type: "int" }
        Property { name: "section"; type: "QDeclarativeViewSection"; isReadonly: true; isPointer: true }
        Property { name: "currentSection"; type: "string"; isReadonly: true }
        Property { name: "snapMode"; type: "SnapMode" }
        Property { name: "header"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "footer"; type: "QDeclarativeComponent"; isPointer: true }
        Signal { name: "layoutDirectionChanged"; revision: 1 }
        Method { name: "incrementCurrentIndex" }
        Method { name: "decrementCurrentIndex" }
        Method {
            name: "positionViewAtIndex"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "mode"; type: "int" }
        }
        Method {
            name: "indexAt"
            type: "int"
            Parameter { name: "x"; type: "double" }
            Parameter { name: "y"; type: "double" }
        }
        Method { name: "positionViewAtBeginning"; revision: 1 }
        Method { name: "positionViewAtEnd"; revision: 1 }
    }
    Component {
        name: "QDeclarativeListViewAttached"
        prototype: "QObject"
        Property { name: "view"; type: "QDeclarativeListView"; isReadonly: true; isPointer: true }
        Property { name: "isCurrentItem"; type: "bool"; isReadonly: true }
        Property { name: "previousSection"; type: "string"; isReadonly: true }
        Property { name: "nextSection"; type: "string"; isReadonly: true }
        Property { name: "section"; type: "string"; isReadonly: true }
        Property { name: "delayRemove"; type: "bool" }
        Signal { name: "currentItemChanged" }
        Signal { name: "prevSectionChanged" }
        Signal { name: "add" }
        Signal { name: "remove" }
    }
    Component {
        name: "QDeclarativeLoader"
        defaultProperty: "data"
        prototype: "QDeclarativeImplicitSizeItem"
        exports: ["QtQuick/Loader 1.0"]
        Enum {
            name: "Status"
            values: {
                "Null": 0,
                "Ready": 1,
                "Loading": 2,
                "Error": 3
            }
        }
        Property { name: "source"; type: "QUrl" }
        Property { name: "sourceComponent"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "item"; type: "QGraphicsObject"; isReadonly: true; isPointer: true }
        Property { name: "status"; type: "Status"; isReadonly: true }
        Property { name: "progress"; type: "double"; isReadonly: true }
        Signal { name: "loaded" }
    }
    Component {
        name: "QDeclarativeMouseArea"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/MouseArea 1.0", "QtQuick/MouseArea 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Property { name: "mouseX"; type: "double"; isReadonly: true }
        Property { name: "mouseY"; type: "double"; isReadonly: true }
        Property { name: "containsMouse"; type: "bool"; isReadonly: true }
        Property { name: "pressed"; type: "bool"; isReadonly: true }
        Property { name: "enabled"; type: "bool" }
        Property { name: "pressedButtons"; type: "Qt::MouseButtons"; isReadonly: true }
        Property { name: "acceptedButtons"; type: "Qt::MouseButtons" }
        Property { name: "hoverEnabled"; type: "bool" }
        Property { name: "drag"; type: "QDeclarativeDrag"; isReadonly: true; isPointer: true }
        Property { name: "preventStealing"; revision: 1; type: "bool" }
        Signal { name: "hoveredChanged" }
        Signal {
            name: "positionChanged"
            Parameter { name: "mouse"; type: "QDeclarativeMouseEvent"; isPointer: true }
        }
        Signal {
            name: "mousePositionChanged"
            Parameter { name: "mouse"; type: "QDeclarativeMouseEvent"; isPointer: true }
        }
        Signal { name: "preventStealingChanged"; revision: 1 }
        Signal {
            name: "pressed"
            Parameter { name: "mouse"; type: "QDeclarativeMouseEvent"; isPointer: true }
        }
        Signal {
            name: "pressAndHold"
            Parameter { name: "mouse"; type: "QDeclarativeMouseEvent"; isPointer: true }
        }
        Signal {
            name: "released"
            Parameter { name: "mouse"; type: "QDeclarativeMouseEvent"; isPointer: true }
        }
        Signal {
            name: "clicked"
            Parameter { name: "mouse"; type: "QDeclarativeMouseEvent"; isPointer: true }
        }
        Signal {
            name: "doubleClicked"
            Parameter { name: "mouse"; type: "QDeclarativeMouseEvent"; isPointer: true }
        }
        Signal { name: "entered" }
        Signal { name: "exited" }
        Signal { name: "canceled" }
    }
    Component {
        name: "QDeclarativeMouseEvent"
        prototype: "QObject"
        Property { name: "x"; type: "int"; isReadonly: true }
        Property { name: "y"; type: "int"; isReadonly: true }
        Property { name: "button"; type: "int"; isReadonly: true }
        Property { name: "buttons"; type: "int"; isReadonly: true }
        Property { name: "modifiers"; type: "int"; isReadonly: true }
        Property { name: "wasHeld"; type: "bool"; isReadonly: true }
        Property { name: "isClick"; type: "bool"; isReadonly: true }
        Property { name: "accepted"; type: "bool" }
    }
    Component {
        name: "QDeclarativeNumberAnimation"
        prototype: "QDeclarativePropertyAnimation"
        exports: ["QtQuick/NumberAnimation 1.0"]
        Property { name: "from"; type: "double" }
        Property { name: "to"; type: "double" }
    }
    Component {
        name: "QDeclarativePackage"
        defaultProperty: "data"
        prototype: "QObject"
        exports: ["QtQuick/Package 1.0"]
        attachedType: "QDeclarativePackageAttached"
        Property { name: "data"; type: "QObject"; isList: true; isReadonly: true }
    }
    Component {
        name: "QDeclarativePackageAttached"
        prototype: "QObject"
        Property { name: "name"; type: "string" }
    }
    Component {
        name: "QDeclarativePaintedItem"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        Property { name: "contentsSize"; type: "QSize" }
        Property { name: "fillColor"; type: "QColor" }
        Property { name: "pixelCacheSize"; type: "int" }
        Property { name: "smoothCache"; type: "bool" }
        Property { name: "contentsScale"; type: "double" }
    }
    Component {
        name: "QDeclarativeParallelAnimation"
        defaultProperty: "animations"
        prototype: "QDeclarativeAnimationGroup"
        exports: ["QtQuick/ParallelAnimation 1.0"]
    }
    Component {
        name: "QDeclarativeParentAnimation"
        defaultProperty: "animations"
        prototype: "QDeclarativeAnimationGroup"
        exports: ["QtQuick/ParentAnimation 1.0"]
        Property { name: "target"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "newParent"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "via"; type: "QDeclarativeItem"; isPointer: true }
    }
    Component {
        name: "QDeclarativeParentChange"
        prototype: "QDeclarativeStateOperation"
        exports: ["QtQuick/ParentChange 1.0"]
        Property { name: "target"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "parent"; type: "QDeclarativeItem"; isPointer: true }
        Property { name: "x"; type: "QDeclarativeScriptString" }
        Property { name: "y"; type: "QDeclarativeScriptString" }
        Property { name: "width"; type: "QDeclarativeScriptString" }
        Property { name: "height"; type: "QDeclarativeScriptString" }
        Property { name: "scale"; type: "QDeclarativeScriptString" }
        Property { name: "rotation"; type: "QDeclarativeScriptString" }
    }
    Component {
        name: "QDeclarativePath"
        defaultProperty: "pathElements"
        prototype: "QObject"
        exports: ["QtQuick/Path 1.0"]
        Property { name: "pathElements"; type: "QDeclarativePathElement"; isList: true; isReadonly: true }
        Property { name: "startX"; type: "double" }
        Property { name: "startY"; type: "double" }
        Property { name: "closed"; type: "bool"; isReadonly: true }
        Signal { name: "changed" }
    }
    Component {
        name: "QDeclarativePathAttribute"
        prototype: "QDeclarativePathElement"
        exports: ["QtQuick/PathAttribute 1.0"]
        Property { name: "name"; type: "string" }
        Property { name: "value"; type: "double" }
    }
    Component {
        name: "QDeclarativePathCubic"
        prototype: "QDeclarativeCurve"
        exports: ["QtQuick/PathCubic 1.0"]
        Property { name: "control1X"; type: "double" }
        Property { name: "control1Y"; type: "double" }
        Property { name: "control2X"; type: "double" }
        Property { name: "control2Y"; type: "double" }
    }
    Component {
        name: "QDeclarativePathElement"
        prototype: "QObject"
        Signal { name: "changed" }
    }
    Component {
        name: "QDeclarativePathLine"
        prototype: "QDeclarativeCurve"
        exports: ["QtQuick/PathLine 1.0"]
    }
    Component {
        name: "QDeclarativePathPercent"
        prototype: "QDeclarativePathElement"
        exports: ["QtQuick/PathPercent 1.0"]
        Property { name: "value"; type: "double" }
    }
    Component {
        name: "QDeclarativePathQuad"
        prototype: "QDeclarativeCurve"
        exports: ["QtQuick/PathQuad 1.0"]
        Property { name: "controlX"; type: "double" }
        Property { name: "controlY"; type: "double" }
    }
    Component {
        name: "QDeclarativePathView"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/PathView 1.0"]
        attachedType: "QDeclarativePathViewAttached"
        Enum {
            name: "HighlightRangeMode"
            values: {
                "NoHighlightRange": 0,
                "ApplyRange": 1,
                "StrictlyEnforceRange": 2
            }
        }
        Property { name: "model"; type: "QVariant" }
        Property { name: "path"; type: "QDeclarativePath"; isPointer: true }
        Property { name: "currentIndex"; type: "int" }
        Property { name: "offset"; type: "double" }
        Property { name: "highlight"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "highlightItem"; type: "QDeclarativeItem"; isReadonly: true; isPointer: true }
        Property { name: "preferredHighlightBegin"; type: "double" }
        Property { name: "preferredHighlightEnd"; type: "double" }
        Property { name: "highlightRangeMode"; type: "HighlightRangeMode" }
        Property { name: "highlightMoveDuration"; type: "int" }
        Property { name: "dragMargin"; type: "double" }
        Property { name: "flickDeceleration"; type: "double" }
        Property { name: "interactive"; type: "bool" }
        Property { name: "moving"; type: "bool"; isReadonly: true }
        Property { name: "flicking"; type: "bool"; isReadonly: true }
        Property { name: "count"; type: "int"; isReadonly: true }
        Property { name: "delegate"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "pathItemCount"; type: "int" }
        Signal { name: "snapPositionChanged" }
        Signal { name: "movementStarted" }
        Signal { name: "movementEnded" }
        Signal { name: "flickStarted" }
        Signal { name: "flickEnded" }
        Method { name: "incrementCurrentIndex" }
        Method { name: "decrementCurrentIndex" }
    }
    Component {
        name: "QDeclarativePathViewAttached"
        prototype: "QObject"
        Property { name: "view"; type: "QDeclarativePathView"; isReadonly: true; isPointer: true }
        Property { name: "isCurrentItem"; type: "bool"; isReadonly: true }
        Property { name: "onPath"; type: "bool"; isReadonly: true }
        Signal { name: "currentItemChanged" }
        Signal { name: "pathChanged" }
    }
    Component {
        name: "QDeclarativePauseAnimation"
        prototype: "QDeclarativeAbstractAnimation"
        exports: ["QtQuick/PauseAnimation 1.0"]
        Property { name: "duration"; type: "int" }
        Signal {
            name: "durationChanged"
            Parameter { type: "int" }
        }
    }
    Component {
        name: "QDeclarativePen"
        prototype: "QObject"
        Property { name: "width"; type: "int" }
        Property { name: "color"; type: "QColor" }
        Signal { name: "penChanged" }
    }
    Component {
        name: "QDeclarativePinch"
        prototype: "QObject"
        exports: ["QtQuick/Pinch 1.1"]
        Enum {
            name: "Axis"
            values: {
                "NoDrag": 0,
                "XAxis": 1,
                "YAxis": 2,
                "XandYAxis": 3
            }
        }
        Property { name: "target"; type: "QGraphicsObject"; isPointer: true }
        Property { name: "minimumScale"; type: "double" }
        Property { name: "maximumScale"; type: "double" }
        Property { name: "minimumRotation"; type: "double" }
        Property { name: "maximumRotation"; type: "double" }
        Property { name: "dragAxis"; type: "Axis" }
        Property { name: "minimumX"; type: "double" }
        Property { name: "maximumX"; type: "double" }
        Property { name: "minimumY"; type: "double" }
        Property { name: "maximumY"; type: "double" }
        Property { name: "active"; type: "bool"; isReadonly: true }
    }
    Component {
        name: "QDeclarativePinchArea"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/PinchArea 1.1"]
        Property { name: "enabled"; type: "bool" }
        Property { name: "pinch"; type: "QDeclarativePinch"; isReadonly: true; isPointer: true }
        Signal {
            name: "pinchStarted"
            Parameter { name: "pinch"; type: "QDeclarativePinchEvent"; isPointer: true }
        }
        Signal {
            name: "pinchUpdated"
            Parameter { name: "pinch"; type: "QDeclarativePinchEvent"; isPointer: true }
        }
        Signal {
            name: "pinchFinished"
            Parameter { name: "pinch"; type: "QDeclarativePinchEvent"; isPointer: true }
        }
    }
    Component {
        name: "QDeclarativePropertyAction"
        prototype: "QDeclarativeAbstractAnimation"
        exports: ["QtQuick/PropertyAction 1.0"]
        Property { name: "target"; type: "QObject"; isPointer: true }
        Property { name: "property"; type: "string" }
        Property { name: "properties"; type: "string" }
        Property { name: "targets"; type: "QObject"; isList: true; isReadonly: true }
        Property { name: "exclude"; type: "QObject"; isList: true; isReadonly: true }
        Property { name: "value"; type: "QVariant" }
        Signal {
            name: "valueChanged"
            Parameter { type: "QVariant" }
        }
        Signal {
            name: "propertiesChanged"
            Parameter { type: "string" }
        }
    }
    Component {
        name: "QDeclarativePropertyAnimation"
        prototype: "QDeclarativeAbstractAnimation"
        exports: ["QtQuick/PropertyAnimation 1.0"]
        Property { name: "duration"; type: "int" }
        Property { name: "from"; type: "QVariant" }
        Property { name: "to"; type: "QVariant" }
        Property { name: "easing"; type: "QEasingCurve" }
        Property { name: "target"; type: "QObject"; isPointer: true }
        Property { name: "property"; type: "string" }
        Property { name: "properties"; type: "string" }
        Property { name: "targets"; type: "QObject"; isList: true; isReadonly: true }
        Property { name: "exclude"; type: "QObject"; isList: true; isReadonly: true }
        Signal {
            name: "durationChanged"
            Parameter { type: "int" }
        }
        Signal {
            name: "fromChanged"
            Parameter { type: "QVariant" }
        }
        Signal {
            name: "toChanged"
            Parameter { type: "QVariant" }
        }
        Signal {
            name: "easingChanged"
            Parameter { type: "QEasingCurve" }
        }
        Signal {
            name: "propertiesChanged"
            Parameter { type: "string" }
        }
    }
    Component {
        name: "QDeclarativePropertyChanges"
        prototype: "QDeclarativeStateOperation"
        exports: ["QtQuick/PropertyChanges 1.0"]
        Property { name: "target"; type: "QObject"; isPointer: true }
        Property { name: "restoreEntryValues"; type: "bool" }
        Property { name: "explicit"; type: "bool" }
    }
    Component {
        name: "QDeclarativeRectangle"
        defaultProperty: "data"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/Rectangle 1.0"]
        Property { name: "color"; type: "QColor" }
        Property { name: "gradient"; type: "QDeclarativeGradient"; isPointer: true }
        Property { name: "border"; type: "QDeclarativePen"; isReadonly: true; isPointer: true }
        Property { name: "radius"; type: "double" }
    }
    Component {
        name: "QDeclarativeRepeater"
        defaultProperty: "delegate"
        prototype: "QDeclarativeItem"
        exports: ["QtQuick/Repeater 1.0", "QtQuick/Repeater 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Property { name: "model"; type: "QVariant" }
        Property { name: "delegate"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "count"; type: "int"; isReadonly: true }
        Signal {
            name: "itemAdded"
            revision: 1
            Parameter { name: "index"; type: "int" }
            Parameter { name: "item"; type: "QDeclarativeItem"; isPointer: true }
        }
        Signal {
            name: "itemRemoved"
            revision: 1
            Parameter { name: "index"; type: "int" }
            Parameter { name: "item"; type: "QDeclarativeItem"; isPointer: true }
        }
        Method {
            name: "itemAt"
            revision: 1
            type: "QDeclarativeItem*"
            Parameter { name: "index"; type: "int" }
        }
    }
    Component {
        name: "QDeclarativeRotationAnimation"
        prototype: "QDeclarativePropertyAnimation"
        exports: ["QtQuick/RotationAnimation 1.0"]
        Enum {
            name: "RotationDirection"
            values: {
                "Numerical": 0,
                "Shortest": 1,
                "Clockwise": 2,
                "Counterclockwise": 3
            }
        }
        Property { name: "from"; type: "double" }
        Property { name: "to"; type: "double" }
        Property { name: "direction"; type: "RotationDirection" }
    }
    Component {
        name: "QDeclarativeRow"
        defaultProperty: "data"
        prototype: "QDeclarativeBasePositioner"
        exports: ["QtQuick/Row 1.0", "QtQuick/Row 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Property { name: "layoutDirection"; revision: 1; type: "Qt::LayoutDirection" }
        Signal { name: "layoutDirectionChanged"; revision: 1 }
    }
    Component {
        name: "QDeclarativeScaleGrid"
        prototype: "QObject"
        Property { name: "left"; type: "int" }
        Property { name: "top"; type: "int" }
        Property { name: "right"; type: "int" }
        Property { name: "bottom"; type: "int" }
        Signal { name: "borderChanged" }
    }
    Component {
        name: "QDeclarativeScriptAction"
        prototype: "QDeclarativeAbstractAnimation"
        exports: ["QtQuick/ScriptAction 1.0"]
        Property { name: "script"; type: "QDeclarativeScriptString" }
        Property { name: "scriptName"; type: "string" }
    }
    Component {
        name: "QDeclarativeSequentialAnimation"
        defaultProperty: "animations"
        prototype: "QDeclarativeAnimationGroup"
        exports: ["QtQuick/SequentialAnimation 1.0"]
    }
    Component {
        name: "QDeclarativeSmoothedAnimation"
        prototype: "QDeclarativeNumberAnimation"
        exports: ["QtQuick/SmoothedAnimation 1.0"]
        Enum {
            name: "ReversingMode"
            values: {
                "Eased": 0,
                "Immediate": 1,
                "Sync": 2
            }
        }
        Property { name: "velocity"; type: "double" }
        Property { name: "reversingMode"; type: "ReversingMode" }
        Property { name: "maximumEasingTime"; type: "double" }
    }
    Component {
        name: "QDeclarativeSpringAnimation"
        prototype: "QDeclarativeNumberAnimation"
        exports: ["QtQuick/SpringAnimation 1.0"]
        Property { name: "velocity"; type: "double" }
        Property { name: "spring"; type: "double" }
        Property { name: "damping"; type: "double" }
        Property { name: "epsilon"; type: "double" }
        Property { name: "modulus"; type: "double" }
        Property { name: "mass"; type: "double" }
        Signal { name: "syncChanged" }
    }
    Component {
        name: "QDeclarativeState"
        defaultProperty: "changes"
        prototype: "QObject"
        exports: ["QtQuick/State 1.0"]
        Property { name: "name"; type: "string" }
        Property { name: "when"; type: "QDeclarativeBinding"; isPointer: true }
        Property { name: "extend"; type: "string" }
        Property { name: "changes"; type: "QDeclarativeStateOperation"; isList: true; isReadonly: true }
        Signal { name: "completed" }
    }
    Component {
        name: "QDeclarativeStateChangeScript"
        prototype: "QDeclarativeStateOperation"
        exports: ["QtQuick/StateChangeScript 1.0"]
        Property { name: "script"; type: "QDeclarativeScriptString" }
        Property { name: "name"; type: "string" }
    }
    Component {
        name: "QDeclarativeStateGroup"
        prototype: "QObject"
        exports: ["QtQuick/StateGroup 1.0"]
        Property { name: "state"; type: "string" }
        Property { name: "states"; type: "QDeclarativeState"; isList: true; isReadonly: true }
        Property { name: "transitions"; type: "QDeclarativeTransition"; isList: true; isReadonly: true }
        Signal {
            name: "stateChanged"
            Parameter { type: "string" }
        }
    }
    Component { name: "QDeclarativeStateOperation"; prototype: "QObject" }
    Component {
        name: "QDeclarativeSystemPalette"
        prototype: "QObject"
        exports: ["QtQuick/SystemPalette 1.0"]
        Enum {
            name: "ColorGroup"
            values: {
                "Active": 0,
                "Inactive": 2,
                "Disabled": 1
            }
        }
        Property { name: "colorGroup"; type: "QDeclarativeSystemPalette::ColorGroup" }
        Property { name: "window"; type: "QColor"; isReadonly: true }
        Property { name: "windowText"; type: "QColor"; isReadonly: true }
        Property { name: "base"; type: "QColor"; isReadonly: true }
        Property { name: "text"; type: "QColor"; isReadonly: true }
        Property { name: "alternateBase"; type: "QColor"; isReadonly: true }
        Property { name: "button"; type: "QColor"; isReadonly: true }
        Property { name: "buttonText"; type: "QColor"; isReadonly: true }
        Property { name: "light"; type: "QColor"; isReadonly: true }
        Property { name: "midlight"; type: "QColor"; isReadonly: true }
        Property { name: "dark"; type: "QColor"; isReadonly: true }
        Property { name: "mid"; type: "QColor"; isReadonly: true }
        Property { name: "shadow"; type: "QColor"; isReadonly: true }
        Property { name: "highlight"; type: "QColor"; isReadonly: true }
        Property { name: "highlightedText"; type: "QColor"; isReadonly: true }
        Signal { name: "paletteChanged" }
    }
    Component {
        name: "QDeclarativeText"
        defaultProperty: "data"
        prototype: "QDeclarativeImplicitSizeItem"
        exports: ["QtQuick/Text 1.0", "QtQuick/Text 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Enum {
            name: "HAlignment"
            values: {
                "AlignLeft": 1,
                "AlignRight": 2,
                "AlignHCenter": 4,
                "AlignJustify": 8
            }
        }
        Enum {
            name: "VAlignment"
            values: {
                "AlignTop": 32,
                "AlignBottom": 64,
                "AlignVCenter": 128
            }
        }
        Enum {
            name: "TextStyle"
            values: {
                "Normal": 0,
                "Outline": 1,
                "Raised": 2,
                "Sunken": 3
            }
        }
        Enum {
            name: "TextFormat"
            values: {
                "PlainText": 0,
                "RichText": 1,
                "AutoText": 2,
                "StyledText": 4
            }
        }
        Enum {
            name: "TextElideMode"
            values: {
                "ElideLeft": 0,
                "ElideRight": 1,
                "ElideMiddle": 2,
                "ElideNone": 3
            }
        }
        Enum {
            name: "WrapMode"
            values: {
                "NoWrap": 0,
                "WordWrap": 1,
                "WrapAnywhere": 3,
                "WrapAtWordBoundaryOrAnywhere": 4,
                "Wrap": 4
            }
        }
        Enum {
            name: "LineHeightMode"
            values: {
                "ProportionalHeight": 0,
                "FixedHeight": 1
            }
        }
        Property { name: "text"; type: "string" }
        Property { name: "font"; type: "QFont" }
        Property { name: "color"; type: "QColor" }
        Property { name: "style"; type: "TextStyle" }
        Property { name: "styleColor"; type: "QColor" }
        Property { name: "horizontalAlignment"; type: "HAlignment" }
        Property { name: "verticalAlignment"; type: "VAlignment" }
        Property { name: "wrapMode"; type: "WrapMode" }
        Property { name: "lineCount"; revision: 1; type: "int"; isReadonly: true }
        Property { name: "truncated"; revision: 1; type: "bool"; isReadonly: true }
        Property { name: "maximumLineCount"; revision: 1; type: "int" }
        Property { name: "textFormat"; type: "TextFormat" }
        Property { name: "elide"; type: "TextElideMode" }
        Property { name: "paintedWidth"; type: "double"; isReadonly: true }
        Property { name: "paintedHeight"; type: "double"; isReadonly: true }
        Property { name: "lineHeight"; revision: 1; type: "double" }
        Property { name: "lineHeightMode"; revision: 1; type: "LineHeightMode" }
        Signal {
            name: "textChanged"
            Parameter { name: "text"; type: "string" }
        }
        Signal {
            name: "linkActivated"
            Parameter { name: "link"; type: "string" }
        }
        Signal {
            name: "fontChanged"
            Parameter { name: "font"; type: "QFont" }
        }
        Signal {
            name: "colorChanged"
            Parameter { name: "color"; type: "QColor" }
        }
        Signal {
            name: "styleChanged"
            Parameter { name: "style"; type: "TextStyle" }
        }
        Signal {
            name: "styleColorChanged"
            Parameter { name: "color"; type: "QColor" }
        }
        Signal {
            name: "horizontalAlignmentChanged"
            Parameter { name: "alignment"; type: "HAlignment" }
        }
        Signal {
            name: "verticalAlignmentChanged"
            Parameter { name: "alignment"; type: "VAlignment" }
        }
        Signal { name: "lineCountChanged"; revision: 1 }
        Signal { name: "truncatedChanged"; revision: 1 }
        Signal { name: "maximumLineCountChanged"; revision: 1 }
        Signal {
            name: "textFormatChanged"
            Parameter { name: "textFormat"; type: "TextFormat" }
        }
        Signal {
            name: "elideModeChanged"
            Parameter { name: "mode"; type: "TextElideMode" }
        }
        Signal { name: "paintedSizeChanged" }
        Signal {
            name: "lineHeightChanged"
            revision: 1
            Parameter { name: "lineHeight"; type: "double" }
        }
        Signal {
            name: "lineHeightModeChanged"
            revision: 1
            Parameter { name: "mode"; type: "LineHeightMode" }
        }
    }
    Component {
        name: "QDeclarativeTextEdit"
        defaultProperty: "data"
        prototype: "QDeclarativeImplicitSizePaintedItem"
        exports: ["QtQuick/TextEdit 1.0", "QtQuick/TextEdit 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Enum {
            name: "HAlignment"
            values: {
                "AlignLeft": 1,
                "AlignRight": 2,
                "AlignHCenter": 4,
                "AlignJustify": 8
            }
        }
        Enum {
            name: "VAlignment"
            values: {
                "AlignTop": 32,
                "AlignBottom": 64,
                "AlignVCenter": 128
            }
        }
        Enum {
            name: "TextFormat"
            values: {
                "PlainText": 0,
                "RichText": 1,
                "AutoText": 2
            }
        }
        Enum {
            name: "WrapMode"
            values: {
                "NoWrap": 0,
                "WordWrap": 1,
                "WrapAnywhere": 3,
                "WrapAtWordBoundaryOrAnywhere": 4,
                "Wrap": 4
            }
        }
        Enum {
            name: "SelectionMode"
            values: {
                "SelectCharacters": 0,
                "SelectWords": 1
            }
        }
        Property { name: "text"; type: "string" }
        Property { name: "color"; type: "QColor" }
        Property { name: "selectionColor"; type: "QColor" }
        Property { name: "selectedTextColor"; type: "QColor" }
        Property { name: "font"; type: "QFont" }
        Property { name: "horizontalAlignment"; type: "HAlignment" }
        Property { name: "verticalAlignment"; type: "VAlignment" }
        Property { name: "wrapMode"; type: "WrapMode" }
        Property { name: "lineCount"; revision: 1; type: "int"; isReadonly: true }
        Property { name: "paintedWidth"; type: "double"; isReadonly: true }
        Property { name: "paintedHeight"; type: "double"; isReadonly: true }
        Property { name: "textFormat"; type: "TextFormat" }
        Property { name: "readOnly"; type: "bool" }
        Property { name: "cursorVisible"; type: "bool" }
        Property { name: "cursorPosition"; type: "int" }
        Property { name: "cursorRectangle"; type: "QRect"; isReadonly: true }
        Property { name: "cursorDelegate"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "selectionStart"; type: "int"; isReadonly: true }
        Property { name: "selectionEnd"; type: "int"; isReadonly: true }
        Property { name: "selectedText"; type: "string"; isReadonly: true }
        Property { name: "activeFocusOnPress"; type: "bool" }
        Property { name: "persistentSelection"; type: "bool" }
        Property { name: "textMargin"; type: "double" }
        Property { name: "inputMethodHints"; type: "Qt::InputMethodHints" }
        Property { name: "selectByMouse"; type: "bool" }
        Property { name: "mouseSelectionMode"; revision: 1; type: "SelectionMode" }
        Property { name: "canPaste"; revision: 1; type: "bool"; isReadonly: true }
        Property { name: "inputMethodComposing"; revision: 1; type: "bool"; isReadonly: true }
        Signal {
            name: "textChanged"
            Parameter { type: "string" }
        }
        Signal { name: "paintedSizeChanged" }
        Signal { name: "selectionChanged" }
        Signal {
            name: "colorChanged"
            Parameter { name: "color"; type: "QColor" }
        }
        Signal {
            name: "selectionColorChanged"
            Parameter { name: "color"; type: "QColor" }
        }
        Signal {
            name: "selectedTextColorChanged"
            Parameter { name: "color"; type: "QColor" }
        }
        Signal {
            name: "fontChanged"
            Parameter { name: "font"; type: "QFont" }
        }
        Signal {
            name: "horizontalAlignmentChanged"
            Parameter { name: "alignment"; type: "HAlignment" }
        }
        Signal {
            name: "verticalAlignmentChanged"
            Parameter { name: "alignment"; type: "VAlignment" }
        }
        Signal {
            name: "textFormatChanged"
            Parameter { name: "textFormat"; type: "TextFormat" }
        }
        Signal {
            name: "readOnlyChanged"
            Parameter { name: "isReadOnly"; type: "bool" }
        }
        Signal {
            name: "cursorVisibleChanged"
            Parameter { name: "isCursorVisible"; type: "bool" }
        }
        Signal {
            name: "activeFocusOnPressChanged"
            Parameter { name: "activeFocusOnPressed"; type: "bool" }
        }
        Signal {
            name: "persistentSelectionChanged"
            Parameter { name: "isPersistentSelection"; type: "bool" }
        }
        Signal {
            name: "textMarginChanged"
            Parameter { name: "textMargin"; type: "double" }
        }
        Signal {
            name: "selectByMouseChanged"
            Parameter { name: "selectByMouse"; type: "bool" }
        }
        Signal {
            name: "mouseSelectionModeChanged"
            revision: 1
            Parameter { name: "mode"; type: "SelectionMode" }
        }
        Signal {
            name: "linkActivated"
            revision: 1
            Parameter { name: "link"; type: "string" }
        }
        Signal { name: "canPasteChanged"; revision: 1 }
        Signal { name: "inputMethodComposingChanged"; revision: 1 }
        Method { name: "selectAll" }
        Method { name: "selectWord" }
        Method {
            name: "select"
            Parameter { name: "start"; type: "int" }
            Parameter { name: "end"; type: "int" }
        }
        Method { name: "deselect"; revision: 1 }
        Method {
            name: "isRightToLeft"
            revision: 1
            type: "bool"
            Parameter { name: "start"; type: "int" }
            Parameter { name: "end"; type: "int" }
        }
        Method { name: "cut" }
        Method { name: "copy" }
        Method { name: "paste" }
        Method { name: "openSoftwareInputPanel" }
        Method { name: "closeSoftwareInputPanel" }
        Method {
            name: "positionToRectangle"
            type: "QRectF"
            Parameter { type: "int" }
        }
        Method {
            name: "positionAt"
            type: "int"
            Parameter { name: "x"; type: "int" }
            Parameter { name: "y"; type: "int" }
        }
        Method {
            name: "moveCursorSelection"
            Parameter { name: "pos"; type: "int" }
        }
        Method {
            name: "moveCursorSelection"
            revision: 1
            Parameter { name: "pos"; type: "int" }
            Parameter { name: "mode"; type: "SelectionMode" }
        }
    }
    Component {
        name: "QDeclarativeTextInput"
        defaultProperty: "data"
        prototype: "QDeclarativeImplicitSizePaintedItem"
        exports: ["QtQuick/TextInput 1.0", "QtQuick/TextInput 1.1"]
        exportMetaObjectRevisions: [0, 1]
        Enum {
            name: "EchoMode"
            values: {
                "Normal": 0,
                "NoEcho": 1,
                "Password": 2,
                "PasswordEchoOnEdit": 3
            }
        }
        Enum {
            name: "HAlignment"
            values: {
                "AlignLeft": 1,
                "AlignRight": 2,
                "AlignHCenter": 4
            }
        }
        Enum {
            name: "SelectionMode"
            values: {
                "SelectCharacters": 0,
                "SelectWords": 1
            }
        }
        Property { name: "text"; type: "string" }
        Property { name: "color"; type: "QColor" }
        Property { name: "selectionColor"; type: "QColor" }
        Property { name: "selectedTextColor"; type: "QColor" }
        Property { name: "font"; type: "QFont" }
        Property { name: "horizontalAlignment"; type: "HAlignment" }
        Property { name: "readOnly"; type: "bool" }
        Property { name: "cursorVisible"; type: "bool" }
        Property { name: "cursorPosition"; type: "int" }
        Property { name: "cursorRectangle"; type: "QRect"; isReadonly: true }
        Property { name: "cursorDelegate"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "selectionStart"; type: "int"; isReadonly: true }
        Property { name: "selectionEnd"; type: "int"; isReadonly: true }
        Property { name: "selectedText"; type: "string"; isReadonly: true }
        Property { name: "maximumLength"; type: "int" }
        Property { name: "validator"; type: "QValidator"; isPointer: true }
        Property { name: "inputMask"; type: "string" }
        Property { name: "inputMethodHints"; type: "Qt::InputMethodHints" }
        Property { name: "acceptableInput"; type: "bool"; isReadonly: true }
        Property { name: "echoMode"; type: "EchoMode" }
        Property { name: "activeFocusOnPress"; type: "bool" }
        Property { name: "passwordCharacter"; type: "string" }
        Property { name: "displayText"; type: "string"; isReadonly: true }
        Property { name: "autoScroll"; type: "bool" }
        Property { name: "selectByMouse"; type: "bool" }
        Property { name: "mouseSelectionMode"; revision: 1; type: "SelectionMode" }
        Property { name: "canPaste"; revision: 1; type: "bool"; isReadonly: true }
        Property { name: "inputMethodComposing"; revision: 1; type: "bool"; isReadonly: true }
        Signal { name: "accepted" }
        Signal {
            name: "colorChanged"
            Parameter { name: "color"; type: "QColor" }
        }
        Signal {
            name: "selectionColorChanged"
            Parameter { name: "color"; type: "QColor" }
        }
        Signal {
            name: "selectedTextColorChanged"
            Parameter { name: "color"; type: "QColor" }
        }
        Signal {
            name: "fontChanged"
            Parameter { name: "font"; type: "QFont" }
        }
        Signal {
            name: "horizontalAlignmentChanged"
            Parameter { name: "alignment"; type: "HAlignment" }
        }
        Signal {
            name: "readOnlyChanged"
            Parameter { name: "isReadOnly"; type: "bool" }
        }
        Signal {
            name: "cursorVisibleChanged"
            Parameter { name: "isCursorVisible"; type: "bool" }
        }
        Signal {
            name: "maximumLengthChanged"
            Parameter { name: "maximumLength"; type: "int" }
        }
        Signal {
            name: "inputMaskChanged"
            Parameter { name: "inputMask"; type: "string" }
        }
        Signal {
            name: "echoModeChanged"
            Parameter { name: "echoMode"; type: "EchoMode" }
        }
        Signal {
            name: "activeFocusOnPressChanged"
            Parameter { name: "activeFocusOnPress"; type: "bool" }
        }
        Signal {
            name: "autoScrollChanged"
            Parameter { name: "autoScroll"; type: "bool" }
        }
        Signal {
            name: "selectByMouseChanged"
            Parameter { name: "selectByMouse"; type: "bool" }
        }
        Signal {
            name: "mouseSelectionModeChanged"
            revision: 1
            Parameter { name: "mode"; type: "SelectionMode" }
        }
        Signal { name: "canPasteChanged"; revision: 1 }
        Signal { name: "inputMethodComposingChanged"; revision: 1 }
        Method { name: "selectAll" }
        Method { name: "selectWord" }
        Method {
            name: "select"
            Parameter { name: "start"; type: "int" }
            Parameter { name: "end"; type: "int" }
        }
        Method { name: "deselect"; revision: 1 }
        Method {
            name: "isRightToLeft"
            revision: 1
            type: "bool"
            Parameter { name: "start"; type: "int" }
            Parameter { name: "end"; type: "int" }
        }
        Method { name: "cut" }
        Method { name: "copy" }
        Method { name: "paste" }
        Method {
            name: "positionAt"
            type: "int"
            Parameter { name: "x"; type: "int" }
        }
        Method {
            name: "positionAt"
            revision: 1
            type: "int"
            Parameter { name: "x"; type: "int" }
            Parameter { name: "position"; type: "CursorPosition" }
        }
        Method {
            name: "positionToRectangle"
            type: "QRectF"
            Parameter { name: "pos"; type: "int" }
        }
        Method {
            name: "moveCursorSelection"
            Parameter { name: "pos"; type: "int" }
        }
        Method {
            name: "moveCursorSelection"
            revision: 1
            Parameter { name: "pos"; type: "int" }
            Parameter { name: "mode"; type: "SelectionMode" }
        }
        Method { name: "openSoftwareInputPanel" }
        Method { name: "closeSoftwareInputPanel" }
    }
    Component {
        name: "QDeclarativeTimer"
        prototype: "QObject"
        exports: ["QtQuick/Timer 1.0"]
        Property { name: "interval"; type: "int" }
        Property { name: "running"; type: "bool" }
        Property { name: "repeat"; type: "bool" }
        Property { name: "triggeredOnStart"; type: "bool" }
        Property { name: "parent"; type: "QObject"; isReadonly: true; isPointer: true }
        Signal { name: "triggered" }
        Method { name: "start" }
        Method { name: "stop" }
        Method { name: "restart" }
    }
    Component {
        name: "QDeclarativeTransition"
        defaultProperty: "animations"
        prototype: "QObject"
        exports: ["QtQuick/Transition 1.0"]
        Property { name: "from"; type: "string" }
        Property { name: "to"; type: "string" }
        Property { name: "reversible"; type: "bool" }
        Property {
            name: "animations"
            type: "QDeclarativeAbstractAnimation"
            isList: true
            isReadonly: true
        }
    }
    Component {
        name: "QDeclarativeTranslate"
        prototype: "QGraphicsTransform"
        exports: ["QtQuick/Translate 1.0"]
        Property { name: "x"; type: "double" }
        Property { name: "y"; type: "double" }
    }
    Component { name: "QDeclarativeValueType"; prototype: "QObject" }
    Component {
        name: "QDeclarativeVector3dAnimation"
        prototype: "QDeclarativePropertyAnimation"
        exports: ["QtQuick/Vector3dAnimation 1.0"]
        Property { name: "from"; type: "QVector3D" }
        Property { name: "to"; type: "QVector3D" }
    }
    Component {
        name: "QDeclarativeViewSection"
        prototype: "QObject"
        exports: ["QtQuick/ViewSection 1.0"]
        Enum {
            name: "SectionCriteria"
            values: {
                "FullString": 0,
                "FirstCharacter": 1
            }
        }
        Property { name: "property"; type: "string" }
        Property { name: "criteria"; type: "SectionCriteria" }
        Property { name: "delegate"; type: "QDeclarativeComponent"; isPointer: true }
    }
    Component {
        name: "QDeclarativeVisualDataModel"
        defaultProperty: "delegate"
        prototype: "QDeclarativeVisualModel"
        exports: ["QtQuick/VisualDataModel 1.0"]
        Property { name: "model"; type: "QVariant" }
        Property { name: "delegate"; type: "QDeclarativeComponent"; isPointer: true }
        Property { name: "part"; type: "string" }
        Property { name: "parts"; type: "QObject"; isReadonly: true; isPointer: true }
        Property { name: "rootIndex"; type: "QVariant" }
        Signal {
            name: "createdPackage"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "package"; type: "QDeclarativePackage"; isPointer: true }
        }
        Signal {
            name: "destroyingPackage"
            Parameter { name: "package"; type: "QDeclarativePackage"; isPointer: true }
        }
        Method {
            name: "modelIndex"
            type: "QVariant"
            Parameter { name: "idx"; type: "int" }
        }
        Method { name: "parentModelIndex"; type: "QVariant" }
    }
    Component { name: "QDeclarativeVisualDataModelParts"; prototype: "QObject" }
    Component {
        name: "QDeclarativeVisualItemModel"
        defaultProperty: "children"
        prototype: "QDeclarativeVisualModel"
        exports: ["QtQuick/VisualItemModel 1.0"]
        attachedType: "QDeclarativeVisualItemModelAttached"
        Property { name: "children"; type: "QDeclarativeItem"; isList: true; isReadonly: true }
    }
    Component {
        name: "QDeclarativeVisualItemModelAttached"
        prototype: "QObject"
        Property { name: "index"; type: "int"; isReadonly: true }
    }
    Component {
        name: "QDeclarativeVisualModel"
        prototype: "QObject"
        Property { name: "count"; type: "int"; isReadonly: true }
        Signal {
            name: "itemsInserted"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "count"; type: "int" }
        }
        Signal {
            name: "itemsRemoved"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "count"; type: "int" }
        }
        Signal {
            name: "itemsMoved"
            Parameter { name: "from"; type: "int" }
            Parameter { name: "to"; type: "int" }
            Parameter { name: "count"; type: "int" }
        }
        Signal {
            name: "itemsChanged"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "count"; type: "int" }
        }
        Signal { name: "modelReset" }
        Signal {
            name: "createdItem"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "item"; type: "QDeclarativeItem"; isPointer: true }
        }
        Signal {
            name: "destroyingItem"
            Parameter { name: "item"; type: "QDeclarativeItem"; isPointer: true }
        }
    }
    Component {
        name: "QDeclarativeWorkerScript"
        prototype: "QObject"
        exports: ["QtQuick/WorkerScript 1.0"]
        Property { name: "source"; type: "QUrl" }
        Signal {
            name: "message"
            Parameter { name: "messageObject"; type: "QScriptValue" }
        }
        Method {
            name: "sendMessage"
            Parameter { type: "QScriptValue" }
        }
    }
    Component {
        name: "QDeclarativeXmlListModel"
        defaultProperty: "roles"
        prototype: "QListModelInterface"
        exports: ["QtQuick/XmlListModel 1.0"]
        Enum {
            name: "Status"
            values: {
                "Null": 0,
                "Ready": 1,
                "Loading": 2,
                "Error": 3
            }
        }
        Property { name: "status"; type: "Status"; isReadonly: true }
        Property { name: "progress"; type: "double"; isReadonly: true }
        Property { name: "source"; type: "QUrl" }
        Property { name: "xml"; type: "string" }
        Property { name: "query"; type: "string" }
        Property { name: "namespaceDeclarations"; type: "string" }
        Property { name: "roles"; type: "QDeclarativeXmlListModelRole"; isList: true; isReadonly: true }
        Property { name: "count"; type: "int"; isReadonly: true }
        Signal {
            name: "statusChanged"
            Parameter { type: "QDeclarativeXmlListModel::Status" }
        }
        Signal {
            name: "progressChanged"
            Parameter { name: "progress"; type: "double" }
        }
        Method { name: "reload" }
        Method {
            name: "get"
            type: "QScriptValue"
            Parameter { name: "index"; type: "int" }
        }
        Method { name: "errorString"; type: "string" }
    }
    Component {
        name: "QDeclarativeXmlListModelRole"
        prototype: "QObject"
        exports: ["QtQuick/XmlRole 1.0"]
        Property { name: "name"; type: "string" }
        Property { name: "query"; type: "string" }
        Property { name: "isKey"; type: "bool" }
    }
    Component {
        name: "QDoubleValidator"
        prototype: "QValidator"
        exports: ["QtQuick/DoubleValidator 1.0"]
        Enum {
            name: "Notation"
            values: {
                "StandardNotation": 0,
                "ScientificNotation": 1
            }
        }
        Property { name: "bottom"; type: "double" }
        Property { name: "top"; type: "double" }
        Property { name: "decimals"; type: "int" }
        Property { name: "notation"; type: "Notation" }
        Signal {
            name: "bottomChanged"
            Parameter { name: "bottom"; type: "double" }
        }
        Signal {
            name: "topChanged"
            Parameter { name: "top"; type: "double" }
        }
        Signal {
            name: "decimalsChanged"
            Parameter { name: "decimals"; type: "int" }
        }
        Signal {
            name: "notationChanged"
            Parameter { name: "notation"; type: "QDoubleValidator::Notation" }
        }
    }
    Component {
        name: "QGraphicsObject"
        defaultProperty: "children"
        prototype: "QObject"
        Property { name: "parent"; type: "QGraphicsObject"; isPointer: true }
        Property { name: "opacity"; type: "double" }
        Property { name: "enabled"; type: "bool" }
        Property { name: "visible"; type: "bool" }
        Property { name: "pos"; type: "QPointF" }
        Property { name: "x"; type: "double" }
        Property { name: "y"; type: "double" }
        Property { name: "z"; type: "double" }
        Property { name: "rotation"; type: "double" }
        Property { name: "scale"; type: "double" }
        Property { name: "transformOriginPoint"; type: "QPointF" }
        Property { name: "effect"; type: "QGraphicsEffect"; isPointer: true }
        Property { name: "children"; type: "QGraphicsObject"; isList: true; isReadonly: true }
        Property { name: "width"; type: "double" }
        Property { name: "height"; type: "double" }
    }
    Component {
        name: "QGraphicsRotation"
        prototype: "QGraphicsTransform"
        exports: ["QtQuick/Rotation 1.0"]
        Property { name: "origin"; type: "QVector3D" }
        Property { name: "angle"; type: "double" }
        Property { name: "axis"; type: "QVector3D" }
    }
    Component {
        name: "QGraphicsScale"
        prototype: "QGraphicsTransform"
        exports: ["QtQuick/Scale 1.0"]
        Property { name: "origin"; type: "QVector3D" }
        Property { name: "xScale"; type: "double" }
        Property { name: "yScale"; type: "double" }
        Property { name: "zScale"; type: "double" }
        Signal { name: "scaleChanged" }
    }
    Component { name: "QGraphicsTransform"; prototype: "QObject" }
    Component {
        name: "QGraphicsWidget"
        defaultProperty: "children"
        prototype: "QGraphicsObject"
        Property { name: "palette"; type: "QPalette" }
        Property { name: "font"; type: "QFont" }
        Property { name: "layoutDirection"; type: "Qt::LayoutDirection" }
        Property { name: "size"; type: "QSizeF" }
        Property { name: "minimumSize"; type: "QSizeF" }
        Property { name: "preferredSize"; type: "QSizeF" }
        Property { name: "maximumSize"; type: "QSizeF" }
        Property { name: "sizePolicy"; type: "QSizePolicy" }
        Property { name: "focusPolicy"; type: "Qt::FocusPolicy" }
        Property { name: "windowFlags"; type: "Qt::WindowFlags" }
        Property { name: "windowTitle"; type: "string" }
        Property { name: "geometry"; type: "QRectF" }
        Property { name: "autoFillBackground"; type: "bool" }
        Property { name: "layout"; type: "QGraphicsLayout"; isPointer: true }
        Method { name: "close"; type: "bool" }
    }
    Component {
        name: "QIntValidator"
        prototype: "QValidator"
        exports: ["QtQuick/IntValidator 1.0"]
        Property { name: "bottom"; type: "int" }
        Property { name: "top"; type: "int" }
        Signal {
            name: "bottomChanged"
            Parameter { name: "bottom"; type: "int" }
        }
        Signal {
            name: "topChanged"
            Parameter { name: "top"; type: "int" }
        }
    }
    Component {
        name: "QListModelInterface"
        prototype: "QObject"
        Signal {
            name: "itemsInserted"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "count"; type: "int" }
        }
        Signal {
            name: "itemsRemoved"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "count"; type: "int" }
        }
        Signal {
            name: "itemsMoved"
            Parameter { name: "from"; type: "int" }
            Parameter { name: "to"; type: "int" }
            Parameter { name: "count"; type: "int" }
        }
        Signal {
            name: "itemsChanged"
            Parameter { name: "index"; type: "int" }
            Parameter { name: "count"; type: "int" }
            Parameter { name: "roles"; type: "QList<int>" }
        }
    }
    Component {
        name: "QObject"
        exports: ["QtQuick/QtObject 1.0"]
        Property { name: "objectName"; type: "string" }
        Signal {
            name: "objectNameChanged"
            Parameter { name: "objectName"; type: "string" }
        }
        Method { name: "toString" }
        Method { name: "destroy" }
        Method {
            name: "destroy"
            Parameter { name: "delay"; type: "int" }
        }
    }
    Component {
        name: "QRegExpValidator"
        prototype: "QValidator"
        exports: ["QtQuick/RegExpValidator 1.0"]
        Property { name: "regExp"; type: "QRegExp" }
        Signal {
            name: "regExpChanged"
            Parameter { name: "regExp"; type: "QRegExp" }
        }
    }
    Component {
        name: "QValidator"
        prototype: "QObject"
        Signal { name: "changed" }
    }
    Component {
        name: "Qt"
        Enum {
            name: "GlobalColor"
            values: {
                "color0": 0,
                "color1": 1,
                "black": 2,
                "white": 3,
                "darkGray": 4,
                "gray": 5,
                "lightGray": 6,
                "red": 7,
                "green": 8,
                "blue": 9,
                "cyan": 10,
                "magenta": 11,
                "yellow": 12,
                "darkRed": 13,
                "darkGreen": 14,
                "darkBlue": 15,
                "darkCyan": 16,
                "darkMagenta": 17,
                "darkYellow": 18,
                "transparent": 19
            }
        }
        Enum {
            name: "KeyboardModifiers"
            values: {
                "NoModifier": 0,
                "ShiftModifier": 33554432,
                "ControlModifier": 67108864,
                "AltModifier": 134217728,
                "MetaModifier": 268435456,
                "KeypadModifier": 536870912,
                "GroupSwitchModifier": 1073741824,
                "KeyboardModifierMask": -33554432
            }
        }
        Enum {
            name: "MouseButtons"
            values: {
                "NoButton": 0,
                "LeftButton": 1,
                "RightButton": 2,
                "MidButton": 4,
                "MiddleButton": 4,
                "BackButton": 8,
                "XButton1": 8,
                "ExtraButton1": 8,
                "ForwardButton": 16,
                "XButton2": 16,
                "ExtraButton2": 16,
                "TaskButton": 32,
                "ExtraButton3": 32,
                "ExtraButton4": 64,
                "ExtraButton5": 128,
                "ExtraButton6": 256,
                "ExtraButton7": 512,
                "ExtraButton8": 1024,
                "ExtraButton9": 2048,
                "ExtraButton10": 4096,
                "ExtraButton11": 8192,
                "ExtraButton12": 16384,
                "ExtraButton13": 32768,
                "ExtraButton14": 65536,
                "ExtraButton15": 131072,
                "ExtraButton16": 262144,
                "ExtraButton17": 524288,
                "ExtraButton18": 1048576,
                "ExtraButton19": 2097152,
                "ExtraButton20": 4194304,
                "ExtraButton21": 8388608,
                "ExtraButton22": 16777216,
                "ExtraButton23": 33554432,
                "ExtraButton24": 67108864,
                "AllButtons": 134217727,
                "MaxMouseButton": 67108864,
                "MouseButtonMask": -1
            }
        }
        Enum {
            name: "Orientation"
            values: {
                "Horizontal": 1,
                "Vertical": 2
            }
        }
        Enum {
            name: "Orientations"
            values: {
                "Horizontal": 1,
                "Vertical": 2
            }
        }
        Enum {
            name: "FocusPolicy"
            values: {
                "NoFocus": 0,
                "TabFocus": 1,
                "ClickFocus": 2,
                "StrongFocus": 11,
                "WheelFocus": 15
            }
        }
        Enum {
            name: "SortOrder"
            values: {
                "AscendingOrder": 0,
                "DescendingOrder": 1
            }
        }
        Enum {
            name: "Alignment"
            values: {
                "AlignLeft": 1,
                "AlignLeading": 1,
                "AlignRight": 2,
                "AlignTrailing": 2,
                "AlignHCenter": 4,
                "AlignJustify": 8,
                "AlignAbsolute": 16,
                "AlignHorizontal_Mask": 31,
                "AlignTop": 32,
                "AlignBottom": 64,
                "AlignVCenter": 128,
                "AlignVertical_Mask": 224,
                "AlignCenter": 132
            }
        }
        Enum {
            name: "TextElideMode"
            values: {
                "ElideLeft": 0,
                "ElideRight": 1,
                "ElideMiddle": 2,
                "ElideNone": 3
            }
        }
        Enum {
            name: "WindowType"
            values: {
                "Widget": 0,
                "Window": 1,
                "Dialog": 3,
                "Sheet": 5,
                "Drawer": 7,
                "Popup": 9,
                "Tool": 11,
                "ToolTip": 13,
                "SplashScreen": 15,
                "Desktop": 17,
                "SubWindow": 18,
                "ForeignWindow": 33,
                "WindowType_Mask": 255,
                "MSWindowsFixedSizeDialogHint": 256,
                "MSWindowsOwnDC": 512,
                "BypassWindowManagerHint": 1024,
                "X11BypassWindowManagerHint": 1024,
                "FramelessWindowHint": 2048,
                "WindowTitleHint": 4096,
                "WindowSystemMenuHint": 8192,
                "WindowMinimizeButtonHint": 16384,
                "WindowMaximizeButtonHint": 32768,
                "WindowMinMaxButtonsHint": 49152,
                "WindowContextHelpButtonHint": 65536,
                "WindowShadeButtonHint": 131072,
                "WindowStaysOnTopHint": 262144,
                "WindowTransparentForInput": 524288,
                "WindowOverridesSystemGestures": 1048576,
                "WindowDoesNotAcceptFocus": 2097152,
                "CustomizeWindowHint": 33554432,
                "WindowStaysOnBottomHint": 67108864,
                "WindowCloseButtonHint": 134217728,
                "MacWindowToolBarButtonHint": 268435456,
                "BypassGraphicsProxyWidget": 536870912,
                "WindowOkButtonHint": 524288,
                "WindowCancelButtonHint": 1048576,
                "NoDropShadowWindowHint": 1073741824,
                "WindowFullscreenButtonHint": -2147483648
            }
        }
        Enum {
            name: "WindowFlags"
            values: {
                "Widget": 0,
                "Window": 1,
                "Dialog": 3,
                "Sheet": 5,
                "Drawer": 7,
                "Popup": 9,
                "Tool": 11,
                "ToolTip": 13,
                "SplashScreen": 15,
                "Desktop": 17,
                "SubWindow": 18,
                "ForeignWindow": 33,
                "WindowType_Mask": 255,
                "MSWindowsFixedSizeDialogHint": 256,
                "MSWindowsOwnDC": 512,
                "BypassWindowManagerHint": 1024,
                "X11BypassWindowManagerHint": 1024,
                "FramelessWindowHint": 2048,
                "WindowTitleHint": 4096,
                "WindowSystemMenuHint": 8192,
                "WindowMinimizeButtonHint": 16384,
                "WindowMaximizeButtonHint": 32768,
                "WindowMinMaxButtonsHint": 49152,
                "WindowContextHelpButtonHint": 65536,
                "WindowShadeButtonHint": 131072,
                "WindowStaysOnTopHint": 262144,
                "WindowTransparentForInput": 524288,
                "WindowOverridesSystemGestures": 1048576,
                "WindowDoesNotAcceptFocus": 2097152,
                "CustomizeWindowHint": 33554432,
                "WindowStaysOnBottomHint": 67108864,
                "WindowCloseButtonHint": 134217728,
                "MacWindowToolBarButtonHint": 268435456,
                "BypassGraphicsProxyWidget": 536870912,
                "WindowOkButtonHint": 524288,
                "WindowCancelButtonHint": 1048576,
                "NoDropShadowWindowHint": 1073741824,
                "WindowFullscreenButtonHint": -2147483648
            }
        }
        Enum {
            name: "WindowState"
            values: {
                "WindowNoState": 0,
                "WindowMinimized": 1,
                "WindowMaximized": 2,
                "WindowFullScreen": 4,
                "WindowActive": 8
            }
        }
        Enum {
            name: "WindowStates"
            values: {
                "WindowNoState": 0,
                "WindowMinimized": 1,
                "WindowMaximized": 2,
                "WindowFullScreen": 4,
                "WindowActive": 8
            }
        }
        Enum {
            name: "ScreenOrientation"
            values: {
                "PrimaryOrientation": 0,
                "PortraitOrientation": 1,
                "LandscapeOrientation": 2,
                "InvertedPortraitOrientation": 4,
                "InvertedLandscapeOrientation": 8
            }
        }
        Enum {
            name: "ScreenOrientations"
            values: {
                "PrimaryOrientation": 0,
                "PortraitOrientation": 1,
                "LandscapeOrientation": 2,
                "InvertedPortraitOrientation": 4,
                "InvertedLandscapeOrientation": 8
            }
        }
        Enum {
            name: "WidgetAttribute"
            values: {
                "WA_Disabled": 0,
                "WA_UnderMouse": 1,
                "WA_MouseTracking": 2,
                "WA_ContentsPropagated": 3,
                "WA_OpaquePaintEvent": 4,
                "WA_NoBackground": 4,
                "WA_StaticContents": 5,
                "WA_LaidOut": 7,
                "WA_PaintOnScreen": 8,
                "WA_NoSystemBackground": 9,
                "WA_UpdatesDisabled": 10,
                "WA_Mapped": 11,
                "WA_MacNoClickThrough": 12,
                "WA_InputMethodEnabled": 14,
                "WA_WState_Visible": 15,
                "WA_WState_Hidden": 16,
                "WA_ForceDisabled": 32,
                "WA_KeyCompression": 33,
                "WA_PendingMoveEvent": 34,
                "WA_PendingResizeEvent": 35,
                "WA_SetPalette": 36,
                "WA_SetFont": 37,
                "WA_SetCursor": 38,
                "WA_NoChildEventsFromChildren": 39,
                "WA_WindowModified": 41,
                "WA_Resized": 42,
                "WA_Moved": 43,
                "WA_PendingUpdate": 44,
                "WA_InvalidSize": 45,
                "WA_MacBrushedMetal": 46,
                "WA_MacMetalStyle": 46,
                "WA_CustomWhatsThis": 47,
                "WA_LayoutOnEntireRect": 48,
                "WA_OutsideWSRange": 49,
                "WA_GrabbedShortcut": 50,
                "WA_TransparentForMouseEvents": 51,
                "WA_PaintUnclipped": 52,
                "WA_SetWindowIcon": 53,
                "WA_NoMouseReplay": 54,
                "WA_DeleteOnClose": 55,
                "WA_RightToLeft": 56,
                "WA_SetLayoutDirection": 57,
                "WA_NoChildEventsForParent": 58,
                "WA_ForceUpdatesDisabled": 59,
                "WA_WState_Created": 60,
                "WA_WState_CompressKeys": 61,
                "WA_WState_InPaintEvent": 62,
                "WA_WState_Reparented": 63,
                "WA_WState_ConfigPending": 64,
                "WA_WState_Polished": 66,
                "WA_WState_DND": 67,
                "WA_WState_OwnSizePolicy": 68,
                "WA_WState_ExplicitShowHide": 69,
                "WA_ShowModal": 70,
                "WA_MouseNoMask": 71,
                "WA_GroupLeader": 72,
                "WA_NoMousePropagation": 73,
                "WA_Hover": 74,
                "WA_InputMethodTransparent": 75,
                "WA_QuitOnClose": 76,
                "WA_KeyboardFocusChange": 77,
                "WA_AcceptDrops": 78,
                "WA_DropSiteRegistered": 79,
                "WA_ForceAcceptDrops": 79,
                "WA_WindowPropagation": 80,
                "WA_NoX11EventCompression": 81,
                "WA_TintedBackground": 82,
                "WA_X11OpenGLOverlay": 83,
                "WA_AlwaysShowToolTips": 84,
                "WA_MacOpaqueSizeGrip": 85,
                "WA_SetStyle": 86,
                "WA_SetLocale": 87,
                "WA_MacShowFocusRect": 88,
                "WA_MacNormalSize": 89,
                "WA_MacSmallSize": 90,
                "WA_MacMiniSize": 91,
                "WA_LayoutUsesWidgetRect": 92,
                "WA_StyledBackground": 93,
                "WA_MSWindowsUseDirect3D": 94,
                "WA_CanHostQMdiSubWindowTitleBar": 95,
                "WA_MacAlwaysShowToolWindow": 96,
                "WA_StyleSheet": 97,
                "WA_ShowWithoutActivating": 98,
                "WA_X11BypassTransientForHint": 99,
                "WA_NativeWindow": 100,
                "WA_DontCreateNativeAncestors": 101,
                "WA_MacVariableSize": 102,
                "WA_DontShowOnScreen": 103,
                "WA_X11NetWmWindowTypeDesktop": 104,
                "WA_X11NetWmWindowTypeDock": 105,
                "WA_X11NetWmWindowTypeToolBar": 106,
                "WA_X11NetWmWindowTypeMenu": 107,
                "WA_X11NetWmWindowTypeUtility": 108,
                "WA_X11NetWmWindowTypeSplash": 109,
                "WA_X11NetWmWindowTypeDialog": 110,
                "WA_X11NetWmWindowTypeDropDownMenu": 111,
                "WA_X11NetWmWindowTypePopupMenu": 112,
                "WA_X11NetWmWindowTypeToolTip": 113,
                "WA_X11NetWmWindowTypeNotification": 114,
                "WA_X11NetWmWindowTypeCombo": 115,
                "WA_X11NetWmWindowTypeDND": 116,
                "WA_MacFrameworkScaled": 117,
                "WA_SetWindowModality": 118,
                "WA_WState_WindowOpacitySet": 119,
                "WA_TranslucentBackground": 120,
                "WA_AcceptTouchEvents": 121,
                "WA_WState_AcceptedTouchBeginEvent": 122,
                "WA_TouchPadAcceptSingleTouchEvents": 123,
                "WA_X11DoNotAcceptFocus": 126,
                "WA_MacNoShadow": 127,
                "WA_AttributeCount": 128
            }
        }
        Enum {
            name: "ApplicationAttribute"
            values: {
                "AA_ImmediateWidgetCreation": 0,
                "AA_MSWindowsUseDirect3DByDefault": 1,
                "AA_DontShowIconsInMenus": 2,
                "AA_NativeWindows": 3,
                "AA_DontCreateNativeWidgetSiblings": 4,
                "AA_MacPluginApplication": 5,
                "AA_DontUseNativeMenuBar": 6,
                "AA_MacDontSwapCtrlAndMeta": 7,
                "AA_Use96Dpi": 8,
                "AA_X11InitThreads": 10,
                "AA_SynthesizeTouchForUnhandledMouseEvents": 11,
                "AA_SynthesizeMouseForUnhandledTouchEvents": 12,
                "AA_UseHighDpiPixmaps": 13,
                "AA_AttributeCount": 14
            }
        }
        Enum {
            name: "ImageConversionFlags"
            values: {
                "ColorMode_Mask": 3,
                "AutoColor": 0,
                "ColorOnly": 3,
                "MonoOnly": 2,
                "AlphaDither_Mask": 12,
                "ThresholdAlphaDither": 0,
                "OrderedAlphaDither": 4,
                "DiffuseAlphaDither": 8,
                "NoAlpha": 12,
                "Dither_Mask": 48,
                "DiffuseDither": 0,
                "OrderedDither": 16,
                "ThresholdDither": 32,
                "DitherMode_Mask": 192,
                "AutoDither": 0,
                "PreferDither": 64,
                "AvoidDither": 128,
                "NoOpaqueDetection": 256,
                "NoFormatConversion": 512
            }
        }
        Enum {
            name: "BGMode"
            values: {
                "TransparentMode": 0,
                "OpaqueMode": 1
            }
        }
        Enum {
            name: "Key"
            values: {
                "Key_Escape": 16777216,
                "Key_Tab": 16777217,
                "Key_Backtab": 16777218,
                "Key_Backspace": 16777219,
                "Key_Return": 16777220,
                "Key_Enter": 16777221,
                "Key_Insert": 16777222,
                "Key_Delete": 16777223,
                "Key_Pause": 16777224,
                "Key_Print": 16777225,
                "Key_SysReq": 16777226,
                "Key_Clear": 16777227,
                "Key_Home": 16777232,
                "Key_End": 16777233,
                "Key_Left": 16777234,
                "Key_Up": 16777235,
                "Key_Right": 16777236,
                "Key_Down": 16777237,
                "Key_PageUp": 16777238,
                "Key_PageDown": 16777239,
                "Key_Shift": 16777248,
                "Key_Control": 16777249,
                "Key_Meta": 16777250,
                "Key_Alt": 16777251,
                "Key_CapsLock": 16777252,
                "Key_NumLock": 16777253,
                "Key_ScrollLock": 16777254,
                "Key_F1": 16777264,
                "Key_F2": 16777265,
                "Key_F3": 16777266,
                "Key_F4": 16777267,
                "Key_F5": 16777268,
                "Key_F6": 16777269,
                "Key_F7": 16777270,
                "Key_F8": 16777271,
                "Key_F9": 16777272,
                "Key_F10": 16777273,
                "Key_F11": 16777274,
                "Key_F12": 16777275,
                "Key_F13": 16777276,
                "Key_F14": 16777277,
                "Key_F15": 16777278,
                "Key_F16": 16777279,
                "Key_F17": 16777280,
                "Key_F18": 16777281,
                "Key_F19": 16777282,
                "Key_F20": 16777283,
                "Key_F21": 16777284,
                "Key_F22": 16777285,
                "Key_F23": 16777286,
                "Key_F24": 16777287,
                "Key_F25": 16777288,
                "Key_F26": 16777289,
                "Key_F27": 16777290,
                "Key_F28": 16777291,
                "Key_F29": 16777292,
                "Key_F30": 16777293,
                "Key_F31": 16777294,
                "Key_F32": 16777295,
                "Key_F33": 16777296,
                "Key_F34": 16777297,
                "Key_F35": 16777298,
                "Key_Super_L": 16777299,
                "Key_Super_R": 16777300,
                "Key_Menu": 16777301,
                "Key_Hyper_L": 16777302,
                "Key_Hyper_R": 16777303,
                "Key_Help": 16777304,
                "Key_Direction_L": 16777305,
                "Key_Direction_R": 16777312,
                "Key_Space": 32,
                "Key_Any": 32,
                "Key_Exclam": 33,
                "Key_QuoteDbl": 34,
                "Key_NumberSign": 35,
                "Key_Dollar": 36,
                "Key_Percent": 37,
                "Key_Ampersand": 38,
                "Key_Apostrophe": 39,
                "Key_ParenLeft": 40,
                "Key_ParenRight": 41,
                "Key_Asterisk": 42,
                "Key_Plus": 43,
                "Key_Comma": 44,
                "Key_Minus": 45,
                "Key_Period": 46,
                "Key_Slash": 47,
                "Key_0": 48,
                "Key_1": 49,
                "Key_2": 50,
                "Key_3": 51,
                "Key_4": 52,
                "Key_5": 53,
                "Key_6": 54,
                "Key_7": 55,
                "Key_8": 56,
                "Key_9": 57,
                "Key_Colon": 58,
                "Key_Semicolon": 59,
                "Key_Less": 60,
                "Key_Equal": 61,
                "Key_Greater": 62,
                "Key_Question": 63,
                "Key_At": 64,
                "Key_A": 65,
                "Key_B": 66,
                "Key_C": 67,
                "Key_D": 68,
                "Key_E": 69,
                "Key_F": 70,
                "Key_G": 71,
                "Key_H": 72,
                "Key_I": 73,
                "Key_J": 74,
                "Key_K": 75,
                "Key_L": 76,
                "Key_M": 77,
                "Key_N": 78,
                "Key_O": 79,
                "Key_P": 80,
                "Key_Q": 81,
                "Key_R": 82,
                "Key_S": 83,
                "Key_T": 84,
                "Key_U": 85,
                "Key_V": 86,
                "Key_W": 87,
                "Key_X": 88,
                "Key_Y": 89,
                "Key_Z": 90,
                "Key_BracketLeft": 91,
                "Key_Backslash": 92,
                "Key_BracketRight": 93,
                "Key_AsciiCircum": 94,
                "Key_Underscore": 95,
                "Key_QuoteLeft": 96,
                "Key_BraceLeft": 123,
                "Key_Bar": 124,
                "Key_BraceRight": 125,
                "Key_AsciiTilde": 126,
                "Key_nobreakspace": 160,
                "Key_exclamdown": 161,
                "Key_cent": 162,
                "Key_sterling": 163,
                "Key_currency": 164,
                "Key_yen": 165,
                "Key_brokenbar": 166,
                "Key_section": 167,
                "Key_diaeresis": 168,
                "Key_copyright": 169,
                "Key_ordfeminine": 170,
                "Key_guillemotleft": 171,
                "Key_notsign": 172,
                "Key_hyphen": 173,
                "Key_registered": 174,
                "Key_macron": 175,
                "Key_degree": 176,
                "Key_plusminus": 177,
                "Key_twosuperior": 178,
                "Key_threesuperior": 179,
                "Key_acute": 180,
                "Key_mu": 181,
                "Key_paragraph": 182,
                "Key_periodcentered": 183,
                "Key_cedilla": 184,
                "Key_onesuperior": 185,
                "Key_masculine": 186,
                "Key_guillemotright": 187,
                "Key_onequarter": 188,
                "Key_onehalf": 189,
                "Key_threequarters": 190,
                "Key_questiondown": 191,
                "Key_Agrave": 192,
                "Key_Aacute": 193,
                "Key_Acircumflex": 194,
                "Key_Atilde": 195,
                "Key_Adiaeresis": 196,
                "Key_Aring": 197,
                "Key_AE": 198,
                "Key_Ccedilla": 199,
                "Key_Egrave": 200,
                "Key_Eacute": 201,
                "Key_Ecircumflex": 202,
                "Key_Ediaeresis": 203,
                "Key_Igrave": 204,
                "Key_Iacute": 205,
                "Key_Icircumflex": 206,
                "Key_Idiaeresis": 207,
                "Key_ETH": 208,
                "Key_Ntilde": 209,
                "Key_Ograve": 210,
                "Key_Oacute": 211,
                "Key_Ocircumflex": 212,
                "Key_Otilde": 213,
                "Key_Odiaeresis": 214,
                "Key_multiply": 215,
                "Key_Ooblique": 216,
                "Key_Ugrave": 217,
                "Key_Uacute": 218,
                "Key_Ucircumflex": 219,
                "Key_Udiaeresis": 220,
                "Key_Yacute": 221,
                "Key_THORN": 222,
                "Key_ssharp": 223,
                "Key_division": 247,
                "Key_ydiaeresis": 255,
                "Key_AltGr": 16781571,
                "Key_Multi_key": 16781600,
                "Key_Codeinput": 16781623,
                "Key_SingleCandidate": 16781628,
                "Key_MultipleCandidate": 16781629,
                "Key_PreviousCandidate": 16781630,
                "Key_Mode_switch": 16781694,
                "Key_Kanji": 16781601,
                "Key_Muhenkan": 16781602,
                "Key_Henkan": 16781603,
                "Key_Romaji": 16781604,
                "Key_Hiragana": 16781605,
                "Key_Katakana": 16781606,
                "Key_Hiragana_Katakana": 16781607,
                "Key_Zenkaku": 16781608,
                "Key_Hankaku": 16781609,
                "Key_Zenkaku_Hankaku": 16781610,
                "Key_Touroku": 16781611,
                "Key_Massyo": 16781612,
                "Key_Kana_Lock": 16781613,
                "Key_Kana_Shift": 16781614,
                "Key_Eisu_Shift": 16781615,
                "Key_Eisu_toggle": 16781616,
                "Key_Hangul": 16781617,
                "Key_Hangul_Start": 16781618,
                "Key_Hangul_End": 16781619,
                "Key_Hangul_Hanja": 16781620,
                "Key_Hangul_Jamo": 16781621,
                "Key_Hangul_Romaja": 16781622,
                "Key_Hangul_Jeonja": 16781624,
                "Key_Hangul_Banja": 16781625,
                "Key_Hangul_PreHanja": 16781626,
                "Key_Hangul_PostHanja": 16781627,
                "Key_Hangul_Special": 16781631,
                "Key_Dead_Grave": 16781904,
                "Key_Dead_Acute": 16781905,
                "Key_Dead_Circumflex": 16781906,
                "Key_Dead_Tilde": 16781907,
                "Key_Dead_Macron": 16781908,
                "Key_Dead_Breve": 16781909,
                "Key_Dead_Abovedot": 16781910,
                "Key_Dead_Diaeresis": 16781911,
                "Key_Dead_Abovering": 16781912,
                "Key_Dead_Doubleacute": 16781913,
                "Key_Dead_Caron": 16781914,
                "Key_Dead_Cedilla": 16781915,
                "Key_Dead_Ogonek": 16781916,
                "Key_Dead_Iota": 16781917,
                "Key_Dead_Voiced_Sound": 16781918,
                "Key_Dead_Semivoiced_Sound": 16781919,
                "Key_Dead_Belowdot": 16781920,
                "Key_Dead_Hook": 16781921,
                "Key_Dead_Horn": 16781922,
                "Key_Back": 16777313,
                "Key_Forward": 16777314,
                "Key_Stop": 16777315,
                "Key_Refresh": 16777316,
                "Key_VolumeDown": 16777328,
                "Key_VolumeMute": 16777329,
                "Key_VolumeUp": 16777330,
                "Key_BassBoost": 16777331,
                "Key_BassUp": 16777332,
                "Key_BassDown": 16777333,
                "Key_TrebleUp": 16777334,
                "Key_TrebleDown": 16777335,
                "Key_MediaPlay": 16777344,
                "Key_MediaStop": 16777345,
                "Key_MediaPrevious": 16777346,
                "Key_MediaNext": 16777347,
                "Key_MediaRecord": 16777348,
                "Key_MediaPause": 16777349,
                "Key_MediaTogglePlayPause": 16777350,
                "Key_HomePage": 16777360,
                "Key_Favorites": 16777361,
                "Key_Search": 16777362,
                "Key_Standby": 16777363,
                "Key_OpenUrl": 16777364,
                "Key_LaunchMail": 16777376,
                "Key_LaunchMedia": 16777377,
                "Key_Launch0": 16777378,
                "Key_Launch1": 16777379,
                "Key_Launch2": 16777380,
                "Key_Launch3": 16777381,
                "Key_Launch4": 16777382,
                "Key_Launch5": 16777383,
                "Key_Launch6": 16777384,
                "Key_Launch7": 16777385,
                "Key_Launch8": 16777386,
                "Key_Launch9": 16777387,
                "Key_LaunchA": 16777388,
                "Key_LaunchB": 16777389,
                "Key_LaunchC": 16777390,
                "Key_LaunchD": 16777391,
                "Key_LaunchE": 16777392,
                "Key_LaunchF": 16777393,
                "Key_MonBrightnessUp": 16777394,
                "Key_MonBrightnessDown": 16777395,
                "Key_KeyboardLightOnOff": 16777396,
                "Key_KeyboardBrightnessUp": 16777397,
                "Key_KeyboardBrightnessDown": 16777398,
                "Key_PowerOff": 16777399,
                "Key_WakeUp": 16777400,
                "Key_Eject": 16777401,
                "Key_ScreenSaver": 16777402,
                "Key_WWW": 16777403,
                "Key_Memo": 16777404,
                "Key_LightBulb": 16777405,
                "Key_Shop": 16777406,
                "Key_History": 16777407,
                "Key_AddFavorite": 16777408,
                "Key_HotLinks": 16777409,
                "Key_BrightnessAdjust": 16777410,
                "Key_Finance": 16777411,
                "Key_Community": 16777412,
                "Key_AudioRewind": 16777413,
                "Key_BackForward": 16777414,
                "Key_ApplicationLeft": 16777415,
                "Key_ApplicationRight": 16777416,
                "Key_Book": 16777417,
                "Key_CD": 16777418,
                "Key_Calculator": 16777419,
                "Key_ToDoList": 16777420,
                "Key_ClearGrab": 16777421,
                "Key_Close": 16777422,
                "Key_Copy": 16777423,
                "Key_Cut": 16777424,
                "Key_Display": 16777425,
                "Key_DOS": 16777426,
                "Key_Documents": 16777427,
                "Key_Excel": 16777428,
                "Key_Explorer": 16777429,
                "Key_Game": 16777430,
                "Key_Go": 16777431,
                "Key_iTouch": 16777432,
                "Key_LogOff": 16777433,
                "Key_Market": 16777434,
                "Key_Meeting": 16777435,
                "Key_MenuKB": 16777436,
                "Key_MenuPB": 16777437,
                "Key_MySites": 16777438,
                "Key_News": 16777439,
                "Key_OfficeHome": 16777440,
                "Key_Option": 16777441,
                "Key_Paste": 16777442,
                "Key_Phone": 16777443,
                "Key_Calendar": 16777444,
                "Key_Reply": 16777445,
                "Key_Reload": 16777446,
                "Key_RotateWindows": 16777447,
                "Key_RotationPB": 16777448,
                "Key_RotationKB": 16777449,
                "Key_Save": 16777450,
                "Key_Send": 16777451,
                "Key_Spell": 16777452,
                "Key_SplitScreen": 16777453,
                "Key_Support": 16777454,
                "Key_TaskPane": 16777455,
                "Key_Terminal": 16777456,
                "Key_Tools": 16777457,
                "Key_Travel": 16777458,
                "Key_Video": 16777459,
                "Key_Word": 16777460,
                "Key_Xfer": 16777461,
                "Key_ZoomIn": 16777462,
                "Key_ZoomOut": 16777463,
                "Key_Away": 16777464,
                "Key_Messenger": 16777465,
                "Key_WebCam": 16777466,
                "Key_MailForward": 16777467,
                "Key_Pictures": 16777468,
                "Key_Music": 16777469,
                "Key_Battery": 16777470,
                "Key_Bluetooth": 16777471,
                "Key_WLAN": 16777472,
                "Key_UWB": 16777473,
                "Key_AudioForward": 16777474,
                "Key_AudioRepeat": 16777475,
                "Key_AudioRandomPlay": 16777476,
                "Key_Subtitle": 16777477,
                "Key_AudioCycleTrack": 16777478,
                "Key_Time": 16777479,
                "Key_Hibernate": 16777480,
                "Key_View": 16777481,
                "Key_TopMenu": 16777482,
                "Key_PowerDown": 16777483,
                "Key_Suspend": 16777484,
                "Key_ContrastAdjust": 16777485,
                "Key_LaunchG": 16777486,
                "Key_LaunchH": 16777487,
                "Key_TouchpadToggle": 16777488,
                "Key_TouchpadOn": 16777489,
                "Key_TouchpadOff": 16777490,
                "Key_MediaLast": 16842751,
                "Key_Select": 16842752,
                "Key_Yes": 16842753,
                "Key_No": 16842754,
                "Key_Cancel": 16908289,
                "Key_Printer": 16908290,
                "Key_Execute": 16908291,
                "Key_Sleep": 16908292,
                "Key_Play": 16908293,
                "Key_Zoom": 16908294,
                "Key_Context1": 17825792,
                "Key_Context2": 17825793,
                "Key_Context3": 17825794,
                "Key_Context4": 17825795,
                "Key_Call": 17825796,
                "Key_Hangup": 17825797,
                "Key_Flip": 17825798,
                "Key_ToggleCallHangup": 17825799,
                "Key_VoiceDial": 17825800,
                "Key_LastNumberRedial": 17825801,
                "Key_Camera": 17825824,
                "Key_CameraFocus": 17825825,
                "Key_unknown": 33554431
            }
        }
        Enum {
            name: "ArrowType"
            values: {
                "NoArrow": 0,
                "UpArrow": 1,
                "DownArrow": 2,
                "LeftArrow": 3,
                "RightArrow": 4
            }
        }
        Enum {
            name: "PenStyle"
            values: {
                "NoPen": 0,
                "SolidLine": 1,
                "DashLine": 2,
                "DotLine": 3,
                "DashDotLine": 4,
                "DashDotDotLine": 5,
                "CustomDashLine": 6
            }
        }
        Enum {
            name: "PenCapStyle"
            values: {
                "FlatCap": 0,
                "SquareCap": 16,
                "RoundCap": 32,
                "MPenCapStyle": 48
            }
        }
        Enum {
            name: "PenJoinStyle"
            values: {
                "MiterJoin": 0,
                "BevelJoin": 64,
                "RoundJoin": 128,
                "SvgMiterJoin": 256,
                "MPenJoinStyle": 448
            }
        }
        Enum {
            name: "BrushStyle"
            values: {
                "NoBrush": 0,
                "SolidPattern": 1,
                "Dense1Pattern": 2,
                "Dense2Pattern": 3,
                "Dense3Pattern": 4,
                "Dense4Pattern": 5,
                "Dense5Pattern": 6,
                "Dense6Pattern": 7,
                "Dense7Pattern": 8,
                "HorPattern": 9,
                "VerPattern": 10,
                "CrossPattern": 11,
                "BDiagPattern": 12,
                "FDiagPattern": 13,
                "DiagCrossPattern": 14,
                "LinearGradientPattern": 15,
                "RadialGradientPattern": 16,
                "ConicalGradientPattern": 17,
                "TexturePattern": 24
            }
        }
        Enum {
            name: "SizeMode"
            values: {
                "AbsoluteSize": 0,
                "RelativeSize": 1
            }
        }
        Enum {
            name: "CursorShape"
            values: {
                "ArrowCursor": 0,
                "UpArrowCursor": 1,
                "CrossCursor": 2,
                "WaitCursor": 3,
                "IBeamCursor": 4,
                "SizeVerCursor": 5,
                "SizeHorCursor": 6,
                "SizeBDiagCursor": 7,
                "SizeFDiagCursor": 8,
                "SizeAllCursor": 9,
                "BlankCursor": 10,
                "SplitVCursor": 11,
                "SplitHCursor": 12,
                "PointingHandCursor": 13,
                "ForbiddenCursor": 14,
                "WhatsThisCursor": 15,
                "BusyCursor": 16,
                "OpenHandCursor": 17,
                "ClosedHandCursor": 18,
                "DragCopyCursor": 19,
                "DragMoveCursor": 20,
                "DragLinkCursor": 21,
                "LastCursor": 21,
                "BitmapCursor": 24,
                "CustomCursor": 25
            }
        }
        Enum {
            name: "TextFormat"
            values: {
                "PlainText": 0,
                "RichText": 1,
                "AutoText": 2
            }
        }
        Enum {
            name: "AspectRatioMode"
            values: {
                "IgnoreAspectRatio": 0,
                "KeepAspectRatio": 1,
                "KeepAspectRatioByExpanding": 2
            }
        }
        Enum {
            name: "DockWidgetArea"
            values: {
                "LeftDockWidgetArea": 1,
                "RightDockWidgetArea": 2,
                "TopDockWidgetArea": 4,
                "BottomDockWidgetArea": 8,
                "DockWidgetArea_Mask": 15,
                "AllDockWidgetAreas": 15,
                "NoDockWidgetArea": 0
            }
        }
        Enum {
            name: "DockWidgetAreas"
            values: {
                "LeftDockWidgetArea": 1,
                "RightDockWidgetArea": 2,
                "TopDockWidgetArea": 4,
                "BottomDockWidgetArea": 8,
                "DockWidgetArea_Mask": 15,
                "AllDockWidgetAreas": 15,
                "NoDockWidgetArea": 0
            }
        }
        Enum {
            name: "ToolBarArea"
            values: {
                "LeftToolBarArea": 1,
                "RightToolBarArea": 2,
                "TopToolBarArea": 4,
                "BottomToolBarArea": 8,
                "ToolBarArea_Mask": 15,
                "AllToolBarAreas": 15,
                "NoToolBarArea": 0
            }
        }
        Enum {
            name: "ToolBarAreas"
            values: {
                "LeftToolBarArea": 1,
                "RightToolBarArea": 2,
                "TopToolBarArea": 4,
                "BottomToolBarArea": 8,
                "ToolBarArea_Mask": 15,
                "AllToolBarAreas": 15,
                "NoToolBarArea": 0
            }
        }
        Enum {
            name: "DateFormat"
            values: {
                "TextDate": 0,
                "ISODate": 1,
                "SystemLocaleDate": 2,
                "LocalDate": 2,
                "LocaleDate": 3,
                "SystemLocaleShortDate": 4,
                "SystemLocaleLongDate": 5,
                "DefaultLocaleShortDate": 6,
                "DefaultLocaleLongDate": 7
            }
        }
        Enum {
            name: "TimeSpec"
            values: {
                "LocalTime": 0,
                "UTC": 1,
                "OffsetFromUTC": 2
            }
        }
        Enum {
            name: "DayOfWeek"
            values: {
                "Monday": 1,
                "Tuesday": 2,
                "Wednesday": 3,
                "Thursday": 4,
                "Friday": 5,
                "Saturday": 6,
                "Sunday": 7
            }
        }
        Enum {
            name: "ScrollBarPolicy"
            values: {
                "ScrollBarAsNeeded": 0,
                "ScrollBarAlwaysOff": 1,
                "ScrollBarAlwaysOn": 2
            }
        }
        Enum {
            name: "CaseSensitivity"
            values: {
                "CaseInsensitive": 0,
                "CaseSensitive": 1
            }
        }
        Enum {
            name: "Corner"
            values: {
                "TopLeftCorner": 0,
                "TopRightCorner": 1,
                "BottomLeftCorner": 2,
                "BottomRightCorner": 3
            }
        }
        Enum {
            name: "Edge"
            values: {
                "TopEdge": 1,
                "LeftEdge": 2,
                "RightEdge": 4,
                "BottomEdge": 8
            }
        }
        Enum {
            name: "ConnectionType"
            values: {
                "AutoConnection": 0,
                "DirectConnection": 1,
                "QueuedConnection": 2,
                "BlockingQueuedConnection": 3,
                "UniqueConnection": 128
            }
        }
        Enum {
            name: "ShortcutContext"
            values: {
                "WidgetShortcut": 0,
                "WindowShortcut": 1,
                "ApplicationShortcut": 2,
                "WidgetWithChildrenShortcut": 3
            }
        }
        Enum {
            name: "FillRule"
            values: {
                "OddEvenFill": 0,
                "WindingFill": 1
            }
        }
        Enum {
            name: "MaskMode"
            values: {
                "MaskInColor": 0,
                "MaskOutColor": 1
            }
        }
        Enum {
            name: "ClipOperation"
            values: {
                "NoClip": 0,
                "ReplaceClip": 1,
                "IntersectClip": 2
            }
        }
        Enum {
            name: "ItemSelectionMode"
            values: {
                "ContainsItemShape": 0,
                "IntersectsItemShape": 1,
                "ContainsItemBoundingRect": 2,
                "IntersectsItemBoundingRect": 3
            }
        }
        Enum {
            name: "TransformationMode"
            values: {
                "FastTransformation": 0,
                "SmoothTransformation": 1
            }
        }
        Enum {
            name: "Axis"
            values: {
                "XAxis": 0,
                "YAxis": 1,
                "ZAxis": 2
            }
        }
        Enum {
            name: "ContextMenuPolicy"
            values: {
                "NoContextMenu": 0,
                "DefaultContextMenu": 1,
                "ActionsContextMenu": 2,
                "CustomContextMenu": 3,
                "PreventContextMenu": 4
            }
        }
        Enum {
            name: "InputMethodQuery"
            values: {
                "ImEnabled": 1,
                "ImCursorRectangle": 2,
                "ImMicroFocus": 2,
                "ImFont": 4,
                "ImCursorPosition": 8,
                "ImSurroundingText": 16,
                "ImCurrentSelection": 32,
                "ImMaximumTextLength": 64,
                "ImAnchorPosition": 128,
                "ImHints": 256,
                "ImPreferredLanguage": 512,
                "ImPlatformData": -2147483648,
                "ImQueryInput": 186,
                "ImQueryAll": -1
            }
        }
        Enum {
            name: "InputMethodQueries"
            values: {
                "ImEnabled": 1,
                "ImCursorRectangle": 2,
                "ImMicroFocus": 2,
                "ImFont": 4,
                "ImCursorPosition": 8,
                "ImSurroundingText": 16,
                "ImCurrentSelection": 32,
                "ImMaximumTextLength": 64,
                "ImAnchorPosition": 128,
                "ImHints": 256,
                "ImPreferredLanguage": 512,
                "ImPlatformData": -2147483648,
                "ImQueryInput": 186,
                "ImQueryAll": -1
            }
        }
        Enum {
            name: "InputMethodHint"
            values: {
                "ImhNone": 0,
                "ImhHiddenText": 1,
                "ImhSensitiveData": 2,
                "ImhNoAutoUppercase": 4,
                "ImhPreferNumbers": 8,
                "ImhPreferUppercase": 16,
                "ImhPreferLowercase": 32,
                "ImhNoPredictiveText": 64,
                "ImhDate": 128,
                "ImhTime": 256,
                "ImhPreferLatin": 512,
                "ImhMultiLine": 1024,
                "ImhDigitsOnly": 65536,
                "ImhFormattedNumbersOnly": 131072,
                "ImhUppercaseOnly": 262144,
                "ImhLowercaseOnly": 524288,
                "ImhDialableCharactersOnly": 1048576,
                "ImhEmailCharactersOnly": 2097152,
                "ImhUrlCharactersOnly": 4194304,
                "ImhLatinOnly": 8388608,
                "ImhExclusiveInputMask": -65536
            }
        }
        Enum {
            name: "InputMethodHints"
            values: {
                "ImhNone": 0,
                "ImhHiddenText": 1,
                "ImhSensitiveData": 2,
                "ImhNoAutoUppercase": 4,
                "ImhPreferNumbers": 8,
                "ImhPreferUppercase": 16,
                "ImhPreferLowercase": 32,
                "ImhNoPredictiveText": 64,
                "ImhDate": 128,
                "ImhTime": 256,
                "ImhPreferLatin": 512,
                "ImhMultiLine": 1024,
                "ImhDigitsOnly": 65536,
                "ImhFormattedNumbersOnly": 131072,
                "ImhUppercaseOnly": 262144,
                "ImhLowercaseOnly": 524288,
                "ImhDialableCharactersOnly": 1048576,
                "ImhEmailCharactersOnly": 2097152,
                "ImhUrlCharactersOnly": 4194304,
                "ImhLatinOnly": 8388608,
                "ImhExclusiveInputMask": -65536
            }
        }
        Enum {
            name: "ToolButtonStyle"
            values: {
                "ToolButtonIconOnly": 0,
                "ToolButtonTextOnly": 1,
                "ToolButtonTextBesideIcon": 2,
                "ToolButtonTextUnderIcon": 3,
                "ToolButtonFollowStyle": 4
            }
        }
        Enum {
            name: "LayoutDirection"
            values: {
                "LeftToRight": 0,
                "RightToLeft": 1,
                "LayoutDirectionAuto": 2
            }
        }
        Enum {
            name: "DropAction"
            values: {
                "CopyAction": 1,
                "MoveAction": 2,
                "LinkAction": 4,
                "ActionMask": 255,
                "TargetMoveAction": 32770,
                "IgnoreAction": 0
            }
        }
        Enum {
            name: "DropActions"
            values: {
                "CopyAction": 1,
                "MoveAction": 2,
                "LinkAction": 4,
                "ActionMask": 255,
                "TargetMoveAction": 32770,
                "IgnoreAction": 0
            }
        }
        Enum {
            name: "CheckState"
            values: {
                "Unchecked": 0,
                "PartiallyChecked": 1,
                "Checked": 2
            }
        }
        Enum {
            name: "ItemFlags"
            values: {
                "NoItemFlags": 0,
                "ItemIsSelectable": 1,
                "ItemIsEditable": 2,
                "ItemIsDragEnabled": 4,
                "ItemIsDropEnabled": 8,
                "ItemIsUserCheckable": 16,
                "ItemIsEnabled": 32,
                "ItemIsTristate": 64,
                "ItemNeverHasChildren": 128
            }
        }
        Enum {
            name: "MatchFlags"
            values: {
                "MatchExactly": 0,
                "MatchContains": 1,
                "MatchStartsWith": 2,
                "MatchEndsWith": 3,
                "MatchRegExp": 4,
                "MatchWildcard": 5,
                "MatchFixedString": 8,
                "MatchCaseSensitive": 16,
                "MatchWrap": 32,
                "MatchRecursive": 64
            }
        }
        Enum {
            name: "WindowModality"
            values: {
                "NonModal": 0,
                "WindowModal": 1,
                "ApplicationModal": 2
            }
        }
        Enum {
            name: "TextInteractionFlag"
            values: {
                "NoTextInteraction": 0,
                "TextSelectableByMouse": 1,
                "TextSelectableByKeyboard": 2,
                "LinksAccessibleByMouse": 4,
                "LinksAccessibleByKeyboard": 8,
                "TextEditable": 16,
                "TextEditorInteraction": 19,
                "TextBrowserInteraction": 13
            }
        }
        Enum {
            name: "TextInteractionFlags"
            values: {
                "NoTextInteraction": 0,
                "TextSelectableByMouse": 1,
                "TextSelectableByKeyboard": 2,
                "LinksAccessibleByMouse": 4,
                "LinksAccessibleByKeyboard": 8,
                "TextEditable": 16,
                "TextEditorInteraction": 19,
                "TextBrowserInteraction": 13
            }
        }
        Enum {
            name: "SizeHint"
            values: {
                "MinimumSize": 0,
                "PreferredSize": 1,
                "MaximumSize": 2,
                "MinimumDescent": 3,
                "NSizeHints": 4
            }
        }
        Enum {
            name: "GestureState"
            values: {
                "NoGesture": 0,
                "GestureStarted": 1,
                "GestureUpdated": 2,
                "GestureFinished": 3,
                "GestureCanceled": 4
            }
        }
        Enum {
            name: "GestureType"
            values: {
                "TapGesture": 1,
                "TapAndHoldGesture": 2,
                "PanGesture": 3,
                "PinchGesture": 4,
                "SwipeGesture": 5,
                "CustomGesture": 256,
                "LastGestureType": -1
            }
        }
        Enum {
            name: "CursorMoveStyle"
            values: {
                "LogicalMoveStyle": 0,
                "VisualMoveStyle": 1
            }
        }
        Enum {
            name: "TimerType"
            values: {
                "PreciseTimer": 0,
                "CoarseTimer": 1,
                "VeryCoarseTimer": 2
            }
        }
    }
    Component { name: "QEasingCurve"; prototype: "QDeclarativeEasingValueType" }
}
