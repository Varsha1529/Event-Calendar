function addEvents(){
    var ss = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
    var lr = ss.getLastRow();

    var data = ss.getRange("A2:E" + lr).getValues();

    Looger.log(data);
}