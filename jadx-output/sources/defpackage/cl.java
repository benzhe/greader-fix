package defpackage;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class cl {
    public boolean a;
    public boolean b;
    public boolean c;
    public boolean d;

    public cl(boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = z4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || cl.class != obj.getClass()) {
            return false;
        }
        cl clVar = (cl) obj;
        return this.a == clVar.a && this.b == clVar.b && this.c == clVar.c && this.d == clVar.d;
    }

    public int hashCode() {
        int i = this.a ? 1 : 0;
        if (this.b) {
            i += 16;
        }
        if (this.c) {
            i += RecyclerView.a0.FLAG_TMP_DETACHED;
        }
        return this.d ? i + RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT : i;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.a), Boolean.valueOf(this.b), Boolean.valueOf(this.c), Boolean.valueOf(this.d));
    }
}
