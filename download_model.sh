pushd .
if [ ! -d "model" ]; then
  mkdir -p model
fi

cd model

wget -nc -O rwkv-4-raven-7b-v11.pth "https://huggingface.co/BlinkDL/rwkv-4-raven/resolve/main/RWKV-4-Raven-7B-v11-Eng49%25-Chn49%25-Jpn1%25-Other1%25-20230430-ctx8192.pth"

git lfs install
if [ ! -d "chatglm-6b-int4" ]; then
  git clone https://huggingface.co/THUDM/chatglm-6b-int4
fi

if [ ! -d "text2vec-large-chinese" ]; then
  git clone https://huggingface.co/GanymedeNil/text2vec-large-chinese
fi

if [ ! -d "replit-code-v1-3b" ]; then
  git clone https://huggingface.co/replit/replit-code-v1-3b
fi

if [ ! -d "moss-moon-003-sft-plugin-int4" ]; then
  git clone https://huggingface.co/fnlp/moss-moon-003-sft-plugin-int4
fi

popd