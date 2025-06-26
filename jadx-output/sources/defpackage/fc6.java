package defpackage;

import android.util.Log;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import org.json.JSONException;

/* loaded from: classes.dex */
public class fc6 {
    public static final Pattern e;
    public static final Pattern f;
    public final Set<a20<String, yb6>> a = new HashSet();
    public final Executor b;
    public final xb6 c;
    public final xb6 d;

    static {
        Charset.forName("UTF-8");
        e = Pattern.compile("^(1|true|t|yes|y|on)$", 2);
        f = Pattern.compile("^(0|false|f|no|n|off|)$", 2);
    }

    public fc6(Executor executor, xb6 xb6Var, xb6 xb6Var2) {
        this.b = executor;
        this.c = xb6Var;
        this.d = xb6Var2;
    }

    public static yb6 b(xb6 xb6Var) {
        synchronized (xb6Var) {
            e45<yb6> e45Var = xb6Var.c;
            if (e45Var != null && e45Var.o()) {
                return xb6Var.c.l();
            }
            try {
                return (yb6) xb6.a(xb6Var.b(), 5L, TimeUnit.SECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException e2) {
                Log.d("FirebaseRemoteConfig", "Reading from storage file failed.", e2);
                return null;
            }
        }
    }

    public static Long c(xb6 xb6Var, String str) {
        yb6 yb6VarB = b(xb6Var);
        if (yb6VarB == null) {
            return null;
        }
        try {
            return Long.valueOf(yb6VarB.b.getLong(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String d(xb6 xb6Var, String str) {
        yb6 yb6VarB = b(xb6Var);
        if (yb6VarB == null) {
            return null;
        }
        try {
            return yb6VarB.b.getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static void e(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    public final void a(final String str, final yb6 yb6Var) {
        if (yb6Var == null) {
            return;
        }
        synchronized (this.a) {
            for (final a20<String, yb6> a20Var : this.a) {
                this.b.execute(new Runnable(a20Var, str, yb6Var) { // from class: ec6
                    public final a20 e;
                    public final String f;
                    public final yb6 g;

                    {
                        this.e = a20Var;
                        this.f = str;
                        this.g = yb6Var;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        a20 a20Var2 = this.e;
                        String str2 = this.f;
                        yb6 yb6Var2 = this.g;
                        Pattern pattern = fc6.e;
                        a20Var2.accept(str2, yb6Var2);
                    }
                });
            }
        }
    }
}
