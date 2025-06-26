package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public final class zx1 implements rv2<SQLiteDatabase> {
    public final /* synthetic */ jo2 a;

    public zx1(jo2 jo2Var) {
        this.a = jo2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        String strValueOf = String.valueOf(th.getMessage());
        is0.zzex(strValueOf.length() != 0 ? "Failed to get offline signal database: ".concat(strValueOf) : new String("Failed to get offline signal database: "));
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(SQLiteDatabase sQLiteDatabase) {
        try {
            this.a.apply(sQLiteDatabase);
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            is0.zzex(strValueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(strValueOf) : new String("Error executing function on offline signal database: "));
        }
    }
}
