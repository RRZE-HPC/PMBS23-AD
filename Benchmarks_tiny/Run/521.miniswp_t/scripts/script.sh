export bench=sweep
export type=SPR-t
export group=MEM_DP # L3 # L2 # MEM_DP

for i in $(seq 50 104)

do
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2000000-2000000:performance" -np $i -nperdomain N:$i -g $group ./$bench --niterations 40 --ncell_x 96 --ncell_y 64 --ncell_z 64 --ne 64 --na 32 --nblock_z 8 &> $HOME/$type/$bench-FritzRank$i-$group.txt
done
