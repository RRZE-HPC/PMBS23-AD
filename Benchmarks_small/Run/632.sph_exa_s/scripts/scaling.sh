
#export VT_FLUSH_PREFIX=/tmp
#export VT_LOGFILE_FORMAT=SINGLESTF
export bench=sph_exa
export type=SPR-s

#for i in $(seq 72 72 1656)
for i in $(seq 104 104 1664)
do 
  #likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2400000-2400000:performance" -np $i -nperdomain N:72 -g MEM_DP ./$bench -n 350 -s 100 -w -1 &> $HOME/$type/$bench-FritzRank$i-MEM.txt
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2000000-2000000:performance" -np $i -nperdomain N:104 -g MEM_DP ./$bench -n 350 -s 100 -w -1 &> $HOME/$type/$bench-FritzRank$i-MEM.txt
done

