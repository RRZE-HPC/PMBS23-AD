export bench=clvleaf
export type=ICL-t
export group=MEM_DP # L3 # L2 # MEM_DP

for i in $(seq 48 72)
do 
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2400000-2400000:performance" -np $i -nperdomain N:$i -g $group ./$bench &> $HOME/$type/$bench-FritzRank$i-$group.txt
done
