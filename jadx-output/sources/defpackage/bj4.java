package defpackage;

import android.content.Context;
import defpackage.fj4;
import defpackage.sf5;
import java.util.Objects;
import yx.a;

/* loaded from: classes.dex */
public class bj4 implements fj4.b {
    public static final o00 b = new o00("ClearcutTransport", "");
    public static final sf5<?> c;
    public final yx a;

    static {
        sf5.b bVarA = sf5.a(bj4.class);
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.d(aj4.a);
        c = bVarA.b();
    }

    public bj4(Context context) {
        this.a = yx.a(context, "FIREBASE_ML_SDK");
    }

    @Override // fj4.b
    public final void a(gp4 gp4Var) throws NumberFormatException {
        o00 o00Var = b;
        String strValueOf = String.valueOf(gp4Var);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 30);
        sb.append("Logging FirebaseMlSdkLogEvent ");
        sb.append(strValueOf);
        o00Var.b("ClearcutTransport", sb.toString());
        try {
            yx yxVar = this.a;
            byte[] bArrD = gp4Var.d();
            Objects.requireNonNull(yxVar);
            yxVar.new a(bArrD, null).a();
        } catch (SecurityException e) {
            b.c("ClearcutTransport", "Exception thrown from the logging side", e);
        }
    }
}
