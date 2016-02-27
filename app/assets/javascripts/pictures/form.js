$(function() {
  function canvas() {
    return $('canvas')[0];
  }

  function canvasDataURL() {
    return canvas().toDataURL('image/png');
  }

  function setPictureDataURL(dataURL) {
    return $(this).find('input#picture_data_url').val(dataURL);
  }

  $('form').submit(function(e) {
    e.preventDefault();

    setPictureDataURL(canvasDataURL());

    this.submit();
  });
});
