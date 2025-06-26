package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes.dex */
public final /* synthetic */ class yy1 implements jo2 {
    public final sy1 a;
    public final zy1 b;

    public yy1(sy1 sy1Var, zy1 zy1Var) {
        this.a = sy1Var;
        this.b = zy1Var;
    }

    @Override // defpackage.jo2
    public final Object apply(Object obj) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        sy1 sy1Var = this.a;
        zy1 zy1Var = this.b;
        Objects.requireNonNull(sy1Var);
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(zy1Var.a));
        contentValues.put("gws_query_id", zy1Var.b);
        contentValues.put("url", zy1Var.c);
        contentValues.put("event_state", Integer.valueOf(zy1Var.d - 1));
        ((SQLiteDatabase) obj).insert("offline_buffered_pings", null, contentValues);
        zzr.zzkv();
        zzbg zzbgVarZzbg = zzj.zzbg(sy1Var.e);
        if (zzbgVarZzbg != null) {
            try {
                zzbgVarZzbg.zzaq(new y20(sy1Var.e));
            } catch (RemoteException e) {
                zzd.zza("Failed to schedule offline ping sender.", e);
            }
        }
        return null;
    }
}
