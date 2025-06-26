package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import defpackage.i00;
import defpackage.qy;
import java.util.Set;
import ny.d;

/* loaded from: classes.dex */
public final class ny<O extends d> {
    public final a<?, O> a;
    public final g<?> b;
    public final String c;

    public static abstract class a<T extends f, O> extends e<T, O> {
        public abstract T a(Context context, Looper looper, j00 j00Var, O o, qy.a aVar, qy.b bVar);
    }

    public interface b {
    }

    public static class c<C extends b> {
    }

    public interface d {

        public interface a extends d {
            Account b();
        }

        public interface b extends d {
            GoogleSignInAccount a();
        }
    }

    public static abstract class e<T extends b, O> {
    }

    public interface f extends b {
        void connect(i00.c cVar);

        void disconnect();

        Feature[] getAvailableFeatures();

        String getEndpointPackageName();

        int getMinApkVersion();

        void getRemoteService(q00 q00Var, Set<Scope> set);

        boolean isConnected();

        boolean isConnecting();

        void onUserSignOut(i00.e eVar);

        boolean requiresGooglePlayServices();

        boolean requiresSignIn();
    }

    public static final class g<C extends f> extends c<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends f> ny(String str, a<C, O> aVar, g<C> gVar) {
        bi.j(aVar, "Cannot construct an Api with a null ClientBuilder");
        bi.j(gVar, "Cannot construct an Api with a null ClientKey");
        this.c = str;
        this.a = aVar;
        this.b = gVar;
    }
}
