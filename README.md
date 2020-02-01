# joke-generator-environment

https://github.com/amoudgl/funnybot.git

## Run Container

```bash
docker run -it --runtime=nvidia zzj0402/joke-generator-environment bash
```

Keep the docker container id and then:

```bash
docker exec -it [replace this with container id] bash
```

## Dependency

```bash
pip2 install numpy h5py
```

## LuaTorch

```bash
cd ~/torch && bash install-deps && ./install.sh
```

## Preprocess

```bash
python2 scripts/preprocess.py --input_txt ../data/shortjokes.txt  --output_h5 my_data.h5  --output_json my_data.json
```

## Train

```bash
th train.lua -input_h5 my_data.h5 -input_json my_data.json -model_type lstm -num_layers 3 -rnn_size 512
```
