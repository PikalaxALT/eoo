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

BUILD_DIR := build
TARGET    := eoo
ROM       := $(BUILD_DIR)/$(TARGET).nds

## Tools

TOOLS_DIR = tools
SHA1SUM   = sha1sum
MAKEROM   = $(WINE) $(TOOLS_DIR)/bin/makerom.exe

TOOLDIRS = $(filter-out $(TOOLS_DIR)/mwccarm $(TOOLS_DIR)/bin,$(wildcard $(TOOLS_DIR)/*))
TOOLBASE = $(TOOLDIRS:$(TOOLS_DIR)/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),$(TOOLS_DIR)/$(tool)/$(tool)$(EXE))

ALL_DIRS := $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

## Targets

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

# Build tools when building the rom
# Disable dependency scanning for clean/tidy/tools
ifeq (,$(filter-out all,$(MAKECMDGOALS)))
$(call infoshell, $(HOST_VARS) $(MAKE) tools)
else
NODEP := 1
endif

.SECONDARY:
.DELETE_ON_ERROR:
.SECONDEXPANSION:
.PHONY: all $(ROM) clean mostlyclean tidy tools filesystem clean-tools $(TOOLDIRS) arm9 arm7

MAKEFLAGS += --no-print-directory

all: $(ROM)
ifeq ($(COMPARE),1)
	@$(SHA1SUM) -c $(TARGET).sha1
endif

clean: mostlyclean clean-tools
	$(MAKE) -C arm9 clean
	$(MAKE) -C arm7 clean

mostlyclean: tidy
	$(MAKE) -C arm9 mostlyclean
	$(MAKE) -C arm7 mostlyclean

tidy:
	$(MAKE) -C arm9 tidy
	$(MAKE) -C arm7 tidy
	$(RM) -r $(BUILD_DIR)

tools: $(TOOLDIRS)

$(TOOLDIRS):
	@$(HOST_VARS) $(MAKE) -C $@

clean-tools:
	$(foreach tool,$(TOOLDIRS),$(MAKE) clean -C $(tool);)

arm9:
	$(MAKE) -C arm9 $(MAKE_VARS)

arm7:
	$(MAKE) -C arm7 $(MAKE_VARS)

filesystem: ;

$(ROM): rom.rsf arm9 arm7 filesystem tools/bin/rom_header.template.sbin
	$(MAKEROM) $< $@

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

## Debug print

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
