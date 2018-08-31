$(function(){
    $("#brand_items").on('submit', function(e){
        e.preventDefault();
        var html = "<ul>";
        var id = this.baseURI;
        $("#brandItemsHook").empty();
        $.get(id + "/list", function(jsonObjects){
            $.each(jsonObjects, function(index, item){
                html += "<li>"
                html += item.name + "</li>"    
            })
            html += "</ul>"
            $("#brandItemsHook").append(html)
        });
    });
})