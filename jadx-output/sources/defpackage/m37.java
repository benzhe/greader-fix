package defpackage;

import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class m37 implements Comparable<m37> {
    public static final b h = new b(null);
    public static final long i;
    public static final long j;
    public static final long k;
    public final c e;
    public final long f;
    public volatile boolean g;

    public static class b extends c {
        public b() {
        }

        public b(a aVar) {
        }
    }

    public static abstract class c {
    }

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        i = nanos;
        j = -nanos;
        k = TimeUnit.SECONDS.toNanos(1L);
    }

    public m37(c cVar, long j2, boolean z) {
        Objects.requireNonNull((b) cVar);
        long jNanoTime = System.nanoTime();
        this.e = cVar;
        long jMin = Math.min(i, Math.max(j, j2));
        this.f = jNanoTime + jMin;
        this.g = z && jMin <= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m37)) {
            return false;
        }
        m37 m37Var = (m37) obj;
        c cVar = this.e;
        if (cVar != null ? cVar == m37Var.e : m37Var.e == null) {
            return this.f == m37Var.f;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.asList(this.e, Long.valueOf(this.f)).hashCode();
    }

    public final void i(m37 m37Var) {
        if (this.e == m37Var.e) {
            return;
        }
        StringBuilder sbZ = jo.z("Tickers (");
        sbZ.append(this.e);
        sbZ.append(" and ");
        sbZ.append(m37Var.e);
        sbZ.append(") don't match. Custom Ticker should only be used in tests!");
        throw new AssertionError(sbZ.toString());
    }

    @Override // java.lang.Comparable
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public int compareTo(m37 m37Var) {
        i(m37Var);
        long j2 = this.f - m37Var.f;
        if (j2 < 0) {
            return -1;
        }
        return j2 > 0 ? 1 : 0;
    }

    public boolean l() {
        if (!this.g) {
            long j2 = this.f;
            Objects.requireNonNull((b) this.e);
            if (j2 - System.nanoTime() > 0) {
                return false;
            }
            this.g = true;
        }
        return true;
    }

    public long t(TimeUnit timeUnit) {
        Objects.requireNonNull((b) this.e);
        long jNanoTime = System.nanoTime();
        if (!this.g && this.f - jNanoTime <= 0) {
            this.g = true;
        }
        return timeUnit.convert(this.f - jNanoTime, TimeUnit.NANOSECONDS);
    }

    public String toString() {
        long jT = t(TimeUnit.NANOSECONDS);
        long jAbs = Math.abs(jT);
        long j2 = k;
        long j3 = jAbs / j2;
        long jAbs2 = Math.abs(jT) % j2;
        StringBuilder sb = new StringBuilder();
        if (jT < 0) {
            sb.append('-');
        }
        sb.append(j3);
        if (jAbs2 > 0) {
            sb.append(String.format(".%09d", Long.valueOf(jAbs2)));
        }
        sb.append("s from now");
        if (this.e != h) {
            StringBuilder sbZ = jo.z(" (ticker=");
            sbZ.append(this.e);
            sbZ.append(")");
            sb.append(sbZ.toString());
        }
        return sb.toString();
    }
}
