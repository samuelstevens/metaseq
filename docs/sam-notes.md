# Sam's Notes

## Notes on Getting OPT to Run

Steps
1. Clone repository.
2. Download models.
3. Run setup.
4. Run the api server (easy lol)

Notes:
* Need to use python 3.9 to download PyTorch 1.10.1 (3.10 does not work).
* Remove minor CUDA version check in apex.
* Installing apex tool forever (everything had to compile)
* MODEL_SHARED_FOLDER = /local/scratch/stevens.994/opt-checkpoints
* Actual parts are in MODEL_SHARED_FOLDER/125M/shards
* I did not need to consolidate the shards into 8 files model-parallel execution.

Blockers:
* I can't figure out [a fairseq bug](https://github.com/facebookresearch/metaseq/issues/23).
  * I have to try this [hack still](https://github.com/facebookresearch/metaseq/issues/23#issuecomment-1124556037=)
* I tried to use [Huggingface](https://huggingface.co/models?other=opt_metasq) but I could not convince Megatron to work.
  * Specifically, I ran into `AssertionError: pipeline_model parallel group is not initialized.` I don't know how to get around it--maybe some combination of environment variables and CLI arguments are needed?
