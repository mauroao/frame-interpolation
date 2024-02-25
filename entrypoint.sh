#!/bin/bash
python3 -m eval.interpolator_cli \
   --pattern "/photos" \
   --model_path /ptm/film_net/Style/saved_model \
   --times_to_interpolate 6 \
   --output_video
