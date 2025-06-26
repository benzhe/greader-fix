package defpackage;

import com.google.android.gms.internal.ads.zzht;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public class oj3 implements yj3 {
    public final kj3 a;
    public final int b;
    public final int[] c;
    public final zzht[] d;
    public int e;

    public oj3(kj3 kj3Var, int... iArr) {
        c50.D(iArr.length > 0);
        Objects.requireNonNull(kj3Var);
        this.a = kj3Var;
        int length = iArr.length;
        this.b = length;
        this.d = new zzht[length];
        for (int i = 0; i < iArr.length; i++) {
            this.d[i] = kj3Var.b[iArr[i]];
        }
        Arrays.sort(this.d, new pj3(null));
        this.c = new int[this.b];
        int i2 = 0;
        while (true) {
            int i3 = this.b;
            if (i2 >= i3) {
                long[] jArr = new long[i3];
                return;
            }
            int[] iArr2 = this.c;
            zzht zzhtVar = this.d[i2];
            int i4 = 0;
            while (true) {
                zzht[] zzhtVarArr = kj3Var.b;
                if (i4 >= zzhtVarArr.length) {
                    i4 = -1;
                    break;
                } else if (zzhtVar == zzhtVarArr[i4]) {
                    break;
                } else {
                    i4++;
                }
            }
            iArr2[i2] = i4;
            i2++;
        }
    }

    @Override // defpackage.yj3
    public final int a(int i) {
        return this.c[0];
    }

    @Override // defpackage.yj3
    public final kj3 b() {
        return this.a;
    }

    @Override // defpackage.yj3
    public final zzht c(int i) {
        return this.d[i];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            oj3 oj3Var = (oj3) obj;
            if (this.a == oj3Var.a && Arrays.equals(this.c, oj3Var.c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.e == 0) {
            this.e = Arrays.hashCode(this.c) + (System.identityHashCode(this.a) * 31);
        }
        return this.e;
    }

    @Override // defpackage.yj3
    public final int length() {
        return this.c.length;
    }
}
