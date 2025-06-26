package defpackage;

import android.graphics.Bitmap;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Objects;

/* loaded from: classes2.dex */
public class dz6 implements bz6 {
    public final LinkedHashMap<String, Bitmap> a;
    public final int b;
    public int c;

    public dz6(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.b = i;
        this.a = new LinkedHashMap<>(0, 0.75f, true);
    }

    @Override // defpackage.bz6
    public final Bitmap a(String str) {
        Bitmap bitmap;
        Objects.requireNonNull(str, "key == null");
        synchronized (this) {
            bitmap = this.a.get(str);
        }
        return bitmap;
    }

    @Override // defpackage.bz6
    public Collection<String> b() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.a.keySet());
        }
        return hashSet;
    }

    @Override // defpackage.bz6
    public final Bitmap c(String str) {
        Bitmap bitmapRemove;
        Objects.requireNonNull(str, "key == null");
        synchronized (this) {
            bitmapRemove = this.a.remove(str);
            if (bitmapRemove != null) {
                this.c -= e(bitmapRemove);
            }
        }
        return bitmapRemove;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0093, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    @Override // defpackage.bz6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(java.lang.String r3, android.graphics.Bitmap r4) {
        /*
            r2 = this;
            if (r3 == 0) goto L9a
            if (r4 == 0) goto L9a
            monitor-enter(r2)
            int r0 = r2.c     // Catch: java.lang.Throwable -> L97
            int r1 = r2.e(r4)     // Catch: java.lang.Throwable -> L97
            int r0 = r0 + r1
            r2.c = r0     // Catch: java.lang.Throwable -> L97
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r2.a     // Catch: java.lang.Throwable -> L97
            java.lang.Object r3 = r0.put(r3, r4)     // Catch: java.lang.Throwable -> L97
            android.graphics.Bitmap r3 = (android.graphics.Bitmap) r3     // Catch: java.lang.Throwable -> L97
            if (r3 == 0) goto L21
            int r4 = r2.c     // Catch: java.lang.Throwable -> L97
            int r3 = r2.e(r3)     // Catch: java.lang.Throwable -> L97
            int r4 = r4 - r3
            r2.c = r4     // Catch: java.lang.Throwable -> L97
        L21:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L97
            int r3 = r2.b
        L24:
            monitor-enter(r2)
            int r4 = r2.c     // Catch: java.lang.Throwable -> L94
            if (r4 < 0) goto L75
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r4 = r2.a     // Catch: java.lang.Throwable -> L94
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L94
            if (r4 == 0) goto L35
            int r4 = r2.c     // Catch: java.lang.Throwable -> L94
            if (r4 != 0) goto L75
        L35:
            int r4 = r2.c     // Catch: java.lang.Throwable -> L94
            if (r4 <= r3) goto L72
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r4 = r2.a     // Catch: java.lang.Throwable -> L94
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L94
            if (r4 == 0) goto L42
            goto L72
        L42:
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r4 = r2.a     // Catch: java.lang.Throwable -> L94
            java.util.Set r4 = r4.entrySet()     // Catch: java.lang.Throwable -> L94
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L94
            java.lang.Object r4 = r4.next()     // Catch: java.lang.Throwable -> L94
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4     // Catch: java.lang.Throwable -> L94
            if (r4 != 0) goto L56
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L94
            goto L73
        L56:
            java.lang.Object r0 = r4.getKey()     // Catch: java.lang.Throwable -> L94
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L94
            java.lang.Object r4 = r4.getValue()     // Catch: java.lang.Throwable -> L94
            android.graphics.Bitmap r4 = (android.graphics.Bitmap) r4     // Catch: java.lang.Throwable -> L94
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r1 = r2.a     // Catch: java.lang.Throwable -> L94
            r1.remove(r0)     // Catch: java.lang.Throwable -> L94
            int r0 = r2.c     // Catch: java.lang.Throwable -> L94
            int r4 = r2.e(r4)     // Catch: java.lang.Throwable -> L94
            int r0 = r0 - r4
            r2.c = r0     // Catch: java.lang.Throwable -> L94
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L94
            goto L24
        L72:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L94
        L73:
            r3 = 1
            return r3
        L75:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L94
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L94
            r4.<init>()     // Catch: java.lang.Throwable -> L94
            java.lang.Class r0 = r2.getClass()     // Catch: java.lang.Throwable -> L94
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Throwable -> L94
            r4.append(r0)     // Catch: java.lang.Throwable -> L94
            java.lang.String r0 = ".sizeOf() is reporting inconsistent results!"
            r4.append(r0)     // Catch: java.lang.Throwable -> L94
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L94
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L94
            throw r3     // Catch: java.lang.Throwable -> L94
        L94:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L94
            throw r3
        L97:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L97
            throw r3
        L9a:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException
            java.lang.String r4 = "key == null || value == null"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dz6.d(java.lang.String, android.graphics.Bitmap):boolean");
    }

    public final int e(Bitmap bitmap) {
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxSize=%d]", Integer.valueOf(this.b));
    }
}
