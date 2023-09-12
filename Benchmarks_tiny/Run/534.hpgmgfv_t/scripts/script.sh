
export bench=hpgmgfv
export type=ICL-t

for i in $(seq 1 59)
do
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2400000-2400000:performance" -np $i -nperdomain N:$i -g MEM_DP ./$bench 5 9 300 &> $HOME/$type/$bench-FritzRank$i-MEM_DP.txt
done
