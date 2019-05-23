function scheduleShifts() {

    var spreadsheet = SpreadsheetApp.getActiveSheet();
    var calendarID = spreadsheet.getRange("C4").getValue();
    var eventCal = CalendarApp.getCalendarById("calendarId");

    var signups = spreadsheet.getRange("A5:C7").getValues();

for (x=0; x<signups.length;x++)
{
    var shift = signups[x];
    var startTime = shift[0];
    var endTime = shift[1];
    var volunteer= shift[2];
    eventCal.createEvent(volunteer, startTime, endTime);
}
}
