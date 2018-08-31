function Item(attributes){
    this.name = attributes.name
    this.brand = attributes.brand
    this.color = attributes.color
    this.category = attributes.category
    this.description = attributes.description
}

$(function(){
    Item.source   = $("#new-item-template").html();
    Item.template = Handlebars.compile(Item.source);
})

Item.prototype.renderHTML = function(){
    $("#new_item_hook").empty();
    return Item.template(this)
}

$(function(){
    $(".new_item_form").on('submit', function(e){
        e.preventDefault();
        var $form = $(this);
        var action = $form.attr("action");
        var params = $form.serialize();
        $.post(action,params)
        .done(function(json){
                newItem = new Item(json)
                renderHTMLForNewItem = newItem.renderHTML();
                $("#new_item_hook").append(renderHTMLForNewItem) 
            })
    });
});