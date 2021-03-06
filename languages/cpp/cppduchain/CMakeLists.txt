########### next target ###############

add_subdirectory(tests)

include_directories(
    ${cpp_SOURCE_DIR}
    ${cpp_BINARY_DIR}
)

########### next target ###############

set(kdevcppduchain_LIB_SRCS
    adlhelper.cpp
    sourcemanipulation.cpp
    missingdeclarationtype.cpp
    missingdeclarationproblem.cpp
    missingdeclarationassistant.cpp
    contextbuilder.cpp
    declarationbuilder.cpp
    typebuilder.cpp
    usebuilder.cpp
    cppeditorintegrator.cpp
    dumpchain.cpp
    cpptypes.cpp
    ptrtomembertype.cpp
    dumptypes.cpp
    environmentmanager.cpp
    cppduchain.cpp
    templateparameterdeclaration.cpp
    qtfunctiondeclaration.cpp
    cppducontext.cpp
    typeutils.cpp
    templatedeclaration.cpp
    cpppreprocessenvironment.cpp
    expressionparser.cpp
    expressionvisitor.cpp
    typeconversion.cpp
    overloadresolution.cpp
    templateresolver.cpp
    viablefunctions.cpp
    overloadresolutionhelper.cpp
    name_visitor.cpp
    type_visitor.cpp
    builtinoperators.cpp
    expressionevaluationresult.cpp
    usedecoratorvisitor.cpp
    navigation/navigationwidget.cpp
    navigation/declarationnavigationcontext.cpp
    navigation/includenavigationcontext.cpp
    navigation/macronavigationcontext.cpp

    controlflowgraphbuilder.cpp
)

# Note: This library doesn't follow API/ABI/BC rules and shouldn't have a SOVERSION
#       Its only purpose is to support the plugin without needing to add all source files
#       to the plugin target

add_library(kdevcppduchain SHARED ${kdevcppduchain_LIB_SRCS})
target_link_libraries(kdevcppduchain LINK_PRIVATE
		KDev::Language
		KDev::Interfaces
		KDev::Util
		kdevcppparser
		KF5::TextEditor
		kdevcpprpp)
generate_export_header(kdevcppduchain EXPORT_FILE_NAME cppduchainexport.h)
install(TARGETS kdevcppduchain ${INSTALL_TARGETS_DEFAULT_ARGS})

########### install files ###############

# install(FILES
#     expressionparser.h
#     expressionvisitor.h
#     typeconversion.h
#     DESTINATION ${INCLUDE_INSTALL_DIR}/kdevelop/cpp/expressionparser
#
# )
