#!/bin/bash
#install-container-dep

source ${ROOT}/kohya_venv/bin/activate
#if [ ! -f "/docker/kohya-requirements.txt" ]; 
#then
#  pip install --extra-index-url ${PIP_REPOSITORY} $@
#fi;

pip install --upgrade pip
pip install --extra-index-url ${PIP_REPOSITORY} torch==1.13.1
pip install --extra-index-url ${PIP_REPOSITORY} torchvision==0.14.1
pip install --extra-index-url ${PIP_REPOSITORY} xformers==0.0.17.dev448

pip install --extra-index-url ${PIP_REPOSITORY} transformers==4.26.0
pip install --extra-index-url ${PIP_REPOSITORY} ftfy==6.1.1 albumentations==1.3.0
pip install --extra-index-url ${PIP_REPOSITORY} opencv-python==4.7.0.68 einops==0.6.0
pip install --extra-index-url ${PIP_REPOSITORY} pytorch-lightning==1.9.0
pip install --extra-index-url ${PIP_REPOSITORY} bitsandbytes==0.35.0
pip install --extra-index-url ${PIP_REPOSITORY} tensorboard==2.10.1
pip install --extra-index-url ${PIP_REPOSITORY} safetensors==0.2.6
pip install --extra-index-url ${PIP_REPOSITORY} gradio==3.16.2 altair==4.2.2 easygui==0.98.3 tk==0.1.0
# for BLIP captioning
pip install --extra-index-url ${PIP_REPOSITORY} requests==2.28.2 timm==0.6.12 fairscale==0.4.13
# for WD14 captioning
# tensorflow<2.11
pip install --extra-index-url ${PIP_REPOSITORY} tensorflow==2.10.1 huggingface-hub==0.12.0
pip install --extra-index-url ${PIP_REPOSITORY} diffusers[torch]==0.10.2

# triton2 is not compatible with current deepspeed
#pip install --extra-index-url ${PIP_REPOSITORY} triton==2.0.0.dev20230208

# You can install deepspeed manually with this command
#export DS_BUILD_SPARSE_ATTN=0;pip install deepspeed
