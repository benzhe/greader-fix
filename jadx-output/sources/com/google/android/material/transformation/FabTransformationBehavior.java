package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$id;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.c50;
import defpackage.ha;
import defpackage.i55;
import defpackage.j55;
import defpackage.jc5;
import defpackage.k55;
import defpackage.kc5;
import defpackage.l55;
import defpackage.lc5;
import defpackage.o55;
import defpackage.p55;
import defpackage.q55;
import defpackage.u65;
import defpackage.w65;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.codec.binary.Base64;

@Deprecated
/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    public final Rect c;
    public final RectF d;
    public final RectF e;
    public final int[] f;
    public float g;
    public float h;

    public class a extends AnimatorListenerAdapter {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ View b;
        public final /* synthetic */ View c;

        public a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
            this.a = z;
            this.b = view;
            this.c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                return;
            }
            this.b.setVisibility(4);
            this.c.setAlpha(1.0f);
            this.c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.a) {
                this.b.setVisibility(0);
                this.c.setAlpha(0.0f);
                this.c.setVisibility(4);
            }
        }
    }

    public static class b {
        public o55 a;
        public q55 b;
    }

    public FabTransformationBehavior() {
        this.c = new Rect();
        this.d = new RectF();
        this.e = new RectF();
        this.f = new int[2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public AnimatorSet D(View view, View view2, boolean z, boolean z2) {
        ArrayList arrayList;
        b bVar;
        w65 w65Var;
        Animator animatorI;
        p55 p55Var;
        ArrayList arrayList2;
        ObjectAnimator objectAnimatorOfInt;
        b bVarN = N(view2.getContext(), z);
        if (z) {
            this.g = view.getTranslationX();
            this.h = view.getTranslationY();
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        L(view, view2, z, z2, bVarN, arrayList3);
        RectF rectF = this.d;
        M(view, view2, z, z2, bVarN, arrayList3, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        float F = F(view, view2, bVarN.b);
        float fG = G(view, view2, bVarN.b);
        Pair<p55, p55> pairE = E(F, fG, z, bVarN);
        p55 p55Var2 = (p55) pairE.first;
        p55 p55Var3 = (p55) pairE.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z) {
            F = this.g;
        }
        fArr[0] = F;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z) {
            fG = this.h;
        }
        fArr2[0] = fG;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        p55Var2.a(objectAnimatorOfFloat);
        p55Var3.a(objectAnimatorOfFloat2);
        arrayList3.add(objectAnimatorOfFloat);
        arrayList3.add(objectAnimatorOfFloat2);
        boolean z3 = view2 instanceof w65;
        if (z3 && (view instanceof ImageView)) {
            w65 w65Var2 = (w65) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(Base64.BASELENGTH);
                    }
                    objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, l55.b, 0);
                } else {
                    objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, l55.b, Base64.BASELENGTH);
                }
                objectAnimatorOfInt.addUpdateListener(new jc5(this, view2));
                bVarN.a.f("iconFade").a(objectAnimatorOfInt);
                arrayList3.add(objectAnimatorOfInt);
                arrayList4.add(new kc5(this, w65Var2, drawable));
            }
        }
        if (z3) {
            w65 w65Var3 = (w65) view2;
            q55 q55Var = bVarN.b;
            RectF rectF2 = this.d;
            RectF rectF3 = this.e;
            I(view, rectF2);
            rectF2.offset(this.g, this.h);
            I(view2, rectF3);
            rectF3.offset(-F(view, view2, q55Var), 0.0f);
            float fCenterX = rectF2.centerX() - rectF3.left;
            q55 q55Var2 = bVarN.b;
            RectF rectF4 = this.d;
            RectF rectF5 = this.e;
            I(view, rectF4);
            rectF4.offset(this.g, this.h);
            I(view2, rectF5);
            rectF5.offset(0.0f, -G(view, view2, q55Var2));
            float fCenterY = rectF4.centerY() - rectF5.top;
            ((FloatingActionButton) view).g(this.c);
            float fWidth2 = this.c.width() / 2.0f;
            p55 p55VarF = bVarN.a.f("expansion");
            if (z) {
                if (!z2) {
                    w65Var3.setRevealInfo(new w65.e(fCenterX, fCenterY, fWidth2));
                }
                if (z2) {
                    fWidth2 = w65Var3.getRevealInfo().c;
                }
                float f = fWidth2;
                animatorI = c50.I(w65Var3, fCenterX, fCenterY, c50.N(fCenterX, fCenterY, 0.0f, 0.0f, fWidth, fHeight));
                animatorI.addListener(new lc5(this, w65Var3));
                p55Var = p55VarF;
                long j = p55Var.a;
                int i = (int) fCenterX;
                int i2 = (int) fCenterY;
                if (j > 0) {
                    Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view2, i, i2, f, f);
                    animatorCreateCircularReveal.setStartDelay(0L);
                    animatorCreateCircularReveal.setDuration(j);
                    arrayList3.add(animatorCreateCircularReveal);
                }
                w65Var = w65Var3;
                arrayList = arrayList4;
                bVar = bVarN;
            } else {
                p55 p55Var4 = p55VarF;
                float f2 = w65Var3.getRevealInfo().c;
                Animator animatorI2 = c50.I(w65Var3, fCenterX, fCenterY, fWidth2);
                long j2 = p55Var4.a;
                int i3 = (int) fCenterX;
                int i4 = (int) fCenterY;
                if (j2 > 0) {
                    Animator animatorCreateCircularReveal2 = ViewAnimationUtils.createCircularReveal(view2, i3, i4, f2, f2);
                    animatorCreateCircularReveal2.setStartDelay(0L);
                    animatorCreateCircularReveal2.setDuration(j2);
                    arrayList3.add(animatorCreateCircularReveal2);
                }
                long j3 = p55Var4.a;
                long j4 = p55Var4.b;
                o55 o55Var = bVarN.a;
                int i5 = o55Var.a.g;
                arrayList = arrayList4;
                bVar = bVarN;
                int i6 = 0;
                long jMax = 0;
                while (i6 < i5) {
                    int i7 = i5;
                    p55 p55VarK = o55Var.a.k(i6);
                    jMax = Math.max(jMax, p55VarK.a + p55VarK.b);
                    i6++;
                    i5 = i7;
                    o55Var = o55Var;
                    w65Var3 = w65Var3;
                    p55Var4 = p55Var4;
                    i3 = i3;
                }
                p55 p55Var5 = p55Var4;
                w65Var = w65Var3;
                int i8 = i3;
                long j5 = j3 + j4;
                if (j5 < jMax) {
                    Animator animatorCreateCircularReveal3 = ViewAnimationUtils.createCircularReveal(view2, i8, i4, fWidth2, fWidth2);
                    animatorCreateCircularReveal3.setStartDelay(j5);
                    animatorCreateCircularReveal3.setDuration(jMax - j5);
                    arrayList3.add(animatorCreateCircularReveal3);
                }
                animatorI = animatorI2;
                p55Var = p55Var5;
            }
            p55Var.a(animatorI);
            arrayList3.add(animatorI);
            arrayList2 = arrayList;
            arrayList2.add(new u65(w65Var));
        } else {
            bVar = bVarN;
            arrayList2 = arrayList4;
        }
        K(view, view2, z, z2, bVar, arrayList3);
        J(view2, z, z2, bVar, arrayList3);
        AnimatorSet animatorSet = new AnimatorSet();
        c50.C0(animatorSet, arrayList3);
        animatorSet.addListener(new a(this, z, view2, view));
        int size = arrayList2.size();
        for (int i9 = 0; i9 < size; i9++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList2.get(i9));
        }
        return animatorSet;
    }

    public final Pair<p55, p55> E(float f, float f2, boolean z, b bVar) {
        p55 p55VarF;
        p55 p55VarF2;
        if (f == 0.0f || f2 == 0.0f) {
            p55VarF = bVar.a.f("translationXLinear");
            p55VarF2 = bVar.a.f("translationYLinear");
        } else if ((!z || f2 >= 0.0f) && (z || f2 <= 0.0f)) {
            p55VarF = bVar.a.f("translationXCurveDownwards");
            p55VarF2 = bVar.a.f("translationYCurveDownwards");
        } else {
            p55VarF = bVar.a.f("translationXCurveUpwards");
            p55VarF2 = bVar.a.f("translationYCurveUpwards");
        }
        return new Pair<>(p55VarF, p55VarF2);
    }

    public final float F(View view, View view2, q55 q55Var) {
        RectF rectF = this.d;
        RectF rectF2 = this.e;
        I(view, rectF);
        rectF.offset(this.g, this.h);
        I(view2, rectF2);
        Objects.requireNonNull(q55Var);
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    public final float G(View view, View view2, q55 q55Var) {
        RectF rectF = this.d;
        RectF rectF2 = this.e;
        I(view, rectF);
        rectF.offset(this.g, this.h);
        I(view2, rectF2);
        Objects.requireNonNull(q55Var);
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    public final float H(b bVar, p55 p55Var, float f, float f2) {
        long j = p55Var.a;
        long j2 = p55Var.b;
        p55 p55VarF = bVar.a.f("expansion");
        return i55.a(f, f2, p55Var.b().getInterpolation((((p55VarF.a + p55VarF.b) + 17) - j) / j2));
    }

    public final void I(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public final void J(View view, boolean z, boolean z2, b bVar, List list) {
        ObjectAnimator objectAnimatorOfFloat;
        if (view instanceof ViewGroup) {
            boolean z3 = view instanceof w65;
            View viewFindViewById = view.findViewById(R$id.mtrl_child_content_container);
            ViewGroup viewGroupO = viewFindViewById != null ? O(viewFindViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? O(((ViewGroup) view).getChildAt(0)) : O(view);
            if (viewGroupO == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    k55.a.set(viewGroupO, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupO, k55.a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupO, k55.a, 0.0f);
            }
            bVar.a.f("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void K(View view, View view2, boolean z, boolean z2, b bVar, List list) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof w65) {
            w65 w65Var = (w65) view2;
            AtomicInteger atomicInteger = ha.a;
            ColorStateList backgroundTintList = view.getBackgroundTintList();
            int colorForState = backgroundTintList != null ? backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor()) : 0;
            int i = 16777215 & colorForState;
            if (z) {
                if (!z2) {
                    w65Var.setCircularRevealScrimColor(colorForState);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(w65Var, w65.d.a, i);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(w65Var, w65.d.a, colorForState);
            }
            objectAnimatorOfInt.setEvaluator(j55.a);
            bVar.a.f("color").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    public final void L(View view, View view2, boolean z, boolean z2, b bVar, List list) {
        ObjectAnimator objectAnimatorOfFloat;
        AtomicInteger atomicInteger = ha.a;
        float elevation = view2.getElevation() - view.getElevation();
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        bVar.a.f("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    public final void M(View view, View view2, boolean z, boolean z2, b bVar, List list, RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float F = F(view, view2, bVar.b);
        float fG = G(view, view2, bVar.b);
        Pair<p55, p55> pairE = E(F, fG, z, bVar);
        p55 p55Var = (p55) pairE.first;
        p55 p55Var2 = (p55) pairE.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-F);
                view2.setTranslationY(-fG);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            float fH = H(bVar, p55Var, -F, 0.0f);
            float fH2 = H(bVar, p55Var2, -fG, 0.0f);
            Rect rect = this.c;
            view2.getWindowVisibleDisplayFrame(rect);
            RectF rectF2 = this.d;
            rectF2.set(rect);
            RectF rectF3 = this.e;
            I(view2, rectF3);
            rectF3.offset(fH, fH2);
            rectF3.intersect(rectF2);
            rectF.set(rectF3);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -F);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fG);
        }
        p55Var.a(objectAnimatorOfFloat);
        p55Var2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    public abstract b N(Context context, boolean z);

    public final ViewGroup O(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void f(CoordinatorLayout.f fVar) {
        if (fVar.h == 0) {
            fVar.h = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new Rect();
        this.d = new RectF();
        this.e = new RectF();
        this.f = new int[2];
    }
}
