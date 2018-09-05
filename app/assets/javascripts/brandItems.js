function Item(attributes){
    this.name = attributes.name;
    this.id = attributes.id;
}


$(function(){
    // let brandURL = $("#brand_items")[0].baseURI;
    Item.prototype.renderItem = function(){
        let html = "<li>" + this.name + "</li>"
        return html
    }
    
    $("#brand_items").on('submit', function(e){
        brandURL = $(".brand_items").action
        e.preventDefault();
        $("#brandItemsHook").empty();
        $("#brandItemsHook").append("<ul>")
        $.get(brandURL, function(json){
            json.items.forEach(function(singleItem){
                let item = new Item(singleItem);
                console.log(item)
                let renderedItem = "" 
                renderedItem = item.renderItem() 
                $("#brandItemsHook").append(renderedItem)
            })
        },"json");
        $("#brandItemsHook").append("</ul>")
    });

})