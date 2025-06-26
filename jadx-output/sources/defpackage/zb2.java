package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zb2 implements qd2<ac2> {
    public final zv2 a;
    public final Context b;
    public final Set<String> c;

    public zb2(zv2 zv2Var, Context context, Set<String> set) {
        this.a = zv2Var;
        this.b = context;
        this.c = set;
    }

    @Override // defpackage.qd2
    public final aw2<ac2> a() {
        return this.a.y(new Callable(this) { // from class: cc2
            public final zb2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zb2 zb2Var = this.e;
                Objects.requireNonNull(zb2Var);
                o40<Boolean> o40Var = y40.T2;
                String strConcat = null;
                if (((Boolean) os3.j.f.a(o40Var)).booleanValue()) {
                    Set<String> set = zb2Var.c;
                    if (set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner")) {
                        rk0 rk0VarZzlk = zzr.zzlk();
                        Context context = zb2Var.b;
                        Objects.requireNonNull(rk0VarZzlk);
                        if (((Boolean) os3.j.f.a(o40Var)).booleanValue()) {
                            try {
                                rk0VarZzlk.f(context);
                                String strValueOf = String.valueOf(rk0VarZzlk.a.m6());
                                strConcat = strValueOf.length() != 0 ? "a.".concat(strValueOf) : new String("a.");
                            } catch (RemoteException | NullPointerException e) {
                                is0.zze("#007 Could not call remote method.", e);
                            }
                        }
                        return new ac2(strConcat);
                    }
                }
                return new ac2(null);
            }
        });
    }
}
