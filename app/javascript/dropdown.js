(function () {
  document.addEventListener('DOMContentLoaded', function() { // HTML解析が終わったら
    const btn = document.getElementById('dropdown_user_btn'); // ボタンをidで取得
    if(btn) { // ボタンが存在しないときにエラーになるのを回避
      btn.addEventListener('click', function(){ //ボタンがクリックされたら
        this.classList.toggle('is-open'); // is-openを付加する
      });
    }
  });
}());

(function () {
  document.addEventListener('DOMContentLoaded', function() {
    const btn = document.getElementById('dropdown_news_btn');
    if(btn) {
      btn.addEventListener('click', function(){
        this.classList.toggle('is-open');
      });
    }
  });
}());

(function () {
  document.addEventListener('DOMContentLoaded', function() {
    const btn = document.getElementById('admin_name');
    if(btn) {
      btn.addEventListener('click', function(){
        this.classList.toggle('admin-open');
      });
    }
  });
}());