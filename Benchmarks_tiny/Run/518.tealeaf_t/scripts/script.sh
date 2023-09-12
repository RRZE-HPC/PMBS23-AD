export bench=tealeaf
export type=SPR-t

for i in $(seq 23 104)
do  
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2000000-2000000:performance" -np $i -nperdomain N:$i -g MEM_DP ./$bench &> $HOME/$type/$bench-FritzRank$i-MEM_DP.txt
done
