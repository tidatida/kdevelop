import QtQuick.tooling 1.1

// This file describes the plugin-supplied types contained in the library.
// It is used for QML tooling purposes only.
//
// This file was auto-generated by:
// 'qmlplugindump -notrelocatable QtPositioning 5.2'

Module {
    Component {
        name: "GeoShapeValueType"
        prototype: "QQmlValueType"
        exports: ["QtPositioning/GeoShape 5.0", "QtPositioning/GeoShape 5.2"]
        exportMetaObjectRevisions: [0, 0]
        Enum {
            name: "ShapeType"
            values: {
                "UnknownType": 0,
                "RectangleType": 1,
                "CircleType": 2
            }
        }
        Property { name: "type"; type: "ShapeType"; isReadonly: true }
        Property { name: "isValid"; type: "bool"; isReadonly: true }
        Property { name: "isEmpty"; type: "bool"; isReadonly: true }
        Method {
            name: "contains"
            type: "bool"
            Parameter { name: "coordinate"; type: "QGeoCoordinate" }
        }
    }
    Component {
        name: "LocationSingleton"
        prototype: "QObject"
        exports: [
            "QtPositioning/QtPositioning 5.0",
            "QtPositioning/QtPositioning 5.2"
        ]
        exportMetaObjectRevisions: [0, 0]
        Method { name: "coordinate"; type: "QGeoCoordinate" }
        Method {
            name: "coordinate"
            type: "QGeoCoordinate"
            Parameter { name: "latitude"; type: "double" }
            Parameter { name: "longitude"; type: "double" }
            Parameter { name: "altitude"; type: "double" }
        }
        Method {
            name: "coordinate"
            type: "QGeoCoordinate"
            Parameter { name: "latitude"; type: "double" }
            Parameter { name: "longitude"; type: "double" }
        }
        Method { name: "shape"; type: "QGeoShape" }
        Method { name: "rectangle"; type: "QGeoRectangle" }
        Method {
            name: "rectangle"
            type: "QGeoRectangle"
            Parameter { name: "center"; type: "QGeoCoordinate" }
            Parameter { name: "width"; type: "double" }
            Parameter { name: "height"; type: "double" }
        }
        Method {
            name: "rectangle"
            type: "QGeoRectangle"
            Parameter { name: "topLeft"; type: "QGeoCoordinate" }
            Parameter { name: "bottomRight"; type: "QGeoCoordinate" }
        }
        Method { name: "circle"; type: "QGeoCircle" }
        Method {
            name: "circle"
            type: "QGeoCircle"
            Parameter { name: "center"; type: "QGeoCoordinate" }
            Parameter { name: "radius"; type: "double" }
        }
        Method {
            name: "circle"
            type: "QGeoCircle"
            Parameter { name: "center"; type: "QGeoCoordinate" }
        }
    }
    Component {
        name: "QDeclarativeGeoAddress"
        prototype: "QObject"
        exports: ["QtPositioning/Address 5.0", "QtPositioning/Address 5.2"]
        exportMetaObjectRevisions: [0, 0]
        Property { name: "address"; type: "QGeoAddress" }
        Property { name: "text"; type: "string" }
        Property { name: "country"; type: "string" }
        Property { name: "countryCode"; type: "string" }
        Property { name: "state"; type: "string" }
        Property { name: "county"; type: "string" }
        Property { name: "city"; type: "string" }
        Property { name: "district"; type: "string" }
        Property { name: "street"; type: "string" }
        Property { name: "postalCode"; type: "string" }
        Property { name: "isTextGenerated"; type: "bool"; isReadonly: true }
    }
    Component {
        name: "QDeclarativeGeoLocation"
        prototype: "QObject"
        exports: ["QtPositioning/Location 5.0", "QtPositioning/Location 5.2"]
        exportMetaObjectRevisions: [0, 0]
        Property { name: "location"; type: "QGeoLocation" }
        Property { name: "address"; type: "QDeclarativeGeoAddress"; isPointer: true }
        Property { name: "coordinate"; type: "QGeoCoordinate" }
        Property { name: "boundingBox"; type: "QGeoRectangle" }
    }
    Component {
        name: "QDeclarativePosition"
        prototype: "QObject"
        exports: ["QtPositioning/Position 5.0", "QtPositioning/Position 5.2"]
        exportMetaObjectRevisions: [0, 0]
        Property { name: "latitudeValid"; type: "bool"; isReadonly: true }
        Property { name: "longitudeValid"; type: "bool"; isReadonly: true }
        Property { name: "altitudeValid"; type: "bool"; isReadonly: true }
        Property { name: "coordinate"; type: "QGeoCoordinate"; isReadonly: true }
        Property { name: "timestamp"; type: "QDateTime"; isReadonly: true }
        Property { name: "speed"; type: "double"; isReadonly: true }
        Property { name: "speedValid"; type: "bool"; isReadonly: true }
        Property { name: "horizontalAccuracy"; type: "double" }
        Property { name: "verticalAccuracy"; type: "double" }
        Property { name: "horizontalAccuracyValid"; type: "bool"; isReadonly: true }
        Property { name: "verticalAccuracyValid"; type: "bool"; isReadonly: true }
    }
    Component {
        name: "QDeclarativePositionSource"
        prototype: "QObject"
        exports: [
            "QtPositioning/PositionSource 5.0",
            "QtPositioning/PositionSource 5.2"
        ]
        exportMetaObjectRevisions: [0, 0]
        Enum {
            name: "PositioningMethod"
            values: {
                "NoPositioningMethods": 0,
                "SatellitePositioningMethods": 255,
                "NonSatellitePositioningMethods": -256,
                "AllPositioningMethods": -1
            }
        }
        Enum {
            name: "PositioningMethods"
            values: {
                "NoPositioningMethods": 0,
                "SatellitePositioningMethods": 255,
                "NonSatellitePositioningMethods": -256,
                "AllPositioningMethods": -1
            }
        }
        Enum {
            name: "SourceError"
            values: {
                "AccessError": 0,
                "ClosedError": 1,
                "UnknownSourceError": 2,
                "NoError": 3,
                "SocketError": 100
            }
        }
        Property { name: "position"; type: "QDeclarativePosition"; isReadonly: true; isPointer: true }
        Property { name: "active"; type: "bool" }
        Property { name: "valid"; type: "bool"; isReadonly: true }
        Property { name: "nmeaSource"; type: "QUrl" }
        Property { name: "updateInterval"; type: "int" }
        Property { name: "supportedPositioningMethods"; type: "PositioningMethods"; isReadonly: true }
        Property { name: "preferredPositioningMethods"; type: "PositioningMethods" }
        Property { name: "sourceError"; type: "SourceError"; isReadonly: true }
        Property { name: "name"; type: "string" }
        Signal { name: "validityChanged" }
        Method { name: "update" }
        Method { name: "start" }
        Method { name: "stop" }
    }
}
