proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -id {Common 17-356}  -string {{ERROR: [Common 17-356] Failed to install all user apps.}}  -suppress 

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_param gui.test TreeTableDev
  debug::add_scope template.lib 1
  open_checkpoint TopLevel_routed.dcp
  set_property webtalk.parent_dir C:/Users/owner/Downloads/sfgd_vivadoFPGA/EASIROC_FPGA/EASIROC_firmware_NC150923_viva14.3_work2007/project/project.cache/wt [current_project]
  write_bitstream -force TopLevel.bit 
  if { [file exists C:/Users/owner/Downloads/sfgd_vivadoFPGA/EASIROC_FPGA/EASIROC_firmware_NC150923_viva14.3_work2007/project/project.runs/synth_1/TopLevel.hwdef] } {
    catch { write_sysdef -hwdef C:/Users/owner/Downloads/sfgd_vivadoFPGA/EASIROC_FPGA/EASIROC_firmware_NC150923_viva14.3_work2007/project/project.runs/synth_1/TopLevel.hwdef -bitfile TopLevel.bit -meminfo TopLevel.mmi -file TopLevel.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

