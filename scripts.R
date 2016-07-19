library(StereoMorph)

curves<-matrix(nrow = 3,ncol=3)
curves[,1]<-c("body_ant","snout_tip","dorsal_ant")

digitizeImage(image.file='Mox_images/left_side/',
              landmarks.ref='Mox_images/lmk_no_semi.txt',
              shapes.file = 'Mox_images/shapes',
              curves.ref="Mox_images/outlines.txt")
