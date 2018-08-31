function Item(attributes){
    this.name = attributes.name;
    this.id = attributes.id;
}

$(function(){
    let brandURL = $("#brand_items")[0].baseURI;
    
    $("#brand_items").on('submit', function(e){
        e.preventDefault();
        $("#brandItemsHook").empty();
        $.get(brandURL + "/list", function(json){
            let item = new Item(json);
            let renderedItem = item.renderItem(json); 
            $("#brandItemsHook").append(renderedItem)
        });
    });
    
    Item.prototype.renderItem = function(json){
        let html = "<ul>";
        $.each(json, function(index, item){
            itemName = this.name
            itemNameWithAppendedLink = itemName.link(brandURL + "/items/" + this.id)
            html += "<li>"
            html += itemNameWithAppendedLink + "</li>"    
        })
        html += "</ul>"
        return html
    }

})