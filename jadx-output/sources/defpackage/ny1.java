package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import defpackage.eq3;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ny1 {
    public ep3 a;
    public Context b;
    public xx1 c;
    public zzbar d;
    public final String e;
    public final pp2 f;
    public final zzf g = zzr.zzkz().f();

    public ny1(Context context, zzbar zzbarVar, ep3 ep3Var, xx1 xx1Var, String str, pp2 pp2Var) {
        this.b = context;
        this.d = zzbarVar;
        this.a = ep3Var;
        this.c = xx1Var;
        this.e = str;
        this.f = pp2Var;
    }

    public static void a(SQLiteDatabase sQLiteDatabase, ArrayList<eq3.a> arrayList) {
        int size = arrayList.size();
        int i = 0;
        long jX = 0;
        while (i < size) {
            eq3.a aVar = arrayList.get(i);
            i++;
            eq3.a aVar2 = aVar;
            if (aVar2.M() == vq3.ENUM_TRUE && aVar2.x() > jX) {
                jX = aVar2.x();
            }
        }
        if (jX != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(jX));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }
}
