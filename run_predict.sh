bash
export BERT_BASE_DIR=/home/cy/chinese_L-12_H-768_A-12
export DATA_DIR=/home/cy/Desktop/vssq_data2
export TRAINED_CLASSIFIER=/home/cy/Desktop/MyTask_output_data2
cd /home/cy/bert-master
sudo python3 run_customize_classifier.py   --task_name=mytask   --do_predict=true   --data_dir=$DATA_DIR   --vocab_file=$BERT_BASE_DIR/vocab.txt   --bert_config_file=$BERT_BASE_DIR/bert_config.json   --init_checkpoint=$TRAINED_CLASSIFIER   --max_seq_length=256   --output_dir=/home/cy/Desktop/MyTask_output_data2/predict_result
