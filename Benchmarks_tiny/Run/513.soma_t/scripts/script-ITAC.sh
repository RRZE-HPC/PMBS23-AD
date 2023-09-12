export VT_FLUSH_PREFIX=/tmp
export VT_LOGFILE_FORMAT=SINGLESTF
export bench=soma

for i in $(seq 59 59)
do
j=$i-1
export VT_LOGFILE_NAME=ICL-${bench}-FritzRank${i}.single.stf 
mpirun -trace -np $i -genv I_MPI_PIN_PROCESSOR_LIST=0-${j} ./$bench -r 42 -t 200 --npoly=14000000 --gen-state-file
done
