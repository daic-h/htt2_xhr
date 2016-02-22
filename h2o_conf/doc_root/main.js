document.addEventListener('DOMContentLoaded', function(){
  var xhr = new XMLHttpRequest();
  xhr.open('get', 'https://192.168.99.100.xip.io/?hoge=fuga');
  xhr.send();
  // xhr.abort();
}, false);
