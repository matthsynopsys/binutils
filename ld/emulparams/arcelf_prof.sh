SCRIPT_NAME=elfarc
TEMPLATE_NAME=generic
EXTRA_EM_FILE=genelf
OUTPUT_FORMAT="elf32-littlearc"
LITTLE_OUTPUT_FORMAT="elf32-littlearc"
BIG_OUTPUT_FORMAT="elf32-bigarc"
# leave room for vector table, 32 vectors * 8 bytes
TEXT_START_ADDR=0x100
MAXPAGESIZE="CONSTANT (MAXPAGESIZE)"
#NONPAGED_TEXT_START_ADDR=0x0
ARCH=arc
MACHINE=
ENTRY=__start
SDATA_START_SYMBOLS='__SDATA_BEGIN__ = .;'
OTHER_READONLY_SECTIONS="
  .__arc_profile_desc ${RELOCATING-0} : { *(.__arc_profile_desc) }
  .__arc_profile_forward ${RELOCATING-0} : { *(.__arc_profile_forward) }
"
OTHER_BSS_SECTIONS="
  .__arc_profile_counters ${RELOCATING-0} : { *(.__arc_profile_counters) }
"
EMBEDDED=yes
