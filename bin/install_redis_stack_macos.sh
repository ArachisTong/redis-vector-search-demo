# 下载源码
brew tap redis-stack/redis-stack

# 安装
brew install redis-stack

# 设置环境变量
echo "export PATH=/usr/local/Caskroom/redis-stack-server/7.2.0-v9/bin:$PATH">> ~/.bashrc

# start server
nohup redis-stack-server >redis-stack-server.log &

# test server
redis-cli -h localhost -p 6379 -a foobared
