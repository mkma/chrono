#--------------------------------------------------------------
# Additional include paths

INCLUDE_DIRECTORIES(${CH_MATLABINC})

#--------------------------------------------------------------
# List all matlab demos

SET(DEMOS
  demo_matlab
  demo_chfunctions_plot
)

MESSAGE(STATUS "Demo programs for MATLAB module...")

#--------------------------------------------------------------
# Add executables for demos

FOREACH(PROGRAM ${DEMOS})
    MESSAGE(STATUS "...add ${PROGRAM}")

    ADD_EXECUTABLE(${PROGRAM}  "${PROGRAM}.cpp")
    SOURCE_GROUP(""  FILES "${PROGRAM}.cpp")
    SET_TARGET_PROPERTIES(${PROGRAM} PROPERTIES
        FOLDER demos
        COMPILE_FLAGS "${CH_CXX_FLAGS}"
        LINK_FLAGS "${CH_LINKERFLAG_EXE}")
    TARGET_LINK_LIBRARIES(${PROGRAM} ${CH_MATLABLIB} ChronoEngine ChronoEngine_matlab)
    ADD_DEPENDENCIES(${PROGRAM} ChronoEngine ChronoEngine_matlab)
    INSTALL(TARGETS ${PROGRAM} DESTINATION bin)

ENDFOREACH(PROGRAM)
