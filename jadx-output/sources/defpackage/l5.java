package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.a7;
import defpackage.d0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class l5 {
    public final MotionLayout a;
    public c7 b;
    public b c;
    public b e;
    public MotionEvent l;
    public MotionLayout.e n;
    public boolean o;
    public float p;
    public float q;
    public ArrayList<b> d = new ArrayList<>();
    public ArrayList<b> f = new ArrayList<>();
    public SparseArray<a7> g = new SparseArray<>();
    public HashMap<String, Integer> h = new HashMap<>();
    public SparseIntArray i = new SparseIntArray();
    public int j = 400;
    public int k = 0;
    public boolean m = false;

    public class a implements Interpolator {
        public final /* synthetic */ q4 a;

        public a(l5 l5Var, q4 q4Var) {
            this.a = q4Var;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return (float) this.a.a(f);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l5(android.content.Context r9, androidx.constraintlayout.motion.widget.MotionLayout r10, int r11) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l5.<init>(android.content.Context, androidx.constraintlayout.motion.widget.MotionLayout, int):void");
    }

    public boolean a(MotionLayout motionLayout, int i) {
        MotionLayout.i iVar = MotionLayout.i.FINISHED;
        MotionLayout.i iVar2 = MotionLayout.i.MOVING;
        MotionLayout.i iVar3 = MotionLayout.i.SETUP;
        if (this.n != null) {
            return false;
        }
        Iterator<b> it = this.d.iterator();
        while (it.hasNext()) {
            b next = it.next();
            int i2 = next.n;
            if (i2 != 0) {
                if (i == next.d && (i2 == 4 || i2 == 2)) {
                    motionLayout.setState(iVar);
                    motionLayout.setTransition(next);
                    if (next.n == 4) {
                        motionLayout.r(1.0f);
                        motionLayout.setState(iVar3);
                        motionLayout.setState(iVar2);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.s(true);
                        motionLayout.setState(iVar3);
                        motionLayout.setState(iVar2);
                        motionLayout.setState(iVar);
                    }
                    return true;
                }
                if (i == next.c && (i2 == 3 || i2 == 1)) {
                    motionLayout.setState(iVar);
                    motionLayout.setTransition(next);
                    if (next.n == 3) {
                        motionLayout.r(0.0f);
                        motionLayout.setState(iVar3);
                        motionLayout.setState(iVar2);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.s(true);
                        motionLayout.setState(iVar3);
                        motionLayout.setState(iVar2);
                        motionLayout.setState(iVar);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public a7 b(int i) {
        int iA;
        c7 c7Var = this.b;
        if (c7Var != null && (iA = c7Var.a(i, -1, -1)) != -1) {
            i = iA;
        }
        if (this.g.get(i) != null) {
            return this.g.get(i);
        }
        StringBuilder sbZ = jo.z("Warning could not find ConstraintSet id/");
        sbZ.append(d0.h.E(this.a.getContext(), i));
        sbZ.append(" In MotionScene");
        Log.e("MotionScene", sbZ.toString());
        SparseArray<a7> sparseArray = this.g;
        return sparseArray.get(sparseArray.keyAt(0));
    }

    public int c() {
        b bVar = this.c;
        return bVar != null ? bVar.h : this.j;
    }

    public int d() {
        b bVar = this.c;
        if (bVar == null) {
            return -1;
        }
        return bVar.c;
    }

    public final int e(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
        } else {
            identifier = -1;
        }
        if (identifier != -1) {
            return identifier;
        }
        if (str.length() > 1) {
            return Integer.parseInt(str.substring(1));
        }
        Log.e("MotionScene", "error in parsing id");
        return identifier;
    }

    public Interpolator f() {
        b bVar = this.c;
        int i = bVar.e;
        if (i == -2) {
            return AnimationUtils.loadInterpolator(this.a.getContext(), this.c.g);
        }
        if (i == -1) {
            return new a(this, q4.c(bVar.f));
        }
        if (i == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i == 1) {
            return new AccelerateInterpolator();
        }
        if (i == 2) {
            return new DecelerateInterpolator();
        }
        if (i == 4) {
            return new AnticipateInterpolator();
        }
        if (i != 5) {
            return null;
        }
        return new BounceInterpolator();
    }

    public void g(i5 i5Var) {
        b bVar = this.c;
        if (bVar != null) {
            Iterator<c5> it = bVar.k.iterator();
            while (it.hasNext()) {
                it.next().a(i5Var);
            }
        } else {
            b bVar2 = this.e;
            if (bVar2 != null) {
                Iterator<c5> it2 = bVar2.k.iterator();
                while (it2.hasNext()) {
                    it2.next().a(i5Var);
                }
            }
        }
    }

    public float h() {
        q5 q5Var;
        b bVar = this.c;
        if (bVar == null || (q5Var = bVar.l) == null) {
            return 0.0f;
        }
        return q5Var.q;
    }

    public int i() {
        b bVar = this.c;
        if (bVar == null) {
            return -1;
        }
        return bVar.d;
    }

    public final void j(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        a7 a7Var = new a7();
        a7Var.b = false;
        int attributeCount = xmlPullParser.getAttributeCount();
        int iE = -1;
        int iE2 = -1;
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.hashCode();
            if (attributeName.equals("deriveConstraintsFrom")) {
                iE2 = e(context, attributeValue);
            } else if (attributeName.equals("id")) {
                iE = e(context, attributeValue);
                HashMap<String, Integer> map = this.h;
                int iIndexOf = attributeValue.indexOf(47);
                if (iIndexOf >= 0) {
                    attributeValue = attributeValue.substring(iIndexOf + 1);
                }
                map.put(attributeValue, Integer.valueOf(iE));
            }
        }
        if (iE != -1) {
            int i2 = this.a.Q;
            a7Var.i(context, xmlPullParser);
            if (iE2 != -1) {
                this.i.put(iE, iE2);
            }
            this.g.put(iE, a7Var);
        }
    }

    public final void k(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R$styleable.MotionScene_defaultDuration) {
                this.j = typedArrayObtainStyledAttributes.getInt(index, this.j);
            } else if (index == R$styleable.MotionScene_layoutDuringTransition) {
                this.k = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void l(int i) {
        int i2 = this.i.get(i);
        if (i2 > 0) {
            l(this.i.get(i));
            a7 a7Var = this.g.get(i);
            a7 a7Var2 = this.g.get(i2);
            if (a7Var2 == null) {
                StringBuilder sbZ = jo.z("ERROR! invalid deriveConstraintsFrom: @id/");
                sbZ.append(d0.h.E(this.a.getContext(), i2));
                Log.e("MotionScene", sbZ.toString());
                return;
            }
            Objects.requireNonNull(a7Var);
            for (Integer num : a7Var2.c.keySet()) {
                int iIntValue = num.intValue();
                a7.a aVar = a7Var2.c.get(num);
                if (!a7Var.c.containsKey(Integer.valueOf(iIntValue))) {
                    a7Var.c.put(Integer.valueOf(iIntValue), new a7.a());
                }
                a7.a aVar2 = a7Var.c.get(Integer.valueOf(iIntValue));
                a7.b bVar = aVar2.d;
                if (!bVar.b) {
                    bVar.a(aVar.d);
                }
                a7.d dVar = aVar2.b;
                if (!dVar.a) {
                    dVar.a(aVar.b);
                }
                a7.e eVar = aVar2.e;
                if (!eVar.a) {
                    eVar.a(aVar.e);
                }
                a7.c cVar = aVar2.c;
                if (!cVar.a) {
                    cVar.a(aVar.c);
                }
                for (String str : aVar.f.keySet()) {
                    if (!aVar2.f.containsKey(str)) {
                        aVar2.f.put(str, aVar.f.get(str));
                    }
                }
            }
            this.i.put(i, -1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m(int r8, int r9) {
        /*
            r7 = this;
            c7 r0 = r7.b
            r1 = -1
            if (r0 == 0) goto L16
            int r0 = r0.a(r8, r1, r1)
            if (r0 == r1) goto Lc
            goto Ld
        Lc:
            r0 = r8
        Ld:
            c7 r2 = r7.b
            int r2 = r2.a(r9, r1, r1)
            if (r2 == r1) goto L17
            goto L18
        L16:
            r0 = r8
        L17:
            r2 = r9
        L18:
            java.util.ArrayList<l5$b> r3 = r7.d
            java.util.Iterator r3 = r3.iterator()
        L1e:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            java.lang.Object r4 = r3.next()
            l5$b r4 = (l5.b) r4
            int r5 = r4.c
            if (r5 != r2) goto L32
            int r6 = r4.d
            if (r6 == r0) goto L38
        L32:
            if (r5 != r9) goto L1e
            int r5 = r4.d
            if (r5 != r8) goto L1e
        L38:
            r7.c = r4
            q5 r8 = r4.l
            if (r8 == 0) goto L43
            boolean r9 = r7.o
            r8.b(r9)
        L43:
            return
        L44:
            l5$b r8 = r7.e
            java.util.ArrayList<l5$b> r3 = r7.f
            java.util.Iterator r3 = r3.iterator()
        L4c:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L5e
            java.lang.Object r4 = r3.next()
            l5$b r4 = (l5.b) r4
            int r5 = r4.c
            if (r5 != r9) goto L4c
            r8 = r4
            goto L4c
        L5e:
            l5$b r9 = new l5$b
            r9.<init>(r7, r8)
            r9.d = r0
            r9.c = r2
            if (r0 == r1) goto L6e
            java.util.ArrayList<l5$b> r8 = r7.d
            r8.add(r9)
        L6e:
            r7.c = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l5.m(int, int):void");
    }

    public boolean n() {
        Iterator<b> it = this.d.iterator();
        while (it.hasNext()) {
            if (it.next().l != null) {
                return true;
            }
        }
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? false : true;
    }

    public static class b {
        public int a;
        public boolean b;
        public int c;
        public int d;
        public int e;
        public String f;
        public int g;
        public int h;
        public float i;
        public final l5 j;
        public ArrayList<c5> k;
        public q5 l;
        public ArrayList<a> m;
        public int n;
        public boolean o;
        public int p;
        public int q;
        public int r;

        public static class a implements View.OnClickListener {
            public final b e;
            public int f;
            public int g;

            public a(Context context, b bVar, XmlPullParser xmlPullParser) {
                this.f = -1;
                this.g = 17;
                this.e = bVar;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.OnClick);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i);
                    if (index == R$styleable.OnClick_targetId) {
                        this.f = typedArrayObtainStyledAttributes.getResourceId(index, this.f);
                    } else if (index == R$styleable.OnClick_clickAction) {
                        this.g = typedArrayObtainStyledAttributes.getInt(index, this.g);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r7v5, types: [android.view.View] */
            public void a(MotionLayout motionLayout, int i, b bVar) {
                int i2 = this.f;
                MotionLayout motionLayoutFindViewById = motionLayout;
                if (i2 != -1) {
                    motionLayoutFindViewById = motionLayout.findViewById(i2);
                }
                if (motionLayoutFindViewById == null) {
                    StringBuilder sbZ = jo.z("OnClick could not find id ");
                    sbZ.append(this.f);
                    Log.e("MotionScene", sbZ.toString());
                    return;
                }
                int i3 = bVar.d;
                int i4 = bVar.c;
                if (i3 == -1) {
                    motionLayoutFindViewById.setOnClickListener(this);
                    return;
                }
                int i5 = this.g;
                int i6 = i5 & 1;
                boolean z = false;
                boolean z2 = (i6 != 0 && i == i3) | (i6 != 0 && i == i3) | ((i5 & RecyclerView.a0.FLAG_TMP_DETACHED) != 0 && i == i3) | ((i5 & 16) != 0 && i == i4);
                if ((i5 & RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 && i == i4) {
                    z = true;
                }
                if (z2 || z) {
                    motionLayoutFindViewById.setOnClickListener(this);
                }
            }

            public void b(MotionLayout motionLayout) {
                int i = this.f;
                if (i == -1) {
                    return;
                }
                View viewFindViewById = motionLayout.findViewById(i);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(null);
                    return;
                }
                StringBuilder sbZ = jo.z(" (*)  could not find id ");
                sbZ.append(this.f);
                Log.e("MotionScene", sbZ.toString());
            }

            /* JADX WARN: Removed duplicated region for block: B:52:0x0092  */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onClick(android.view.View r10) {
                /*
                    Method dump skipped, instructions count: 209
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: l5.b.a.onClick(android.view.View):void");
            }
        }

        public b(l5 l5Var, b bVar) {
            this.a = -1;
            this.b = false;
            this.c = -1;
            this.d = -1;
            this.e = 0;
            this.f = null;
            this.g = -1;
            this.h = 400;
            this.i = 0.0f;
            this.k = new ArrayList<>();
            this.l = null;
            this.m = new ArrayList<>();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.j = l5Var;
            if (bVar != null) {
                this.p = bVar.p;
                this.e = bVar.e;
                this.f = bVar.f;
                this.g = bVar.g;
                this.h = bVar.h;
                this.k = bVar.k;
                this.i = bVar.i;
                this.q = bVar.q;
            }
        }

        public b(l5 l5Var, Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, Resources.NotFoundException, IOException {
            this.a = -1;
            this.b = false;
            this.c = -1;
            this.d = -1;
            this.e = 0;
            this.f = null;
            this.g = -1;
            this.h = 400;
            this.i = 0.0f;
            this.k = new ArrayList<>();
            this.l = null;
            this.m = new ArrayList<>();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.h = l5Var.j;
            this.q = l5Var.k;
            this.j = l5Var;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Transition);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.Transition_constraintSetEnd) {
                    this.c = typedArrayObtainStyledAttributes.getResourceId(index, this.c);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.c))) {
                        a7 a7Var = new a7();
                        a7Var.h(context, this.c);
                        l5Var.g.append(this.c, a7Var);
                    }
                } else if (index == R$styleable.Transition_constraintSetStart) {
                    this.d = typedArrayObtainStyledAttributes.getResourceId(index, this.d);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.d))) {
                        a7 a7Var2 = new a7();
                        a7Var2.h(context, this.d);
                        l5Var.g.append(this.d, a7Var2);
                    }
                } else if (index == R$styleable.Transition_motionInterpolator) {
                    int i2 = typedArrayObtainStyledAttributes.peekValue(index).type;
                    if (i2 == 1) {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.g = resourceId;
                        if (resourceId != -1) {
                            this.e = -2;
                        }
                    } else if (i2 == 3) {
                        String string = typedArrayObtainStyledAttributes.getString(index);
                        this.f = string;
                        if (string.indexOf("/") > 0) {
                            this.g = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.e = -2;
                        } else {
                            this.e = -1;
                        }
                    } else {
                        this.e = typedArrayObtainStyledAttributes.getInteger(index, this.e);
                    }
                } else if (index == R$styleable.Transition_duration) {
                    this.h = typedArrayObtainStyledAttributes.getInt(index, this.h);
                } else if (index == R$styleable.Transition_staggered) {
                    this.i = typedArrayObtainStyledAttributes.getFloat(index, this.i);
                } else if (index == R$styleable.Transition_autoTransition) {
                    this.n = typedArrayObtainStyledAttributes.getInteger(index, this.n);
                } else if (index == R$styleable.Transition_android_id) {
                    this.a = typedArrayObtainStyledAttributes.getResourceId(index, this.a);
                } else if (index == R$styleable.Transition_transitionDisable) {
                    this.o = typedArrayObtainStyledAttributes.getBoolean(index, this.o);
                } else if (index == R$styleable.Transition_pathMotionArc) {
                    this.p = typedArrayObtainStyledAttributes.getInteger(index, -1);
                } else if (index == R$styleable.Transition_layoutDuringTransition) {
                    this.q = typedArrayObtainStyledAttributes.getInteger(index, 0);
                } else if (index == R$styleable.Transition_transitionFlags) {
                    this.r = typedArrayObtainStyledAttributes.getInteger(index, 0);
                }
            }
            if (this.d == -1) {
                this.b = true;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
