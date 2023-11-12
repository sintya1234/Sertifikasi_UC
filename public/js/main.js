$(document).ready(function(){
    let row_number = 1;
    $("#add_row").click(function(e){
      e.preventDefault();
      let new_row_number = row_number - 1;
      $('#kendaraan' + row_number).html($('#kendaraan' + new_row_number).html()).find('td:first-child');
      $('#kendaraans_table').append('<tr id="kendaraan' + (row_number + 1) + '"></tr>');
      row_number++;
    });

    $("#delete_row").click(function(e){
      e.preventDefault();
      if(row_number > 1){
        $("#kendaraan" + (row_number - 1)).html('');
        row_number--;
      }
    });
  });