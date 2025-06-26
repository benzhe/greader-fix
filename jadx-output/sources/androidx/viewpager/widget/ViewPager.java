package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.ea;
import defpackage.ha;
import defpackage.jo;
import defpackage.qa;
import defpackage.sa;
import defpackage.u7;
import defpackage.v9;
import defpackage.xi;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    public static final int[] i0 = {R.attr.layout_gravity};
    public static final Comparator<f> j0 = new a();
    public static final Interpolator k0 = new b();
    public static final n l0 = new n();
    public int A;
    public boolean B;
    public boolean C;
    public int D;
    public int E;
    public int F;
    public float G;
    public float H;
    public float I;
    public float J;
    public int K;
    public VelocityTracker L;
    public int M;
    public int N;
    public int O;
    public int P;
    public EdgeEffect Q;
    public EdgeEffect R;
    public boolean S;
    public boolean T;
    public int U;
    public List<j> V;
    public j W;
    public j a0;
    public List<i> b0;
    public k c0;
    public int d0;
    public int e;
    public int e0;
    public final ArrayList<f> f;
    public ArrayList<View> f0;
    public final f g;
    public final Runnable g0;
    public final Rect h;
    public int h0;
    public xi i;
    public int j;
    public int k;
    public Parcelable l;
    public ClassLoader m;
    public Scroller n;
    public boolean o;
    public l p;
    public int q;
    public Drawable r;
    public int s;
    public int t;
    public float u;
    public float v;
    public int w;
    public boolean x;
    public boolean y;
    public boolean z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int g;
        public Parcelable h;
        public ClassLoader i;

        public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("FragmentPager.SavedState{");
            sbZ.append(Integer.toHexString(System.identityHashCode(this)));
            sbZ.append(" position=");
            return jo.q(sbZ, this.g, StringSubstitutor.DEFAULT_VAR_END);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeInt(this.g);
            parcel.writeParcelable(this.h, i);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.g = parcel.readInt();
            this.h = parcel.readParcelable(classLoader);
            this.i = classLoader;
        }
    }

    public static class a implements Comparator<f> {
        @Override // java.util.Comparator
        public int compare(f fVar, f fVar2) {
            return fVar.b - fVar2.b;
        }
    }

    public static class b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            ViewPager.this.setScrollState(0);
            ViewPager viewPager = ViewPager.this;
            viewPager.s(viewPager.j);
        }
    }

    public class d implements ea {
        public final Rect a = new Rect();

        public d() {
        }

        @Override // defpackage.ea
        public qa a(View view, qa qaVar) {
            qa qaVarN = ha.n(view, qaVar);
            if (qaVarN.h()) {
                return qaVarN;
            }
            Rect rect = this.a;
            rect.left = qaVarN.c();
            rect.top = qaVarN.e();
            rect.right = qaVarN.d();
            rect.bottom = qaVarN.b();
            int childCount = ViewPager.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                qa qaVarE = ha.e(ViewPager.this.getChildAt(i), qaVarN);
                rect.left = Math.min(qaVarE.c(), rect.left);
                rect.top = Math.min(qaVarE.e(), rect.top);
                rect.right = Math.min(qaVarE.d(), rect.right);
                rect.bottom = Math.min(qaVarE.b(), rect.bottom);
            }
            return qaVarN.i(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface e {
    }

    public static class f {
        public Object a;
        public int b;
        public boolean c;
        public float d;
        public float e;
    }

    public class h extends v9 {
        public h() {
        }

        @Override // defpackage.v9
        public void c(View view, AccessibilityEvent accessibilityEvent) {
            xi xiVar;
            this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            xi xiVar2 = ViewPager.this.i;
            accessibilityEvent.setScrollable(xiVar2 != null && xiVar2.c() > 1);
            if (accessibilityEvent.getEventType() != 4096 || (xiVar = ViewPager.this.i) == null) {
                return;
            }
            accessibilityEvent.setItemCount(xiVar.c());
            accessibilityEvent.setFromIndex(ViewPager.this.j);
            accessibilityEvent.setToIndex(ViewPager.this.j);
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            saVar.a.setClassName(ViewPager.class.getName());
            xi xiVar = ViewPager.this.i;
            saVar.a.setScrollable(xiVar != null && xiVar.c() > 1);
            if (ViewPager.this.canScrollHorizontally(1)) {
                saVar.a.addAction(RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                saVar.a.addAction(RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
            }
        }

        @Override // defpackage.v9
        public boolean g(View view, int i, Bundle bundle) throws Resources.NotFoundException {
            if (super.g(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.j + 1);
                return true;
            }
            if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            }
            ViewPager viewPager2 = ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.j - 1);
            return true;
        }
    }

    public interface i {
        void d(ViewPager viewPager, xi xiVar, xi xiVar2);
    }

    public interface j {
        void a(int i, float f, int i2);

        void b(int i);

        void c(int i);
    }

    public interface k {
        void a(View view, float f);
    }

    public class l extends DataSetObserver {
        public l() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() throws Resources.NotFoundException {
            ViewPager.this.f();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() throws Resources.NotFoundException {
            ViewPager.this.f();
        }
    }

    public static class m implements j {
        @Override // androidx.viewpager.widget.ViewPager.j
        public void a(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void b(int i) {
        }
    }

    public static class n implements Comparator<View> {
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            g gVar = (g) view.getLayoutParams();
            g gVar2 = (g) view2.getLayoutParams();
            boolean z = gVar.a;
            return z != gVar2.a ? z ? 1 : -1 : gVar.e - gVar2.e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        this.f = new ArrayList<>();
        this.g = new f();
        this.h = new Rect();
        this.k = -1;
        this.l = null;
        this.m = null;
        this.u = -3.4028235E38f;
        this.v = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.S = true;
        this.g0 = new c();
        this.h0 = 0;
        l();
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.y != z) {
            this.y = z;
        }
    }

    public f a(int i2, int i3) {
        f fVar = new f();
        fVar.b = i2;
        fVar.a = this.i.e(this, i2);
        Objects.requireNonNull(this.i);
        fVar.d = 1.0f;
        if (i3 < 0 || i3 >= this.f.size()) {
            this.f.add(fVar);
        } else {
            this.f.add(i3, fVar);
        }
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        f fVarI;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (fVarI = i(childAt)) != null && fVarI.b == this.j) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        f fVarI;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (fVarI = i(childAt)) != null && fVarI.b == this.j) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        g gVar = (g) layoutParams;
        boolean z = gVar.a | (view.getClass().getAnnotation(e.class) != null);
        gVar.a = z;
        if (!this.x) {
            super.addView(view, i2, layoutParams);
        } else {
            if (z) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            gVar.d = true;
            addViewInLayout(view, i2, layoutParams);
        }
    }

    public void b(j jVar) {
        if (this.V == null) {
            this.V = new ArrayList();
        }
        this.V.add(jVar);
    }

    public boolean c(int i2) throws Resources.NotFoundException {
        boolean zRequestFocus;
        boolean z;
        View viewFindFocus = findFocus();
        boolean zO = false;
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    z = false;
                    break;
                }
                if (parent == this) {
                    z = true;
                    break;
                }
                parent = parent.getParent();
            }
            if (!z) {
                StringBuilder sb = new StringBuilder();
                sb.append(viewFindFocus.getClass().getSimpleName());
                for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(" => ");
                    sb.append(parent2.getClass().getSimpleName());
                }
                StringBuilder sbZ = jo.z("arrowScroll tried to find focus based on non-child current focused view ");
                sbZ.append(sb.toString());
                Log.e("ViewPager", sbZ.toString());
                viewFindFocus = null;
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i2);
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            if (i2 == 17) {
                zRequestFocus = (viewFindFocus == null || h(this.h, viewFindNextFocus).left < h(this.h, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : o();
            } else if (i2 == 66) {
                zRequestFocus = (viewFindFocus == null || h(this.h, viewFindNextFocus).left > h(this.h, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : p();
            }
            zO = zRequestFocus;
        } else if (i2 == 17 || i2 == 1) {
            zO = o();
        } else if (i2 == 66 || i2 == 2) {
            zO = p();
        }
        if (zO) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
        }
        return zO;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.i == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.u)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.v));
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof g) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.o = true;
        if (this.n.isFinished() || !this.n.computeScrollOffset()) {
            e(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.n.getCurrX();
        int currY = this.n.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!q(currX)) {
                this.n.abortAnimation();
                scrollTo(0, currY);
            }
        }
        AtomicInteger atomicInteger = ha.a;
        postInvalidateOnAnimation();
    }

    public boolean d(View view, boolean z, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && d(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r6) throws android.content.res.Resources.NotFoundException {
        /*
            r5 = this;
            boolean r0 = super.dispatchKeyEvent(r6)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L5d
            int r0 = r6.getAction()
            if (r0 != 0) goto L5a
            int r0 = r6.getKeyCode()
            r3 = 21
            r4 = 2
            if (r0 == r3) goto L48
            r3 = 22
            if (r0 == r3) goto L36
            r3 = 61
            if (r0 == r3) goto L20
            goto L5a
        L20:
            boolean r0 = r6.hasNoModifiers()
            if (r0 == 0) goto L2b
            boolean r6 = r5.c(r4)
            goto L5b
        L2b:
            boolean r6 = r6.hasModifiers(r2)
            if (r6 == 0) goto L5a
            boolean r6 = r5.c(r2)
            goto L5b
        L36:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L41
            boolean r6 = r5.p()
            goto L5b
        L41:
            r6 = 66
            boolean r6 = r5.c(r6)
            goto L5b
        L48:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L53
            boolean r6 = r5.o()
            goto L5b
        L53:
            r6 = 17
            boolean r6 = r5.c(r6)
            goto L5b
        L5a:
            r6 = 0
        L5b:
            if (r6 == 0) goto L5e
        L5d:
            r1 = 1
        L5e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        f fVarI;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (fVarI = i(childAt)) != null && fVarI.b == this.j && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        xi xiVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (xiVar = this.i) != null && xiVar.c() > 1)) {
            if (!this.Q.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.u * width);
                this.Q.setSize(height, width);
                zDraw = false | this.Q.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.R.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.v + 1.0f)) * width2);
                this.R.setSize(height2, width2);
                zDraw |= this.R.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.Q.finish();
            this.R.finish();
        }
        if (zDraw) {
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.r;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e(boolean z) {
        boolean z2 = this.h0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.n.isFinished()) {
                this.n.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.n.getCurrX();
                int currY = this.n.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        q(currX);
                    }
                }
            }
        }
        this.z = false;
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            f fVar = this.f.get(i2);
            if (fVar.c) {
                fVar.c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (!z) {
                this.g0.run();
                return;
            }
            Runnable runnable = this.g0;
            AtomicInteger atomicInteger = ha.a;
            postOnAnimation(runnable);
        }
    }

    public void f() throws Resources.NotFoundException {
        int iC = this.i.c();
        this.e = iC;
        boolean z = this.f.size() < (this.A * 2) + 1 && this.f.size() < iC;
        int i2 = this.j;
        for (int i3 = 0; i3 < this.f.size(); i3++) {
            f fVar = this.f.get(i3);
            xi xiVar = this.i;
            Object obj = fVar.a;
            Objects.requireNonNull(xiVar);
        }
        Collections.sort(this.f, j0);
        if (z) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                g gVar = (g) getChildAt(i4).getLayoutParams();
                if (!gVar.a) {
                    gVar.c = 0.0f;
                }
            }
            x(i2, false, true, 0);
            requestLayout();
        }
    }

    public final void g(int i2) {
        j jVar = this.W;
        if (jVar != null) {
            jVar.c(i2);
        }
        List<j> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                j jVar2 = this.V.get(i3);
                if (jVar2 != null) {
                    jVar2.c(i2);
                }
            }
        }
        j jVar3 = this.a0;
        if (jVar3 != null) {
            jVar3.c(i2);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new g();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public xi getAdapter() {
        return this.i;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        if (this.e0 == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((g) this.f0.get(i3).getLayoutParams()).f;
    }

    public int getCurrentItem() {
        return this.j;
    }

    public int getOffscreenPageLimit() {
        return this.A;
    }

    public int getPageMargin() {
        return this.q;
    }

    public final Rect h(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public f i(View view) {
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            f fVar = this.f.get(i2);
            if (this.i.f(view, fVar.a)) {
                return fVar;
            }
        }
        return null;
    }

    public final f j() {
        int i2;
        int clientWidth = getClientWidth();
        float f2 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.q / clientWidth : 0.0f;
        f fVar = null;
        float f4 = 0.0f;
        int i3 = -1;
        int i4 = 0;
        boolean z = true;
        while (i4 < this.f.size()) {
            f fVar2 = this.f.get(i4);
            if (!z && fVar2.b != (i2 = i3 + 1)) {
                fVar2 = this.g;
                fVar2.e = f2 + f4 + f3;
                fVar2.b = i2;
                Objects.requireNonNull(this.i);
                fVar2.d = 1.0f;
                i4--;
            }
            f2 = fVar2.e;
            float f5 = fVar2.d + f2 + f3;
            if (!z && scrollX < f2) {
                return fVar;
            }
            if (scrollX < f5 || i4 == this.f.size() - 1) {
                return fVar2;
            }
            i3 = fVar2.b;
            f4 = fVar2.d;
            i4++;
            fVar = fVar2;
            z = false;
        }
        return fVar;
    }

    public f k(int i2) {
        for (int i3 = 0; i3 < this.f.size(); i3++) {
            f fVar = this.f.get(i3);
            if (fVar.b == i2) {
                return fVar;
            }
        }
        return null;
    }

    public void l() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.n = new Scroller(context, k0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.F = viewConfiguration.getScaledPagingTouchSlop();
        this.M = (int) (400.0f * f2);
        this.N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.Q = new EdgeEffect(context);
        this.R = new EdgeEffect(context);
        this.O = (int) (25.0f * f2);
        this.P = (int) (2.0f * f2);
        this.D = (int) (f2 * 16.0f);
        ha.s(this, new h());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        ha.t(this, new d());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.U
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6b
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = 0
        L1b:
            if (r7 >= r6) goto L6b
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.viewpager.widget.ViewPager$g r9 = (androidx.viewpager.widget.ViewPager.g) r9
            boolean r10 = r9.a
            if (r10 != 0) goto L2c
            goto L68
        L2c:
            int r9 = r9.b
            r9 = r9 & 7
            if (r9 == r2) goto L4d
            r10 = 3
            if (r9 == r10) goto L47
            r10 = 5
            if (r9 == r10) goto L3a
            r9 = r3
            goto L5c
        L3a:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
            goto L59
        L47:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5c
        L4d:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
        L59:
            r11 = r9
            r9 = r3
            r3 = r11
        L5c:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L67
            r8.offsetLeftAndRight(r3)
        L67:
            r3 = r9
        L68:
            int r7 = r7 + 1
            goto L1b
        L6b:
            androidx.viewpager.widget.ViewPager$j r0 = r12.W
            if (r0 == 0) goto L72
            r0.a(r13, r14, r15)
        L72:
            java.util.List<androidx.viewpager.widget.ViewPager$j> r0 = r12.V
            if (r0 == 0) goto L8d
            int r0 = r0.size()
            r3 = 0
        L7b:
            if (r3 >= r0) goto L8d
            java.util.List<androidx.viewpager.widget.ViewPager$j> r4 = r12.V
            java.lang.Object r4 = r4.get(r3)
            androidx.viewpager.widget.ViewPager$j r4 = (androidx.viewpager.widget.ViewPager.j) r4
            if (r4 == 0) goto L8a
            r4.a(r13, r14, r15)
        L8a:
            int r3 = r3 + 1
            goto L7b
        L8d:
            androidx.viewpager.widget.ViewPager$j r0 = r12.a0
            if (r0 == 0) goto L94
            r0.a(r13, r14, r15)
        L94:
            androidx.viewpager.widget.ViewPager$k r13 = r12.c0
            if (r13 == 0) goto Lc5
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        La0:
            if (r1 >= r14) goto Lc5
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            androidx.viewpager.widget.ViewPager$g r0 = (androidx.viewpager.widget.ViewPager.g) r0
            boolean r0 = r0.a
            if (r0 == 0) goto Lb1
            goto Lc2
        Lb1:
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            androidx.viewpager.widget.ViewPager$k r3 = r12.c0
            r3.a(r15, r0)
        Lc2:
            int r1 = r1 + 1
            goto La0
        Lc5:
            r12.T = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m(int, float, int):void");
    }

    public final void n(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.K) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.G = motionEvent.getX(i2);
            this.K = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.L;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public boolean o() throws Resources.NotFoundException {
        int i2 = this.j;
        if (i2 <= 0) {
            return false;
        }
        setCurrentItem(i2 - 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.S = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.g0);
        Scroller scroller = this.n;
        if (scroller != null && !scroller.isFinished()) {
            this.n.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i2;
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.q <= 0 || this.r == null || this.f.size() <= 0 || this.i == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f4 = this.q / width;
        int i3 = 0;
        f fVar = this.f.get(0);
        float f5 = fVar.e;
        int size = this.f.size();
        int i4 = fVar.b;
        int i5 = this.f.get(size - 1).b;
        while (i4 < i5) {
            while (true) {
                i2 = fVar.b;
                if (i4 <= i2 || i3 >= size) {
                    break;
                }
                i3++;
                fVar = this.f.get(i3);
            }
            if (i4 == i2) {
                float f6 = fVar.e;
                float f7 = fVar.d;
                f2 = (f6 + f7) * width;
                f5 = f6 + f7 + f4;
            } else {
                Objects.requireNonNull(this.i);
                f2 = (f5 + 1.0f) * width;
                f5 = 1.0f + f4 + f5;
            }
            if (this.q + f2 > scrollX) {
                f3 = f4;
                this.r.setBounds(Math.round(f2), this.s, Math.round(this.q + f2), this.t);
                this.r.draw(canvas);
            } else {
                f3 = f4;
            }
            if (f2 > scrollX + r2) {
                return;
            }
            i4++;
            f4 = f3;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        int action = motionEvent.getAction() & Base64.BASELENGTH;
        if (action == 3 || action == 1) {
            v();
            return false;
        }
        if (action != 0) {
            if (this.B) {
                return true;
            }
            if (this.C) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.I = x;
            this.G = x;
            float y = motionEvent.getY();
            this.J = y;
            this.H = y;
            this.K = motionEvent.getPointerId(0);
            this.C = false;
            this.o = true;
            this.n.computeScrollOffset();
            if (this.h0 != 2 || Math.abs(this.n.getFinalX() - this.n.getCurrX()) <= this.P) {
                e(false);
                this.B = false;
            } else {
                this.n.abortAnimation();
                this.z = false;
                s(this.j);
                this.B = true;
                u(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.K;
            if (i2 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float f2 = x2 - this.G;
                float fAbs = Math.abs(f2);
                float y2 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y2 - this.J);
                if (f2 != 0.0f) {
                    float f3 = this.G;
                    if (!((f3 < ((float) this.E) && f2 > 0.0f) || (f3 > ((float) (getWidth() - this.E)) && f2 < 0.0f)) && d(this, false, (int) f2, (int) x2, (int) y2)) {
                        this.G = x2;
                        this.H = y2;
                        this.C = true;
                        return false;
                    }
                }
                int i3 = this.F;
                if (fAbs > i3 && fAbs * 0.5f > fAbs2) {
                    this.B = true;
                    u(true);
                    setScrollState(1);
                    float f4 = this.I;
                    float f5 = this.F;
                    this.G = f2 > 0.0f ? f4 + f5 : f4 - f5;
                    this.H = y2;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i3) {
                    this.C = true;
                }
                if (this.B && r(x2)) {
                    AtomicInteger atomicInteger = ha.a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            n(motionEvent);
        }
        if (this.L == null) {
            this.L = VelocityTracker.obtain();
        }
        this.L.addMovement(motionEvent);
        return this.B;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r14, int r15) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        f fVarI;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i3 = 0;
            i4 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
        }
        while (i3 != i5) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (fVarI = i(childAt)) != null && fVarI.b == this.j && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        xi xiVar = this.i;
        if (xiVar != null) {
            xiVar.g(savedState.h, savedState.i);
            x(savedState.g, false, true, 0);
        } else {
            this.k = savedState.g;
            this.l = savedState.h;
            this.m = savedState.i;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.g = this.j;
        xi xiVar = this.i;
        if (xiVar != null) {
            savedState.h = xiVar.h();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.q;
            t(i2, i4, i6, i6);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean p() throws Resources.NotFoundException {
        xi xiVar = this.i;
        if (xiVar == null || this.j >= xiVar.c() - 1) {
            return false;
        }
        setCurrentItem(this.j + 1, true);
        return true;
    }

    public final boolean q(int i2) {
        if (this.f.size() == 0) {
            if (this.S) {
                return false;
            }
            this.T = false;
            m(0, 0.0f, 0);
            if (this.T) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        f fVarJ = j();
        int clientWidth = getClientWidth();
        int i3 = this.q;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = fVarJ.b;
        float f3 = ((i2 / f2) - fVarJ.e) / (fVarJ.d + (i3 / f2));
        this.T = false;
        m(i5, f3, (int) (i4 * f3));
        if (this.T) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean r(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.G - f2;
        this.G = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.u * clientWidth;
        float f5 = this.v * clientWidth;
        boolean z3 = false;
        f fVar = this.f.get(0);
        ArrayList<f> arrayList = this.f;
        f fVar2 = arrayList.get(arrayList.size() - 1);
        if (fVar.b != 0) {
            f4 = fVar.e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (fVar2.b != this.i.c() - 1) {
            f5 = fVar2.e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.Q.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.R.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.G = (scrollX - i2) + this.G;
        scrollTo(i2, getScrollY());
        q(i2);
        return z3;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f3 A[PHI: r3 r6 r12
      0x00f3: PHI (r3v22 int) = (r3v21 int), (r3v10 int), (r3v24 int) binds: [B:62:0x00e8, B:59:0x00d2, B:53:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00f3: PHI (r6v6 int) = (r6v1 int), (r6v5 int), (r6v8 int) binds: [B:62:0x00e8, B:59:0x00d2, B:53:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00f3: PHI (r12v5 float) = (r12v3 float), (r12v4 float), (r12v2 float) binds: [B:62:0x00e8, B:59:0x00d2, B:53:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0189 A[PHI: r1 r10
      0x0189: PHI (r1v19 float) = (r1v17 float), (r1v18 float), (r1v16 float) binds: [B:96:0x017e, B:93:0x0164, B:87:0x0148] A[DONT_GENERATE, DONT_INLINE]
      0x0189: PHI (r10v30 int) = (r10v28 int), (r10v29 int), (r10v27 int) binds: [B:96:0x017e, B:93:0x0164, B:87:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s(int r15) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.s(int):void");
    }

    public void setAdapter(xi xiVar) throws Resources.NotFoundException {
        xi xiVar2 = this.i;
        if (xiVar2 != null) {
            synchronized (xiVar2) {
            }
            this.i.j(this);
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                f fVar = this.f.get(i2);
                this.i.a(this, fVar.b, fVar.a);
            }
            this.i.b(this);
            this.f.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((g) getChildAt(i3).getLayoutParams()).a) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.j = 0;
            scrollTo(0, 0);
        }
        xi xiVar3 = this.i;
        this.i = xiVar;
        this.e = 0;
        if (xiVar != null) {
            if (this.p == null) {
                this.p = new l();
            }
            synchronized (this.i) {
            }
            this.z = false;
            boolean z = this.S;
            this.S = true;
            this.e = this.i.c();
            if (this.k >= 0) {
                this.i.g(this.l, this.m);
                x(this.k, false, true, 0);
                this.k = -1;
                this.l = null;
                this.m = null;
            } else if (z) {
                requestLayout();
            } else {
                s(this.j);
            }
        }
        List<i> list = this.b0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.b0.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.b0.get(i4).d(this, xiVar3, xiVar);
        }
    }

    public void setCurrentItem(int i2) throws Resources.NotFoundException {
        this.z = false;
        x(i2, !this.S, false, 0);
    }

    public void setOffscreenPageLimit(int i2) throws Resources.NotFoundException {
        if (i2 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.A) {
            this.A = i2;
            s(this.j);
        }
    }

    @Deprecated
    public void setOnPageChangeListener(j jVar) {
        this.W = jVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.q;
        this.q = i2;
        int width = getWidth();
        t(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.r = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, k kVar) throws Resources.NotFoundException {
        setPageTransformer(z, kVar, 2);
    }

    public void setScrollState(int i2) {
        if (this.h0 == i2) {
            return;
        }
        this.h0 = i2;
        if (this.c0 != null) {
            boolean z = i2 != 0;
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                getChildAt(i3).setLayerType(z ? this.d0 : 0, null);
            }
        }
        j jVar = this.W;
        if (jVar != null) {
            jVar.b(i2);
        }
        List<j> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                j jVar2 = this.V.get(i4);
                if (jVar2 != null) {
                    jVar2.b(i2);
                }
            }
        }
        j jVar3 = this.a0;
        if (jVar3 != null) {
            jVar3.b(i2);
        }
    }

    public final void t(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.f.isEmpty()) {
            if (!this.n.isFinished()) {
                this.n.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        f fVarK = k(this.j);
        int iMin = (int) ((fVarK != null ? Math.min(fVarK.e, this.v) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            e(false);
            scrollTo(iMin, getScrollY());
        }
    }

    public final void u(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    public final boolean v() {
        this.K = -1;
        this.B = false;
        this.C = false;
        VelocityTracker velocityTracker = this.L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.L = null;
        }
        this.Q.onRelease();
        this.R.onRelease();
        return this.Q.isFinished() || this.R.isFinished();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r;
    }

    public final void w(int i2, boolean z, int i3, boolean z2) throws Resources.NotFoundException {
        int scrollX;
        int iAbs;
        f fVarK = k(i2);
        int iMax = fVarK != null ? (int) (Math.max(this.u, Math.min(fVarK.e, this.v)) * getClientWidth()) : 0;
        if (!z) {
            if (z2) {
                g(i2);
            }
            e(false);
            scrollTo(iMax, 0);
            q(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.n;
            if ((scroller == null || scroller.isFinished()) ? false : true) {
                scrollX = this.o ? this.n.getCurrX() : this.n.getStartX();
                this.n.abortAnimation();
                setScrollingCacheEnabled(false);
            } else {
                scrollX = getScrollX();
            }
            int i4 = scrollX;
            int scrollY = getScrollY();
            int i5 = iMax - i4;
            int i6 = 0 - scrollY;
            if (i5 == 0 && i6 == 0) {
                e(false);
                s(this.j);
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i7 = clientWidth / 2;
                float f2 = clientWidth;
                float f3 = i7;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i5) * 1.0f) / f2) - 0.5f) * 0.47123894f)) * f3) + f3;
                int iAbs2 = Math.abs(i3);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    Objects.requireNonNull(this.i);
                    iAbs = (int) (((Math.abs(i5) / ((f2 * 1.0f) + this.q)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, 600);
                this.o = false;
                this.n.startScroll(i4, scrollY, i5, i6, iMin);
                AtomicInteger atomicInteger = ha.a;
                postInvalidateOnAnimation();
            }
        }
        if (z2) {
            g(i2);
        }
    }

    public void x(int i2, boolean z, boolean z2, int i3) throws Resources.NotFoundException {
        xi xiVar = this.i;
        if (xiVar == null || xiVar.c() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.j == i2 && this.f.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= this.i.c()) {
            i2 = this.i.c() - 1;
        }
        int i4 = this.A;
        int i5 = this.j;
        if (i2 > i5 + i4 || i2 < i5 - i4) {
            for (int i6 = 0; i6 < this.f.size(); i6++) {
                this.f.get(i6).c = true;
            }
        }
        boolean z3 = this.j != i2;
        if (!this.S) {
            s(i2);
            w(i2, z, i3, z3);
        } else {
            this.j = i2;
            if (z3) {
                g(i2);
            }
            requestLayout();
        }
    }

    public final void y() {
        if (this.e0 != 0) {
            ArrayList<View> arrayList = this.f0;
            if (arrayList == null) {
                this.f0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.f0.add(getChildAt(i2));
            }
            Collections.sort(this.f0, l0);
        }
    }

    public static class g extends ViewGroup.LayoutParams {
        public boolean a;
        public int b;
        public float c;
        public boolean d;
        public int e;
        public int f;

        public g() {
            super(-1, -1);
            this.c = 0.0f;
        }

        public g(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.i0);
            this.b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new g(getContext(), attributeSet);
    }

    public void setPageTransformer(boolean z, k kVar, int i2) throws Resources.NotFoundException {
        boolean z2 = kVar != null;
        boolean z3 = z2 != (this.c0 != null);
        this.c0 = kVar;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            this.e0 = z ? 2 : 1;
            this.d0 = i2;
        } else {
            this.e0 = 0;
        }
        if (z3) {
            s(this.j);
        }
    }

    public void setCurrentItem(int i2, boolean z) throws Resources.NotFoundException {
        this.z = false;
        x(i2, z, false, 0);
    }

    public void setPageMarginDrawable(int i2) {
        Context context = getContext();
        Object obj = u7.a;
        setPageMarginDrawable(context.getDrawable(i2));
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = new ArrayList<>();
        this.g = new f();
        this.h = new Rect();
        this.k = -1;
        this.l = null;
        this.m = null;
        this.u = -3.4028235E38f;
        this.v = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.S = true;
        this.g0 = new c();
        this.h0 = 0;
        l();
    }
}
