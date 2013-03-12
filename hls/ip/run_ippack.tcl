# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2013.1
# Copyright (C) 2013 Xilinx Inc. All rights reserved.
# 
# ==============================================================


## IP Info
set Vendor      "xilinx.com"
set Library     "hls"
set IPName      "sha256_top"
set Version     "1.00.a"
set DisplayName "Sha256_top"
set Description "An IP generated by Vivado HLS"
set Device      "zynq"
set Catalog     "/VIVADO_HLS_IP"

## Variables
set Top "sha256_top"
set VerilogFiles [glob -nocomplain hdl/verilog/*]
set VhdlFiles [glob -nocomplain hdl/vhdl/*]
set SubcoreFiles [glob -nocomplain subcore/*]
set DocumentFiles [glob -nocomplain doc/*]
set MiscFiles ""

## Enter IP directory
cd [file dir [info script]]

## Generate sub cores
set IPs ""
set IPFiles ""
if {$SubcoreFiles != ""} {
    set ipdir "hdl/ip"
    file delete -force $ipdir
    file mkdir $ipdir

    set prj "tmp"
    create_project -force $prj

    foreach ipfile $SubcoreFiles {
        set ipname [file root [file tail $ipfile]]
        set ipname [string range $ipname 0 end-3]

        source $ipfile

        set rtlfiles [glob -nocomplain $prj.srcs/sources_1/ip/$ipname/synth/*]
        foreach rtl $rtlfiles {
            file copy $rtl $ipdir
        }

        set xcifile "$prj.srcs/sources_1/ip/$ipname/$ipname.xci"
        if {![file isfile $xcifile]} {
            continue
        }

        set f [open $xcifile r]
        set s [read $f]
        close $f
        set pat {(?n)componentRef.*vendor="(.+)".*\s*.*library="(.+)".*\s*.*name="(.+)".*\s*.*version="(.+)".*\s*.*}
        if {[regexp $pat $s m vendor library name version]} {
            lappend IPs "$vendor:$library:$name:$version"
        }
    }

    close_project
    
    set IPs [lsort -u $IPs]
    set IPFiles [glob -nocomplain $ipdir/*]
}

## Basic info
set core [ipx::create_core $Vendor $Library $IPName $Version]
set_property display_name $DisplayName $core
set_property description $Description $core
set_property taxonomy $Catalog $core
set_property supported_families [list $Device Pre-Production] $core;

## Add verilog files
if {[llength $VerilogFiles] > 0} {
    # synthesis
    set group [ipx::add_file_group xilinx_verilogsynthesis $core]
    foreach f [concat $VerilogFiles $IPFiles] {
        set current_file [ipx::add_file $f $group]
        if {[file ext $f] == ".dat"} {
            set_property type "mif" $current_file
        }
    }
    set_property model_name $Top $group
    if {$IPs != ""} {
        set_property component_subcores $IPs $group
    }

    # simulation
    set group [ipx::add_file_group xilinx_verilogbehavioralsimulation $core]
    foreach f [concat $VerilogFiles $IPFiles] {
        set current_file [ipx::add_file $f $group]
        if {[file ext $f] == ".dat"} {
            set_property type "mif" $current_file
        }
    }
    set_property model_name $Top $group
    if {$IPs != ""} {
        set_property component_subcores $IPs $group
    }
}

## Add vhdl files
if {[llength $VhdlFiles] > 0} {
    # synthesis
    set group [ipx::add_file_group xilinx_vhdlsynthesis $core]
    foreach f [concat $VhdlFiles $IPFiles] {
        ipx::add_file $f $group
    }
    set_property model_name $Top $group
    if {$IPs != ""} {
        set_property component_subcores $IPs $group
    }

    # simulation
    set group [ipx::add_file_group xilinx_vhdlbehavioralsimulation $core]
    foreach f [concat $VhdlFiles $IPFiles] {
        ipx::add_file $f $group
    }
    set_property model_name $Top $group
    if {$IPs != ""} {
        set_property component_subcores $IPs $group
    }
}

## Add document files
if {[llength $DocumentFiles] > 0} {
    set group [ipx::add_file_group xilinx_documentation $core]
    foreach f $DocumentFiles {
        ipx::add_file $f $group
    }
}

## Add misc files
if {[llength $MiscFiles] > 0} {
    set group [ipx::add_file_group xilinx_miscfiles $core]
    foreach f $MiscFiles {
        ipx::add_file $f $group
    }
}

## Import parameters
ipx::add_model_parameters_from_hdl \
    -top_level_hdl_file hdl/vhdl/$Top.vhd \
    -top_module_name $Top \
    $core

## Import ports
ipx::add_ports_from_hdl \
    -top_level_hdl_file hdl/vhdl/$Top.vhd \
    -top_module_name $Top \
    $core

## Others
ipx::create_xgui_files $core
ipx::save_core $core

## Generate zip
set ZipFile [string map {. _} ${Vendor}_${Library}_${IPName}_${Version}].zip
ipx::archive_core [file join [pwd] $ZipFile] $core
