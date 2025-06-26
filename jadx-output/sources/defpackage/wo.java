package defpackage;

import defpackage.ap;
import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class wo extends fp implements Serializable {
    public static final int i;
    public static final int j;
    public static final int k;
    public static final ep l;
    public final transient vp e;
    public int f;
    public int g;
    public cp h;

    public enum a {
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true),
        FAIL_ON_SYMBOL_HASH_OVERFLOW(true),
        USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING(true);

        public final boolean e;

        a(boolean z) {
            this.e = z;
        }

        public boolean i(int i) {
            return (i & (1 << ordinal())) != 0;
        }
    }

    static {
        a[] aVarArrValues = a.values();
        int iOrdinal = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            a aVar = aVarArrValues[i2];
            if (aVar.e) {
                iOrdinal |= 1 << aVar.ordinal();
            }
        }
        i = iOrdinal;
        ap.a[] aVarArrValues2 = ap.a.values();
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            ap.a aVar2 = aVarArrValues2[i4];
            if (aVar2.e) {
                i3 |= aVar2.f;
            }
        }
        j = i3;
        xo[] xoVarArrValues = xo.values();
        int i5 = 0;
        for (int i6 = 0; i6 < 10; i6++) {
            xo xoVar = xoVarArrValues[i6];
            if (xoVar.e) {
                i5 |= xoVar.f;
            }
        }
        k = i5;
        l = yp.e;
    }

    public wo() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.e = new vp((((int) jCurrentTimeMillis) + ((int) (jCurrentTimeMillis >>> 32))) | 1);
        System.currentTimeMillis();
        new AtomicReference(new up(64, 0, 4, new int[512], new String[128], 448, 512));
        this.f = i;
        this.g = j;
        this.h = null;
    }

    public ap a(Reader reader) throws IOException {
        wp wpVar;
        SoftReference<wp> softReference;
        if (a.USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING.i(this.f)) {
            SoftReference<wp> softReference2 = xp.b.get();
            wpVar = softReference2 == null ? null : softReference2.get();
            if (wpVar == null) {
                wpVar = new wp();
                bq bqVar = xp.a;
                if (bqVar != null) {
                    softReference = new SoftReference<>(wpVar, bqVar.b);
                    bqVar.a.put(softReference, Boolean.TRUE);
                    while (true) {
                        SoftReference softReference3 = (SoftReference) bqVar.b.poll();
                        if (softReference3 == null) {
                            break;
                        }
                        bqVar.a.remove(softReference3);
                    }
                } else {
                    softReference = new SoftReference<>(wpVar);
                }
                xp.b.set(softReference);
            }
        } else {
            wpVar = new wp();
        }
        lp lpVar = new lp(wpVar, reader, false);
        int i2 = this.g;
        cp cpVar = this.h;
        vp vpVar = this.e;
        return new tp(lpVar, i2, reader, cpVar, new vp(vpVar, this.f, vpVar.c, vpVar.b.get()));
    }
}
