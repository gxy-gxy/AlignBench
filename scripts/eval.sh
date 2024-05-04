for name in `find /cpfs/2926428ee2463e44/user/guanxinyan/AlignBench/data/model_answer -maxdepth 1 -type f -name "*.jsonl" -exec basename {} .jsonl \;` ;do
    python judge.py \
        --config-path config/multi-dimension.json \
        --model-name $name \
        --parallel 32
    # exit
done

