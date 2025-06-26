package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import defpackage.j00;
import defpackage.ny;
import java.util.Collections;
import java.util.Set;
import ny.d;

/* loaded from: classes.dex */
public class py<O extends ny.d> {
    public final Context a;
    public final ny<O> b;
    public final O c;
    public final b00<O> d;
    public final Looper e;
    public final int f;
    public final qy g;
    public final zy h;

    public static class a {
        public final wy a;
        public final Looper b;

        static {
            Looper.getMainLooper();
        }

        public a(wy wyVar, Account account, Looper looper) {
            this.a = wyVar;
            this.b = looper;
        }
    }

    @Deprecated
    public py(Context context, ny<O> nyVar, O o, wy wyVar) {
        bi.j(wyVar, "StatusExceptionMapper must not be null.");
        a aVar = new a(wyVar, null, Looper.getMainLooper());
        bi.j(context, "Null context is not permitted.");
        bi.j(nyVar, "Api must not be null.");
        bi.j(aVar, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = nyVar;
        this.c = null;
        this.e = aVar.b;
        this.d = new b00<>(nyVar, null);
        this.g = new pz(this);
        zy zyVarA = zy.a(applicationContext);
        this.h = zyVarA;
        this.f = zyVarA.i.getAndIncrement();
        Handler handler = zyVarA.n;
        handler.sendMessage(handler.obtainMessage(7, this));
    }

    public j00.a a() {
        GoogleSignInAccount googleSignInAccountA;
        GoogleSignInAccount googleSignInAccountA2;
        j00.a aVar = new j00.a();
        O o = this.c;
        Account accountB = null;
        if (!(o instanceof ny.d.b) || (googleSignInAccountA2 = ((ny.d.b) o).a()) == null) {
            O o2 = this.c;
            if (o2 instanceof ny.d.a) {
                accountB = ((ny.d.a) o2).b();
            }
        } else if (googleSignInAccountA2.h != null) {
            accountB = new Account(googleSignInAccountA2.h, "com.google");
        }
        aVar.a = accountB;
        O o3 = this.c;
        Set<Scope> setEmptySet = (!(o3 instanceof ny.d.b) || (googleSignInAccountA = ((ny.d.b) o3).a()) == null) ? Collections.emptySet() : googleSignInAccountA.n();
        if (aVar.b == null) {
            aVar.b = new h4<>(0);
        }
        aVar.b.addAll(setEmptySet);
        aVar.d = this.a.getClass().getName();
        aVar.c = this.a.getPackageName();
        return aVar;
    }
}
