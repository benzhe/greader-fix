package defpackage;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import defpackage.r0;
import defpackage.t0;

/* loaded from: classes.dex */
public class q0 extends t0 implements o8 {
    public c t;
    public g u;
    public int v;
    public int w;
    public boolean x;

    public static class b extends g {
        public final Animatable a;

        public b(Animatable animatable) {
            super(null);
            this.a = animatable;
        }

        @Override // q0.g
        public void c() {
            this.a.start();
        }

        @Override // q0.g
        public void d() {
            this.a.stop();
        }
    }

    public static class c extends t0.a {
        public j4<Long> K;
        public n4<Integer> L;

        public c(c cVar, q0 q0Var, Resources resources) {
            super(cVar, q0Var, resources);
            if (cVar != null) {
                this.K = cVar.K;
                this.L = cVar.L;
            } else {
                this.K = new j4<>();
                this.L = new n4<>(10);
            }
        }

        public static long h(int i, int i2) {
            return i2 | (i << 32);
        }

        @Override // t0.a, r0.c
        public void e() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }

        public int i(int i) {
            if (i < 0) {
                return 0;
            }
            return this.L.f(i, 0).intValue();
        }

        @Override // t0.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new q0(this, null);
        }

        @Override // t0.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new q0(this, resources);
        }
    }

    public static class d extends g {
        public final pi a;

        public d(pi piVar) {
            super(null);
            this.a = piVar;
        }

        @Override // q0.g
        public void c() {
            this.a.start();
        }

        @Override // q0.g
        public void d() {
            this.a.stop();
        }
    }

    public static class e extends g {
        public final ObjectAnimator a;
        public final boolean b;

        public e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super(null);
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            f fVar = new f(animationDrawable, z);
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            objectAnimatorOfInt.setAutoCancel(true);
            objectAnimatorOfInt.setDuration(fVar.c);
            objectAnimatorOfInt.setInterpolator(fVar);
            this.b = z2;
            this.a = objectAnimatorOfInt;
        }

        @Override // q0.g
        public boolean a() {
            return this.b;
        }

        @Override // q0.g
        public void b() {
            this.a.reverse();
        }

        @Override // q0.g
        public void c() {
            this.a.start();
        }

        @Override // q0.g
        public void d() {
            this.a.cancel();
        }
    }

    public static class f implements TimeInterpolator {
        public int[] a;
        public int b;
        public int c;

        public f(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.b = numberOfFrames;
            int[] iArr = this.a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.a = new int[numberOfFrames];
            }
            int[] iArr2 = this.a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.c = i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.c) + 0.5f);
            int i2 = this.b;
            int[] iArr = this.a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.c : 0.0f);
        }
    }

    public static abstract class g {
        public g(a aVar) {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    public q0() {
        this(null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0225, code lost:
    
        r4.onStateChange(r4.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x022c, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.q0 g(android.content.Context r18, android.content.res.Resources r19, org.xmlpull.v1.XmlPullParser r20, android.util.AttributeSet r21, android.content.res.Resources.Theme r22) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q0.g(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):q0");
    }

    @Override // defpackage.t0, defpackage.r0
    public r0.c b() {
        return new c(this.t, this, null);
    }

    @Override // defpackage.t0, defpackage.r0
    public void e(r0.c cVar) {
        super.e(cVar);
        if (cVar instanceof c) {
            this.t = (c) cVar;
        }
    }

    @Override // defpackage.t0
    /* renamed from: f */
    public t0.a b() {
        return new c(this.t, this, null);
    }

    @Override // defpackage.t0, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // defpackage.r0, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.u;
        if (gVar != null) {
            gVar.d();
            this.u = null;
            d(this.v);
            this.v = -1;
            this.w = -1;
        }
    }

    @Override // defpackage.t0, defpackage.r0, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.x) {
            super.mutate();
            if (this == this) {
                this.t.e();
                this.x = true;
            }
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f1  */
    @Override // defpackage.t0, defpackage.r0, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(int[] r19) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q0.onStateChange(int[]):boolean");
    }

    @Override // defpackage.r0, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        g gVar = this.u;
        if (gVar != null && (visible || z2)) {
            if (z) {
                gVar.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    public q0(c cVar, Resources resources) {
        super(null);
        this.v = -1;
        this.w = -1;
        c cVar2 = new c(cVar, this, resources);
        super.e(cVar2);
        this.t = cVar2;
        onStateChange(getState());
        jumpToCurrentState();
    }
}
