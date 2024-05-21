package iesvdm.org.fighthubrestapi.util;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


public class DateUtil {

    // *** PROPS ***
    // *************
    // Date format
    public static final String DATE_FORMAT = "dd-MM-YYYY";
    public static final String DATE_TIME_FORMAT = "dd-MM-YYYY HH:mm";
    // Format
    public static final DateTimeFormatter DATE_FORMATTER = DateTimeFormatter.ofPattern(DATE_FORMAT);
    public static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern(DATE_TIME_FORMAT);

    // ********************
    // *** CONSTRUCTORS ***
    public DateUtil() {

    }

    // *** METHODS ***
    // ***************
    // Format date
    public static String formatDate(LocalDateTime date) {
        return DATE_FORMATTER.format(date);
    }
    // Format date and time
    public static String formatDateTime(LocalDateTime date) {
        return DATE_TIME_FORMATTER.format(date);
    }
}
