package defpackage;

import java.util.UUID;

/* loaded from: classes.dex */
public final class zd3 {
    public static final int a;
    public static final UUID b;

    static {
        a = el3.a < 23 ? 1020 : 6396;
        b = new UUID(0L, 0L);
        new UUID(1186680826959645954L, -5988876978535335093L);
        new UUID(-1301668207276963122L, -6645017420763422227L);
        new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    public static long b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }
}
