package defpackage;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class if6 extends de6<Date> {
    public static final ee6 b = new a();
    public final List<DateFormat> a;

    public class a implements ee6 {
        @Override // defpackage.ee6
        public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
            if (dg6Var.a == Date.class) {
                return new if6();
            }
            return null;
        }
    }

    public if6() {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (we6.a >= 9) {
            arrayList.add(new SimpleDateFormat("MMM d, yyyy" + StringUtils.SPACE + "h:mm:ss a", locale));
        }
    }

    @Override // defpackage.de6
    public Date a(eg6 eg6Var) throws IOException {
        if (eg6Var.Q() == fg6.NULL) {
            eg6Var.E();
            return null;
        }
        String strI = eg6Var.I();
        synchronized (this) {
            Iterator<DateFormat> it = this.a.iterator();
            while (it.hasNext()) {
                try {
                    return it.next().parse(strI);
                } catch (ParseException unused) {
                }
            }
            try {
                return zf6.b(strI, new ParsePosition(0));
            } catch (ParseException e) {
                throw new be6(strI, e);
            }
        }
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, Date date) throws IOException {
        Date date2 = date;
        synchronized (this) {
            if (date2 == null) {
                gg6Var.m();
            } else {
                gg6Var.D(this.a.get(0).format(date2));
            }
        }
    }
}
