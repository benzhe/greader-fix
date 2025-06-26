package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import defpackage.e27;
import java.util.Objects;

/* loaded from: classes2.dex */
public class w17 extends l17<ImageView> {
    public p17 m;

    public w17(e27 e27Var, ImageView imageView, h27 h27Var, int i, int i2, int i3, Drawable drawable, String str, Object obj, p17 p17Var, boolean z) {
        super(e27Var, imageView, h27Var, i, i2, i3, null, str, obj, z);
        this.m = p17Var;
    }

    @Override // defpackage.l17
    public void a() {
        this.l = true;
        if (this.m != null) {
            this.m = null;
        }
    }

    @Override // defpackage.l17
    public void b(Bitmap bitmap, e27.d dVar) {
        ImageView imageView = (ImageView) this.c.get();
        if (imageView == null) {
            return;
        }
        e27 e27Var = this.a;
        f27.b(imageView, e27Var.e, bitmap, dVar, this.d, e27Var.m);
        p17 p17Var = this.m;
        if (p17Var != null) {
            ((oz5) p17Var).a();
        }
    }

    @Override // defpackage.l17
    public void c(Exception exc) {
        ImageView imageView = (ImageView) this.c.get();
        if (imageView == null) {
            return;
        }
        Object drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        int i = this.g;
        if (i != 0) {
            imageView.setImageResource(i);
        } else {
            Drawable drawable2 = this.h;
            if (drawable2 != null) {
                imageView.setImageDrawable(drawable2);
            }
        }
        p17 p17Var = this.m;
        if (p17Var != null) {
            oz5 oz5Var = (oz5) p17Var;
            Objects.requireNonNull(oz5Var);
            Log.e("FIAM.Display", "Image download failure ");
            if (oz5Var.c != null) {
                oz5Var.a.e().getViewTreeObserver().removeGlobalOnLayoutListener(oz5Var.c);
            }
            oz5Var.d.b();
            lz5 lz5Var = oz5Var.d;
            lz5Var.n = null;
            lz5Var.o = null;
        }
    }
}
