package defpackage;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public final class rf6 extends de6<Time> {
    public static final ee6 b = new a();
    public final DateFormat a = new SimpleDateFormat("hh:mm:ss a");

    public class a implements ee6 {
        @Override // defpackage.ee6
        public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
            if (dg6Var.a == Time.class) {
                return new rf6();
            }
            return null;
        }
    }

    @Override // defpackage.de6
    public Time a(eg6 eg6Var) throws IOException {
        synchronized (this) {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            try {
                return new Time(this.a.parse(eg6Var.I()).getTime());
            } catch (ParseException e) {
                throw new be6(e);
            }
        }
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, Time time) throws IOException {
        Time time2 = time;
        synchronized (this) {
            gg6Var.D(time2 == null ? null : this.a.format((Date) time2));
        }
    }
}
