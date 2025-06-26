package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.button.MaterialButton;
import defpackage.c50;
import defpackage.ea5;
import defpackage.fc5;
import defpackage.ga5;
import defpackage.ha;
import defpackage.pa5;
import defpackage.sa;
import defpackage.t85;
import defpackage.v9;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {
    public static final String o = MaterialButtonToggleGroup.class.getSimpleName();
    public static final int p = R$style.Widget_MaterialComponents_MaterialButtonToggleGroup;
    public final List<d> e;
    public final c f;
    public final f g;
    public final LinkedHashSet<e> h;
    public final Comparator<MaterialButton> i;
    public Integer[] j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;

    public class a implements Comparator<MaterialButton> {
        public a() {
        }

        @Override // java.util.Comparator
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            MaterialButton materialButton3 = materialButton;
            MaterialButton materialButton4 = materialButton2;
            int iCompareTo = Boolean.valueOf(materialButton3.isChecked()).compareTo(Boolean.valueOf(materialButton4.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton3.isPressed()).compareTo(Boolean.valueOf(materialButton4.isPressed()));
            return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton3)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton4)));
        }
    }

    public class b extends v9 {
        public b() {
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            String str = MaterialButtonToggleGroup.o;
            Objects.requireNonNull(materialButtonToggleGroup);
            int i = -1;
            if (view instanceof MaterialButton) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i2 >= materialButtonToggleGroup.getChildCount()) {
                        break;
                    }
                    if (materialButtonToggleGroup.getChildAt(i2) == view) {
                        i = i3;
                        break;
                    }
                    if ((materialButtonToggleGroup.getChildAt(i2) instanceof MaterialButton) && materialButtonToggleGroup.d(i2)) {
                        i3++;
                    }
                    i2++;
                }
            }
            saVar.t(sa.c.a(0, 1, i, 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    public class c implements MaterialButton.a {
        public c(a aVar) {
        }

        @Override // com.google.android.material.button.MaterialButton.a
        public void a(MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            if (materialButtonToggleGroup.k) {
                return;
            }
            if (materialButtonToggleGroup.l) {
                materialButtonToggleGroup.n = z ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.f(materialButton.getId(), z)) {
                MaterialButtonToggleGroup.this.b(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public static class d {
        public static final ga5 e = new ea5(0.0f);
        public ga5 a;
        public ga5 b;
        public ga5 c;
        public ga5 d;

        public d(ga5 ga5Var, ga5 ga5Var2, ga5 ga5Var3, ga5 ga5Var4) {
            this.a = ga5Var;
            this.b = ga5Var3;
            this.c = ga5Var4;
            this.d = ga5Var2;
        }
    }

    public interface e {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z);
    }

    public class f implements MaterialButton.b {
        public f(a aVar) {
        }
    }

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (d(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (d(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && d(i2)) {
                i++;
            }
        }
        return i;
    }

    private void setCheckedId(int i) {
        this.n = i;
        b(i, true);
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            AtomicInteger atomicInteger = ha.a;
            materialButton.setId(View.generateViewId());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.h.add(this.f);
        materialButton.setOnPressedChangeListenerInternal(this.g);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public final void a() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton materialButtonC = c(i);
            int iMin = Math.min(materialButtonC.getStrokeWidth(), c(i - 1).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams = materialButtonC.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(-iMin);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -iMin;
                layoutParams2.setMarginStart(0);
            }
            materialButtonC.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            layoutParams3.setMarginEnd(0);
            layoutParams3.setMarginStart(0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(o, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        if (materialButton.isChecked()) {
            f(materialButton.getId(), true);
            setCheckedId(materialButton.getId());
        }
        pa5 shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.e.add(new d(shapeAppearanceModel.e, shapeAppearanceModel.h, shapeAppearanceModel.f, shapeAppearanceModel.g));
        ha.s(materialButton, new b());
    }

    public final void b(int i, boolean z) {
        Iterator<e> it = this.h.iterator();
        while (it.hasNext()) {
            it.next().a(this, i, z);
        }
    }

    public final MaterialButton c(int i) {
        return (MaterialButton) getChildAt(i);
    }

    public final boolean d(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.i);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(c(i), Integer.valueOf(i));
        }
        this.j = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public final void e(int i, boolean z) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById instanceof MaterialButton) {
            this.k = true;
            ((MaterialButton) viewFindViewById).setChecked(z);
            this.k = false;
        }
    }

    public final boolean f(int i, boolean z) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.m && checkedButtonIds.isEmpty()) {
            e(i, true);
            this.n = i;
            return false;
        }
        if (z && this.l) {
            checkedButtonIds.remove(Integer.valueOf(i));
            Iterator<Integer> it = checkedButtonIds.iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                e(iIntValue, false);
                b(iIntValue, false);
            }
        }
        return true;
    }

    public void g() {
        d dVar;
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton materialButtonC = c(i);
            if (materialButtonC.getVisibility() != 8) {
                pa5 shapeAppearanceModel = materialButtonC.getShapeAppearanceModel();
                Objects.requireNonNull(shapeAppearanceModel);
                pa5.b bVar = new pa5.b(shapeAppearanceModel);
                d dVar2 = this.e.get(i);
                if (firstVisibleChildIndex != lastVisibleChildIndex) {
                    boolean z = getOrientation() == 0;
                    if (i == firstVisibleChildIndex) {
                        if (!z) {
                            ga5 ga5Var = dVar2.a;
                            ga5 ga5Var2 = d.e;
                            dVar = new d(ga5Var, ga5Var2, dVar2.b, ga5Var2);
                        } else if (c50.n0(this)) {
                            ga5 ga5Var3 = d.e;
                            dVar = new d(ga5Var3, ga5Var3, dVar2.b, dVar2.c);
                        } else {
                            ga5 ga5Var4 = dVar2.a;
                            ga5 ga5Var5 = dVar2.d;
                            ga5 ga5Var6 = d.e;
                            dVar = new d(ga5Var4, ga5Var5, ga5Var6, ga5Var6);
                        }
                    } else if (i != lastVisibleChildIndex) {
                        dVar2 = null;
                    } else if (!z) {
                        ga5 ga5Var7 = d.e;
                        dVar = new d(ga5Var7, dVar2.d, ga5Var7, dVar2.c);
                    } else if (c50.n0(this)) {
                        ga5 ga5Var8 = dVar2.a;
                        ga5 ga5Var9 = dVar2.d;
                        ga5 ga5Var10 = d.e;
                        dVar = new d(ga5Var8, ga5Var9, ga5Var10, ga5Var10);
                    } else {
                        ga5 ga5Var11 = d.e;
                        dVar = new d(ga5Var11, ga5Var11, dVar2.b, dVar2.c);
                    }
                    dVar2 = dVar;
                }
                if (dVar2 == null) {
                    bVar.c(0.0f);
                } else {
                    bVar.e = dVar2.a;
                    bVar.h = dVar2.d;
                    bVar.f = dVar2.b;
                    bVar.g = dVar2.c;
                }
                materialButtonC.setShapeAppearanceModel(bVar.a());
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    public int getCheckedButtonId() {
        if (this.l) {
            return this.n;
        }
        return -1;
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButtonC = c(i);
            if (materialButtonC.isChecked()) {
                arrayList.add(Integer.valueOf(materialButtonC.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.j;
        if (numArr != null && i2 < numArr.length) {
            return numArr[i2].intValue();
        }
        Log.w(o, "Child order wasn't updated");
        return i2;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.n;
        if (i != -1) {
            e(i, true);
            f(i, true);
            setCheckedId(i);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) sa.b.a(1, getVisibleButtonCount(), false, this.l ? 1 : 2).a);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        g();
        a();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.h.remove(this.f);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.e.remove(iIndexOfChild);
        }
        g();
        a();
    }

    public void setSelectionRequired(boolean z) {
        this.m = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.l != z) {
            this.l = z;
            this.k = true;
            for (int i = 0; i < getChildCount(); i++) {
                MaterialButton materialButtonC = c(i);
                materialButtonC.setChecked(false);
                b(materialButtonC.getId(), false);
            }
            this.k = false;
            setCheckedId(-1);
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i) {
        int i2 = p;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        this.e = new ArrayList();
        this.f = new c(null);
        this.g = new f(null);
        this.h = new LinkedHashSet<>();
        this.i = new a();
        this.k = false;
        TypedArray typedArrayD = t85.d(getContext(), attributeSet, R$styleable.MaterialButtonToggleGroup, i, i2, new int[0]);
        setSingleSelection(typedArrayD.getBoolean(R$styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.n = typedArrayD.getResourceId(R$styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.m = typedArrayD.getBoolean(R$styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayD.recycle();
        AtomicInteger atomicInteger = ha.a;
        setImportantForAccessibility(1);
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}
