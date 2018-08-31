function Item(attributes){
    this.name = attributes.name
    this.brand = attributes.brand
    this.category = attributes.category
    this.description = attributes.description
}

Item.prototype.renderHTML = function(){
    //need to use handle bars
}

$(function(){
    $(".new_item_form").on('submit', function(e){
        e.preventDefault();
        var $form = $(this);
        var action = $form.attr("action");
        var params = $form.serialize();
        $("#new_item_hook").empty();
        $.post(action,params)
        .done(function(json){
                newItem = new Item(json)
                renderHTMLForNewItem = newItem.renderHTML();
            })
    });
});