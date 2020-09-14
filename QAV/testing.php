<script>
    function f(x, y){
        if(y == 0) 
        {
            return 0;
        }
        if(y % 2 == 1){
             return f(x, y-1) + x;
        }
        else{ 
            return f(x + x, y/2);
        }
    }
    function g(x, y){
        if(y == 0){
            return 1;
        } 
        if(y % 2 == 1){
            return f(g(x, y-1), x);
        }
        else{
            return g(f(x, x), y/2);
        }
    }
    console.log(f(g(2, 2049)/ g(4, 1024), 1337));
</script>