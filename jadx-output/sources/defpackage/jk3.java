package defpackage;

import android.net.Uri;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class jk3 {
    public final Uri a;
    public final byte[] b;
    public final long c;
    public final long d;
    public final long e;
    public final String f;
    public final int g;

    public jk3(Uri uri, long j, long j2, String str) {
        this(uri, null, j, j, j2, null, 0);
    }

    public final boolean a() {
        return (this.g & 1) == 1;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        String string = Arrays.toString(this.b);
        long j = this.c;
        long j2 = this.d;
        long j3 = this.e;
        String str = this.f;
        int i = this.g;
        StringBuilder sbY = jo.y(jo.x(str, jo.x(string, strValueOf.length() + 93)), "DataSpec[", strValueOf, ", ", string);
        sbY.append(", ");
        sbY.append(j);
        sbY.append(", ");
        sbY.append(j2);
        sbY.append(", ");
        sbY.append(j3);
        sbY.append(", ");
        sbY.append(str);
        sbY.append(", ");
        sbY.append(i);
        sbY.append("]");
        return sbY.toString();
    }

    public jk3(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        boolean z = true;
        c50.j(j >= 0);
        c50.j(j2 >= 0);
        if (j3 <= 0 && j3 != -1) {
            z = false;
        }
        c50.j(z);
        this.a = uri;
        this.b = bArr;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = str;
        this.g = i;
    }
}
