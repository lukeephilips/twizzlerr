// var app = window.app = {};
//
// app.Addresses = function() {
//   this._input = $('#addresses-search-txt');
//   this._initAutocomplete();
// };
//
// app.Address.prototype = {
//   _initAutocomplete: function() {
//     this._input
//     .autocomplete({
//       source: '/addresses',
//       appendTo: '#addresses-search-results',
//       select: $.proxy(this._select, this)
//     })
//     .autocomplete('instance')._renderItem = $.proxy(this._render, this);
//   }
//
//   _select: function(e, ui) {
//     this._input.val(ui.item.title + ' - ' + ui.item.number);
//     return false;
//   }
//
//   _select: function(e, ui) {
//     this._input.val(ui.item.name + ' - ' + ui.item.number);
//     return false;
//   }
//   _render: function(ul, item) {
//     var markup = [
//       '<span class="name">' + item.name + '</span>',
//       '<span class="number">' + item.number + '</span>'
//     ];
//     return $('<li>')
//     .append(markup.join(''))
//     .appendTo(ul);
//   }
// };
