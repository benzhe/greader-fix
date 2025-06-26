package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class ak3 {
    public final int a;
    public final yj3[] b;
    public int c;

    public ak3(yj3... yj3VarArr) {
        this.b = yj3VarArr;
        this.a = yj3VarArr.length;
    }

    public final yj3 a(int i) {
        return this.b[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ak3.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((ak3) obj).b);
    }

    public final int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b) + 527;
        }
        return this.c;
    }
}
