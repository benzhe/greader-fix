package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import defpackage.ny;
import defpackage.qy;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* loaded from: classes.dex */
public abstract class m00<T extends IInterface> extends i00<T> implements ny.f {
    public final Set<Scope> D;
    public final Account E;

    /* JADX WARN: Illegal instructions before constructor call */
    public m00(Context context, Looper looper, int i, j00 j00Var, qy.a aVar, qy.b bVar) {
        n00 n00VarA = n00.a(context);
        Object obj = fy.c;
        fy fyVar = fy.d;
        Objects.requireNonNull(aVar, "null reference");
        Objects.requireNonNull(bVar, "null reference");
        super(context, looper, n00VarA, fyVar, i, new b10(aVar), new c10(bVar), j00Var.f);
        this.E = j00Var.a;
        Set<Scope> set = j00Var.c;
        Iterator<Scope> it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.D = set;
    }

    @Override // defpackage.i00
    public final Set<Scope> d() {
        return this.D;
    }

    @Override // defpackage.i00
    public final Account getAccount() {
        return this.E;
    }

    @Override // defpackage.i00, ny.f
    public int getMinApkVersion() {
        return super.getMinApkVersion();
    }
}
