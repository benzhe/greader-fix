package defpackage;

import android.content.Context;
import android.net.Uri;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSMedia;

/* loaded from: classes2.dex */
public class a27 extends r17 {
    public static final String[] b = {"orientation"};

    public enum a {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);

        public final int e;
        public final int f;
        public final int g;

        a(int i, int i2, int i3) {
            this.e = i;
            this.f = i2;
            this.g = i3;
        }
    }

    public a27(Context context) {
        super(context);
    }

    @Override // defpackage.r17, defpackage.j27
    public boolean c(h27 h27Var) {
        Uri uri = h27Var.c;
        return NSContent.NSTAG.equals(uri.getScheme()) && NSMedia.NSTAG.equals(uri.getAuthority());
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040 A[PHI: r3
      0x0040: PHI (r3v2 android.database.Cursor) = (r3v1 android.database.Cursor), (r3v14 android.database.Cursor) binds: [B:20:0x003e, B:13:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006a A[PHI: r4
      0x006a: PHI (r4v3 a27$a) = (r4v1 a27$a), (r4v0 a27$a) binds: [B:38:0x0074, B:33:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.r17, defpackage.j27
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j27.a f(defpackage.h27 r18, int r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a27.f(h27, int):j27$a");
    }
}
