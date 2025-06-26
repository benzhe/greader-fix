package defpackage;

/* loaded from: classes.dex */
public final class nn3 {
    public final long a;
    public final String b;
    public final int c;

    public nn3(long j, String str, int i) {
        this.a = j;
        this.b = str;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof nn3)) {
            nn3 nn3Var = (nn3) obj;
            if (nn3Var.a == this.a && nn3Var.c == this.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.a;
    }
}
