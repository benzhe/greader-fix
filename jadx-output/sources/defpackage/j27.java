package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import defpackage.e27;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class j27 {
    public static void a(int i, int i2, int i3, int i4, BitmapFactory.Options options, h27 h27Var) {
        int iMax;
        double dFloor;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                dFloor = Math.floor(i3 / i);
            } else if (i == 0) {
                dFloor = Math.floor(i4 / i2);
            } else {
                int iFloor = (int) Math.floor(i4 / i2);
                int iFloor2 = (int) Math.floor(i3 / i);
                iMax = h27Var.j ? Math.max(iFloor, iFloor2) : Math.min(iFloor, iFloor2);
            }
            iMax = (int) dFloor;
        } else {
            iMax = 1;
        }
        options.inSampleSize = iMax;
        options.inJustDecodeBounds = false;
    }

    public static void b(int i, int i2, BitmapFactory.Options options, h27 h27Var) {
        a(i, i2, options.outWidth, options.outHeight, options, h27Var);
    }

    public static BitmapFactory.Options d(h27 h27Var) {
        boolean zA = h27Var.a();
        boolean z = h27Var.q != null;
        BitmapFactory.Options options = null;
        if (zA || z || h27Var.p) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = zA;
            boolean z2 = h27Var.p;
            options.inInputShareable = z2;
            options.inPurgeable = z2;
            if (z) {
                options.inPreferredConfig = h27Var.q;
            }
        }
        return options;
    }

    public abstract boolean c(h27 h27Var);

    public int e() {
        return 0;
    }

    public abstract a f(h27 h27Var, int i) throws IOException;

    public boolean g(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    public boolean h() {
        return false;
    }

    public static final class a {
        public final e27.d a;
        public final Bitmap b;
        public final vt7 c;
        public final int d;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(vt7 vt7Var, e27.d dVar) {
            this(null, vt7Var, dVar, 0);
            StringBuilder sb = p27.a;
            Objects.requireNonNull(vt7Var, "source == null");
        }

        public a(Bitmap bitmap, vt7 vt7Var, e27.d dVar, int i) {
            if ((bitmap != null) != (vt7Var != null)) {
                this.b = bitmap;
                this.c = vt7Var;
                StringBuilder sb = p27.a;
                Objects.requireNonNull(dVar, "loadedFrom == null");
                this.a = dVar;
                this.d = i;
                return;
            }
            throw new AssertionError();
        }
    }
}
