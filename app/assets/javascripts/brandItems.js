$(function(){
    $("#brand_items").on('submit', function(e){
        e.preventDefault();
        var html = "<ul>";
        var brandURL = this.baseURI;
        $("#brandItemsHook").empty();
        $.get(brandURL + "/list", function(jsonObjects){
            console.log(jsonObjects)
            $.each(jsonObjects, function(index, item){
                itemName =item.name
                itemNameWithAppendedLink = itemName.link(brandURL + "/items/" + item.id)
                html += "<li>"
                html += itemNameWithAppendedLink + "</li>"    
            })
            html += "</ul>"
            $("#brandItemsHook").append(html)
        });
    });
})