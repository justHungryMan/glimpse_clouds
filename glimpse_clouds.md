# Glimpse_clouds


## Preprocessing the video

src/data/ntu/rescale_videos.py

**NTU_RGBD data path**


    /workspace/NTU_DATA/avi/{동영상파일들}

**NTU_Skeleton data path**


    /workspace/NTU_DATA/skeleton/{Skeleton files}

**Code 수정**

![시스템 경로 추가.](https://paper-attachments.dropbox.com/s_2D6B7E8048E89E385E939FDAB3898829C0E74699E4B5F4A5163F87CFF395D3A6_1562920721920_image.png)


**Command Line**


    # Path to your ffmpeg
    ffmpeg_version=ffmpeg
    
    # Python command line
    python rescale_videos.py \
    --dir /workspace/NTU_DATA/avi \
    --width 256 \
    --height 256 \
    --fps 30 \
    --common-suffix _rgb.avi \
    --crf 17 --ffmpeg ffmpeg

위의 Command를 실행하면 /workspace/NTU_DATA/avi_256x256_30 폴더가 생성되고 rescale된 video가 해당 폴더에 생성.
해당 폴더에 dict_id_length.pickle 파일도 생성.


## Script


![script 경로 수정](https://paper-attachments.dropbox.com/s_2D6B7E8048E89E385E939FDAB3898829C0E74699E4B5F4A5163F87CFF395D3A6_1562921360298_image.png)



src에서 script 파일 실행

     ./script/train_and_evaluate.sh /{결과 저장} /workspace/NTU_DATA/

main.py


![data 경로 수정](https://paper-attachments.dropbox.com/s_2D6B7E8048E89E385E939FDAB3898829C0E74699E4B5F4A5163F87CFF395D3A6_1562921488070_image.png)

