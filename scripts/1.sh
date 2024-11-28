export CUDA_VISIBLE_DEVICES=1

#################### Benchmark-diffusion-based ####################

# 40s/epoch, 270s/epoch
# python -W ignore run_csdi.py --dataname ETTh1 --pred_len 96 --is_train
for dataname_ in ETTh1 ETTh2 ETTm1 ETTm2 Exchange Weather ECL Traffic Sunspot RiverFlow USBirths SolarPower WindPower
do
for pred_len_ in 96 192 336 720
do
python -W ignore run_csdi.py \
  --dataname $dataname_ \
  --pred_len $pred_len_ \
  --is_train
done
done

# # 27s/epoch, 421s/epoch
# # python -W ignore run_sssd.py --dataname ETTh1 --pred_len 96 --is_train
# for dataname_ in ETTh1 ETTh2 ETTm1 ETTm2 Exchange Weather ECL Traffic Sunspot RiverFlow USBirths SolarPower WindPower
# do
# for pred_len_ in 96 192 336 720
# do
# python -W ignore run_sssd.py \
#   --dataname $dataname_ \
#   --pred_len $pred_len_ \
#   --is_train
# done
# done
#
# # 3+3+15s/epoch, 6s/epoch
# # python -W ignore run_timegan.py --dataname ETTh1 --pred_len 96 --is_train
# for dataname_ in ETTh1 ETTh2 ETTm1 ETTm2 Exchange Weather ECL Traffic Sunspot RiverFlow USBirths SolarPower WindPower
# do
# for pred_len_ in 96 192 336 720
# do
# python -W ignore run_timegan.py \
#   --dataname $dataname_ \
#   --pred_len $pred_len_ \
#   --is_train
# done
# done

# # 10s/epoch, 12s/epoch
# # python -W ignore run_timegrad.py --dataname ETTh1 --pred_len 96 --is_train
# for dataname_ in ETTh1 ETTh2 ETTm1 ETTm2 Exchange Weather ECL Traffic Sunspot RiverFlow USBirths SolarPower WindPower
# do
# for pred_len_ in 96 192 336 720
# do
# python -W ignore run_timegrad.py \
#   --dataname $dataname_ \
#   --pred_len $pred_len_ \
#   --is_train
# done
# done

#################### Resample ####################

for dataname_ in ETTh1 ETTh2 ETTm1 ETTm2 Exchange Weather
do
for pred_len_ in 96
do
python -W ignore run_csdi_resample.py \
  --dataname $dataname_ \
  --pred_len $pred_len_
done
done
