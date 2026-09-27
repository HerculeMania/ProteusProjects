#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PICkit3OS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PICkit3OS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../main.c ../vectors.c ../traps.c ../micro.c ../powerPK3.c ../usbHid/usb_pk3_hid.c ../usbHid/usb_callbacks.c ../usbHid/usb_descriptors.c ../usbHid/usb_device.c ../usbHid/usb_function_hid.c ../spi_serial_flash.c ../xbarpk3.c ../pk3_scripting.c ../logic_analyzer.s ../icsp.s ../os_ivt_pk3.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/vectors.o ${OBJECTDIR}/_ext/1472/traps.o ${OBJECTDIR}/_ext/1472/micro.o ${OBJECTDIR}/_ext/1472/powerPK3.o ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o ${OBJECTDIR}/_ext/751822194/usb_callbacks.o ${OBJECTDIR}/_ext/751822194/usb_descriptors.o ${OBJECTDIR}/_ext/751822194/usb_device.o ${OBJECTDIR}/_ext/751822194/usb_function_hid.o ${OBJECTDIR}/_ext/1472/spi_serial_flash.o ${OBJECTDIR}/_ext/1472/xbarpk3.o ${OBJECTDIR}/_ext/1472/pk3_scripting.o ${OBJECTDIR}/_ext/1472/logic_analyzer.o ${OBJECTDIR}/_ext/1472/icsp.o ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/vectors.o.d ${OBJECTDIR}/_ext/1472/traps.o.d ${OBJECTDIR}/_ext/1472/micro.o.d ${OBJECTDIR}/_ext/1472/powerPK3.o.d ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o.d ${OBJECTDIR}/_ext/751822194/usb_callbacks.o.d ${OBJECTDIR}/_ext/751822194/usb_descriptors.o.d ${OBJECTDIR}/_ext/751822194/usb_device.o.d ${OBJECTDIR}/_ext/751822194/usb_function_hid.o.d ${OBJECTDIR}/_ext/1472/spi_serial_flash.o.d ${OBJECTDIR}/_ext/1472/xbarpk3.o.d ${OBJECTDIR}/_ext/1472/pk3_scripting.o.d ${OBJECTDIR}/_ext/1472/logic_analyzer.o.d ${OBJECTDIR}/_ext/1472/icsp.o.d ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/vectors.o ${OBJECTDIR}/_ext/1472/traps.o ${OBJECTDIR}/_ext/1472/micro.o ${OBJECTDIR}/_ext/1472/powerPK3.o ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o ${OBJECTDIR}/_ext/751822194/usb_callbacks.o ${OBJECTDIR}/_ext/751822194/usb_descriptors.o ${OBJECTDIR}/_ext/751822194/usb_device.o ${OBJECTDIR}/_ext/751822194/usb_function_hid.o ${OBJECTDIR}/_ext/1472/spi_serial_flash.o ${OBJECTDIR}/_ext/1472/xbarpk3.o ${OBJECTDIR}/_ext/1472/pk3_scripting.o ${OBJECTDIR}/_ext/1472/logic_analyzer.o ${OBJECTDIR}/_ext/1472/icsp.o ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o

