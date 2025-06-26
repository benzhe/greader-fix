package defpackage;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public final class qf6 extends de6<Date> {
    public static final ee6 b = new a();
    public final DateFormat a = new SimpleDateFormat("MMM d, yyyy");

    public class a implements ee6 {
        @Override // defpackage.ee6
        public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
            if (dg6Var.a == Date.class) {
                return new qf6();
            }
            return null;
        }
    }

    @Override // defpackage.de6
    public Date a(eg6 eg6Var) throws IOException {
        Date date;
        synchronized (this) {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                date = null;
            } else {
                try {
                    date = new Date(this.a.parse(eg6Var.I()).getTime());
                } catch (ParseException e) {
                    throw new be6(e);
                }
            }
        }
        return date;
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, Date date) throws IOException {
        Date date2 = date;
        synchronized (this) {
            gg6Var.D(date2 == null ? null : this.a.format((java.util.Date) date2));
        }
    }
}
