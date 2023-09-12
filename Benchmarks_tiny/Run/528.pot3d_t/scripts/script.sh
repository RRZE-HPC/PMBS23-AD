export bench=pot3d
export type=SPR-t
export group=MEM_DP # L3 # L2 # MEM_DP

for i in $(seq 41 104)
do  
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2000000-2000000:performance" -np $i -nperdomain N:$i -g $group ./$bench 1 &> $HOME/$type/$bench-FritzRank$i-$group.txt
done
