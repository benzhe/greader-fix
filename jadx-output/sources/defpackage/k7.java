package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: classes.dex */
public class k7 {
    public final Bundle a;
    public IconCompat b;
    public final r7[] c;
    public final r7[] d;
    public boolean e;
    public boolean f;
    public final int g;
    public final boolean h;

    @Deprecated
    public int i;
    public CharSequence j;
    public PendingIntent k;

    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k7(int r12, java.lang.CharSequence r13, android.app.PendingIntent r14) {
        /*
            r11 = this;
            r0 = 0
            if (r12 != 0) goto L5
            r12 = r0
            goto Lb
        L5:
            java.lang.String r1 = ""
            androidx.core.graphics.drawable.IconCompat r12 = androidx.core.graphics.drawable.IconCompat.b(r0, r1, r12)
        Lb:
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            r11.<init>()
            r2 = 1
            r11.f = r2
            r11.b = r12
            r3 = 0
            if (r12 == 0) goto L95
            int r4 = r12.a
            r5 = -1
            if (r4 != r5) goto L8c
            int r6 = android.os.Build.VERSION.SDK_INT
            r7 = 23
            if (r6 < r7) goto L8c
            java.lang.Object r4 = r12.b
            android.graphics.drawable.Icon r4 = (android.graphics.drawable.Icon) r4
            java.lang.String r7 = "Unable to get icon type "
            java.lang.String r8 = "IconCompat"
            r9 = 28
            if (r6 < r9) goto L37
            int r4 = r4.getType()
            goto L8c
        L37:
            java.lang.Class r6 = r4.getClass()     // Catch: java.lang.NoSuchMethodException -> L50 java.lang.reflect.InvocationTargetException -> L64 java.lang.IllegalAccessException -> L78
            java.lang.String r9 = "getType"
            java.lang.Class[] r10 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L50 java.lang.reflect.InvocationTargetException -> L64 java.lang.IllegalAccessException -> L78
            java.lang.reflect.Method r6 = r6.getMethod(r9, r10)     // Catch: java.lang.NoSuchMethodException -> L50 java.lang.reflect.InvocationTargetException -> L64 java.lang.IllegalAccessException -> L78
            java.lang.Object[] r9 = new java.lang.Object[r3]     // Catch: java.lang.NoSuchMethodException -> L50 java.lang.reflect.InvocationTargetException -> L64 java.lang.IllegalAccessException -> L78
            java.lang.Object r6 = r6.invoke(r4, r9)     // Catch: java.lang.NoSuchMethodException -> L50 java.lang.reflect.InvocationTargetException -> L64 java.lang.IllegalAccessException -> L78
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.NoSuchMethodException -> L50 java.lang.reflect.InvocationTargetException -> L64 java.lang.IllegalAccessException -> L78
            int r4 = r6.intValue()     // Catch: java.lang.NoSuchMethodException -> L50 java.lang.reflect.InvocationTargetException -> L64 java.lang.IllegalAccessException -> L78
            goto L8c
        L50:
            r6 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r9.append(r7)
            r9.append(r4)
            java.lang.String r4 = r9.toString()
            android.util.Log.e(r8, r4, r6)
            goto L8b
        L64:
            r6 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r9.append(r7)
            r9.append(r4)
            java.lang.String r4 = r9.toString()
            android.util.Log.e(r8, r4, r6)
            goto L8b
        L78:
            r6 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r9.append(r7)
            r9.append(r4)
            java.lang.String r4 = r9.toString()
            android.util.Log.e(r8, r4, r6)
        L8b:
            r4 = -1
        L8c:
            r5 = 2
            if (r4 != r5) goto L95
            int r12 = r12.c()
            r11.i = r12
        L95:
            java.lang.CharSequence r12 = defpackage.m7.c(r13)
            r11.j = r12
            r11.k = r14
            r11.a = r1
            r11.c = r0
            r11.d = r0
            r11.e = r2
            r11.g = r3
            r11.f = r2
            r11.h = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k7.<init>(int, java.lang.CharSequence, android.app.PendingIntent):void");
    }

    public IconCompat a() {
        int i;
        if (this.b == null && (i = this.i) != 0) {
            this.b = IconCompat.b(null, "", i);
        }
        return this.b;
    }
}