# Source Files
SOURCEFILES=../main.c ../vectors.c ../traps.c ../micro.c ../powerPK3.c ../usbHid/usb_pk3_hid.c ../usbHid/usb_callbacks.c ../usbHid/usb_descriptors.c ../usbHid/usb_device.c ../usbHid/usb_function_hid.c ../spi_serial_flash.c ../xbarpk3.c ../pk3_scripting.c ../logic_analyzer.s ../icsp.s ../os_ivt_pk3.s



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PICkit3OS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB106
MP_LINKER_FILE_OPTION=,--script="..\os_linker24f.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/flags/default/312f2314f08427c5c23d477f3b5f297642255c1c .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/vectors.o: ../vectors.c  .generated_files/flags/default/85d5c337d91d8dbed05d893f3acdcc4ab149d417 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/vectors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../vectors.c  -o ${OBJECTDIR}/_ext/1472/vectors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/vectors.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/traps.o: ../traps.c  .generated_files/flags/default/adc5e219019bd287848a858026549479fed914e2 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../traps.c  -o ${OBJECTDIR}/_ext/1472/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/traps.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/micro.o: ../micro.c  .generated_files/flags/default/f7bbf647240a7799ca3931f7c17afadd49c51acf .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/micro.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/micro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../micro.c  -o ${OBJECTDIR}/_ext/1472/micro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/micro.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/powerPK3.o: ../powerPK3.c  .generated_files/flags/default/ddc6376f87ce9a23c9b21a11ac5ee78b90d7e8c3 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/powerPK3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/powerPK3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../powerPK3.c  -o ${OBJECTDIR}/_ext/1472/powerPK3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/powerPK3.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o: ../usbHid/usb_pk3_hid.c  .generated_files/flags/default/6a0e1019b98444087b78d67063ddb46f54b35a75 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_pk3_hid.c  -o ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_callbacks.o: ../usbHid/usb_callbacks.c  .generated_files/flags/default/bb2222677d3098d9492e514fd9505347093647d5 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_callbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_callbacks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_callbacks.c  -o ${OBJECTDIR}/_ext/751822194/usb_callbacks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_callbacks.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_descriptors.o: ../usbHid/usb_descriptors.c  .generated_files/flags/default/38fc9fcb0a1a33bb2d726288c831dc5c9f6724df .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_descriptors.c  -o ${OBJECTDIR}/_ext/751822194/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_descriptors.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_device.o: ../usbHid/usb_device.c  .generated_files/flags/default/3173c765c66664394e58efb1283b6a4a9b85d64a .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_device.c  -o ${OBJECTDIR}/_ext/751822194/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_device.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_function_hid.o: ../usbHid/usb_function_hid.c  .generated_files/flags/default/4f4fe54f0016dea589b9971b7f3c5af8cac5147b .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_function_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_function_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_function_hid.c  -o ${OBJECTDIR}/_ext/751822194/usb_function_hid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_function_hid.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/spi_serial_flash.o: ../spi_serial_flash.c  .generated_files/flags/default/58226ea95bdb9c469a7377f843ba1323bd52318a .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/spi_serial_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/spi_serial_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../spi_serial_flash.c  -o ${OBJECTDIR}/_ext/1472/spi_serial_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/spi_serial_flash.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/xbarpk3.o: ../xbarpk3.c  .generated_files/flags/default/af971cbc37184795e23fe630210626ba30b1101a .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/xbarpk3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/xbarpk3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../xbarpk3.c  -o ${OBJECTDIR}/_ext/1472/xbarpk3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/xbarpk3.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/pk3_scripting.o: ../pk3_scripting.c  .generated_files/flags/default/ff0dcf3d7c3cd0d3826ee4c440b0997ad0cf22de .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pk3_scripting.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pk3_scripting.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pk3_scripting.c  -o ${OBJECTDIR}/_ext/1472/pk3_scripting.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/pk3_scripting.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/flags/default/8448ced4902e7777cbd69e68a78e1700a65f298 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/vectors.o: ../vectors.c  .generated_files/flags/default/40d9312672ee8df95d468aed915902d14b7f6a42 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/vectors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../vectors.c  -o ${OBJECTDIR}/_ext/1472/vectors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/vectors.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/traps.o: ../traps.c  .generated_files/flags/default/f1b90a0b407d9fa8d2141bfb6ecf6ff09d19a39a .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../traps.c  -o ${OBJECTDIR}/_ext/1472/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/traps.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/micro.o: ../micro.c  .generated_files/flags/default/9cb5f1254cf9a7066a404972d6adf6f7837d7c67 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/micro.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/micro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../micro.c  -o ${OBJECTDIR}/_ext/1472/micro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/micro.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/powerPK3.o: ../powerPK3.c  .generated_files/flags/default/3b8fe7112911a0d4aa71b5409232bafb7b3d4383 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/powerPK3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/powerPK3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../powerPK3.c  -o ${OBJECTDIR}/_ext/1472/powerPK3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/powerPK3.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o: ../usbHid/usb_pk3_hid.c  .generated_files/flags/default/f1ee48a960aa02ff9eec9de18a2558654b19999 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_pk3_hid.c  -o ${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_pk3_hid.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_callbacks.o: ../usbHid/usb_callbacks.c  .generated_files/flags/default/73f46df2d65f694909a5028e7ac5a834f2676c77 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_callbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_callbacks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_callbacks.c  -o ${OBJECTDIR}/_ext/751822194/usb_callbacks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_callbacks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_descriptors.o: ../usbHid/usb_descriptors.c  .generated_files/flags/default/b87a3e559f7c4f693ef2ca2ef62a9bce6ff92a1d .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_descriptors.c  -o ${OBJECTDIR}/_ext/751822194/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_descriptors.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_device.o: ../usbHid/usb_device.c  .generated_files/flags/default/156ec34af732d69d506fad83bbc4c770182e6222 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_device.c  -o ${OBJECTDIR}/_ext/751822194/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_device.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/751822194/usb_function_hid.o: ../usbHid/usb_function_hid.c  .generated_files/flags/default/33c458f7199be87871d81167a8668e192e8cb40c .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/751822194" 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_function_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/751822194/usb_function_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../usbHid/usb_function_hid.c  -o ${OBJECTDIR}/_ext/751822194/usb_function_hid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/751822194/usb_function_hid.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/spi_serial_flash.o: ../spi_serial_flash.c  .generated_files/flags/default/f427ba43235bc3b215db52dc33498b885f1c0009 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/spi_serial_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/spi_serial_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../spi_serial_flash.c  -o ${OBJECTDIR}/_ext/1472/spi_serial_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/spi_serial_flash.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/xbarpk3.o: ../xbarpk3.c  .generated_files/flags/default/b943e7d959bcbc6f4bd987547018ca0c69ab8523 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/xbarpk3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/xbarpk3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../xbarpk3.c  -o ${OBJECTDIR}/_ext/1472/xbarpk3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/xbarpk3.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/pk3_scripting.o: ../pk3_scripting.c  .generated_files/flags/default/d315e0c00a1264860fdd17d5ea615d1d6a94d63f .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pk3_scripting.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pk3_scripting.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pk3_scripting.c  -o ${OBJECTDIR}/_ext/1472/pk3_scripting.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/pk3_scripting.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../usbHid" -I"." -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/logic_analyzer.o: ../logic_analyzer.s  .generated_files/flags/default/4a1fc018c28869f795afd8e51aaa23345680b908 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/logic_analyzer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/logic_analyzer.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../logic_analyzer.s  -o ${OBJECTDIR}/_ext/1472/logic_analyzer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"../include" -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/logic_analyzer.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/icsp.o: ../icsp.s  .generated_files/flags/default/26c3d248b6f4f66e0a304cf615ee9b1ceab5b2ae .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/icsp.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../icsp.s  -o ${OBJECTDIR}/_ext/1472/icsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"../include" -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/icsp.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/os_ivt_pk3.o: ../os_ivt_pk3.s  .generated_files/flags/default/b5872361bfec3d96cceb6cafb4688b6497aedea6 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../os_ivt_pk3.s  -o ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"../include" -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/os_ivt_pk3.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1472/logic_analyzer.o: ../logic_analyzer.s  .generated_files/flags/default/dd92056534bcacc27c9e95cf00a5210c5e072162 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/logic_analyzer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/logic_analyzer.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../logic_analyzer.s  -o ${OBJECTDIR}/_ext/1472/logic_analyzer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"../include" -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/logic_analyzer.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/icsp.o: ../icsp.s  .generated_files/flags/default/a08a108595b946abb738db859fa7ba44e55eee60 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/icsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/icsp.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../icsp.s  -o ${OBJECTDIR}/_ext/1472/icsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"../include" -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/icsp.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/os_ivt_pk3.o: ../os_ivt_pk3.s  .generated_files/flags/default/ef5835cc6c6e99c2a7bebe2443a198df3648a9c9 .generated_files/flags/default/992758f4a159518ac628d04c5556eae1680d80ab
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../os_ivt_pk3.s  -o ${OBJECTDIR}/_ext/1472/os_ivt_pk3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"../include" -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1472/os_ivt_pk3.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PICkit3OS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../os_linker24f.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PICkit3OS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="..",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/PICkit3OS.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PICkit3OS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../os_linker24f.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PICkit3OS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="..",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/PICkit3OS.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PICkit3OS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
