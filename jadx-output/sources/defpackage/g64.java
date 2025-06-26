package defpackage;

import android.content.Context;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class g64 extends a74 {
    public final Context a;
    public final g74<e74<q64>> b;

    public g64(Context context, g74<e74<q64>> g74Var) {
        this.a = context;
        this.b = g74Var;
    }

    @Override // defpackage.a74
    public final Context a() {
        return this.a;
    }

    @Override // defpackage.a74
    public final g74<e74<q64>> b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        g74<e74<q64>> g74Var;
        if (obj == this) {
            return true;
        }
        if (obj instanceof a74) {
            a74 a74Var = (a74) obj;
            if (this.a.equals(a74Var.a()) && ((g74Var = this.b) != null ? g74Var.equals(a74Var.b()) : a74Var.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        g74<e74<q64>> g74Var = this.b;
        return iHashCode ^ (g74Var == null ? 0 : g74Var.hashCode());
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        String strValueOf2 = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 46 + strValueOf2.length());
        jo.J(sb, "FlagsContext{context=", strValueOf, ", hermeticFileOverrides=", strValueOf2);
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }
}
