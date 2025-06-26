package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R$styleable;
import defpackage.d0;

/* loaded from: classes.dex */
public class a2 {
    public final CompoundButton a;
    public ColorStateList b = null;
    public PorterDuff.Mode c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f;

    public a2(CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    public void a() throws NoSuchFieldException {
        Drawable drawableA = d0.h.A(this.a);
        if (drawableA != null) {
            if (this.d || this.e) {
                Drawable drawableMutate = d0.h.l0(drawableA).mutate();
                if (this.d) {
                    drawableMutate.setTintList(this.b);
                }
                if (this.e) {
                    drawableMutate.setTintMode(this.c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.a.getDrawableState());
                }
                this.a.setButtonDrawable(drawableMutate);
            }
        }
    }

    public void b(AttributeSet attributeSet, int i) {
        boolean z;
        int iM;
        int iM2;
        Context context = this.a.getContext();
        int[] iArr = R$styleable.CompoundButton;
        c3 c3VarR = c3.r(context, attributeSet, iArr, i, 0);
        CompoundButton compoundButton = this.a;
        ha.r(compoundButton, compoundButton.getContext(), iArr, attributeSet, c3VarR.b, i, 0);
        try {
            int i2 = R$styleable.CompoundButton_buttonCompat;
            if (!c3VarR.p(i2) || (iM2 = c3VarR.m(i2, 0)) == 0) {
                z = false;
            } else {
                try {
                    CompoundButton compoundButton2 = this.a;
                    compoundButton2.setButtonDrawable(p0.b(compoundButton2.getContext(), iM2));
                    z = true;
                } catch (Resources.NotFoundException unused) {
                }
            }
            if (!z) {
                int i3 = R$styleable.CompoundButton_android_button;
                if (c3VarR.p(i3) && (iM = c3VarR.m(i3, 0)) != 0) {
                    CompoundButton compoundButton3 = this.a;
                    compoundButton3.setButtonDrawable(p0.b(compoundButton3.getContext(), iM));
                }
            }
            int i4 = R$styleable.CompoundButton_buttonTint;
            if (c3VarR.p(i4)) {
                this.a.setButtonTintList(c3VarR.c(i4));
            }
            int i5 = R$styleable.CompoundButton_buttonTintMode;
            if (c3VarR.p(i5)) {
                this.a.setButtonTintMode(m2.d(c3VarR.j(i5, -1), null));
            }
            c3VarR.b.recycle();
        } catch (Throwable th) {
            c3VarR.b.recycle();
            throw th;
        }
    }
}
