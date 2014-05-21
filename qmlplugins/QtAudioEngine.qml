import QtQuick.tooling 1.1

// This file describes the plugin-supplied types contained in the library.
// It is used for QML tooling purposes only.
//
// This file was auto-generated with the command 'qmlplugindump -notrelocatable QtAudioEngine 1.0'.

Module {
    Component {
        name: "QDeclarativeAttenuationModel"
        prototype: "QObject"
        Property { name: "name"; type: "string" }
    }
    Component {
        name: "QDeclarativeAttenuationModelInverse"
        prototype: "QDeclarativeAttenuationModel"
        exports: ["QtAudioEngine/AttenuationModelInverse 1.0"]
        exportMetaObjectRevisions: [0]
        Property { name: "start"; type: "double" }
        Property { name: "end"; type: "double" }
        Property { name: "rolloff"; type: "double" }
    }
    Component {
        name: "QDeclarativeAttenuationModelLinear"
        prototype: "QDeclarativeAttenuationModel"
        exports: ["QtAudioEngine/AttenuationModelLinear 1.0"]
        exportMetaObjectRevisions: [0]
        Property { name: "start"; type: "double" }
        Property { name: "end"; type: "double" }
    }
    Component {
        name: "QDeclarativeAudioCategory"
        prototype: "QObject"
        exports: ["QtAudioEngine/AudioCategory 1.0"]
        exportMetaObjectRevisions: [0]
        Property { name: "volume"; type: "double" }
        Property { name: "name"; type: "string" }
        Signal {
            name: "volumeChanged"
            Parameter { name: "newVolume"; type: "double" }
        }
        Signal { name: "stopped" }
        Signal { name: "paused" }
        Signal { name: "resumed" }
        Method { name: "stop" }
        Method { name: "pause" }
        Method { name: "resume" }
    }
    Component {
        name: "QDeclarativeAudioEngine"
        defaultProperty: "bank"
        prototype: "QObject"
        exports: ["QtAudioEngine/AudioEngine 1.0"]
        exportMetaObjectRevisions: [0]
        Property { name: "bank"; type: "QObject"; isList: true; isReadonly: true }
        Property { name: "categories"; type: "QObject"; isReadonly: true; isPointer: true }
        Property { name: "samples"; type: "QObject"; isReadonly: true; isPointer: true }
        Property { name: "sounds"; type: "QObject"; isReadonly: true; isPointer: true }
        Property { name: "loading"; type: "bool"; isReadonly: true }
        Property { name: "liveInstances"; type: "int"; isReadonly: true }
        Property {
            name: "listener"
            type: "QDeclarativeAudioListener"
            isReadonly: true
            isPointer: true
        }
        Property { name: "dopplerFactor"; type: "double" }
        Property { name: "speedOfSound"; type: "double" }
        Signal { name: "ready" }
        Signal { name: "liveInstanceCountChanged" }
        Signal { name: "isLoadingChanged" }
        Signal { name: "finishedLoading" }
    }
    Component {
        name: "QDeclarativeAudioListener"
        prototype: "QObject"
        exports: ["QtAudioEngine/AudioListener 1.0"]
        exportMetaObjectRevisions: [0]
        Property { name: "engine"; type: "QDeclarativeAudioEngine"; isPointer: true }
        Property { name: "position"; type: "QVector3D" }
        Property { name: "direction"; type: "QVector3D" }
        Property { name: "velocity"; type: "QVector3D" }
        Property { name: "up"; type: "QVector3D" }
        Property { name: "gain"; type: "double" }
    }
    Component {
        name: "QDeclarativeAudioSample"
        prototype: "QObject"
        exports: ["QtAudioEngine/AudioSample 1.0"]
        exportMetaObjectRevisions: [0]
        Property { name: "name"; type: "string" }
        Property { name: "source"; type: "QUrl" }
        Property { name: "preloaded"; type: "bool" }
        Property { name: "streaming"; type: "bool" }
        Property { name: "loaded"; type: "bool"; isReadonly: true }
        Method { name: "load" }
    }
    Component {
        name: "QDeclarativePlayVariation"
        prototype: "QObject"
        exports: ["QtAudioEngine/PlayVariation 1.0"]
        exportMetaObjectRevisions: [0]
        Property { name: "sample"; type: "string" }
        Property { name: "looping"; type: "bool" }
        Property { name: "maxGain"; type: "double" }
        Property { name: "minGain"; type: "double" }
        Property { name: "maxPitch"; type: "double" }
        Property { name: "minPitch"; type: "double" }
    }
    Component {
        name: "QDeclarativeSound"
        defaultProperty: "playVariationlist"
        prototype: "QObject"
        exports: ["QtAudioEngine/Sound 1.0"]
        exportMetaObjectRevisions: [0]
        Enum {
            name: "PlayType"
            values: {
                "Random": 0,
                "Sequential": 1
            }
        }
        Property { name: "name"; type: "string" }
        Property { name: "playType"; type: "PlayType" }
        Property { name: "category"; type: "string" }
        Property { name: "cone"; type: "QDeclarativeSoundCone"; isReadonly: true; isPointer: true }
        Property { name: "attenuationModel"; type: "string" }
        Property {
            name: "playVariationlist"
            type: "QDeclarativePlayVariation"
            isList: true
            isReadonly: true
        }
        Method { name: "play" }
        Method {
            name: "play"
            Parameter { name: "gain"; type: "double" }
        }
        Method {
            name: "play"
            Parameter { name: "gain"; type: "double" }
            Parameter { name: "pitch"; type: "double" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
            Parameter { name: "velocity"; type: "QVector3D" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
            Parameter { name: "velocity"; type: "QVector3D" }
            Parameter { name: "direction"; type: "QVector3D" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
            Parameter { name: "gain"; type: "double" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
            Parameter { name: "velocity"; type: "QVector3D" }
            Parameter { name: "gain"; type: "double" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
            Parameter { name: "velocity"; type: "QVector3D" }
            Parameter { name: "direction"; type: "QVector3D" }
            Parameter { name: "gain"; type: "double" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
            Parameter { name: "gain"; type: "double" }
            Parameter { name: "pitch"; type: "double" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
            Parameter { name: "velocity"; type: "QVector3D" }
            Parameter { name: "gain"; type: "double" }
            Parameter { name: "pitch"; type: "double" }
        }
        Method {
            name: "play"
            Parameter { name: "position"; type: "QVector3D" }
            Parameter { name: "velocity"; type: "QVector3D" }
            Parameter { name: "direction"; type: "QVector3D" }
            Parameter { name: "gain"; type: "double" }
            Parameter { name: "pitch"; type: "double" }
        }
        Method { name: "newInstance"; type: "QDeclarativeSoundInstance*" }
    }
    Component {
        name: "QDeclarativeSoundCone"
        prototype: "QObject"
        Property { name: "innerAngle"; type: "double" }
        Property { name: "outerAngle"; type: "double" }
        Property { name: "outerGain"; type: "double" }
    }
    Component {
        name: "QDeclarativeSoundInstance"
        prototype: "QObject"
        exports: ["QtAudioEngine/SoundInstance 1.0"]
        exportMetaObjectRevisions: [0]
        Enum {
            name: "State"
            values: {
                "StoppedState": 0,
                "PlayingState": 1,
                "PausedState": 2
            }
        }
        Property { name: "engine"; type: "QDeclarativeAudioEngine"; isPointer: true }
        Property { name: "sound"; type: "string" }
        Property { name: "state"; type: "State"; isReadonly: true }
        Property { name: "position"; type: "QVector3D" }
        Property { name: "direction"; type: "QVector3D" }
        Property { name: "velocity"; type: "QVector3D" }
        Property { name: "gain"; type: "double" }
        Property { name: "pitch"; type: "double" }
        Method { name: "play" }
        Method { name: "stop" }
        Method { name: "pause" }
        Method {
            name: "updatePosition"
            Parameter { name: "deltaTime"; type: "double" }
        }
    }
    Component {
        name: "QQmlPropertyMap"
        prototype: "QObject"
        Signal {
            name: "valueChanged"
            Parameter { name: "key"; type: "string" }
            Parameter { name: "value"; type: "QVariant" }
        }
        Method { name: "keys"; type: "QStringList" }
    }
}
