package defpackage;

import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class p75 {
    public static AtomicReference<o75> a = new AtomicReference<>();

    public static Calendar a(Calendar calendar) {
        Calendar calendarE = e(calendar);
        Calendar calendarD = d();
        calendarD.set(calendarE.get(1), calendarE.get(2), calendarE.get(5));
        return calendarD;
    }

    public static TimeZone b() {
        return TimeZone.getTimeZone("UTC");
    }

    public static Calendar c() {
        o75 o75Var = a.get();
        if (o75Var == null) {
            o75Var = o75.c;
        }
        TimeZone timeZone = o75Var.b;
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = o75Var.a;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(b());
        return calendar;
    }

    public static Calendar d() {
        return e(null);
    }

    public static Calendar e(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(b());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }
}
