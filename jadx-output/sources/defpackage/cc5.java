package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.R$dimen;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class cc5 {
    public final Context a;
    public final TextInputLayout b;
    public LinearLayout c;
    public int d;
    public FrameLayout e;
    public Animator f;
    public final float g;
    public int h;
    public int i;
    public CharSequence j;
    public boolean k;
    public TextView l;
    public CharSequence m;
    public int n;
    public ColorStateList o;
    public CharSequence p;
    public boolean q;
    public TextView r;
    public int s;
    public ColorStateList t;
    public Typeface u;

    public class a extends AnimatorListenerAdapter {
        public final /* synthetic */ int a;
        public final /* synthetic */ TextView b;
        public final /* synthetic */ int c;
        public final /* synthetic */ TextView d;

        public a(int i, TextView textView, int i2, TextView textView2) {
            this.a = i;
            this.b = textView;
            this.c = i2;
            this.d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            TextView textView;
            cc5 cc5Var = cc5.this;
            cc5Var.h = this.a;
            cc5Var.f = null;
            TextView textView2 = this.b;
            if (textView2 != null) {
                textView2.setVisibility(4);
                if (this.c == 1 && (textView = cc5.this.l) != null) {
                    textView.setText((CharSequence) null);
                }
            }
            TextView textView3 = this.d;
            if (textView3 != null) {
                textView3.setTranslationY(0.0f);
                this.d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public cc5(TextInputLayout textInputLayout) {
        this.a = textInputLayout.getContext();
        this.b = textInputLayout;
        this.g = r0.getResources().getDimensionPixelSize(R$dimen.design_textinput_caption_translate_y);
    }

    public void a(TextView textView, int i) {
        if (this.c == null && this.e == null) {
            LinearLayout linearLayout = new LinearLayout(this.a);
            this.c = linearLayout;
            linearLayout.setOrientation(0);
            this.b.addView(this.c, -1, -2);
            this.e = new FrameLayout(this.a);
            this.c.addView(this.e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.b.getEditText() != null) {
                b();
            }
        }
        if (i == 0 || i == 1) {
            this.e.setVisibility(0);
            this.e.addView(textView);
        } else {
            this.c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.c.setVisibility(0);
        this.d++;
    }

    public void b() {
        if ((this.c == null || this.b.getEditText() == null) ? false : true) {
            EditText editText = this.b.getEditText();
            boolean zL0 = c50.l0(this.a);
            LinearLayout linearLayout = this.c;
            int i = R$dimen.material_helper_text_font_1_3_padding_horizontal;
            AtomicInteger atomicInteger = ha.a;
            linearLayout.setPaddingRelative(h(zL0, i, editText.getPaddingStart()), h(zL0, R$dimen.material_helper_text_font_1_3_padding_top, this.a.getResources().getDimensionPixelSize(R$dimen.material_helper_text_default_padding_top)), h(zL0, i, editText.getPaddingEnd()), 0);
        }
    }

    public void c() {
        Animator animator = this.f;
        if (animator != null) {
            animator.cancel();
        }
    }

    public final void d(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, i3 == i ? 1.0f : 0.0f);
            objectAnimatorOfFloat.setDuration(167L);
            objectAnimatorOfFloat.setInterpolator(i55.a);
            list.add(objectAnimatorOfFloat);
            if (i3 == i) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.g, 0.0f);
                objectAnimatorOfFloat2.setDuration(217L);
                objectAnimatorOfFloat2.setInterpolator(i55.d);
                list.add(objectAnimatorOfFloat2);
            }
        }
    }

    public boolean e() {
        return (this.i != 1 || this.l == null || TextUtils.isEmpty(this.j)) ? false : true;
    }

    public final TextView f(int i) {
        if (i == 1) {
            return this.l;
        }
        if (i != 2) {
            return null;
        }
        return this.r;
    }

    public int g() {
        TextView textView = this.l;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    public final int h(boolean z, int i, int i2) {
        return z ? this.a.getResources().getDimensionPixelSize(i) : i2;
    }

    public void i() {
        this.j = null;
        c();
        if (this.h == 1) {
            if (!this.q || TextUtils.isEmpty(this.p)) {
                this.i = 0;
            } else {
                this.i = 2;
            }
        }
        l(this.h, this.i, k(this.l, null));
    }

    public void j(TextView textView, int i) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.c;
        if (linearLayout == null) {
            return;
        }
        if (!(i == 0 || i == 1) || (frameLayout = this.e) == null) {
            linearLayout.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.d - 1;
        this.d = i2;
        LinearLayout linearLayout2 = this.c;
        if (i2 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean k(TextView textView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.b;
        AtomicInteger atomicInteger = ha.a;
        return textInputLayout.isLaidOut() && this.b.isEnabled() && !(this.i == this.h && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    public final void l(int i, int i2, boolean z) {
        TextView textViewF;
        TextView textViewF2;
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.q, this.r, 2, i, i2);
            d(arrayList, this.k, this.l, 1, i, i2);
            c50.C0(animatorSet, arrayList);
            animatorSet.addListener(new a(i2, f(i), i, f(i2)));
            animatorSet.start();
        } else if (i != i2) {
            if (i2 != 0 && (textViewF2 = f(i2)) != null) {
                textViewF2.setVisibility(0);
                textViewF2.setAlpha(1.0f);
            }
            if (i != 0 && (textViewF = f(i)) != null) {
                textViewF.setVisibility(4);
                if (i == 1) {
                    textViewF.setText((CharSequence) null);
                }
            }
            this.h = i2;
        }
        this.b.w();
        this.b.y(z, false);
        this.b.F();
    }
}
