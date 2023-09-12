
export bench=tealeaf
export type=SPR-s

#for i in $(seq 72 72 1656)
for i in $(seq 104 104 1664)
do 
  #likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2400000-2400000:performance" -np $i -nperdomain N:72 -g MEM_DP ./$bench &> $HOME/$type/$bench-FritzRank$i-MEM.txt
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2000000-2000000:performance" -np $i -nperdomain N:104 -g MEM_DP ./$bench &> $HOME/$type/$bench-FritzRank$i-MEM.txt
done
