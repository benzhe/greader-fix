package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import defpackage.k9;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Objects;

/* loaded from: classes.dex */
public class j9 {
    public static final k4<String, Typeface> a = new k4<>(16);
    public static final k9 b = new k9("fonts", 10, 10000);
    public static final Object c = new Object();
    public static final m4<String, ArrayList<k9.c<d>>> d = new m4<>();
    public static final Comparator<byte[]> e = new a();

    public class a implements Comparator<byte[]> {
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int length;
            int length2;
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            if (bArr3.length == bArr4.length) {
                for (int i = 0; i < bArr3.length; i++) {
                    if (bArr3[i] != bArr4[i]) {
                        length = bArr3[i];
                        length2 = bArr4[i];
                    }
                }
                return 0;
            }
            length = bArr3.length;
            length2 = bArr4.length;
            return length - length2;
        }
    }

    public static class b {
        public final int a;
        public final c[] b;

        public b(int i, c[] cVarArr) {
            this.a = i;
            this.b = cVarArr;
        }
    }

    public static class c {
        public final Uri a;
        public final int b;
        public final int c;
        public final boolean d;
        public final int e;

        public c(Uri uri, int i, int i2, boolean z, int i3) {
            Objects.requireNonNull(uri);
            this.a = uri;
            this.b = i;
            this.c = i2;
            this.d = z;
            this.e = i3;
        }
    }

    public static final class d {
        public final Typeface a;
        public final int b;

        public d(Typeface typeface, int i) {
            this.a = typeface;
            this.b = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0090 A[LOOP:1: B:15:0x004b->B:30:0x0090, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0094 A[EDGE_INSN: B:80:0x0094->B:32:0x0094 BREAK  A[LOOP:1: B:15:0x004b->B:30:0x0090], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j9.b a(android.content.Context r20, android.os.CancellationSignal r21, defpackage.f9 r22) throws android.content.res.Resources.NotFoundException, android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j9.a(android.content.Context, android.os.CancellationSignal, f9):j9$b");
    }

    public static d b(Context context, f9 f9Var, int i) throws Resources.NotFoundException {
        try {
            b bVarA = a(context, null, f9Var);
            int i2 = bVarA.a;
            if (i2 != 0) {
                return new d(null, i2 == 1 ? -2 : -3);
            }
            Typeface typefaceB = g8.a.b(context, null, bVarA.b, i);
            return new d(typefaceB, typefaceB != null ? 0 : -3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new d(null, -1);
        }
    }
}
