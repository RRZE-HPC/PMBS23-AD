export bench=sph_exa
export type=ICL-t

for i in $(seq 32 72)
do  
  likwid-mpirun -mpi slurm --mpiopts "--cpu-freq=2400000-2400000:performance" -np $i -nperdomain N:$i -g MEM_DP ./$bench -n 210 -s 80 -w -1 &> $HOME/$type/$bench-FritzRank$i-MEM_DP.txt
done
