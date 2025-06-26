package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.a7;
import defpackage.b7;
import defpackage.c6;
import defpackage.d6;
import defpackage.f6;
import defpackage.g6;
import defpackage.i6;
import defpackage.m6;
import defpackage.u5;
import defpackage.z6;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import okhttp3.internal.http2.Http2Connection;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public SparseArray<View> e;
    public ArrayList<ConstraintHelper> f;
    public d6 g;
    public int h;
    public int i;
    public int j;
    public int k;
    public boolean l;
    public int m;
    public a7 n;
    public z6 o;
    public int p;
    public HashMap<String, Integer> q;
    public int r;
    public int s;
    public SparseArray<c6> t;
    public b u;

    public class b implements m6.b {
        public ConstraintLayout a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;

        public b(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
            this.a = constraintLayout2;
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0162 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0167  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x016b  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0173  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0176  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x017e  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0189 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:125:0x019e  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x01b0  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x01c1  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x01cc  */
        /* JADX WARN: Removed duplicated region for block: B:136:0x01d8  */
        /* JADX WARN: Removed duplicated region for block: B:137:0x01e2  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x01ef  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x01f4  */
        /* JADX WARN: Removed duplicated region for block: B:144:0x01f9  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x0201  */
        /* JADX WARN: Removed duplicated region for block: B:148:0x0206  */
        /* JADX WARN: Removed duplicated region for block: B:151:0x020b  */
        /* JADX WARN: Removed duplicated region for block: B:156:0x021d  */
        /* JADX WARN: Removed duplicated region for block: B:163:0x022e  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x0232  */
        /* JADX WARN: Removed duplicated region for block: B:167:0x0238  */
        /* JADX WARN: Removed duplicated region for block: B:170:0x024e  */
        /* JADX WARN: Removed duplicated region for block: B:171:0x0250  */
        /* JADX WARN: Removed duplicated region for block: B:174:0x0255  */
        /* JADX WARN: Removed duplicated region for block: B:178:0x025c  */
        /* JADX WARN: Removed duplicated region for block: B:181:0x0263  */
        /* JADX WARN: Removed duplicated region for block: B:183:0x0266  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x013b  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x014e  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0150  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0153  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0155  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x015a A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:98:0x015f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(defpackage.c6 r21, m6.a r22) {
            /*
                Method dump skipped, instructions count: 633
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b.a(c6, m6$a):void");
        }
    }

    public ConstraintLayout(Context context) throws XmlPullParserException, IOException {
        super(context);
        this.e = new SparseArray<>();
        this.f = new ArrayList<>(4);
        this.g = new d6();
        this.h = 0;
        this.i = 0;
        this.j = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.l = true;
        this.m = 263;
        this.n = null;
        this.o = null;
        this.p = -1;
        this.q = new HashMap<>();
        this.r = -1;
        this.s = -1;
        this.t = new SparseArray<>();
        this.u = new b(this, this);
        g(null, 0, 0);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e6  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:150:0x0311 -> B:151:0x0312). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(boolean r22, android.view.View r23, defpackage.c6 r24, androidx.constraintlayout.widget.ConstraintLayout.a r25, android.util.SparseArray<defpackage.c6> r26) {
        /*
            Method dump skipped, instructions count: 891
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b(boolean, android.view.View, c6, androidx.constraintlayout.widget.ConstraintLayout$a, android.util.SparseArray):void");
    }

    @Override // android.view.ViewGroup
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public Object d(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.q;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.q.get(str);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f.get(i).p(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i3 = Integer.parseInt(strArrSplit[0]);
                        int i4 = Integer.parseInt(strArrSplit[1]);
                        int i5 = Integer.parseInt(strArrSplit[2]);
                        int i6 = (int) ((i3 / 1080.0f) * width);
                        int i7 = (int) ((i4 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i6;
                        float f2 = i7;
                        float f3 = i6 + ((int) ((i5 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i7 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    public View e(int i) {
        return this.e.get(i);
    }

    public final c6 f(View view) {
        if (view == this) {
            return this.g;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).l0;
    }

    @Override // android.view.View
    public void forceLayout() {
        this.l = true;
        this.r = -1;
        this.s = -1;
        super.forceLayout();
    }

    public final void g(AttributeSet attributeSet, int i, int i2) throws XmlPullParserException, IOException {
        d6 d6Var = this.g;
        d6Var.c0 = this;
        d6Var.Q(this.u);
        this.e.put(getId(), this);
        this.n = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout, i, i2);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == R$styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.h);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.i = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.i);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.j = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.j);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.k = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.k);
                } else if (index == R$styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.m = typedArrayObtainStyledAttributes.getInt(index, this.m);
                } else if (index == R$styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            o(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.o = null;
                        }
                    }
                } else if (index == R$styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        a7 a7Var = new a7();
                        this.n = a7Var;
                        a7Var.h(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.n = null;
                    }
                    this.p = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.g.R(this.m);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.k;
    }

    public int getMaxWidth() {
        return this.j;
    }

    public int getMinHeight() {
        return this.i;
    }

    public int getMinWidth() {
        return this.h;
    }

    public int getOptimizationLevel() {
        return this.g.O0;
    }

    public boolean n() {
        return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
    }

    public void o(int i) {
        this.o = new z6(getContext(), this, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            a aVar = (a) childAt.getLayoutParams();
            c6 c6Var = aVar.l0;
            if ((childAt.getVisibility() != 8 || aVar.Y || aVar.Z || zIsInEditMode) && !aVar.a0) {
                int iU = c6Var.u();
                int iV = c6Var.v();
                int iT = c6Var.t() + iU;
                int iN = c6Var.n() + iV;
                childAt.layout(iU, iV, iT, iN);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iU, iV, iT, iN);
                }
            }
        }
        int size = this.f.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f.get(i6).n(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        String str;
        int iH;
        c6 c6Var;
        this.g.G0 = n();
        if (this.l) {
            this.l = false;
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    z = false;
                    break;
                } else {
                    if (getChildAt(i3).isLayoutRequested()) {
                        z = true;
                        break;
                    }
                    i3++;
                }
            }
            if (z) {
                boolean zIsInEditMode = isInEditMode();
                int childCount2 = getChildCount();
                for (int i4 = 0; i4 < childCount2; i4++) {
                    c6 c6VarF = f(getChildAt(i4));
                    if (c6VarF != null) {
                        c6VarF.z();
                    }
                }
                if (zIsInEditMode) {
                    for (int i5 = 0; i5 < childCount2; i5++) {
                        View childAt = getChildAt(i5);
                        try {
                            String resourceName = getResources().getResourceName(childAt.getId());
                            setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                            int iIndexOf = resourceName.indexOf(47);
                            if (iIndexOf != -1) {
                                resourceName = resourceName.substring(iIndexOf + 1);
                            }
                            int id = childAt.getId();
                            if (id == 0) {
                                c6Var = this.g;
                            } else {
                                View viewFindViewById = this.e.get(id);
                                if (viewFindViewById == null && (viewFindViewById = findViewById(id)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
                                    onViewAdded(viewFindViewById);
                                }
                                c6Var = viewFindViewById == this ? this.g : viewFindViewById == null ? null : ((a) viewFindViewById.getLayoutParams()).l0;
                            }
                            c6Var.f0 = resourceName;
                        } catch (Resources.NotFoundException unused) {
                        }
                    }
                }
                if (this.p != -1) {
                    for (int i6 = 0; i6 < childCount2; i6++) {
                        View childAt2 = getChildAt(i6);
                        if (childAt2.getId() == this.p && (childAt2 instanceof Constraints)) {
                            this.n = ((Constraints) childAt2).getConstraintSet();
                        }
                    }
                }
                a7 a7Var = this.n;
                if (a7Var != null) {
                    a7Var.c(this, true);
                }
                this.g.C0.clear();
                int size = this.f.size();
                if (size > 0) {
                    for (int i7 = 0; i7 < size; i7++) {
                        ConstraintHelper constraintHelper = this.f.get(i7);
                        if (constraintHelper.isInEditMode()) {
                            constraintHelper.setIds(constraintHelper.i);
                        }
                        g6 g6Var = constraintHelper.h;
                        if (g6Var != null) {
                            g6Var.b();
                            for (int i8 = 0; i8 < constraintHelper.f; i8++) {
                                int i9 = constraintHelper.e[i8];
                                View viewE = e(i9);
                                if (viewE == null && (iH = constraintHelper.h(this, (str = constraintHelper.k.get(Integer.valueOf(i9))))) != 0) {
                                    constraintHelper.e[i8] = iH;
                                    constraintHelper.k.put(Integer.valueOf(iH), str);
                                    viewE = e(iH);
                                }
                                if (viewE != null) {
                                    constraintHelper.h.a(f(viewE));
                                }
                            }
                            constraintHelper.h.c(this.g);
                        }
                    }
                }
                for (int i10 = 0; i10 < childCount2; i10++) {
                    View childAt3 = getChildAt(i10);
                    if (childAt3 instanceof Placeholder) {
                        Placeholder placeholder = (Placeholder) childAt3;
                        if (placeholder.e == -1 && !placeholder.isInEditMode()) {
                            placeholder.setVisibility(placeholder.g);
                        }
                        View viewFindViewById2 = findViewById(placeholder.e);
                        placeholder.f = viewFindViewById2;
                        if (viewFindViewById2 != null) {
                            ((a) viewFindViewById2.getLayoutParams()).a0 = true;
                            placeholder.f.setVisibility(0);
                            placeholder.setVisibility(0);
                        }
                    }
                }
                this.t.clear();
                this.t.put(0, this.g);
                this.t.put(getId(), this.g);
                for (int i11 = 0; i11 < childCount2; i11++) {
                    View childAt4 = getChildAt(i11);
                    this.t.put(childAt4.getId(), f(childAt4));
                }
                for (int i12 = 0; i12 < childCount2; i12++) {
                    View childAt5 = getChildAt(i12);
                    c6 c6VarF2 = f(childAt5);
                    if (c6VarF2 != null) {
                        a aVar = (a) childAt5.getLayoutParams();
                        this.g.a(c6VarF2);
                        b(zIsInEditMode, childAt5, c6VarF2, aVar, this.t);
                    }
                }
            }
            if (z) {
                this.g.S();
            }
        }
        q(this.g, this.m, i, i2);
        int iT = this.g.t();
        int iN = this.g.n();
        d6 d6Var = this.g;
        p(i, i2, iT, iN, d6Var.P0, d6Var.Q0);
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        c6 c6VarF = f(view);
        if ((view instanceof Guideline) && !(c6VarF instanceof f6)) {
            a aVar = (a) view.getLayoutParams();
            f6 f6Var = new f6();
            aVar.l0 = f6Var;
            aVar.Y = true;
            f6Var.L(aVar.R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.r();
            ((a) view.getLayoutParams()).Z = true;
            if (!this.f.contains(constraintHelper)) {
                this.f.add(constraintHelper);
            }
        }
        this.e.put(view.getId(), view);
        this.l = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.e.remove(view.getId());
        c6 c6VarF = f(view);
        this.g.C0.remove(c6VarF);
        c6VarF.M = null;
        this.f.remove(view);
        this.l = true;
    }

    public void p(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        b bVar = this.u;
        int i5 = bVar.e;
        int iResolveSizeAndState = ViewGroup.resolveSizeAndState(i3 + bVar.d, i, 0);
        int iResolveSizeAndState2 = ViewGroup.resolveSizeAndState(i4 + i5, i2, 0) & 16777215;
        int iMin = Math.min(this.j, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.k, iResolveSizeAndState2);
        if (z) {
            iMin |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        if (z2) {
            iMin2 |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        setMeasuredDimension(iMin, iMin2);
        this.r = iMin;
        this.s = iMin2;
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0534  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0545  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0719  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c2 A[PHI: r2
      0x01c2: PHI (r2v3 boolean) = (r2v2 boolean), (r2v60 boolean) binds: [B:53:0x0166, B:359:0x01c2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01ca A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void q(defpackage.d6 r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 1826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.q(d6, int, int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.l = true;
        this.r = -1;
        this.s = -1;
        super.requestLayout();
    }

    public void setConstraintSet(a7 a7Var) {
        this.n = a7Var;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.q == null) {
                this.q = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.q.put(strSubstring, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int i) {
        this.e.remove(getId());
        super.setId(i);
        this.e.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.k) {
            return;
        }
        this.k = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.j) {
            return;
        }
        this.j = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.i) {
            return;
        }
        this.i = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.h) {
            return;
        }
        this.h = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(b7 b7Var) {
        z6 z6Var = this.o;
        if (z6Var != null) {
            Objects.requireNonNull(z6Var);
        }
    }

    public void setOptimizationLevel(int i) {
        this.m = i;
        this.g.O0 = i;
        u5.p = i6.a(i, RecyclerView.a0.FLAG_TMP_DETACHED);
    }

    public void setState(int i, int i2, int i3) {
        z6 z6Var = this.o;
        if (z6Var != null) {
            z6Var.b(i, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        super(context, attributeSet);
        this.e = new SparseArray<>();
        this.f = new ArrayList<>(4);
        this.g = new d6();
        this.h = 0;
        this.i = 0;
        this.j = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.l = true;
        this.m = 263;
        this.n = null;
        this.o = null;
        this.p = -1;
        this.q = new HashMap<>();
        this.r = -1;
        this.s = -1;
        this.t = new SparseArray<>();
        this.u = new b(this, this);
        g(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) throws XmlPullParserException, IOException {
        super(context, attributeSet, i);
        this.e = new SparseArray<>();
        this.f = new ArrayList<>(4);
        this.g = new d6();
        this.h = 0;
        this.i = 0;
        this.j = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.l = true;
        this.m = 263;
        this.n = null;
        this.o = null;
        this.p = -1;
        this.q = new HashMap<>();
        this.r = -1;
        this.s = -1;
        this.t = new SparseArray<>();
        this.u = new b(this, this);
        g(attributeSet, i, 0);
    }

    public static class a extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        public int C;
        public float D;
        public float E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public float N;
        public float O;
        public int P;
        public int Q;
        public int R;
        public boolean S;
        public boolean T;
        public String U;
        public boolean V;
        public boolean W;
        public boolean X;
        public boolean Y;
        public boolean Z;
        public int a;
        public boolean a0;
        public int b;
        public int b0;
        public float c;
        public int c0;
        public int d;
        public int d0;
        public int e;
        public int e0;
        public int f;
        public int f0;
        public int g;
        public int g0;
        public int h;
        public float h0;
        public int i;
        public int i0;
        public int j;
        public int j0;
        public int k;
        public float k0;
        public int l;
        public c6 l0;
        public int m;
        public int n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a, reason: collision with other inner class name */
        public static class C0000a {
            public static final SparseIntArray a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                a = sparseIntArray;
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public a(Context context, AttributeSet attributeSet) throws NumberFormatException {
            int i;
            super(context, attributeSet);
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = 0.5f;
            this.l0 = new c6();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                int i3 = C0000a.a.get(index);
                switch (i3) {
                    case 1:
                        this.R = typedArrayObtainStyledAttributes.getInt(index, this.R);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.m);
                        this.m = resourceId;
                        if (resourceId == -1) {
                            this.m = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        float f = typedArrayObtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        this.o = f;
                        if (f < 0.0f) {
                            this.o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.a);
                        break;
                    case 6:
                        this.b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.b);
                        break;
                    case 7:
                        this.c = typedArrayObtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.d);
                        this.d = resourceId2;
                        if (resourceId2 == -1) {
                            this.d = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.e);
                        this.e = resourceId3;
                        if (resourceId3 == -1) {
                            this.e = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f);
                        this.f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.g);
                        this.g = resourceId5;
                        if (resourceId5 == -1) {
                            this.g = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.h);
                        this.h = resourceId6;
                        if (resourceId6 == -1) {
                            this.h = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.i);
                        this.i = resourceId7;
                        if (resourceId7 == -1) {
                            this.i = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.j);
                        this.j = resourceId8;
                        if (resourceId8 == -1) {
                            this.j = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.k);
                        this.k = resourceId9;
                        if (resourceId9 == -1) {
                            this.k = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId10;
                        if (resourceId10 == -1) {
                            this.l = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.p);
                        this.p = resourceId11;
                        if (resourceId11 == -1) {
                            this.p = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.q);
                        this.q = resourceId12;
                        if (resourceId12 == -1) {
                            this.q = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId13;
                        if (resourceId13 == -1) {
                            this.r = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId14;
                        if (resourceId14 == -1) {
                            this.s = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.S = typedArrayObtainStyledAttributes.getBoolean(index, this.S);
                        break;
                    case 28:
                        this.T = typedArrayObtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 29:
                        this.z = typedArrayObtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = typedArrayObtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        int i4 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.H = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i5 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.I = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.J) == -2) {
                                this.J = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.N = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.N));
                        this.H = 2;
                        break;
                    case 36:
                        try {
                            this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.O = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.O));
                        this.I = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = typedArrayObtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int iIndexOf = this.B.indexOf(44);
                                    if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String strSubstring = this.B.substring(0, iIndexOf);
                                        if (strSubstring.equalsIgnoreCase("W")) {
                                            this.C = 0;
                                        } else if (strSubstring.equalsIgnoreCase("H")) {
                                            this.C = 1;
                                        }
                                        i = iIndexOf + 1;
                                    }
                                    int iIndexOf2 = this.B.indexOf(58);
                                    if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                        String strSubstring2 = this.B.substring(i);
                                        if (strSubstring2.length() > 0) {
                                            Float.parseFloat(strSubstring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String strSubstring3 = this.B.substring(i, iIndexOf2);
                                        String strSubstring4 = this.B.substring(iIndexOf2 + 1);
                                        if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                            break;
                                        } else {
                                            try {
                                                float f2 = Float.parseFloat(strSubstring3);
                                                float f3 = Float.parseFloat(strSubstring4);
                                                if (f2 <= 0.0f || f3 <= 0.0f) {
                                                    break;
                                                } else if (this.C == 1) {
                                                    Math.abs(f3 / f2);
                                                    break;
                                                } else {
                                                    Math.abs(f2 / f3);
                                                    break;
                                                }
                                            } catch (NumberFormatException unused5) {
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    break;
                                }
                            case 45:
                                this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                                break;
                            case 46:
                                this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                                break;
                            case 47:
                                this.F = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.G = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.P = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.P);
                                break;
                            case 50:
                                this.Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                break;
                            case 51:
                                this.U = typedArrayObtainStyledAttributes.getString(index);
                                break;
                        }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.Y = false;
            this.V = true;
            this.W = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.S) {
                this.V = false;
                if (this.H == 0) {
                    this.H = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.T) {
                this.W = false;
                if (this.I == 0) {
                    this.I = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.V = false;
                if (i == 0 && this.H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.S = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.W = false;
                if (i2 == 0 && this.I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.T = true;
                }
            }
            if (this.c == -1.0f && this.a == -1 && this.b == -1) {
                return;
            }
            this.Y = true;
            this.V = true;
            this.W = true;
            if (!(this.l0 instanceof f6)) {
                this.l0 = new f6();
            }
            ((f6) this.l0).L(this.R);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0080  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r10) {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a.resolveLayoutDirection(int):void");
        }

        public a(int i, int i2) {
            super(i, i2);
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = 0.5f;
            this.l0 = new c6();
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = 0.5f;
            this.l0 = new c6();
        }
    }
}
