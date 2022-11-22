
!pip install -r requirements.txt

# a bunch of commands to set up
!mv ./UJDA/data ./
!mkdir ./data/office/
!mkdir ./data/office/domain_adaptation_images/

!tar -xzvf ./domain_adaptation_images.tar.gz

!mv ./amazon ./data/office/domain_adaptation_images/
!mv ./dslr ./data/office/domain_adaptation_images/
!mv ./webcam ./data/office/domain_adaptation_images/


!python ./UJDA/train.py --config ./UJDA/config/dann.yml   --dataset Office-31   --src_address ./data/amazon.txt   --tgt_address     ./data/webcam.txt  --src_test_address ./data/amazon.txt