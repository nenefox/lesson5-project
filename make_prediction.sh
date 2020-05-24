#!/usr/bin/env bash

PORT=8000
echo "Port: $PORT"

# POST method predict
curl -d '{  
   "CHAS":{  
      "0":0.2
   },
   "RM":{  
      "0":60.575
   },
   "TAX":{  
      "0":200.0
   },
   "PTRATIO":{  
      "0":10.3
   },
   "B":{  
      "0":396.9
   },
   "LSTAT":{  
      "0":0.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://localhost:$PORT/predict
