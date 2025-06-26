package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a7;
import defpackage.c6;
import defpackage.g6;
import defpackage.h6;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class ConstraintHelper extends View {
    public int[] e;
    public int f;
    public Context g;
    public g6 h;
    public String i;
    public View[] j;
    public HashMap<Integer, String> k;

    public ConstraintHelper(Context context) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super(context);
        this.e = new int[32];
        this.j = null;
        this.k = new HashMap<>();
        this.g = context;
        k(null);
    }

    public final void e(String str) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        if (str == null || str.length() == 0 || this.g == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int i = i(strTrim);
        if (i != 0) {
            this.k.put(Integer.valueOf(i), strTrim);
            f(i);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    public final void f(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f + 1;
        int[] iArr = this.e;
        if (i2 > iArr.length) {
            this.e = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.e;
        int i3 = this.f;
        iArr2[i3] = i;
        this.f = i3 + 1;
    }

    public void g() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i = 0; i < this.f; i++) {
            View viewE = constraintLayout.e(this.e[i]);
            if (viewE != null) {
                viewE.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewE.setTranslationZ(viewE.getTranslationZ() + elevation);
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.e, this.f);
    }

    public final int h(ConstraintLayout constraintLayout, String str) throws Resources.NotFoundException {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.g.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            if (childAt.getId() != -1) {
                String resourceEntryName = null;
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    public final int i(String str) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int iH = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object objD = constraintLayout.d(0, str);
            if (objD instanceof Integer) {
                iH = ((Integer) objD).intValue();
            }
        }
        if (iH == 0 && constraintLayout != null) {
            iH = h(constraintLayout, str);
        }
        if (iH == 0) {
            try {
                iH = R$id.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return iH == 0 ? this.g.getResources().getIdentifier(str, "id", this.g.getPackageName()) : iH;
    }

    public View[] j(ConstraintLayout constraintLayout) {
        View[] viewArr = this.j;
        if (viewArr == null || viewArr.length != this.f) {
            this.j = new View[this.f];
        }
        for (int i = 0; i < this.f; i++) {
            this.j[i] = constraintLayout.e(this.e[i]);
        }
        return this.j;
    }

    public void k(AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.i = string;
                    setIds(string);
                }
            }
        }
    }

    public void l(a7.a aVar, h6 h6Var, ConstraintLayout.a aVar2, SparseArray<c6> sparseArray) {
        a7.b bVar = aVar.d;
        int[] iArr = bVar.e0;
        int i = 0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = bVar.f0;
            if (str != null && str.length() > 0) {
                a7.b bVar2 = aVar.d;
                String[] strArrSplit = bVar2.f0.split(",");
                getContext();
                int[] iArrCopyOf = new int[strArrSplit.length];
                int i2 = 0;
                for (String str2 : strArrSplit) {
                    int i3 = i(str2.trim());
                    if (i3 != 0) {
                        iArrCopyOf[i2] = i3;
                        i2++;
                    }
                }
                if (i2 != strArrSplit.length) {
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i2);
                }
                bVar2.e0 = iArrCopyOf;
            }
        }
        h6Var.b();
        if (aVar.d.e0 == null) {
            return;
        }
        while (true) {
            int[] iArr2 = aVar.d.e0;
            if (i >= iArr2.length) {
                return;
            }
            c6 c6Var = sparseArray.get(iArr2[i]);
            if (c6Var != null) {
                h6Var.a(c6Var);
            }
            i++;
        }
    }

    public void m(c6 c6Var, boolean z) {
    }

    public void n(ConstraintLayout constraintLayout) {
    }

    public void o() {
    }

    @Override // android.view.View
    public void onAttachedToWindow() throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super.onAttachedToWindow();
        String str = this.i;
        if (str != null) {
            setIds(str);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void p(ConstraintLayout constraintLayout) {
    }

    public void q(g6 g6Var, SparseArray sparseArray) {
        g6Var.b();
        for (int i = 0; i < this.f; i++) {
            g6Var.a((c6) sparseArray.get(this.e[i]));
        }
    }

    public void r() {
        if (this.h == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.a) {
            ((ConstraintLayout.a) layoutParams).l0 = (c6) this.h;
        }
    }

    public void setIds(String str) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        this.i = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                e(str.substring(i));
                return;
            } else {
                e(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.i = null;
        this.f = 0;
        for (int i : iArr) {
            f(i);
        }
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet);
        this.e = new int[32];
        this.j = null;
        this.k = new HashMap<>();
        this.g = context;
        k(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        this.e = new int[32];
        this.j = null;
        this.k = new HashMap<>();
        this.g = context;
        k(attributeSet);
    }
}
