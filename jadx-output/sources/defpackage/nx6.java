package defpackage;

/* loaded from: classes2.dex */
public class nx6 implements Comparable<Object> {
    public boolean e;
    public long f;
    public long g;

    public nx6(long j, long j2, boolean z) {
        this.e = false;
        this.f = j;
        this.g = j2;
        this.e = z;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        nx6 nx6Var = (nx6) obj;
        long j = nx6Var.f;
        long j2 = nx6Var.g;
        if (this.e) {
            long j3 = this.g;
            if (j3 <= j2) {
                if (j3 == j2) {
                    long j4 = this.f;
                    if (j4 >= j) {
                        if (j4 == j) {
                            return 0;
                        }
                    }
                }
                return 1;
            }
            return -1;
        }
        long j5 = this.g;
        if (j5 >= j2) {
            if (j5 == j2) {
                long j6 = this.f;
                if (j6 <= j) {
                    if (j6 == j) {
                        return 0;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    public String toString() {
        return String.valueOf(this.f);
    }
}
