package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class eq7 extends qq7 implements up7 {
    @Override // defpackage.up7
    public eq7 a() {
        return this;
    }

    public final String i(String str) {
        StringBuilder sbC = jo.C("List{", str, "}[");
        Object objE = e();
        Objects.requireNonNull(objE, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        boolean z = true;
        for (sq7 sq7VarF = (sq7) objE; !im7.a(sq7VarF, this); sq7VarF = sq7VarF.f()) {
            if (sq7VarF instanceof bq7) {
                bq7 bq7Var = (bq7) sq7VarF;
                if (z) {
                    z = false;
                } else {
                    sbC.append(", ");
                }
                sbC.append(bq7Var);
            }
        }
        sbC.append("]");
        String string = sbC.toString();
        im7.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // defpackage.up7
    public boolean isActive() {
        return true;
    }

    @Override // defpackage.sq7
    public String toString() {
        return fp7.a ? i("Active") : super.toString();
    }
}
