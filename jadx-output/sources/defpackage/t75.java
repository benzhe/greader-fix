package defpackage;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertController;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.a0;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class t75 extends a0.a {
    public static final int e = R$attr.alertDialogStyle;
    public static final int f = R$style.MaterialAlertDialog_MaterialComponents;
    public static final int g = R$attr.materialAlertDialogTheme;
    public Drawable c;
    public final Rect d;

    /* JADX WARN: Illegal instructions before constructor call */
    public t75(Context context) {
        int i = g;
        TypedValue typedValueE0 = c50.E0(context, i);
        int i2 = typedValueE0 == null ? 0 : typedValueE0.data;
        int i3 = e;
        int i4 = f;
        Context contextA = fc5.a(context, null, i3, i4);
        contextA = i2 != 0 ? new x0(contextA, i2) : contextA;
        TypedValue typedValueE02 = c50.E0(context, i);
        super(contextA, typedValueE02 == null ? 0 : typedValueE02.data);
        Context context2 = this.a.a;
        Resources.Theme theme = context2.getTheme();
        int[] iArr = R$styleable.MaterialAlertDialog;
        t85.a(context2, null, i3, i4);
        t85.b(context2, null, iArr, i3, i4, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(null, iArr, i3, i4);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialAlertDialog_backgroundInsetStart, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_alert_dialog_background_inset_start));
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialAlertDialog_backgroundInsetTop, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_alert_dialog_background_inset_top));
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialAlertDialog_backgroundInsetEnd, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_alert_dialog_background_inset_end));
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialAlertDialog_backgroundInsetBottom, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_alert_dialog_background_inset_bottom));
        typedArrayObtainStyledAttributes.recycle();
        if (context2.getResources().getConfiguration().getLayoutDirection() == 1) {
            dimensionPixelSize3 = dimensionPixelSize;
            dimensionPixelSize = dimensionPixelSize3;
        }
        this.d = new Rect(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
        int iG0 = c50.G0(context2, R$attr.colorSurface, t75.class.getCanonicalName());
        la5 la5Var = new la5(context2, null, i3, i4);
        la5Var.e.b = new u75(context2);
        la5Var.E();
        la5Var.t(ColorStateList.valueOf(iG0));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(this.a.a.getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                la5Var.e.a = la5Var.e.a.e(dimension);
                la5Var.invalidateSelf();
            }
        }
        this.c = la5Var;
    }

    @Override // a0.a
    public a0 a() {
        a0 a0VarA = super.a();
        Window window = a0VarA.getWindow();
        View decorView = window.getDecorView();
        Drawable drawable = this.c;
        if (drawable instanceof la5) {
            AtomicInteger atomicInteger = ha.a;
            ((la5) drawable).s(decorView.getElevation());
        }
        Drawable drawable2 = this.c;
        Rect rect = this.d;
        window.setBackgroundDrawable(new InsetDrawable(drawable2, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new s75(a0VarA, this.d));
        return a0VarA;
    }

    @Override // a0.a
    public a0.a b(int i, DialogInterface.OnClickListener onClickListener) {
        super.b(i, onClickListener);
        return this;
    }

    @Override // a0.a
    public a0.a c(int i, DialogInterface.OnClickListener onClickListener) {
        super.c(i, null);
        return this;
    }

    @Override // a0.a
    public a0.a d(int i, DialogInterface.OnClickListener onClickListener) {
        super.d(i, null);
        return this;
    }

    public t75 f(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.p = charSequenceArr;
        bVar.r = onClickListener;
        return this;
    }

    public t75 g(int i) {
        AlertController.b bVar = this.a;
        bVar.g = bVar.a.getText(i);
        return this;
    }

    public t75 h(int i, DialogInterface.OnClickListener onClickListener) {
        super.b(i, onClickListener);
        return this;
    }

    public t75 i(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.j = charSequence;
        bVar.k = onClickListener;
        return this;
    }

    public t75 j(int i, DialogInterface.OnClickListener onClickListener) {
        super.d(i, onClickListener);
        return this;
    }

    public t75 k(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.b bVar = this.a;
        bVar.h = charSequence;
        bVar.i = onClickListener;
        return this;
    }

    public a0.a l(int i) {
        AlertController.b bVar = this.a;
        bVar.e = bVar.a.getText(i);
        return this;
    }

    public t75 m(int i) {
        AlertController.b bVar = this.a;
        bVar.e = bVar.a.getText(i);
        return this;
    }

    public a0.a n(View view) {
        AlertController.b bVar = this.a;
        bVar.t = view;
        bVar.s = 0;
        return this;
    }

    public t75 o(int i) {
        AlertController.b bVar = this.a;
        bVar.t = null;
        bVar.s = i;
        return this;
    }
}
