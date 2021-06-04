read_hdl -vhdl booth_multiply.vhd
set_attribute lib_search_path /cad/process/ams_4_10/liberty/c35_3.3V/
set_attribute library {c35_CORELIB_TYP.lib c35_IOLIB_TYP.lib}
elaborate
synthesize -to_generic
synthesize -to_mapped
write_hdl -generic booth_multiply > booth_multiply_synth.v
write_hdl -mapped booth_multiply > booth_multiply_synth_mapped.v
write_sdc booth_multiply > synth_timing.sdc
