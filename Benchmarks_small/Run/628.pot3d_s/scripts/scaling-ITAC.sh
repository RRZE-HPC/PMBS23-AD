
export VT_FLUSH_PREFIX=/tmp
export VT_LOGFILE_FORMAT=SINGLESTF
export bench=pot3d

for i in $(seq 104 104 1664)
do
    export VT_LOGFILE_NAME=SPR-$bench-FritzRank$i
    mpirun -trace -np $i -genv I_MPI_PIN_PROCESSOR_LIST=0-103 ./$bench 1
done
