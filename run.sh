#!/bin/sh
start=$(date +%s)
export DATA_DIR=/home/cy/Desktop/vssq_data2
export BERT_BASE_DIR=/home/cy/chinese_L-12_H-768_A-12
cd /home/cy/bert-master
sudo python3 run_customize_classifier.py \
 --task_name=mytask \
 --do_train=true \
 --data_dir=$DATA_DIR/ \
 --vocab_file=$BERT_BASE_DIR/vocab.txt \
 --bert_config_file=$BERT_BASE_DIR/bert_config.json \
 --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
 --max_seq_length=256 \
 --train_batch_size=32 \
 --learning_rate=2e-5 \
 --num_train_epochs=3.0 \
 --output_dir=/home/cy/Desktop/MyTask_output_data2_test_3
end=$(date +%s)
take=$((end-start))
echo Time taken to execute commands is ${take} seconds
