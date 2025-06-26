package defpackage;

import android.app.Application;
import android.content.Context;
import defpackage.e27;
import java.util.Objects;
import okhttp3.OkHttpClient;

/* loaded from: classes.dex */
public final class z16 implements Object<e27> {
    public final y16 a;
    public final jj7<Application> b;
    public final jj7<g06> c;

    public z16(y16 y16Var, jj7<Application> jj7Var, jj7<g06> jj7Var2) {
        this.a = y16Var;
        this.b = jj7Var;
        this.c = jj7Var2;
    }

    public Object get() {
        y16 y16Var = this.a;
        Application application = this.b.get();
        g06 g06Var = this.c.get();
        Objects.requireNonNull(y16Var);
        OkHttpClient okHttpClientBuild = new OkHttpClient.Builder().addInterceptor(new x16(y16Var)).build();
        if (application == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        Context applicationContext = application.getApplicationContext();
        if (g06Var == null) {
            throw new IllegalArgumentException("Listener must not be null.");
        }
        d27 d27Var = new d27(okHttpClientBuild);
        y17 y17Var = new y17(applicationContext);
        g27 g27Var = new g27();
        e27.f fVar = e27.f.a;
        l27 l27Var = new l27(y17Var);
        return new e27(applicationContext, new t17(applicationContext, g27Var, e27.o, d27Var, y17Var, l27Var), y17Var, g06Var, fVar, null, l27Var, null, false, false);
    }
}
