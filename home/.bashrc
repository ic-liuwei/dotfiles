# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias ex="cd /usr/example"
#############################################################################
#Synopsys
export DVE_HOME=/usr/Synopsys/vcs/Q-2020.03-SP2-7
export VCS_HOME=/usr/Synopsys/vcs/Q-2020.03-SP2-7
export LD_LIBRARY_PATH=/usr/Synopsys/verdi/R-2020.12-SP1/share/PLI/VCS/LINUX64:$LD_LIBRARY_PATH
export VERDI_HOME=/usr/Synopsys/verdi/R-2020.12-SP1
export SCL_HOME=/usr/Synopsys/scl/2021.03
export DC_HOME=/usr/Synopsys/syn/R-2020.09-SP4
export PATH=$PATH:/usr/Synopsys/syn/R-2020.09-SP4/bin


## PT
export PT_HOME=/usr/Synopsys/prime/R-2020.09-SP4
export PATH=$PATH:/usr/Synopsys/prime/R-2020.09-SP4/bin
alias pt="primetime"

## Spyglass
export SPYGLASS_HOME=/usr/Synopsys/spyglass/Q-2020.03-SP2-3/SPYGLASS_HOME
export PATH=$PATH:$SPYGLASS_HOME/bin
export SPYGLASS_DC_PATH=/usr/Synopsys/syn/R-2020.09-SP4

## Formality
export PATH=$PATH:/usr/Synopsys/fm/R-2020.09/bin
export FM_HOME=/usr/Synopsys/fm/R-2020.09
alias fm="formality"

## Hspice
export PATH="/usr/Synopsys/hspice/S-2021.09/hspice/bin:"$PATH

## Waveview
export PATH="/usr/Synopsys/wv/S-2021.09/bin:"$PATH

## icc2
export PATH="/usr/Synopsys/icc2/R-2020.09-SP1/bin:"$PATH
alias icc="icc2_shell -gui"

#dve
#PATH=$PATH:$VCS_HOME/gui/dve/bin
#alias dve="dve -full64"

#VERDI
PATH=$PATH:$VERDI_HOME/bin
alias verdi="verdi -full64"

#VCS
PATH=$PATH:$VCS_HOME/bin
alias vcs="vcs -full64"

#DC
alias dc="dc_shell"
alias dv="design_vision"


#coretools
export PATH="/usr/Synopsys/coretools/R-2020.12-SP4/bin:"$PATH
alias ct="coreConsultant"


## fpga
export PATH="/usr/Synopsys/fpga/Q-2020.03/bin:"$PATH
alias fpga="synplify_premier"

## iden
export PATH="/usr/Synopsys/identify/Q-2020.03/bin:"$PATH
alias identify="identify_debugger"


#scl
PATH=$PATH:$SCL_HOME/linux64/bin
export VCS_ARCH_OVERRIDE=linux

#LICENCE
export SNPSLMD_LICENSE_FILE=27000@localhost.localdomain
alias lmg="/usr/Synopsys/scl/2021.03/linux64/bin/lmgrd -c /usr/Synopsys/scl/2021.03/admin/license/Synopsys.dat"

export LM_LICENSE_FILE="$LM_LICENSE_FILE:/usr/Synopsys/scl/2021.03/admin/license/Synopsys.dat"

###########################################################################

#export PATH="/usr/mentor/questasim/linux_x86_64":$PATH
#export PATH="/usr/mentor/questasim/RUVM_2021.2":$PATH
#export LM_LICENSE_FILE="/usr/mentor/lic/license.dat":$LM_LICENSE_FILE


###########################################################################
## Cadence
export INCISIVDIR=/usr/Cadence/xrun
export VRST_HOME=/usr/Cadence/xrun
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/Synopsys/verdi/R-2020.12-SP1/share/PLI/IUS/linux64/
export CDS_AUTO_64BIT=ALL_
export CDS_LIC_FILE=/usr/Cadence/cdslic/license.dat
##export CDS_LIC_FILE=27005@ocalhost.localdomain
export LD_LIBRARY_PATH0=${LD_LIBRARY_PATH0}:/usr/Cadence/xrun/tools.lnx86/lib

export SPECMAN_HOME=$INCISIVDIR/components/sn
export SPECMAN_DIR=$SPECMAN_HOME/

export PATH="$PATH:/usr/Cadence/xrun/tools/bin"

export PATH="$PATH:/usr/Cadence/xrun/bin"
export PATH="$PATH:/usr/Cadence/xrun/tools.lnx86/bin"
export PATH="$PATH:/usr/Cadence/xrun/tools.lnx86/dfII/bin"


alias lmgc='lmgrd -c /usr/Cadence/cdslic/license.dat'


## indago
export INDAGO_ROOT="/usr/Cadence/indago"
export PATH="$PATH:$INDAGO_ROOT/tools.lnx86/bin"
##genus
#export PATH="$PATH:/usr/Cadence/genus/tools.lnx86/bin"

#export PATH="$PATH:/usr/Cadence/genus/bin"

## diamond
export PATH="$PATH:/usr/local/diamond/3.13/bin/lin64/"
export LM_LICENSE_FILE="$LM_LICENSE_FILE:/usr/local/diamond/3.13/license/license.dat"

if [ -f ~/.alias ]; then
	. ~/.alias
fi
