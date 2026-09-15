#vivado='alias /opt/Xilinx/Vivado/2017.4/bin/vivado'

echo $vivado
rm -rf ../../results/hw_mapping/fc_area_pi.txt
rm -rf ../../results/hw_mapping/fc_freq_pi.txt
rm -rf ../../results/hw_mapping/fc_power_pi.txt
rm -rf ../../vivado
mkdir ../../vivado
cd ../../vivado
mkdir pi_synth
cd pi_synth
vivado -mode tcl -s ../../scripts/xilinx/pi_synth.tcl
