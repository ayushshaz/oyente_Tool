 contract MarketPlace {
     uint public price;
     uint public stock;
     uint public amount;
     address public owner;
     int transaction_successful =0;

     function check( ){
        if (msg.value == price)
            transaction_successful = 1;
    }

    function updatePrice ( uint _price ){
        if (msg.sender == owner){
              price = _price;
        }

    }

    function buy ( uint quant ) returns ( uint ){
        if ( msg.value < quant*price || quant > stock ){
            revert();
         }
        check();
        stock -= quant ;
    }
 }