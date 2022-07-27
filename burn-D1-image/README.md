#### 脚本说明
burn-image.sh 用于将image烧录单个TF
burn-imageloop.sh 用于串行将image依次烧入10张TF
expansion.sh 用于烧录完image后给单个TF扩容，由于扩容需要交互，这里用expect去实现自动交互，该脚本不单独执行，放在expect.sh里执行
expansionloop.sh 用于烧录完image后串行依次给10张TF扩容，由于扩容需要交互，这里用expect去实现自动交互，该脚本不单独执行，放在expectloop.sh里执行
expect.sh 用expect自动化实现交互式的expansion.sh
expectloop.sh 用expect自动化实现交互式的expansionloop.sh

#### 使用说明
burn-image.sh和burn-imageloop.sh可以直接运行
执行expect.sh和expectloop.sh需要预先安装expect: sudo apt-get install expect -y
