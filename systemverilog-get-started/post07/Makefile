SHELL           := /bin/bash

VCS             := vcs
VCS_FLAGS       := -full64 -line -Mupdate +vc -sverilog +v2k \
                   -override_timescale=1ns/100ps \
                   +warn=noSTASKW_RMIEAFL\
                   -debug_access+pp +notimingcheck

IVERILOG        := iverilog
IVERILOG_OUT    := mux
IVERILOG_FLAGS  := -g2012 -o $(IVERILOG_OUT)
VVP             := vvp

HIGHLIGHT       := |& grep --color -iP "\^|Warning|Error|Offending|Lint|"

SV_FILES        := arbiter.sv
TB_FILES        := arbiter_tb.sv

dont_rm         := Makefile *.sv

# VCS simulation
.PHONY: sim
sim:
	$(VCS) $(VCS_FLAGS) $(TB_FILES) $(SV_FILES) -R ${HIGHLIGHT}


# Icarus Verilog simulation
$(IVERILOG_OUT): Makefile $(SV_FILES) $(TB_FILES)
	$(IVERILOG) $(IVERILOG_FLAGS) $(TB_FILES) $(SV_FILES)

.PHONY: isim
isim: $(IVERILOG_OUT)
	$(VVP) $(IVERILOG_OUT) ${HIGHLIGHT}


# Clean
.PHONY: clean
clean:
	rm -rf `ls $(foreach i,$(dont_rm),$(addprefix -I,$i))`
