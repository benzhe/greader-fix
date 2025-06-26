package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.util.Objects;

/* loaded from: classes.dex */
public final class lm1 implements vs2<pu3, Bitmap> {
    public final /* synthetic */ double a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ im1 c;

    public lm1(im1 im1Var, double d, boolean z) {
        this.c = im1Var;
        this.a = d;
        this.b = z;
    }

    @Override // defpackage.vs2
    public final Bitmap apply(pu3 pu3Var) {
        im1 im1Var = this.c;
        byte[] bArr = pu3Var.b;
        double d = this.a;
        boolean z = this.b;
        Objects.requireNonNull(im1Var);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) os3.j.f.a(y40.J3)).booleanValue()) {
            options.inJustDecodeBounds = true;
            im1Var.a(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                int i2 = i - 1;
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros(i2 / ((Integer) os3.j.f.a(y40.K3)).intValue())) / 2);
            }
        }
        return im1Var.a(bArr, options);
    }
}
