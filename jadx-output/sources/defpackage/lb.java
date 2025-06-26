package defpackage;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import defpackage.kb;
import defpackage.lb;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class lb<T extends lb<T>> implements kb.b {
    public static final k l = new c("scaleX");
    public static final k m = new d("scaleY");
    public static final k n = new e("rotation");
    public static final k o = new f("rotationX");
    public static final k p = new g("rotationY");
    public static final k q = new a("alpha");
    public final Object d;
    public final mb e;
    public float i;
    public float a = 0.0f;
    public float b = Float.MAX_VALUE;
    public boolean c = false;
    public boolean f = false;
    public float g = -3.4028235E38f;
    public long h = 0;
    public final ArrayList<i> j = new ArrayList<>();
    public final ArrayList<j> k = new ArrayList<>();

    public static class a extends k {
        public a(String str) {
            super(str, null);
        }

        @Override // defpackage.mb
        public float a(View view) {
            return view.getAlpha();
        }

        @Override // defpackage.mb
        public void b(View view, float f) {
            view.setAlpha(f);
        }
    }

    public static class b extends k {
    }

    public static class c extends k {
        public c(String str) {
            super(str, null);
        }

        @Override // defpackage.mb
        public float a(View view) {
            return view.getScaleX();
        }

        @Override // defpackage.mb
        public void b(View view, float f) {
            view.setScaleX(f);
        }
    }

    public static class d extends k {
        public d(String str) {
            super(str, null);
        }

        @Override // defpackage.mb
        public float a(View view) {
            return view.getScaleY();
        }

        @Override // defpackage.mb
        public void b(View view, float f) {
            view.setScaleY(f);
        }
    }

    public static class e extends k {
        public e(String str) {
            super(str, null);
        }

        @Override // defpackage.mb
        public float a(View view) {
            return view.getRotation();
        }

        @Override // defpackage.mb
        public void b(View view, float f) {
            view.setRotation(f);
        }
    }

    public static class f extends k {
        public f(String str) {
            super(str, null);
        }

        @Override // defpackage.mb
        public float a(View view) {
            return view.getRotationX();
        }

        @Override // defpackage.mb
        public void b(View view, float f) {
            view.setRotationX(f);
        }
    }

    public static class g extends k {
        public g(String str) {
            super(str, null);
        }

        @Override // defpackage.mb
        public float a(View view) {
            return view.getRotationY();
        }

        @Override // defpackage.mb
        public void b(View view, float f) {
            view.setRotationY(f);
        }
    }

    public static class h {
        public float a;
        public float b;
    }

    public interface i {
        void a(lb lbVar, boolean z, float f, float f2);
    }

    public interface j {
        void a(lb lbVar, float f, float f2);
    }

    public static abstract class k extends mb<View> {
        public k(String str, b bVar) {
            super(str);
        }
    }

    public <K> lb(K k2, mb<K> mbVar) {
        this.d = k2;
        this.e = mbVar;
        if (mbVar == n || mbVar == o || mbVar == p) {
            this.i = 0.1f;
            return;
        }
        if (mbVar == q) {
            this.i = 0.00390625f;
        } else if (mbVar == l || mbVar == m) {
            this.i = 0.00390625f;
        } else {
            this.i = 1.0f;
        }
    }

    public static <T> void d(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    @Override // kb.b
    public boolean a(long j2) {
        long j3 = this.h;
        if (j3 == 0) {
            this.h = j2;
            e(this.b);
            return false;
        }
        long j4 = j2 - j3;
        this.h = j2;
        nb nbVar = (nb) this;
        if (nbVar.s != Float.MAX_VALUE) {
            ob obVar = nbVar.r;
            double d2 = obVar.i;
            long j5 = j4 / 2;
            h hVarB = obVar.b(nbVar.b, nbVar.a, j5);
            ob obVar2 = nbVar.r;
            obVar2.i = nbVar.s;
            nbVar.s = Float.MAX_VALUE;
            h hVarB2 = obVar2.b(hVarB.a, hVarB.b, j5);
            nbVar.b = hVarB2.a;
            nbVar.a = hVarB2.b;
        } else {
            h hVarB3 = nbVar.r.b(nbVar.b, nbVar.a, j4);
            nbVar.b = hVarB3.a;
            nbVar.a = hVarB3.b;
        }
        float fMax = Math.max(nbVar.b, nbVar.g);
        nbVar.b = fMax;
        float fMin = Math.min(fMax, Float.MAX_VALUE);
        nbVar.b = fMin;
        float f2 = nbVar.a;
        ob obVar3 = nbVar.r;
        Objects.requireNonNull(obVar3);
        double dAbs = Math.abs(f2);
        boolean z = true;
        if (dAbs < obVar3.e && ((double) Math.abs(fMin - ((float) obVar3.i))) < obVar3.d) {
            nbVar.b = (float) nbVar.r.i;
            nbVar.a = 0.0f;
        } else {
            z = false;
        }
        float fMin2 = Math.min(this.b, Float.MAX_VALUE);
        this.b = fMin2;
        float fMax2 = Math.max(fMin2, this.g);
        this.b = fMax2;
        e(fMax2);
        if (z) {
            c(false);
        }
        return z;
    }

    public void b() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        }
        if (this.f) {
            c(true);
        }
    }

    public final void c(boolean z) {
        this.f = false;
        kb kbVarA = kb.a();
        kbVarA.a.remove(this);
        int iIndexOf = kbVarA.b.indexOf(this);
        if (iIndexOf >= 0) {
            kbVarA.b.set(iIndexOf, null);
            kbVarA.f = true;
        }
        this.h = 0L;
        this.c = false;
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            if (this.j.get(i2) != null) {
                this.j.get(i2).a(this, z, this.b, this.a);
            }
        }
        d(this.j);
    }

    public void e(float f2) {
        this.e.b(this.d, f2);
        for (int i2 = 0; i2 < this.k.size(); i2++) {
            if (this.k.get(i2) != null) {
                this.k.get(i2).a(this, this.b, this.a);
            }
        }
        d(this.k);
    }
}
