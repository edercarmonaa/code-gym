import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAdjusters;

class SalonCalendar {

    public LocalDate standingAppointment(int year, Month month, int occurrence, DayOfWeek dayOfWeek) {
        LocalDate date = LocalDate.of(year, month, 1);
        LocalDate day = date.with(TemporalAdjusters.dayOfWeekInMonth(occurrence,dayOfWeek));
        return day;
    }

    public LocalDate lastAppointment(int year, Month month, DayOfWeek dayOfWeek) {
        LocalDate date = LocalDate.of(year, month, 1);
        LocalDate day = date.with(TemporalAdjusters.lastInMonth(dayOfWeek));
        return day;
    }

    public LocalDate nextAvailable(LocalDate from, DayOfWeek dayOfWeek) {
        LocalDate day = from.with(TemporalAdjusters.nextOrSame(dayOfWeek));
        return day;
    }

    public LocalDate bookkeepingDay(int year, Month month) {
        LocalDate date = LocalDate.of(year, month, 1);
        LocalDate lastDay = date.with(TemporalAdjusters.lastDayOfMonth());
        LocalDate day = lastDay.with(precedingWorkday());
        return day;
    }

    public LocalDate payday(int year, Month month) {
        LocalDate date = LocalDate.of(year, month, 15);
        LocalDate day = date.with(precedingWorkday()); 
        return day;
    }

    public TemporalAdjuster precedingWorkday() {
        return temporal -> {
            DayOfWeek day = DayOfWeek.from(temporal);
            if (day == DayOfWeek.SATURDAY || day == DayOfWeek.SUNDAY) {
                return temporal.with(TemporalAdjusters.previous(DayOfWeek.FRIDAY));
            }
            return temporal;
        };
    }
}
