export bench=lbm
export type=SPR-t
export group=MEM_DP #DTLB_LOAD_MISSES_CAUSES_A_WALK:PMC1,DTLB_STORE_MISSES_CAUSES_A_WALK:PMC2,DTLB_LOAD_MISSES_WALK_ACTIVE:PMC3,DTLB_STORE_MISSES_WALK_ACTIVE:PMC4 # L3 # L2 # MEM_DP

for i in $(seq 12 104)
do
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2000000-2000000:performance" -np $i -nperdomain N:$i -g $group ./$bench &> $HOME/$type/$bench-FritzRank$i-$group.txt
done

