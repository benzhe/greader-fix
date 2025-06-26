package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import defpackage.d0;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class kh extends qh {
    public static final String[] C = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final Property<Drawable, PointF> D = new a(PointF.class, "boundsOrigin");
    public static final Property<i, PointF> E = new b(PointF.class, "topLeft");
    public static final Property<i, PointF> F = new c(PointF.class, "bottomRight");
    public static final Property<View, PointF> G = new d(PointF.class, "bottomRight");
    public static final Property<View, PointF> H = new e(PointF.class, "topLeft");
    public static final Property<View, PointF> I = new f(PointF.class, "position");
    public static oh J = new oh();
    public int[] B = new int[2];

    public static class a extends Property<Drawable, PointF> {
        public Rect a;

        public a(Class cls, String str) {
            super(cls, str);
            this.a = new Rect();
        }

        @Override // android.util.Property
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.a);
            Rect rect = this.a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        public void set(Drawable drawable, PointF pointF) {
            Drawable drawable2 = drawable;
            PointF pointF2 = pointF;
            drawable2.copyBounds(this.a);
            this.a.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
            drawable2.setBounds(this.a);
        }
    }

    public static class b extends Property<i, PointF> {
        public b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(i iVar) {
            return null;
        }

        @Override // android.util.Property
        public void set(i iVar, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            i iVar2 = iVar;
            PointF pointF2 = pointF;
            Objects.requireNonNull(iVar2);
            iVar2.a = Math.round(pointF2.x);
            int iRound = Math.round(pointF2.y);
            iVar2.b = iRound;
            int i = iVar2.f + 1;
            iVar2.f = i;
            if (i == iVar2.g) {
                ci.b(iVar2.e, iVar2.a, iRound, iVar2.c, iVar2.d);
                iVar2.f = 0;
                iVar2.g = 0;
            }
        }
    }

    public static class c extends Property<i, PointF> {
        public c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(i iVar) {
            return null;
        }

        @Override // android.util.Property
        public void set(i iVar, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            i iVar2 = iVar;
            PointF pointF2 = pointF;
            Objects.requireNonNull(iVar2);
            iVar2.c = Math.round(pointF2.x);
            int iRound = Math.round(pointF2.y);
            iVar2.d = iRound;
            int i = iVar2.g + 1;
            iVar2.g = i;
            if (iVar2.f == i) {
                ci.b(iVar2.e, iVar2.a, iVar2.b, iVar2.c, iRound);
                iVar2.f = 0;
                iVar2.g = 0;
            }
        }
    }

    public static class d extends Property<View, PointF> {
        public d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            View view2 = view;
            PointF pointF2 = pointF;
            ci.b(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    }

    public static class e extends Property<View, PointF> {
        public e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            View view2 = view;
            PointF pointF2 = pointF;
            ci.b(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    public static class f extends Property<View, PointF> {
        public f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            View view2 = view;
            PointF pointF2 = pointF;
            int iRound = Math.round(pointF2.x);
            int iRound2 = Math.round(pointF2.y);
            ci.b(view2, iRound, iRound2, view2.getWidth() + iRound, view2.getHeight() + iRound2);
        }
    }

    public class g extends AnimatorListenerAdapter {
        public final /* synthetic */ i a;
        private i mViewBounds;

        public g(kh khVar, i iVar) {
            this.a = iVar;
            this.mViewBounds = iVar;
        }
    }

    public class h extends th {
        public boolean a = false;
        public final /* synthetic */ ViewGroup b;

        public h(kh khVar, ViewGroup viewGroup) {
            this.b = viewGroup;
        }

        @Override // defpackage.th, qh.d
        public void b(qh qhVar) {
            ai.a(this.b, false);
        }

        @Override // qh.d
        public void c(qh qhVar) {
            if (!this.a) {
                ai.a(this.b, false);
            }
            qhVar.x(this);
        }

        @Override // defpackage.th, qh.d
        public void d(qh qhVar) {
            ai.a(this.b, false);
            this.a = true;
        }

        @Override // defpackage.th, qh.d
        public void e(qh qhVar) {
            ai.a(this.b, true);
        }
    }

    public static class i {
        public int a;
        public int b;
        public int c;
        public int d;
        public View e;
        public int f;
        public int g;

        public i(View view) {
            this.e = view;
        }
    }

    public final void K(yh yhVar) {
        View view = yhVar.b;
        AtomicInteger atomicInteger = ha.a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        yhVar.a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        yhVar.a.put("android:changeBounds:parent", yhVar.b.getParent());
    }

    @Override // defpackage.qh
    public void e(yh yhVar) {
        K(yhVar);
    }

    @Override // defpackage.qh
    public void h(yh yhVar) {
        K(yhVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.qh
    public Animator l(ViewGroup viewGroup, yh yhVar, yh yhVar2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i2;
        kh khVar;
        ObjectAnimator objectAnimatorR;
        if (yhVar == null || yhVar2 == null) {
            return null;
        }
        Map<String, Object> map = yhVar.a;
        Map<String, Object> map2 = yhVar2.a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = yhVar2.b;
        Rect rect = (Rect) yhVar.a.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) yhVar2.a.get("android:changeBounds:bounds");
        int i3 = rect.left;
        int i4 = rect2.left;
        int i5 = rect.top;
        int i6 = rect2.top;
        int i7 = rect.right;
        int i8 = rect2.right;
        int i9 = rect.bottom;
        int i10 = rect2.bottom;
        int i11 = i7 - i3;
        int i12 = i9 - i5;
        int i13 = i8 - i4;
        int i14 = i10 - i6;
        Rect rect3 = (Rect) yhVar.a.get("android:changeBounds:clip");
        Rect rect4 = (Rect) yhVar2.a.get("android:changeBounds:clip");
        if ((i11 == 0 || i12 == 0) && (i13 == 0 || i14 == 0)) {
            i2 = 0;
        } else {
            i2 = (i3 == i4 && i5 == i6) ? 0 : 1;
            if (i7 != i8 || i9 != i10) {
                i2++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i2++;
        }
        int i15 = i2;
        if (i15 <= 0) {
            return null;
        }
        ci.b(view, i3, i5, i7, i9);
        if (i15 != 2) {
            khVar = this;
            objectAnimatorR = (i3 == i4 && i5 == i6) ? d0.h.R(view, G, khVar.x.a(i7, i9, i8, i10)) : d0.h.R(view, H, khVar.x.a(i3, i5, i4, i6));
        } else if (i11 == i13 && i12 == i14) {
            khVar = this;
            objectAnimatorR = d0.h.R(view, I, khVar.x.a(i3, i5, i4, i6));
        } else {
            khVar = this;
            i iVar = new i(view);
            ObjectAnimator objectAnimatorR2 = d0.h.R(iVar, E, khVar.x.a(i3, i5, i4, i6));
            ObjectAnimator objectAnimatorR3 = d0.h.R(iVar, F, khVar.x.a(i7, i9, i8, i10));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorR2, objectAnimatorR3);
            animatorSet.addListener(new g(khVar, iVar));
            objectAnimatorR = animatorSet;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            ai.a(viewGroup4, true);
            khVar.b(new h(khVar, viewGroup4));
        }
        return objectAnimatorR;
    }

    @Override // defpackage.qh
    public String[] r() {
        return C;
    }
}
