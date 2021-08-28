import "referenced_one.sol";
import "referenced_two.sol";

contract Reference {
    referenced_one x;
    function calculate(){
        x.sum();
    }
    referenced_two y;
    function operate(){
        y.difference();
    }
 }