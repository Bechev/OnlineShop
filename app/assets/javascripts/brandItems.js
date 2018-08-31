
$(function(){
    var brandURL = $("#brand_items")[0].baseURI; //Need to do that only when the script is loaded
    
    function Item(attributes){
        this.name = attributes.name;
        this.id = attributes.id;
    }
    
    Item.prototype.renderItem = function(json){
        var html = "<ul>";
        $.each(json, function(index, item){
            itemName = this.name
            itemNameWithAppendedLink = itemName.link(brandURL + "/items/" + this.id)
            html += "<li>"
            html += itemNameWithAppendedLink + "</li>"    
        })
        html += "</ul>"
        return html
    }

    $("#brand_items").on('submit', function(e){
        e.preventDefault();
        $("#brandItemsHook").empty();
        $.get(brandURL + "/list", function(json){
            var item = new Item(json);
            var renderedItem = item.renderItem(json); 
            $("#brandItemsHook").append(renderedItem)
        });
    });

})