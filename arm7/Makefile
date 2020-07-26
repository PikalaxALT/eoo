COMPARE ?= 1

# Back up compiler vars for the sake of building tools
HOSTCC = $(CC)
HOSTCXX = $(CXX)
HOSTCFLAGS = $(CFLAGS)
HOSTCXXFLAGS = $(CXXFLAGS)
HOST_VARS := CC=$(HOSTCC) CXX=$(HOSTCXX) CFLAGS='$(HOSTCFLAGS)' CXXFLAGS='$(HOSTCXXFLAGS)'

# Try to include devkitarm if installed
TOOLCHAIN := $(DEVKITARM)

ifneq (,$(wildcard $(TOOLCHAIN)/base_tools))
include $(TOOLCHAIN)/base_tools
endif


# If you are using WSL, it is recommended you build with NOWINE=1.
WSLENV ?= no
ifeq ($(WSLENV),)
NOWINE = 1
else
NOWINE = 0
endif

ifeq ($(OS),Windows_NT)
EXE := .exe
WINE :=
else
EXE :=
WINE := wine
endif

ifeq ($(NOWINE),1)
WINE :=
endif

## Target and sources

BUILD_DIR   := build
TARGET      := arm7
ROM         := $(BUILD_DIR)/$(TARGET).sbin
ELF         := $(BUILD_DIR)/$(TARGET).nef
LD_SCRIPT   := $(TARGET).lcf
LD_SPEC     := $(TARGET).lsf
LD_TEMPLATE := ARM7-TS.lcf.template

OVERLAYS :=

# Directories containing source files
SRC_DIRS := src
ASM_DIRS := asm

# sorting wildcards required for versions of make >= 3.8.2 and < 4.3 for consistent builds
C_FILES := $(foreach dir,$(SRC_DIRS),$(sort $(wildcard $(dir)/*.c)))
S_FILES := $(foreach dir,$(ASM_DIRS),$(sort $(wildcard $(dir)/*.s)))

# Object files
C_OBJS = $(C_FILES:%.c=$(BUILD_DIR)/%.o)
S_OBJS = $(S_FILES:%.s=$(BUILD_DIR)/%.o)
O_FILES := $(C_OBJS) $(S_OBJS)

## Compiler Options

MWCCVERSION = 2.0/sp1

CROSS   := arm-none-eabi-

TOOLS_DIR = ../tools
MWCCARM  = $(TOOLS_DIR)/mwccarm/$(MWCCVERSION)/mwccarm.exe
# Argh... due to EABI version shenanigans, we can't use GNU LD to link together
# MWCC built objects and GNU built ones. mwldarm, however, doesn't care, so we
# have to use mwldarm for now.
# TODO: Is there a hack workaround to let us go back to GNU LD? Ideally, the
# only dependency should be MWCCARM.
MWLDARM  = $(TOOLS_DIR)/mwccarm/$(MWCCVERSION)/mwldarm.exe
MWASMARM = $(TOOLS_DIR)/mwccarm/$(MWCCVERSION)/mwasmarm.exe
SCANINC = $(TOOLS_DIR)/scaninc/scaninc$(EXE)
MAKELCF = $(WINE) $(TOOLS_DIR)/bin/makelcf.exe

AS      = $(WINE) $(MWASMARM)
CC      = $(WINE) $(MWCCARM)
CPP     := cpp -P
LD      = $(WINE) $(MWLDARM)
AR      := $(CROSS)ar
OBJDUMP := $(CROSS)objdump
OBJCOPY := $(CROSS)objcopy

# ./tools/mwccarm/2.0/base/mwasmarm.exe -proc arm5te asm/arm9_thumb.s -o arm9.o
ASFLAGS = -proc arm4t
CFLAGS = -O4,p -gccext,on -proc arm7tdmi -fp soft -lang c99 -Cpp_exceptions off -i include -ir lib/include -W all
LDFLAGS = -map -nodead -w off -proc v4t -interworking -map -symtab -m _start

# DS TOOLS
SHA1SUM   = sha1sum
GFX       = $(TOOLS_DIR)/nitrogfx/nitrogfx$(EXE)
NTRCOMP   = $(WINE) $(TOOLS_DIR)/bin/ntrcomp.exe

TOOLDIRS = $(filter-out $(TOOLS_DIR)/mwccarm $(TOOLS_DIR)/bin,$(wildcard $(TOOLS_DIR)/*))
TOOLBASE = $(TOOLDIRS:$(TOOLS_DIR)/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),$(TOOLS_DIR)/$(tool)/$(tool)$(EXE))

export LM_LICENSE_FILE := $(TOOLS_DIR)/mwccarm/license.dat
export MWCIncludes := lib/include
export MWLibraries := lib

ALL_DIRS := $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

## Targets

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

# Build tools when building the rom
# Disable dependency scanning for clean/tidy/tools
ifeq (,$(filter-out all,$(MAKECMDGOALS)))
$(call infoshell, $(MAKE) tools)
else
NODEP := 1
endif

.PRECIOUS: $(ROM)
.SECONDARY:
.DELETE_ON_ERROR:
.SECONDEXPANSION:
.PHONY: all clean mostlyclean tidy tools clean-tools $(TOOLDIRS)

MAKEFLAGS += --no-print-directory

all: $(ROM)
ifeq ($(COMPARE),1)
	@$(SHA1SUM) -c $(TARGET).sha1
endif

clean: mostlyclean clean-tools
mostlyclean: tidy

tidy:
	$(RM) -r $(BUILD_DIR)

tools: $(TOOLDIRS)

$(TOOLDIRS):
	@$(HOST_VARS) $(MAKE) -C $@

clean-tools:
	$(foreach tool,$(TOOLDIRS),$(MAKE) clean -C $(tool);)

## Actual files

ifeq (,$(NODEP))
$(BUILD_DIR)/%.o: dep = $(shell $(SCANINC) -I include -I lib/include $(filter $*.c,$(C_FILES)) $(filter $*.s,$(S_FILES)))
else
$(BUILD_DIR)/%.o: dep :=
endif

$(C_OBJS): $(BUILD_DIR)/%.o: %.c $$(dep)
	$(CC) -c $(CFLAGS) -o $@ $<

$(S_OBJS): $(BUILD_DIR)/%.o: %.s $$(dep)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SPEC) $(LD_TEMPLATE)
	$(MAKELCF) $< $(LD_TEMPLATE) $@

$(ROM): $(O_FILES) $(BUILD_DIR)/$(LD_SCRIPT) $(BIN_FILES)
	$(LD) $(LDFLAGS) $(BUILD_DIR)/$(LD_SCRIPT) -o $(ELF) $(O_FILES) $(BIN_FILES)
	$(OBJCOPY) --update-section arm7=$@ -j arm7 $(foreach ov,$(OVERLAYS),--update-section $(ov)=$(BUILD_DIR)/$(ov).sbin -j $(ov)) $(ELF) 2>/dev/null

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

## Debug print

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
