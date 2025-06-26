package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class cy5 {
    public static cy5 b;
    public static final SimpleDateFormat c = new SimpleDateFormat("dd/MM/yyyy z");
    public final SharedPreferences a;

    public cy5(Context context) {
        this.a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    public synchronized boolean a(String str, long j) {
        if (!this.a.contains(str)) {
            this.a.edit().putLong(str, j).apply();
            return true;
        }
        Date date = new Date(this.a.getLong(str, -1L));
        Date date2 = new Date(j);
        SimpleDateFormat simpleDateFormat = c;
        if (!(!simpleDateFormat.format(date).equals(simpleDateFormat.format(date2)))) {
            return false;
        }
        this.a.edit().putLong(str, j).apply();
        return true;
    }
}
