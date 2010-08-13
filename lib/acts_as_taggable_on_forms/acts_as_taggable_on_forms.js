var taggable = window.taggable || {};

taggable.remove = function(){
  var removeCat = $(this).attr("name");
  var categoryArray = this.categoryEl.val().split(", ");
  var newCategoryList = "";

  $.each(categoryArray, function(i, val){
    if(val != removeCat){
      newCategoryList += val + ", ";
    }
  });

  newCategoryList = newCategoryList.substring(0, newCategoryList.length - 2); 
  this.categoryEl.val(newCategoryList);
  $(this).parent().parent().hide();
  //taggable.refreshButtons();  
};

taggable.addAvailable = function(){
  var addCat = $(this).attr("name");
  if(this.categoryEl.val().length > 0){
    this.categoryEl.val(this.categoryEl.val() + ", " + addCat);
  } else{
    this.categoryEl.val(addCat);
  }
  $("#" + this.tagName + "s").append("<span class=\"tag\"><a part=\"" + addCat + "\">" + addCat + "</a></span>");
  //taggable.refreshButtons();
};

taggable.addNew = function(){
  var addCat = $("#add-" + this.tagName).val();
  if(this.categoryEl.val().length > 0){
    this.categoryEl.val(this.categoryEl.val() + ", " + addCat);
  } else{
    this.categoryEl.val(addCat);
  }
  $("#add-" + this.tagName).val("");
  //taggable.refreshButtons();
};

taggable.refreshButtons = function(){
  $('.tag a').button({
    icons: {
      primary: 'ui-icon-closethick'
    }
      }); 
  $('.add-tag').button({
    icons: {
      primary: 'ui-icon-plusthick'
    }      
  });         
}

taggable.init = function(fieldName, tagName){
  this.tagName = tagName;
  this.fieldName = fieldName;
  this.categoryEl = $("#" + this.fieldName + "_" + this.tagName + "_list");
  $(".tag a").live("click", taggable.remove);
  $("#available-" + this.tagName + "s span a").live("click", taggable.addAvailable);
  $("#add-" + this.tagName + "-button").live("click", taggable.addNew);
  //taggable.refreshButtons();  
};

$(document).ready(taggable.init);
