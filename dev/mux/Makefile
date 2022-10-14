VCS             :=  vcs

VCS_FLAGS       :=  -full64 -line -Mupdate +vc -sverilog +v2k \
					-override_timescale=1ns/100ps \
					+warn=noSTASKW_RMIEAFL\
					-debug_access+pp +notimingcheck

HIGHLIGHT = |& grep --color -iP "\^|Warning|Error|Offending|Lint|"

SV_FILES        :=  mux_2to1.sv mux_2to1_proc1.sv mux_2to1_proc2.sv
TB_FILES        :=  mux_2to1_tb.sv

dont_rm         := Makefile *.sv

sim:
	$(VCS) $(VCS_FLAGS) $(TB_FILES) $(SV_FILES) -R ${HIGHLIGHT}

clean:
	rm -rf `ls $(foreach i,$(dont_rm),$(addprefix -I,$i))`