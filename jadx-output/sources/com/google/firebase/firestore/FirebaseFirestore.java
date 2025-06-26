package com.google.firebase.firestore;

import android.content.Context;
import androidx.annotation.Keep;
import defpackage.ap5;
import defpackage.aq5;
import defpackage.aw5;
import defpackage.c50;
import defpackage.ex5;
import defpackage.iu5;
import defpackage.jw5;
import defpackage.mp5;
import defpackage.mq5;
import defpackage.of5;
import defpackage.op5;
import defpackage.pe5;
import defpackage.po5;
import defpackage.pp5;
import defpackage.qx5;
import defpackage.sp5;
import defpackage.wt5;
import java.util.Objects;

/* loaded from: classes.dex */
public class FirebaseFirestore {
    public final Context a;
    public final wt5 b;
    public final String c;
    public final op5 d;
    public final ex5 e;
    public final mp5 f;
    public ap5 g;
    public volatile mq5 h;
    public final jw5 i;

    public interface a {
    }

    public FirebaseFirestore(Context context, wt5 wt5Var, String str, op5 op5Var, ex5 ex5Var, pe5 pe5Var, a aVar, jw5 jw5Var) {
        Objects.requireNonNull(context);
        this.a = context;
        this.b = wt5Var;
        this.f = new mp5(wt5Var);
        Objects.requireNonNull(str);
        this.c = str;
        this.d = op5Var;
        this.e = ex5Var;
        this.i = jw5Var;
        this.g = new ap5(new ap5.b(), null);
    }

    public static FirebaseFirestore b(Context context, pe5 pe5Var, of5 of5Var, String str, a aVar, jw5 jw5Var) {
        op5 sp5Var;
        pe5Var.a();
        String str2 = pe5Var.c.g;
        if (str2 == null) {
            throw new IllegalArgumentException("FirebaseOptions.getProjectId() cannot be null");
        }
        wt5 wt5Var = new wt5(str2, str);
        ex5 ex5Var = new ex5();
        if (of5Var == null) {
            qx5.a(qx5.a.DEBUG, "FirebaseFirestore", "Firebase Auth not available, falling back to unauthenticated usage.", new Object[0]);
            sp5Var = new pp5();
        } else {
            sp5Var = new sp5(of5Var);
        }
        pe5Var.a();
        return new FirebaseFirestore(context, wt5Var, pe5Var.b, sp5Var, ex5Var, pe5Var, aVar, jw5Var);
    }

    @Keep
    public static void setClientLanguage(String str) {
        aw5.h = str;
    }

    public po5 a(String str) {
        c50.B(str, "Provided collection path must not be null.");
        if (this.h == null) {
            synchronized (this.b) {
                if (this.h == null) {
                    wt5 wt5Var = this.b;
                    String str2 = this.c;
                    ap5 ap5Var = this.g;
                    this.h = new mq5(this.a, new aq5(wt5Var, str2, ap5Var.a, ap5Var.b), ap5Var, this.d, this.e, this.i);
                }
            }
        }
        return new po5(iu5.N(str), this);
    }
}
