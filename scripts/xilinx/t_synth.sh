#vivado='alias /opt/Xilinx/Vivado/2017.4/bin/vivado'

echo $vivado
rm -rf ../../results/hw_mapping/fc_area_t.txt
rm -rf ../../results/hw_mapping/fc_freq_t.txt
rm -rf ../../results/hw_mapping/fc_power_t.txt
rm -rf ../../vivado
mkdir ../../vivado
cd ../../vivado
mkdir t_synth
cd t_synth
vivado -mode tcl -s ../../scripts/xilinx/t_synth.tcl
