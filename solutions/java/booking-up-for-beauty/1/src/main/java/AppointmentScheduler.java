import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

class AppointmentScheduler {
    
    public LocalDateTime schedule(String appointmentDateDescription) {
        DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm:ss");
        return LocalDateTime.parse(appointmentDateDescription, FORMATTER);
    }

    public boolean hasPassed(LocalDateTime appointmentDate) {
        return appointmentDate.isBefore(LocalDateTime.now());
    }

    public boolean isAfternoonAppointment(LocalDateTime appointmentDate) {
        LocalDateTime inicio = appointmentDate.withHour(12).withMinute(0).withSecond(0).withNano(0);
LocalDateTime fin = appointmentDate.withHour(18).withMinute(0).withSecond(0).withNano(0);
        return !appointmentDate.isBefore(inicio) && appointmentDate.isBefore(fin);
    }

    public String getDescription(LocalDateTime appointmentDate) {
        DateTimeFormatter formateador = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy, 'at' h:mm a", Locale.ENGLISH);
        return "You have an appointment on " + appointmentDate.format(formateador)+".";
    }

    public LocalDate getAnniversaryDate() {
        int anioActual = LocalDateTime.now().getYear();
        return LocalDate.of(anioActual, 9, 15);
    }
}
