# devuan-installation
workaround to install devuan 


- Make the mbr, Format and make ext3, 
- Deploy with deboostrap (using bash)
- Copy the boot and modules. 

md5sum modules.tar.gz  Downloads/modules.tar.gz 
30cc82f2b3cdaecf756e8eaaa6f3602d  modules.tar.gz
30cc82f2b3cdaecf756e8eaaa6f3602d  Downloads/modules.tar.gz

Split with : 
7zr a -v15m -mx0 modules.7z  modules.tar.gz 

