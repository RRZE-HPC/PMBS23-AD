export VT_FLUSH_PREFIX=/tmp
export VT_LOGFILE_FORMAT=SINGLESTF
export bench=sweep

for i in $(seq 59 59)
do
j=$i-1
export VT_LOGFILE_NAME=ICL-${bench}-FritzRank${i}.single.stf 
mpirun -trace -np $i -genv I_MPI_PIN_PROCESSOR_LIST=0-${j} ./$bench --niterations 40 --ncell_x 96 --ncell_y 64 --ncell_z 64 --ne 64 --na 32 --nblock_z 8
done
