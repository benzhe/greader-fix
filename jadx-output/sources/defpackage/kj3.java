package defpackage;

import com.google.android.gms.internal.ads.zzht;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class kj3 {
    public final int a;
    public final zzht[] b;
    public int c;

    public kj3(zzht... zzhtVarArr) {
        c50.D(zzhtVarArr.length > 0);
        this.b = zzhtVarArr;
        this.a = zzhtVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && kj3.class == obj.getClass()) {
            kj3 kj3Var = (kj3) obj;
            if (this.a == kj3Var.a && Arrays.equals(this.b, kj3Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b) + 527;
        }
        return this.c;
    }
}
