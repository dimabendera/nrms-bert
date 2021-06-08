docker run --gpus all --rm -it \
           -p 8892:8888 \
           -w /var/www/nrms-bert \
           --mount type=bind,source=/var/www/nrms-bert/data,target=/var/www/nrms-bert/data \
            nrms-bert \
            jupyter notebook --ip 0.0.0.0 --allow-root
