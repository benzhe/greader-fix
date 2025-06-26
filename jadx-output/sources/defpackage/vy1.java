package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public final /* synthetic */ class vy1 implements jo2 {
    public final String a;

    public vy1(sy1 sy1Var, String str) {
        this.a = str;
    }

    @Override // defpackage.jo2
    public final Object apply(Object obj) {
        sy1.b((SQLiteDatabase) obj, this.a);
        return null;
    }
}
