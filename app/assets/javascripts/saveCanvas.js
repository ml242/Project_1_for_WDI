/* 
 * jQuery saveCanvas plugin
 * Author: Will Demaine
 * URL: http://www.willdemaine.co.uk
 * Description: Adds some buttons to every canvas wrapped in a <div class="saveable"></div>
        which allows the user to convert the canvas to an image.
 * License: WTFPL (http://sam.zoy.org/wtfpl/)
 */
;(function($) {

  $.fn.saveCanvas = function(options) {  
    
    var defaults = {
      iconPath: "img/scIcon/",
      showInfoLink: false,
      showSaveLink: true,
      showImageLink: true,
      menuLocation: "bottom-right",
      menuPadding: 10, //px,
      iconImage: 'image.png',
      iconSave: 'save.png',
      iconInfo: 'info.png',
      iconOk: 'ok.png'    
    }
    
    options = $.extend(defaults, options);
  
    return this.each(function() {
      
      var element = $(this);      
      var sop = $('<div class="saveOptions"></div>');       
      var canvas = element.children("canvas")[0];     
      
      var top, bottom, left, right;     
      switch (options.menuLocation) {
        case 'bottom-right':
          bottom = right = options.menuPadding;
          break;
        case 'bottom-left':
          bottom = left = options.menuPadding;
          break;
        case 'top-right':
          top = right = options.menuPadding;
          break;
        case 'top-left':
          top = left = options.menuPadding;
          break;
        default:
          bottom = right = options.menuPadding;
      }
      
      if (top != undefined) {
        sop.css('top', top);
      }
      if (bottom != undefined) {
        sop.css('bottom', bottom);
      }
      if (right != undefined) {
        sop.css('right', right);
      }
      if (left != undefined) {
        sop.css('left', left);
      }     
      
      element.hover(function() {
        sop.fadeIn(400);
      }, function() {
        sop.fadeOut(200);
      });
      
      if (options.showImageLink) {
      
        var imageLinkImage = $('<img src="'+options.iconPath+options.iconImage+'" title="Convert canvas into image"/>')
        var imageLink = $('<span class="scIcon imageLink"></span>');  
        imageLink.append(imageLinkImage);
        sop.append(imageLink);
      
        imageLink.click(function() {
          var data = canvas.toDataURL();
          var tim = $('<img class="saveImage" download="saveCanvas.png" src="'+data+'"></img>');
          tim.attr('src', data);
          element.append(tim);
          
          imageLinkImage.fadeOut(100, function() {
            imageLink.unbind();
            imageLinkImage.attr('src', options.iconPath+options.iconOk);
            imageLinkImage.fadeIn(100);
          });       
        });
      }
          
      if (options.showSaveLink) {   
        var saveLink = $('<span class="scIcon saveLink"><img src="'+options.iconPath+options.iconSave+'" title="Download canvas as image"/></span>');     
        sop.append(saveLink);
        
        saveLink.click(function() {
          var data = canvas.toDataURL();
          window.open(data, '_blank');
        }); 
      }
      
      /* This probably isn't really needed */
      if (options.showInfoLink) {
        var infoLink = $('<span class="scIcon infoLink"><img src="'+options.iconPath+options.iconInfo+'" title="About saveCanvas"/></span>');     
        sop.append(infoLink);
        
        infoLink.click(function() {
          window.open('http://www.willdemaine.co.uk/', '_blank');
        });
      }
      

      element.append(sop);      
    });
  };

})(jQuery);