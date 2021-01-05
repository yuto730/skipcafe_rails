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