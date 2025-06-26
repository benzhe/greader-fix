package defpackage;

import android.content.SharedPreferences;
import java.util.Date;

/* loaded from: classes.dex */
public class gc6 {
    public static final Date d = new Date(-1);
    public static final Date e = new Date(-1);
    public final SharedPreferences a;
    public final Object b = new Object();
    public final Object c = new Object();

    public static class a {
        public int a;
        public Date b;

        public a(int i, Date date) {
            this.a = i;
            this.b = date;
        }
    }

    public gc6(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    public a a() {
        a aVar;
        synchronized (this.c) {
            aVar = new a(this.a.getInt("num_failed_fetches", 0), new Date(this.a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }

    public void b(int i, Date date) {
        synchronized (this.c) {
            this.a.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }
}
