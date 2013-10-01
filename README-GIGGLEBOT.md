# gigglebot


## Setup

1. Install [Node.js](http://nodejs.org/) and [npm](https://npmjs.org/). 

1. Install hubot and coffeescript: 

        $ [sudo] npm install -g hubot coffeescript

1. Download [redis](http://redis.io/download), untar and compile it, then
   copy `redis-server` and `redis-cli` to `/usr/local/bin/` 
   ([source](http://redis.io/topics/quickstart)).

1. Make sure `/usr/local/bin/` is on your $PATH. 


## Running locally

1. Make a copy of `run.sh.default`:

        $ cp run.sh.default run.sh

    Replace `<your-irc-server>` and `<your-irc-room>` as appropriate. 

1. Make `run.sh` executable:

        $ chmod +x run.sh

1. Run the redis server: 

        ysim:~/Repos/gigglebot(master)$ redis-server
        [26109] 01 Oct 10:51:56.905 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
        [26109] 01 Oct 10:51:56.906 * Max number of open files set to 10032
                        _._                                                  
                   _.-``__ ''-._                                             
              _.-``    `.  `_.  ''-._           Redis 2.6.16 (00000000/0) 64 bit
          .-`` .-```.  ```\/    _.,_ ''-._                                   
         (    '      ,       .-`  | `,    )     Running in stand alone mode
         |`-._`-...-` __...-.``-._|'` _.-'|     Port: 6379
         |    `-._   `._    /     _.-'    |     PID: 26109
          `-._    `-._  `-./  _.-'    _.-'                                   
         |`-._`-._    `-.__.-'    _.-'_.-'|                                  
         |    `-._`-._        _.-'_.-'    |           http://redis.io        
          `-._    `-._`-.__.-'_.-'    _.-'                                   
         |`-._`-._    `-.__.-'    _.-'_.-'|                                  
         |    `-._`-._        _.-'_.-'    |                                  
          `-._    `-._`-.__.-'_.-'    _.-'                                   
              `-._    `-.__.-'    _.-'                                       
                  `-._        _.-'                                           
                      `-.__.-'                                               

        [26109] 01 Oct 10:51:56.908 # Server started, Redis version 2.6.16
        [26109] 01 Oct 10:51:56.909 * The server is now ready to accept connections on port 6379

1. Execute `run.sh`:

        ysim:~/Repos/gigglebot(master)$ ./run.sh
        npm http GET https://registry.npmjs.org/hubot-irc
        npm http 200 https://registry.npmjs.org/hubot-irc
        npm http GET https://registry.npmjs.org/hubot-irc/-/hubot-irc-0.1.19.tgz
        npm http 200 https://registry.npmjs.org/hubot-irc/-/hubot-irc-0.1.19.tgz
        hubot-irc@0.1.19 node_modules/hubot-irc
        └── irc@0.3.6
        [Tue Oct 01 2013 10:54:34 GMT-0400 (EDT)] WARNING The HUBOT_AUTH_ADMIN environment variable not set
        [Tue Oct 01 2013 10:54:34 GMT-0400 (EDT)] INFO Initializing new data for brain
