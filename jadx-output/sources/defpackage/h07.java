package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import defpackage.xz6;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public class h07 extends j07 {
    public h07(ImageView imageView) {
        super(imageView);
    }

    public static int f(Object obj, String str) throws NoSuchFieldException {
        int iIntValue;
        try {
            Field declaredField = ImageView.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            iIntValue = ((Integer) declaredField.get(obj)).intValue();
        } catch (Exception e) {
            p07.c(e);
        }
        if (iIntValue <= 0 || iIntValue >= Integer.MAX_VALUE) {
            return 0;
        }
        return iIntValue;
    }

    @Override // defpackage.g07
    public View b() {
        return (ImageView) this.a.get();
    }

    @Override // defpackage.g07
    public xz6 d() {
        xz6 xz6Var = xz6.CROP;
        ImageView imageView = (ImageView) this.a.get();
        if (imageView == null) {
            return xz6Var;
        }
        int i = xz6.a.a[imageView.getScaleType().ordinal()];
        return (i == 1 || i == 2 || i == 3 || i == 4 || i == 5) ? xz6.FIT_INSIDE : xz6Var;
    }

    @Override // defpackage.g07
    public int getHeight() {
        ImageView imageView;
        View view = this.a.get();
        int height = 0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (this.b && layoutParams != null && layoutParams.height != -2) {
                height = view.getHeight();
            }
            if (height <= 0 && layoutParams != null) {
                height = layoutParams.height;
            }
        }
        return (height > 0 || (imageView = (ImageView) this.a.get()) == null) ? height : f(imageView, "mMaxHeight");
    }

    @Override // defpackage.g07
    public int getWidth() {
        ImageView imageView;
        View view = this.a.get();
        int width = 0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (this.b && layoutParams != null && layoutParams.width != -2) {
                width = view.getWidth();
            }
            if (width <= 0 && layoutParams != null) {
                width = layoutParams.width;
            }
        }
        return (width > 0 || (imageView = (ImageView) this.a.get()) == null) ? width : f(imageView, "mMaxWidth");
    }
}
