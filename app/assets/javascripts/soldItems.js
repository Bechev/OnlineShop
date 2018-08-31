$(function(){
    console.log("test")
    $("#sold_items").on('submit', function(e){
        e.preventDefault();
        var html = "<ul>";
        $("#soldItemsHook").empty();
        $.get('/items/sold', function(jsonObjects){
            $.each(jsonObjects, function(index,item){
                html += "<li>"
                html += item.name + "</li>"    
            })
            html += "</ul>"
            $("#soldItemsHook").append(html)
        });
    });
})