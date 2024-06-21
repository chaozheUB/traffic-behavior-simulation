python scripts/evaluate.py \
  --results_root_dir results/ \
  --env nusc \
  --dataset_path /mnt/Disk3/Data/nuscene/data \
  --ckpt_yaml evaluation/BITS_self.yaml \
  --eval_class HierAgentAware \
  --render
