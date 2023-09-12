export VT_FLUSH_PREFIX=/tmp
export VT_LOGFILE_FORMAT=SINGLESTF
export bench=lbm

for i in $(seq 20 39)
do
j=$i-1
export VT_LOGFILE_NAME=SPR-${bench}-FritzRank${i}.single.stf 
mpirun -trace -np $i -genv I_MPI_PIN_PROCESSOR_LIST=0-${j} ./$bench
done
