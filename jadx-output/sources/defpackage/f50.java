package defpackage;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
/* loaded from: classes.dex */
public final class f50 {
    public static void a(final e50 e50Var, b50 b50Var) {
        File externalStorageDirectory;
        if (b50Var.c == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(b50Var.d)) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        Context context = b50Var.c;
        String str = b50Var.d;
        String str2 = b50Var.a;
        Map<String, String> map = b50Var.b;
        e50Var.e = context;
        e50Var.f = str;
        e50Var.d = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        e50Var.h = atomicBoolean;
        atomicBoolean.set(n60.c.a().booleanValue());
        if (e50Var.h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            e50Var.i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            e50Var.b.put(entry.getKey(), entry.getValue());
        }
        ms0.a.execute(new Runnable(e50Var) { // from class: d50
            public final e50 e;

            {
                this.e = e50Var;
            }

            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                e50 e50Var2 = this.e;
                Objects.requireNonNull(e50Var2);
                while (true) {
                    try {
                        o50 o50VarTake = e50Var2.a.take();
                        n50 n50VarC = o50VarTake.c();
                        if (!TextUtils.isEmpty(n50VarC.a)) {
                            e50Var2.b(e50Var2.a(e50Var2.b, o50VarTake.d()), n50VarC);
                        }
                    } catch (InterruptedException e) {
                        is0.zzd("CsiReporter:reporter interrupted", e);
                        return;
                    }
                }
            }
        });
        Map<String, i50> map2 = e50Var.c;
        i50 i50Var = i50.b;
        map2.put("action", i50Var);
        e50Var.c.put("ad_format", i50Var);
        e50Var.c.put("e", i50.c);
    }
}
