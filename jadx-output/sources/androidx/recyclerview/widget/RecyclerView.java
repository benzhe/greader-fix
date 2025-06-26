package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.R$attr;
import androidx.recyclerview.R$dimen;
import androidx.recyclerview.R$styleable;
import defpackage.Cif;
import defpackage.aa;
import defpackage.ag;
import defpackage.bg;
import defpackage.cg;
import defpackage.e9;
import defpackage.ef;
import defpackage.eg;
import defpackage.ff;
import defpackage.fg;
import defpackage.gf;
import defpackage.ha;
import defpackage.hf;
import defpackage.jf;
import defpackage.jo;
import defpackage.la;
import defpackage.of;
import defpackage.pf;
import defpackage.qf;
import defpackage.sa;
import defpackage.sf;
import defpackage.z9;
import defpackage.zf;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements z9 {
    public static final int[] C0 = {R.attr.nestedScrollingEnabled};
    public static final boolean D0;
    public static final boolean E0;
    public static final boolean F0;
    public static final Class<?>[] G0;
    public static final Interpolator H0;
    public boolean A;
    public Runnable A0;
    public boolean B;
    public final fg.b B0;
    public boolean C;
    public int D;
    public boolean E;
    public final AccessibilityManager F;
    public List<o> G;
    public boolean H;
    public boolean I;
    public int J;
    public int K;
    public i L;
    public EdgeEffect M;
    public EdgeEffect N;
    public EdgeEffect O;
    public EdgeEffect P;
    public j Q;
    public int R;
    public int S;
    public VelocityTracker T;
    public int U;
    public int V;
    public int W;
    public int a0;
    public int b0;
    public p c0;
    public final int d0;
    public final v e;
    public final int e0;
    public final t f;
    public float f0;
    public SavedState g;
    public float g0;
    public ef h;
    public boolean h0;
    public ff i;
    public final z i0;
    public final fg j;
    public qf j0;
    public boolean k;
    public qf.b k0;
    public final Runnable l;
    public final x l0;
    public final Rect m;
    public r m0;
    public final Rect n;
    public List<r> n0;
    public final RectF o;
    public boolean o0;
    public e p;
    public boolean p0;
    public m q;
    public j.b q0;
    public u r;
    public boolean r0;
    public final ArrayList<l> s;
    public bg s0;
    public final ArrayList<q> t;
    public h t0;
    public q u;
    public final int[] u0;
    public boolean v;
    public aa v0;
    public boolean w;
    public final int[] w0;
    public boolean x;
    public final int[] x0;
    public boolean y;
    public final int[] y0;
    public int z;
    public final List<a0> z0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.y || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.v) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.B) {
                recyclerView2.A = true;
            } else {
                recyclerView2.n();
            }
        }
    }

    public static abstract class a0 {
        public static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        public static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        public static final int FLAG_BOUND = 1;
        public static final int FLAG_IGNORE = 128;
        public static final int FLAG_INVALID = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_NOT_RECYCLABLE = 16;
        public static final int FLAG_REMOVED = 8;
        public static final int FLAG_RETURNED_FROM_SCRAP = 32;
        public static final int FLAG_TMP_DETACHED = 256;
        public static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        public static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        public int mFlags;
        public WeakReference<RecyclerView> mNestedRecyclerView;
        public RecyclerView mOwnerRecyclerView;
        public int mPosition = -1;
        public int mOldPosition = -1;
        public long mItemId = -1;
        public int mItemViewType = -1;
        public int mPreLayoutPosition = -1;
        public a0 mShadowedHolder = null;
        public a0 mShadowingHolder = null;
        public List<Object> mPayloads = null;
        public List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        public t mScrapContainer = null;
        public boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        public int mPendingAccessibilityState = -1;

        public a0(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((1024 & this.mFlags) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        public void addFlags(int i) {
            this.mFlags = i | this.mFlags;
        }

        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        public boolean doesTransientStatePreventRecycling() {
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                AtomicInteger atomicInteger = ha.a;
                if (view.hasTransientState()) {
                    return true;
                }
            }
            return false;
        }

        public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        public final int getAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.H(this);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i = this.mPreLayoutPosition;
            return i == -1 ? this.mPosition : i;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i = this.mPreLayoutPosition;
            return i == -1 ? this.mPosition : i;
        }

        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        public boolean hasAnyOfTheFlags(int i) {
            return (i & this.mFlags) != 0;
        }

        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                AtomicInteger atomicInteger = ha.a;
                if (!view.hasTransientState()) {
                    return true;
                }
            }
            return false;
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        public boolean isTmpDetached() {
            return (this.mFlags & FLAG_TMP_DETACHED) != 0;
        }

        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        public void offsetPosition(int i, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i;
            }
            this.mPosition += i;
            if (this.itemView.getLayoutParams() != null) {
                ((n) this.itemView.getLayoutParams()).c = true;
            }
        }

        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i = this.mPendingAccessibilityState;
            if (i != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                View view = this.itemView;
                AtomicInteger atomicInteger = ha.a;
                this.mWasImportantForAccessibilityBeforeHidden = view.getImportantForAccessibility();
            }
            recyclerView.j0(this, 4);
        }

        public void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.j0(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.k(this);
        }

        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        public void setFlags(int i, int i2) {
            this.mFlags = (i & i2) | (this.mFlags & (~i2));
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.mIsRecyclableCount;
            int i2 = z ? i - 1 : i + 1;
            this.mIsRecyclableCount = i2;
            if (i2 < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && i2 == 1) {
                this.mFlags |= 16;
            } else if (z && i2 == 0) {
                this.mFlags &= -17;
            }
        }

        public void setScrapContainer(t tVar, boolean z) {
            this.mScrapContainer = tVar;
            this.mInChangeScrap = z;
        }

        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sbB = jo.B(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
            sbB.append(Integer.toHexString(hashCode()));
            sbB.append(" position=");
            sbB.append(this.mPosition);
            sbB.append(" id=");
            sbB.append(this.mItemId);
            sbB.append(", oldPos=");
            sbB.append(this.mOldPosition);
            sbB.append(", pLpos:");
            sbB.append(this.mPreLayoutPosition);
            StringBuilder sb = new StringBuilder(sbB.toString());
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                StringBuilder sbZ = jo.z(" not recyclable(");
                sbZ.append(this.mIsRecyclableCount);
                sbZ.append(")");
                sb.append(sbZ.toString());
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return sb.toString();
        }

        public void unScrap() {
            this.mScrapContainer.k(this);
        }

        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVar = RecyclerView.this.Q;
            if (jVar != null) {
                of ofVar = (of) jVar;
                boolean z = !ofVar.h.isEmpty();
                boolean z2 = !ofVar.j.isEmpty();
                boolean z3 = !ofVar.k.isEmpty();
                boolean z4 = !ofVar.i.isEmpty();
                if (z || z2 || z4 || z3) {
                    Iterator<a0> it = ofVar.h.iterator();
                    while (it.hasNext()) {
                        a0 next = it.next();
                        View view = next.itemView;
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        ofVar.q.add(next);
                        viewPropertyAnimatorAnimate.setDuration(ofVar.d).alpha(0.0f).setListener(new jf(ofVar, next, viewPropertyAnimatorAnimate, view)).start();
                    }
                    ofVar.h.clear();
                    if (z2) {
                        ArrayList<of.b> arrayList = new ArrayList<>();
                        arrayList.addAll(ofVar.j);
                        ofVar.m.add(arrayList);
                        ofVar.j.clear();
                        gf gfVar = new gf(ofVar, arrayList);
                        if (z) {
                            View view2 = arrayList.get(0).a.itemView;
                            long j = ofVar.d;
                            AtomicInteger atomicInteger = ha.a;
                            view2.postOnAnimationDelayed(gfVar, j);
                        } else {
                            gfVar.run();
                        }
                    }
                    if (z3) {
                        ArrayList<of.a> arrayList2 = new ArrayList<>();
                        arrayList2.addAll(ofVar.k);
                        ofVar.n.add(arrayList2);
                        ofVar.k.clear();
                        hf hfVar = new hf(ofVar, arrayList2);
                        if (z) {
                            View view3 = arrayList2.get(0).a.itemView;
                            long j2 = ofVar.d;
                            AtomicInteger atomicInteger2 = ha.a;
                            view3.postOnAnimationDelayed(hfVar, j2);
                        } else {
                            hfVar.run();
                        }
                    }
                    if (z4) {
                        ArrayList<a0> arrayList3 = new ArrayList<>();
                        arrayList3.addAll(ofVar.i);
                        ofVar.l.add(arrayList3);
                        ofVar.i.clear();
                        Cif cif = new Cif(ofVar, arrayList3);
                        if (z || z2 || z3) {
                            long jMax = Math.max(z2 ? ofVar.e : 0L, z3 ? ofVar.f : 0L) + (z ? ofVar.d : 0L);
                            View view4 = arrayList3.get(0).itemView;
                            AtomicInteger atomicInteger3 = ha.a;
                            view4.postOnAnimationDelayed(cif, jMax);
                        } else {
                            cif.run();
                        }
                    }
                }
            }
            RecyclerView.this.r0 = false;
        }
    }

    public static class c implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    public class d implements fg.b {
        public d() {
        }

        public void a(a0 a0Var, j.c cVar, j.c cVar2) {
            boolean zI;
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            Objects.requireNonNull(recyclerView);
            a0Var.setIsRecyclable(false);
            cg cgVar = (cg) recyclerView.Q;
            Objects.requireNonNull(cgVar);
            if (cVar == null || ((i = cVar.a) == (i2 = cVar2.a) && cVar.b == cVar2.b)) {
                of ofVar = (of) cgVar;
                ofVar.n(a0Var);
                a0Var.itemView.setAlpha(0.0f);
                ofVar.i.add(a0Var);
                zI = true;
            } else {
                zI = cgVar.i(a0Var, i, cVar.b, i2, cVar2.b);
            }
            if (zI) {
                recyclerView.Z();
            }
        }

        public void b(a0 a0Var, j.c cVar, j.c cVar2) {
            boolean zI;
            RecyclerView.this.f.k(a0Var);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f(a0Var);
            a0Var.setIsRecyclable(false);
            cg cgVar = (cg) recyclerView.Q;
            Objects.requireNonNull(cgVar);
            int i = cVar.a;
            int i2 = cVar.b;
            View view = a0Var.itemView;
            int left = cVar2 == null ? view.getLeft() : cVar2.a;
            int top = cVar2 == null ? view.getTop() : cVar2.b;
            if (a0Var.isRemoved() || (i == left && i2 == top)) {
                of ofVar = (of) cgVar;
                ofVar.n(a0Var);
                ofVar.h.add(a0Var);
                zI = true;
            } else {
                view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                zI = cgVar.i(a0Var, i, i2, left, top);
            }
            if (zI) {
                recyclerView.Z();
            }
        }
    }

    public static class f extends Observable<g> {
        public boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        public void c(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i, i2, 1);
            }
        }

        public void d(int i, int i2, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        public void e(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        public void f(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }
    }

    public static abstract class g {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i, int i2) {
        }

        public void onItemRangeChanged(int i, int i2, Object obj) {
            onItemRangeChanged(i, i2);
        }

        public void onItemRangeInserted(int i, int i2) {
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
        }

        public void onItemRangeRemoved(int i, int i2) {
        }
    }

    public interface h {
        int a(int i, int i2);
    }

    public static class i {
        public EdgeEffect a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class j {
        public b a = null;
        public ArrayList<a> b = new ArrayList<>();
        public long c = 120;
        public long d = 120;
        public long e = 250;
        public long f = 250;

        public interface a {
            void a();
        }

        public interface b {
        }

        public static class c {
            public int a;
            public int b;
        }

        public static int b(a0 a0Var) {
            int i = a0Var.mFlags & 14;
            if (a0Var.isInvalid()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int oldPosition = a0Var.getOldPosition();
            int adapterPosition = a0Var.getAdapterPosition();
            return (oldPosition == -1 || adapterPosition == -1 || oldPosition == adapterPosition) ? i : i | a0.FLAG_MOVED;
        }

        public abstract boolean a(a0 a0Var, a0 a0Var2, c cVar, c cVar2);

        public final void c(a0 a0Var) {
            b bVar = this.a;
            if (bVar != null) {
                k kVar = (k) bVar;
                Objects.requireNonNull(kVar);
                boolean z = true;
                a0Var.setIsRecyclable(true);
                if (a0Var.mShadowedHolder != null && a0Var.mShadowingHolder == null) {
                    a0Var.mShadowedHolder = null;
                }
                a0Var.mShadowingHolder = null;
                if (a0Var.shouldBeKeptAsChild()) {
                    return;
                }
                RecyclerView recyclerView = RecyclerView.this;
                View view = a0Var.itemView;
                recyclerView.n0();
                ff ffVar = recyclerView.i;
                int iIndexOfChild = ((zf) ffVar.a).a.indexOfChild(view);
                if (iIndexOfChild == -1) {
                    ffVar.l(view);
                } else if (ffVar.b.d(iIndexOfChild)) {
                    ffVar.b.f(iIndexOfChild);
                    ffVar.l(view);
                    ((zf) ffVar.a).c(iIndexOfChild);
                } else {
                    z = false;
                }
                if (z) {
                    a0 a0VarK = RecyclerView.K(view);
                    recyclerView.f.k(a0VarK);
                    recyclerView.f.h(a0VarK);
                }
                recyclerView.p0(!z);
                if (z || !a0Var.isTmpDetached()) {
                    return;
                }
                RecyclerView.this.removeDetachedView(a0Var.itemView, false);
            }
        }

        public final void d() {
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                this.b.get(i).a();
            }
            this.b.clear();
        }

        public abstract void e(a0 a0Var);

        public abstract void f();

        public abstract boolean g();

        public c h(a0 a0Var) {
            c cVar = new c();
            View view = a0Var.itemView;
            cVar.a = view.getLeft();
            cVar.b = view.getTop();
            view.getRight();
            view.getBottom();
            return cVar;
        }
    }

    public class k implements j.b {
        public k() {
        }
    }

    public static abstract class l {
        public void d(Canvas canvas, RecyclerView recyclerView, x xVar) {
        }

        public void e(Canvas canvas, RecyclerView recyclerView, x xVar) {
        }
    }

    public static abstract class m {
        public ff a;
        public RecyclerView b;
        public final eg.b c;
        public final eg.b d;
        public eg e;
        public eg f;
        public w g;
        public boolean h;
        public boolean i;
        public boolean j;
        public boolean k;
        public int l;
        public boolean m;
        public int n;
        public int o;
        public int p;
        public int q;

        public class a implements eg.b {
            public a() {
            }

            @Override // eg.b
            public int a(View view) {
                return m.this.D(view) - ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).leftMargin;
            }

            @Override // eg.b
            public int b() {
                return m.this.O();
            }

            @Override // eg.b
            public int c() {
                m mVar = m.this;
                return mVar.p - mVar.P();
            }

            @Override // eg.b
            public View d(int i) {
                return m.this.x(i);
            }

            @Override // eg.b
            public int e(View view) {
                return m.this.G(view) + ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).rightMargin;
            }
        }

        public class b implements eg.b {
            public b() {
            }

            @Override // eg.b
            public int a(View view) {
                return m.this.H(view) - ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).topMargin;
            }

            @Override // eg.b
            public int b() {
                return m.this.Q();
            }

            @Override // eg.b
            public int c() {
                m mVar = m.this;
                return mVar.q - mVar.N();
            }

            @Override // eg.b
            public View d(int i) {
                return m.this.x(i);
            }

            @Override // eg.b
            public int e(View view) {
                return m.this.B(view) + ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).bottomMargin;
            }
        }

        public interface c {
        }

        public static class d {
            public int a;
            public int b;
            public boolean c;
            public boolean d;
        }

        public m() {
            a aVar = new a();
            this.c = aVar;
            b bVar = new b();
            this.d = bVar;
            this.e = new eg(aVar);
            this.f = new eg(bVar);
            this.h = false;
            this.i = false;
            this.j = true;
            this.k = true;
        }

        public static d S(Context context, AttributeSet attributeSet, int i, int i2) {
            d dVar = new d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerView, i, i2);
            dVar.a = typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 1);
            dVar.b = typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_spanCount, 1);
            dVar.c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_reverseLayout, false);
            dVar.d = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        public static boolean Y(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        public static int h(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        public static int z(int i, int i2, int i3, int i4, boolean z) {
            int iMax = Math.max(0, i - i3);
            if (z) {
                if (i4 < 0) {
                    if (i4 != -1 || (i2 != Integer.MIN_VALUE && (i2 == 0 || i2 != 1073741824))) {
                        i2 = 0;
                        i4 = 0;
                    } else {
                        i4 = iMax;
                    }
                }
                i2 = 1073741824;
            } else {
                if (i4 < 0) {
                    if (i4 != -1) {
                        if (i4 == -2) {
                            i2 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
                        }
                        i2 = 0;
                        i4 = 0;
                    }
                    i4 = iMax;
                }
                i2 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(i4, i2);
        }

        public int A(t tVar, x xVar) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || recyclerView.p == null || !e()) {
                return 1;
            }
            return this.b.p.getItemCount();
        }

        public void A0(Parcelable parcelable) {
        }

        public int B(View view) {
            return view.getBottom() + ((n) view.getLayoutParams()).b.bottom;
        }

        public Parcelable B0() {
            return null;
        }

        public void C(View view, Rect rect) {
            int[] iArr = RecyclerView.C0;
            n nVar = (n) view.getLayoutParams();
            Rect rect2 = nVar.b;
            rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) nVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) nVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) nVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin);
        }

        public void C0(int i) {
        }

        public int D(View view) {
            return view.getLeft() - ((n) view.getLayoutParams()).b.left;
        }

        public boolean D0(t tVar, x xVar, int i, Bundle bundle) {
            int iQ;
            int iO;
            int i2;
            int i3;
            RecyclerView recyclerView = this.b;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                iQ = recyclerView.canScrollVertically(1) ? (this.q - Q()) - N() : 0;
                if (this.b.canScrollHorizontally(1)) {
                    iO = (this.p - O()) - P();
                    i2 = iQ;
                    i3 = iO;
                }
                i2 = iQ;
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                iQ = recyclerView.canScrollVertically(-1) ? -((this.q - Q()) - N()) : 0;
                if (this.b.canScrollHorizontally(-1)) {
                    iO = -((this.p - O()) - P());
                    i2 = iQ;
                    i3 = iO;
                }
                i2 = iQ;
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.b.l0(i3, i2, null, Integer.MIN_VALUE, true);
            return true;
        }

        public int E(View view) {
            Rect rect = ((n) view.getLayoutParams()).b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public boolean E0() {
            return false;
        }

        public int F(View view) {
            Rect rect = ((n) view.getLayoutParams()).b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public void F0(t tVar) {
            for (int iY = y() - 1; iY >= 0; iY--) {
                if (!RecyclerView.K(x(iY)).shouldIgnore()) {
                    I0(iY, tVar);
                }
            }
        }

        public int G(View view) {
            return view.getRight() + ((n) view.getLayoutParams()).b.right;
        }

        public void G0(t tVar) {
            int size = tVar.a.size();
            for (int i = size - 1; i >= 0; i--) {
                View view = tVar.a.get(i).itemView;
                a0 a0VarK = RecyclerView.K(view);
                if (!a0VarK.shouldIgnore()) {
                    a0VarK.setIsRecyclable(false);
                    if (a0VarK.isTmpDetached()) {
                        this.b.removeDetachedView(view, false);
                    }
                    j jVar = this.b.Q;
                    if (jVar != null) {
                        jVar.e(a0VarK);
                    }
                    a0VarK.setIsRecyclable(true);
                    a0 a0VarK2 = RecyclerView.K(view);
                    a0VarK2.mScrapContainer = null;
                    a0VarK2.mInChangeScrap = false;
                    a0VarK2.clearReturnedFromScrapFlag();
                    tVar.h(a0VarK2);
                }
            }
            tVar.a.clear();
            ArrayList<a0> arrayList = tVar.b;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (size > 0) {
                this.b.invalidate();
            }
        }

        public int H(View view) {
            return view.getTop() - ((n) view.getLayoutParams()).b.top;
        }

        public void H0(View view, t tVar) {
            ff ffVar = this.a;
            int iIndexOfChild = ((zf) ffVar.a).a.indexOfChild(view);
            if (iIndexOfChild >= 0) {
                if (ffVar.b.f(iIndexOfChild)) {
                    ffVar.l(view);
                }
                ((zf) ffVar.a).c(iIndexOfChild);
            }
            tVar.g(view);
        }

        public View I() {
            View focusedChild;
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.a.c.contains(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public void I0(int i, t tVar) {
            View viewX = x(i);
            J0(i);
            tVar.g(viewX);
        }

        public int J() {
            RecyclerView recyclerView = this.b;
            e adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public void J0(int i) {
            ff ffVar;
            int iF;
            View viewA;
            if (x(i) == null || (viewA = ((zf) ffVar.a).a((iF = (ffVar = this.a).f(i)))) == null) {
                return;
            }
            if (ffVar.b.f(iF)) {
                ffVar.l(viewA);
            }
            ((zf) ffVar.a).c(iF);
        }

        public int K() {
            RecyclerView recyclerView = this.b;
            AtomicInteger atomicInteger = ha.a;
            return recyclerView.getLayoutDirection();
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00b5  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean K0(androidx.recyclerview.widget.RecyclerView r10, android.view.View r11, android.graphics.Rect r12, boolean r13, boolean r14) {
            /*
                r9 = this;
                r0 = 2
                int[] r0 = new int[r0]
                int r1 = r9.O()
                int r2 = r9.Q()
                int r3 = r9.p
                int r4 = r9.P()
                int r3 = r3 - r4
                int r4 = r9.q
                int r5 = r9.N()
                int r4 = r4 - r5
                int r5 = r11.getLeft()
                int r6 = r12.left
                int r5 = r5 + r6
                int r6 = r11.getScrollX()
                int r5 = r5 - r6
                int r6 = r11.getTop()
                int r7 = r12.top
                int r6 = r6 + r7
                int r11 = r11.getScrollY()
                int r6 = r6 - r11
                int r11 = r12.width()
                int r11 = r11 + r5
                int r12 = r12.height()
                int r12 = r12 + r6
                int r5 = r5 - r1
                r1 = 0
                int r7 = java.lang.Math.min(r1, r5)
                int r6 = r6 - r2
                int r2 = java.lang.Math.min(r1, r6)
                int r11 = r11 - r3
                int r3 = java.lang.Math.max(r1, r11)
                int r12 = r12 - r4
                int r12 = java.lang.Math.max(r1, r12)
                int r4 = r9.K()
                r8 = 1
                if (r4 != r8) goto L5f
                if (r3 == 0) goto L5a
                goto L67
            L5a:
                int r3 = java.lang.Math.max(r7, r11)
                goto L67
            L5f:
                if (r7 == 0) goto L62
                goto L66
            L62:
                int r7 = java.lang.Math.min(r5, r3)
            L66:
                r3 = r7
            L67:
                if (r2 == 0) goto L6a
                goto L6e
            L6a:
                int r2 = java.lang.Math.min(r6, r12)
            L6e:
                r0[r1] = r3
                r0[r8] = r2
                r11 = r0[r1]
                r12 = r0[r8]
                if (r14 == 0) goto Lb5
                android.view.View r14 = r10.getFocusedChild()
                if (r14 != 0) goto L80
            L7e:
                r14 = 0
                goto Lb3
            L80:
                int r0 = r9.O()
                int r2 = r9.Q()
                int r3 = r9.p
                int r4 = r9.P()
                int r3 = r3 - r4
                int r4 = r9.q
                int r5 = r9.N()
                int r4 = r4 - r5
                androidx.recyclerview.widget.RecyclerView r5 = r9.b
                android.graphics.Rect r5 = r5.m
                r9.C(r14, r5)
                int r14 = r5.left
                int r14 = r14 - r11
                if (r14 >= r3) goto L7e
                int r14 = r5.right
                int r14 = r14 - r11
                if (r14 <= r0) goto L7e
                int r14 = r5.top
                int r14 = r14 - r12
                if (r14 >= r4) goto L7e
                int r14 = r5.bottom
                int r14 = r14 - r12
                if (r14 > r2) goto Lb2
                goto L7e
            Lb2:
                r14 = 1
            Lb3:
                if (r14 == 0) goto Lba
            Lb5:
                if (r11 != 0) goto Lbb
                if (r12 == 0) goto Lba
                goto Lbb
            Lba:
                return r1
            Lbb:
                if (r13 == 0) goto Lc1
                r10.scrollBy(r11, r12)
                goto Lc4
            Lc1:
                r10.k0(r11, r12)
            Lc4:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m.K0(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public int L() {
            RecyclerView recyclerView = this.b;
            AtomicInteger atomicInteger = ha.a;
            return recyclerView.getMinimumHeight();
        }

        public void L0() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int M() {
            RecyclerView recyclerView = this.b;
            AtomicInteger atomicInteger = ha.a;
            return recyclerView.getMinimumWidth();
        }

        public int M0(int i, t tVar, x xVar) {
            return 0;
        }

        public int N() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public void N0(int i) {
        }

        public int O() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int O0(int i, t tVar, x xVar) {
            return 0;
        }

        public int P() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public void P0(RecyclerView recyclerView) {
            Q0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public int Q() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public void Q0(int i, int i2) {
            this.p = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.n = mode;
            if (mode == 0 && !RecyclerView.D0) {
                this.p = 0;
            }
            this.q = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.o = mode2;
            if (mode2 != 0 || RecyclerView.D0) {
                return;
            }
            this.q = 0;
        }

        public int R(View view) {
            return ((n) view.getLayoutParams()).a();
        }

        public void R0(Rect rect, int i, int i2) {
            int iP = P() + O() + rect.width();
            int iN = N() + Q() + rect.height();
            this.b.setMeasuredDimension(h(i, iP, M()), h(i2, iN, L()));
        }

        public void S0(int i, int i2) {
            int iY = y();
            if (iY == 0) {
                this.b.o(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < iY; i7++) {
                View viewX = x(i7);
                Rect rect = this.b.m;
                C(viewX, rect);
                int i8 = rect.left;
                if (i8 < i5) {
                    i5 = i8;
                }
                int i9 = rect.right;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                if (i10 < i6) {
                    i6 = i10;
                }
                int i11 = rect.bottom;
                if (i11 > i4) {
                    i4 = i11;
                }
            }
            this.b.m.set(i5, i6, i3, i4);
            R0(this.b.m, i, i2);
        }

        public int T(t tVar, x xVar) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || recyclerView.p == null || !f()) {
                return 1;
            }
            return this.b.p.getItemCount();
        }

        public void T0(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.b = null;
                this.a = null;
                this.p = 0;
                this.q = 0;
            } else {
                this.b = recyclerView;
                this.a = recyclerView.i;
                this.p = recyclerView.getWidth();
                this.q = recyclerView.getHeight();
            }
            this.n = 1073741824;
            this.o = 1073741824;
        }

        public int U() {
            return 0;
        }

        public boolean U0(View view, int i, int i2, n nVar) {
            return (!view.isLayoutRequested() && this.j && Y(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) nVar).width) && Y(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) nVar).height)) ? false : true;
        }

        public void V(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((n) view.getLayoutParams()).b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.b.o;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public boolean V0() {
            return false;
        }

        public boolean W() {
            return false;
        }

        public boolean W0(View view, int i, int i2, n nVar) {
            return (this.j && Y(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) nVar).width) && Y(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) nVar).height)) ? false : true;
        }

        public boolean X() {
            return false;
        }

        public void X0(RecyclerView recyclerView, x xVar, int i) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void Y0(w wVar) {
            w wVar2 = this.g;
            if (wVar2 != null && wVar != wVar2 && wVar2.e) {
                wVar2.d();
            }
            this.g = wVar;
            RecyclerView recyclerView = this.b;
            Objects.requireNonNull(wVar);
            recyclerView.i0.c();
            if (wVar.h) {
                StringBuilder sbZ = jo.z("An instance of ");
                sbZ.append(wVar.getClass().getSimpleName());
                sbZ.append(" was started more than once. Each instance of");
                sbZ.append(wVar.getClass().getSimpleName());
                sbZ.append(" is intended to only be used once. You should create a new instance for each use.");
                Log.w("RecyclerView", sbZ.toString());
            }
            wVar.b = recyclerView;
            wVar.c = this;
            int i = wVar.a;
            if (i == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.l0.a = i;
            wVar.e = true;
            wVar.d = true;
            wVar.f = recyclerView.q.t(i);
            wVar.b.i0.a();
            wVar.h = true;
        }

        public boolean Z(View view, boolean z) {
            boolean z2 = this.e.b(view, 24579) && this.f.b(view, 24579);
            return z ? z2 : !z2;
        }

        public boolean Z0() {
            return false;
        }

        public void a0(View view, int i, int i2, int i3, int i4) {
            n nVar = (n) view.getLayoutParams();
            Rect rect = nVar.b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) nVar).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) nVar).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) nVar).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) nVar).bottomMargin);
        }

        public void b(View view) {
            c(view, -1, false);
        }

        public void b0(int i) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                int iE = recyclerView.i.e();
                for (int i2 = 0; i2 < iE; i2++) {
                    recyclerView.i.d(i2).offsetLeftAndRight(i);
                }
            }
        }

        public final void c(View view, int i, boolean z) {
            a0 a0VarK = RecyclerView.K(view);
            if (z || a0VarK.isRemoved()) {
                this.b.j.a(a0VarK);
            } else {
                this.b.j.f(a0VarK);
            }
            n nVar = (n) view.getLayoutParams();
            if (a0VarK.wasReturnedFromScrap() || a0VarK.isScrap()) {
                if (a0VarK.isScrap()) {
                    a0VarK.unScrap();
                } else {
                    a0VarK.clearReturnedFromScrapFlag();
                }
                this.a.b(view, i, view.getLayoutParams(), false);
            } else {
                if (view.getParent() == this.b) {
                    int iJ = this.a.j(view);
                    if (i == -1) {
                        i = this.a.e();
                    }
                    if (iJ == -1) {
                        StringBuilder sbZ = jo.z("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                        sbZ.append(this.b.indexOfChild(view));
                        throw new IllegalStateException(jo.e(this.b, sbZ));
                    }
                    if (iJ != i) {
                        m mVar = this.b.q;
                        View viewX = mVar.x(iJ);
                        if (viewX == null) {
                            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iJ + mVar.b.toString());
                        }
                        mVar.x(iJ);
                        mVar.r(iJ);
                        n nVar2 = (n) viewX.getLayoutParams();
                        a0 a0VarK2 = RecyclerView.K(viewX);
                        if (a0VarK2.isRemoved()) {
                            mVar.b.j.a(a0VarK2);
                        } else {
                            mVar.b.j.f(a0VarK2);
                        }
                        mVar.a.b(viewX, i, nVar2, a0VarK2.isRemoved());
                    }
                } else {
                    this.a.a(view, i, false);
                    nVar.c = true;
                    w wVar = this.g;
                    if (wVar != null && wVar.e) {
                        Objects.requireNonNull(wVar.b);
                        a0 a0VarK3 = RecyclerView.K(view);
                        if ((a0VarK3 != null ? a0VarK3.getLayoutPosition() : -1) == wVar.a) {
                            wVar.f = view;
                        }
                    }
                }
            }
            if (nVar.d) {
                a0VarK.itemView.invalidate();
                nVar.d = false;
            }
        }

        public void c0(int i) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                int iE = recyclerView.i.e();
                for (int i2 = 0; i2 < iE; i2++) {
                    recyclerView.i.d(i2).offsetTopAndBottom(i);
                }
            }
        }

        public void d(String str) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.i(str);
            }
        }

        public void d0() {
        }

        public boolean e() {
            return false;
        }

        public boolean e0() {
            return false;
        }

        public boolean f() {
            return false;
        }

        public void f0() {
        }

        public boolean g(n nVar) {
            return nVar != null;
        }

        @Deprecated
        public void g0() {
        }

        public void h0(RecyclerView recyclerView, t tVar) {
            g0();
        }

        public void i(int i, int i2, x xVar, c cVar) {
        }

        public View i0(View view, int i, t tVar, x xVar) {
            return null;
        }

        public void j(int i, c cVar) {
        }

        public void j0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.b;
            t tVar = recyclerView.f;
            x xVar = recyclerView.l0;
            k0(accessibilityEvent);
        }

        public int k(x xVar) {
            return 0;
        }

        public void k0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            e eVar = this.b.p;
            if (eVar != null) {
                accessibilityEvent.setItemCount(eVar.getItemCount());
            }
        }

        public int l(x xVar) {
            return 0;
        }

        public void l0(t tVar, x xVar, sa saVar) {
            if (this.b.canScrollVertically(-1) || this.b.canScrollHorizontally(-1)) {
                saVar.a.addAction(a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                saVar.a.setScrollable(true);
            }
            if (this.b.canScrollVertically(1) || this.b.canScrollHorizontally(1)) {
                saVar.a.addAction(a0.FLAG_APPEARED_IN_PRE_LAYOUT);
                saVar.a.setScrollable(true);
            }
            saVar.s(sa.b.a(T(tVar, xVar), A(tVar, xVar), X(), U()));
        }

        public int m(x xVar) {
            return 0;
        }

        public void m0(View view, sa saVar) {
            a0 a0VarK = RecyclerView.K(view);
            if (a0VarK == null || a0VarK.isRemoved() || this.a.k(a0VarK.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.b;
            n0(recyclerView.f, recyclerView.l0, view, saVar);
        }

        public int n(x xVar) {
            return 0;
        }

        public void n0(t tVar, x xVar, View view, sa saVar) {
            saVar.t(sa.c.a(f() ? R(view) : 0, 1, e() ? R(view) : 0, 1, false, false));
        }

        public int o(x xVar) {
            return 0;
        }

        public View o0() {
            return null;
        }

        public int p(x xVar) {
            return 0;
        }

        public void p0(RecyclerView recyclerView, int i, int i2) {
        }

        public void q(t tVar) {
            int iY = y();
            while (true) {
                iY--;
                if (iY < 0) {
                    return;
                }
                View viewX = x(iY);
                a0 a0VarK = RecyclerView.K(viewX);
                if (!a0VarK.shouldIgnore()) {
                    if (!a0VarK.isInvalid() || a0VarK.isRemoved() || this.b.p.hasStableIds()) {
                        x(iY);
                        r(iY);
                        tVar.i(viewX);
                        this.b.j.f(a0VarK);
                    } else {
                        J0(iY);
                        tVar.h(a0VarK);
                    }
                }
            }
        }

        public void q0(RecyclerView recyclerView) {
        }

        public final void r(int i) {
            this.a.c(i);
        }

        public void r0(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public View s(View view) {
            View viewC;
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || (viewC = recyclerView.C(view)) == null || this.a.c.contains(viewC)) {
                return null;
            }
            return viewC;
        }

        public void s0(RecyclerView recyclerView, int i, int i2) {
        }

        public View t(int i) {
            int iY = y();
            for (int i2 = 0; i2 < iY; i2++) {
                View viewX = x(i2);
                a0 a0VarK = RecyclerView.K(viewX);
                if (a0VarK != null && a0VarK.getLayoutPosition() == i && !a0VarK.shouldIgnore() && (this.b.l0.g || !a0VarK.isRemoved())) {
                    return viewX;
                }
            }
            return null;
        }

        public void t0() {
        }

        public abstract n u();

        public void u0(RecyclerView recyclerView, int i, int i2, Object obj) {
            t0();
        }

        public n v(Context context, AttributeSet attributeSet) {
            return new n(context, attributeSet);
        }

        public void v0(t tVar, x xVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public n w(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof n ? new n((n) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new n((ViewGroup.MarginLayoutParams) layoutParams) : new n(layoutParams);
        }

        public void w0(x xVar) {
        }

        public View x(int i) {
            ff ffVar = this.a;
            if (ffVar == null) {
                return null;
            }
            return ((zf) ffVar.a).a(ffVar.f(i));
        }

        public void x0(int i, int i2) {
            this.b.o(i, i2);
        }

        public int y() {
            ff ffVar = this.a;
            if (ffVar != null) {
                return ffVar.e();
            }
            return 0;
        }

        @Deprecated
        public boolean y0(RecyclerView recyclerView) {
            w wVar = this.g;
            return (wVar != null && wVar.e) || recyclerView.O();
        }

        public boolean z0(RecyclerView recyclerView, View view, View view2) {
            return y0(recyclerView);
        }
    }

    public interface o {
        void a(View view);

        void b(View view);
    }

    public static abstract class p {
    }

    public interface q {
        void a(RecyclerView recyclerView, MotionEvent motionEvent);

        boolean b(RecyclerView recyclerView, MotionEvent motionEvent);

        void c(boolean z);
    }

    public static abstract class r {
        public void a(RecyclerView recyclerView, int i) {
        }

        public void b(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public static class s {
        public SparseArray<a> a = new SparseArray<>();
        public int b = 0;

        public static class a {
            public final ArrayList<a0> a = new ArrayList<>();
            public int b = 5;
            public long c = 0;
            public long d = 0;
        }

        public final a a(int i) {
            a aVar = this.a.get(i);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.a.put(i, aVar2);
            return aVar2;
        }

        public long b(long j, long j2) {
            if (j == 0) {
                return j2;
            }
            return (j2 / 4) + ((j / 4) * 3);
        }
    }

    public final class t {
        public final ArrayList<a0> a;
        public ArrayList<a0> b;
        public final ArrayList<a0> c;
        public final List<a0> d;
        public int e;
        public int f;
        public s g;

        public t() {
            ArrayList<a0> arrayList = new ArrayList<>();
            this.a = arrayList;
            this.b = null;
            this.c = new ArrayList<>();
            this.d = Collections.unmodifiableList(arrayList);
            this.e = 2;
            this.f = 2;
        }

        public void a(a0 a0Var, boolean z) {
            RecyclerView.k(a0Var);
            View view = a0Var.itemView;
            bg bgVar = RecyclerView.this.s0;
            if (bgVar != null) {
                bg.a aVar = bgVar.e;
                ha.s(view, aVar instanceof bg.a ? aVar.e.remove(view) : null);
            }
            if (z) {
                u uVar = RecyclerView.this.r;
                if (uVar != null) {
                    uVar.a(a0Var);
                }
                e eVar = RecyclerView.this.p;
                if (eVar != null) {
                    eVar.onViewRecycled(a0Var);
                }
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.l0 != null) {
                    recyclerView.j.g(a0Var);
                }
            }
            a0Var.mOwnerRecyclerView = null;
            s sVarD = d();
            Objects.requireNonNull(sVarD);
            int itemViewType = a0Var.getItemViewType();
            ArrayList<a0> arrayList = sVarD.a(itemViewType).a;
            if (sVarD.a.get(itemViewType).b <= arrayList.size()) {
                return;
            }
            a0Var.resetInternal();
            arrayList.add(a0Var);
        }

        public void b() {
            this.a.clear();
            e();
        }

        public int c(int i) {
            if (i >= 0 && i < RecyclerView.this.l0.b()) {
                RecyclerView recyclerView = RecyclerView.this;
                return !recyclerView.l0.g ? i : recyclerView.h.f(i, 0);
            }
            StringBuilder sbA = jo.A("invalid position ", i, ". State item count is ");
            sbA.append(RecyclerView.this.l0.b());
            throw new IndexOutOfBoundsException(jo.e(RecyclerView.this, sbA));
        }

        public s d() {
            if (this.g == null) {
                this.g = new s();
            }
            return this.g;
        }

        public void e() {
            for (int size = this.c.size() - 1; size >= 0; size--) {
                f(size);
            }
            this.c.clear();
            if (RecyclerView.F0) {
                qf.b bVar = RecyclerView.this.k0;
                int[] iArr = bVar.c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                bVar.d = 0;
            }
        }

        public void f(int i) {
            a(this.c.get(i), true);
            this.c.remove(i);
        }

        public void g(View view) {
            a0 a0VarK = RecyclerView.K(view);
            if (a0VarK.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (a0VarK.isScrap()) {
                a0VarK.unScrap();
            } else if (a0VarK.wasReturnedFromScrap()) {
                a0VarK.clearReturnedFromScrapFlag();
            }
            h(a0VarK);
            if (RecyclerView.this.Q == null || a0VarK.isRecyclable()) {
                return;
            }
            RecyclerView.this.Q.e(a0VarK);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x0091 A[PHI: r1
          0x0091: PHI (r1v19 boolean) = (r1v6 boolean), (r1v0 boolean) binds: [B:41:0x008b, B:20:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void h(androidx.recyclerview.widget.RecyclerView.a0 r6) {
            /*
                Method dump skipped, instructions count: 248
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.t.h(androidx.recyclerview.widget.RecyclerView$a0):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0043  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void i(android.view.View r5) {
            /*
                r4 = this;
                androidx.recyclerview.widget.RecyclerView$a0 r5 = androidx.recyclerview.widget.RecyclerView.K(r5)
                r0 = 12
                boolean r0 = r5.hasAnyOfTheFlags(r0)
                r1 = 0
                if (r0 != 0) goto L57
                boolean r0 = r5.isUpdated()
                if (r0 == 0) goto L57
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$j r0 = r0.Q
                r2 = 1
                if (r0 == 0) goto L3f
                java.util.List r3 = r5.getUnmodifiedPayloads()
                of r0 = (defpackage.of) r0
                boolean r3 = r3.isEmpty()
                if (r3 == 0) goto L39
                boolean r0 = r0.g
                if (r0 == 0) goto L33
                boolean r0 = r5.isInvalid()
                if (r0 == 0) goto L31
                goto L33
            L31:
                r0 = 0
                goto L34
            L33:
                r0 = 1
            L34:
                if (r0 == 0) goto L37
                goto L39
            L37:
                r0 = 0
                goto L3a
            L39:
                r0 = 1
            L3a:
                if (r0 == 0) goto L3d
                goto L3f
            L3d:
                r0 = 0
                goto L40
            L3f:
                r0 = 1
            L40:
                if (r0 == 0) goto L43
                goto L57
            L43:
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$a0> r0 = r4.b
                if (r0 != 0) goto L4e
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r4.b = r0
            L4e:
                r5.setScrapContainer(r4, r2)
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$a0> r0 = r4.b
                r0.add(r5)
                goto L88
            L57:
                boolean r0 = r5.isInvalid()
                if (r0 == 0) goto L80
                boolean r0 = r5.isRemoved()
                if (r0 != 0) goto L80
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$e r0 = r0.p
                boolean r0 = r0.hasStableIds()
                if (r0 == 0) goto L6e
                goto L80
            L6e:
                java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."
                java.lang.StringBuilder r0 = defpackage.jo.z(r0)
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                java.lang.String r0 = defpackage.jo.e(r1, r0)
                r5.<init>(r0)
                throw r5
            L80:
                r5.setScrapContainer(r4, r1)
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$a0> r0 = r4.a
                r0.add(r5)
            L88:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.t.i(android.view.View):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:166:0x0323, code lost:
        
            r7 = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:130:0x025d  */
        /* JADX WARN: Removed duplicated region for block: B:182:0x0363  */
        /* JADX WARN: Removed duplicated region for block: B:211:0x040f  */
        /* JADX WARN: Removed duplicated region for block: B:217:0x0435  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x0447  */
        /* JADX WARN: Removed duplicated region for block: B:225:0x0461  */
        /* JADX WARN: Removed duplicated region for block: B:239:0x04aa  */
        /* JADX WARN: Removed duplicated region for block: B:241:0x04ad  */
        /* JADX WARN: Removed duplicated region for block: B:256:0x04e3  */
        /* JADX WARN: Removed duplicated region for block: B:260:0x04ee  */
        /* JADX WARN: Removed duplicated region for block: B:261:0x04fc  */
        /* JADX WARN: Removed duplicated region for block: B:267:0x0518 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:269:0x051c  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0190  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.a0 j(int r19, boolean r20, long r21) {
            /*
                Method dump skipped, instructions count: 1361
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.t.j(int, boolean, long):androidx.recyclerview.widget.RecyclerView$a0");
        }

        public void k(a0 a0Var) {
            if (a0Var.mInChangeScrap) {
                this.b.remove(a0Var);
            } else {
                this.a.remove(a0Var);
            }
            a0Var.mScrapContainer = null;
            a0Var.mInChangeScrap = false;
            a0Var.clearReturnedFromScrapFlag();
        }

        public void l() {
            m mVar = RecyclerView.this.q;
            this.f = this.e + (mVar != null ? mVar.l : 0);
            for (int size = this.c.size() - 1; size >= 0 && this.c.size() > this.f; size--) {
                f(size);
            }
        }
    }

    public interface u {
        void a(a0 a0Var);
    }

    public class v extends g {
        public v() {
        }

        public void a() {
            if (RecyclerView.E0) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.w && recyclerView.v) {
                    Runnable runnable = recyclerView.l;
                    AtomicInteger atomicInteger = ha.a;
                    recyclerView.postOnAnimation(runnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.E = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onChanged() {
            RecyclerView.this.i(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.l0.f = true;
            recyclerView.b0(true);
            if (RecyclerView.this.h.g()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeChanged(int i, int i2, Object obj) {
            RecyclerView.this.i(null);
            ef efVar = RecyclerView.this.h;
            Objects.requireNonNull(efVar);
            boolean z = false;
            if (i2 >= 1) {
                efVar.b.add(efVar.h(4, i, i2, obj));
                efVar.f |= 4;
                if (efVar.b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeInserted(int i, int i2) {
            RecyclerView.this.i(null);
            ef efVar = RecyclerView.this.h;
            Objects.requireNonNull(efVar);
            boolean z = false;
            if (i2 >= 1) {
                efVar.b.add(efVar.h(1, i, i2, null));
                efVar.f |= 1;
                if (efVar.b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeMoved(int i, int i2, int i3) {
            RecyclerView.this.i(null);
            ef efVar = RecyclerView.this.h;
            Objects.requireNonNull(efVar);
            boolean z = false;
            if (i != i2) {
                if (i3 != 1) {
                    throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
                }
                efVar.b.add(efVar.h(8, i, i2, null));
                efVar.f |= 8;
                if (efVar.b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeRemoved(int i, int i2) {
            RecyclerView.this.i(null);
            ef efVar = RecyclerView.this.h;
            Objects.requireNonNull(efVar);
            boolean z = false;
            if (i2 >= 1) {
                efVar.b.add(efVar.h(2, i, i2, null));
                efVar.f |= 2;
                if (efVar.b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                a();
            }
        }
    }

    public static abstract class w {
        public RecyclerView b;
        public m c;
        public boolean d;
        public boolean e;
        public View f;
        public boolean h;
        public int a = -1;
        public final a g = new a(0, 0);

        public static class a {
            public int a;
            public int b;
            public int d = -1;
            public boolean f = false;
            public int g = 0;
            public int c = Integer.MIN_VALUE;
            public Interpolator e = null;

            public a(int i, int i2) {
                this.a = i;
                this.b = i2;
            }

            public void a(RecyclerView recyclerView) {
                int i = this.d;
                if (i >= 0) {
                    this.d = -1;
                    recyclerView.P(i);
                    this.f = false;
                    return;
                }
                if (!this.f) {
                    this.g = 0;
                    return;
                }
                Interpolator interpolator = this.e;
                if (interpolator != null && this.c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                int i2 = this.c;
                if (i2 < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
                recyclerView.i0.b(this.a, this.b, i2, interpolator);
                int i3 = this.g + 1;
                this.g = i3;
                if (i3 > 10) {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.f = false;
            }

            public void b(int i, int i2, int i3, Interpolator interpolator) {
                this.a = i;
                this.b = i2;
                this.c = i3;
                this.e = interpolator;
                this.f = true;
            }
        }

        public interface b {
            PointF a(int i);
        }

        public PointF a(int i) {
            Object obj = this.c;
            if (obj instanceof b) {
                return ((b) obj).a(i);
            }
            StringBuilder sbZ = jo.z("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
            sbZ.append(b.class.getCanonicalName());
            Log.w("RecyclerView", sbZ.toString());
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(int r8, int r9) {
            /*
                Method dump skipped, instructions count: 288
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.w.b(int, int):void");
        }

        public abstract void c(View view, x xVar, a aVar);

        public final void d() {
            if (this.e) {
                this.e = false;
                sf sfVar = (sf) this;
                sfVar.p = 0;
                sfVar.o = 0;
                sfVar.k = null;
                this.b.l0.a = -1;
                this.f = null;
                this.a = -1;
                this.d = false;
                m mVar = this.c;
                if (mVar.g == this) {
                    mVar.g = null;
                }
                this.c = null;
                this.b = null;
            }
        }
    }

    public static class x {
        public int a = -1;
        public int b = 0;
        public int c = 0;
        public int d = 1;
        public int e = 0;
        public boolean f = false;
        public boolean g = false;
        public boolean h = false;
        public boolean i = false;
        public boolean j = false;
        public boolean k = false;
        public int l;
        public long m;
        public int n;

        public void a(int i) {
            if ((this.d & i) != 0) {
                return;
            }
            StringBuilder sbZ = jo.z("Layout state should be one of ");
            sbZ.append(Integer.toBinaryString(i));
            sbZ.append(" but it is ");
            sbZ.append(Integer.toBinaryString(this.d));
            throw new IllegalStateException(sbZ.toString());
        }

        public int b() {
            return this.g ? this.b - this.c : this.e;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("State{mTargetPosition=");
            sbZ.append(this.a);
            sbZ.append(", mData=");
            sbZ.append((Object) null);
            sbZ.append(", mItemCount=");
            sbZ.append(this.e);
            sbZ.append(", mIsMeasuring=");
            sbZ.append(this.i);
            sbZ.append(", mPreviousLayoutItemCount=");
            sbZ.append(this.b);
            sbZ.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
            sbZ.append(this.c);
            sbZ.append(", mStructureChanged=");
            sbZ.append(this.f);
            sbZ.append(", mInPreLayout=");
            sbZ.append(this.g);
            sbZ.append(", mRunSimpleAnimations=");
            sbZ.append(this.j);
            sbZ.append(", mRunPredictiveAnimations=");
            sbZ.append(this.k);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public static abstract class y {
    }

    public class z implements Runnable {
        public int e;
        public int f;
        public OverScroller g;
        public Interpolator h;
        public boolean i;
        public boolean j;

        public z() {
            Interpolator interpolator = RecyclerView.H0;
            this.h = interpolator;
            this.i = false;
            this.j = false;
            this.g = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        public void a() {
            if (this.i) {
                this.j = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            RecyclerView recyclerView = RecyclerView.this;
            AtomicInteger atomicInteger = ha.a;
            recyclerView.postOnAnimation(this);
        }

        public void b(int i, int i2, int i3, Interpolator interpolator) {
            int iRound;
            if (i3 == Integer.MIN_VALUE) {
                int iAbs = Math.abs(i);
                int iAbs2 = Math.abs(i2);
                boolean z = iAbs > iAbs2;
                int iSqrt = (int) Math.sqrt(0);
                int iSqrt2 = (int) Math.sqrt((i2 * i2) + (i * i));
                RecyclerView recyclerView = RecyclerView.this;
                int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
                int i4 = width / 2;
                float f = width;
                float f2 = i4;
                float fSin = (((float) Math.sin((Math.min(1.0f, (iSqrt2 * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
                if (iSqrt > 0) {
                    iRound = Math.round(Math.abs(fSin / iSqrt) * 1000.0f) * 4;
                } else {
                    if (!z) {
                        iAbs = iAbs2;
                    }
                    iRound = (int) (((iAbs / f) + 1.0f) * 300.0f);
                }
                i3 = Math.min(iRound, 2000);
            }
            int i5 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.H0;
            }
            if (this.h != interpolator) {
                this.h = interpolator;
                this.g = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f = 0;
            this.e = 0;
            RecyclerView.this.setScrollState(2);
            this.g.startScroll(0, 0, i, i2, i5);
            if (Build.VERSION.SDK_INT < 23) {
                this.g.computeScrollOffset();
            }
            a();
        }

        public void c() {
            RecyclerView.this.removeCallbacks(this);
            this.g.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.q == null) {
                c();
                return;
            }
            this.j = false;
            this.i = true;
            recyclerView.n();
            OverScroller overScroller = this.g;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.e;
                int i4 = currY - this.f;
                this.e = currX;
                this.f = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.y0;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.t(i3, i4, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.y0;
                    i3 -= iArr2[0];
                    i4 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m(i3, i4);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.p != null) {
                    int[] iArr3 = recyclerView3.y0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.h0(i3, i4, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.y0;
                    i2 = iArr4[0];
                    i = iArr4[1];
                    i3 -= i2;
                    i4 -= i;
                    w wVar = recyclerView4.q.g;
                    if (wVar != null && !wVar.d && wVar.e) {
                        int iB = recyclerView4.l0.b();
                        if (iB == 0) {
                            wVar.d();
                        } else if (wVar.a >= iB) {
                            wVar.a = iB - 1;
                            wVar.b(i2, i);
                        } else {
                            wVar.b(i2, i);
                        }
                    }
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (!RecyclerView.this.s.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.y0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.u(i2, i, i3, i4, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.y0;
                int i5 = i3 - iArr6[0];
                int i6 = i4 - iArr6[1];
                if (i2 != 0 || i != 0) {
                    recyclerView6.v(i2, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                RecyclerView recyclerView7 = RecyclerView.this;
                w wVar2 = recyclerView7.q.g;
                if ((wVar2 != null && wVar2.d) || !z) {
                    a();
                    RecyclerView recyclerView8 = RecyclerView.this;
                    qf qfVar = recyclerView8.j0;
                    if (qfVar != null) {
                        qfVar.a(recyclerView8, i2, i);
                    }
                } else {
                    if (recyclerView7.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                        if (i6 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i6 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView recyclerView9 = RecyclerView.this;
                        Objects.requireNonNull(recyclerView9);
                        if (i7 < 0) {
                            recyclerView9.x();
                            if (recyclerView9.M.isFinished()) {
                                recyclerView9.M.onAbsorb(-i7);
                            }
                        } else if (i7 > 0) {
                            recyclerView9.y();
                            if (recyclerView9.O.isFinished()) {
                                recyclerView9.O.onAbsorb(i7);
                            }
                        }
                        if (currVelocity < 0) {
                            recyclerView9.z();
                            if (recyclerView9.N.isFinished()) {
                                recyclerView9.N.onAbsorb(-currVelocity);
                            }
                        } else if (currVelocity > 0) {
                            recyclerView9.w();
                            if (recyclerView9.P.isFinished()) {
                                recyclerView9.P.onAbsorb(currVelocity);
                            }
                        }
                        if (i7 != 0 || currVelocity != 0) {
                            AtomicInteger atomicInteger = ha.a;
                            recyclerView9.postInvalidateOnAnimation();
                        }
                    }
                    if (RecyclerView.F0) {
                        qf.b bVar = RecyclerView.this.k0;
                        int[] iArr7 = bVar.c;
                        if (iArr7 != null) {
                            Arrays.fill(iArr7, -1);
                        }
                        bVar.d = 0;
                    }
                }
            }
            w wVar3 = RecyclerView.this.q.g;
            if (wVar3 != null && wVar3.d) {
                wVar3.b(0, 0);
            }
            this.i = false;
            if (!this.j) {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.q0(1);
            } else {
                RecyclerView.this.removeCallbacks(this);
                RecyclerView recyclerView10 = RecyclerView.this;
                AtomicInteger atomicInteger2 = ha.a;
                recyclerView10.postOnAnimation(this);
            }
        }
    }

    static {
        D0 = Build.VERSION.SDK_INT >= 23;
        E0 = true;
        F0 = true;
        Class<?> cls = Integer.TYPE;
        G0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        H0 = new c();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public static RecyclerView F(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView recyclerViewF = F(viewGroup.getChildAt(i2));
            if (recyclerViewF != null) {
                return recyclerViewF;
            }
        }
        return null;
    }

    public static a0 K(View view) {
        if (view == null) {
            return null;
        }
        return ((n) view.getLayoutParams()).a;
    }

    private aa getScrollingChildHelper() {
        if (this.v0 == null) {
            this.v0 = new aa(this);
        }
        return this.v0;
    }

    public static void k(a0 a0Var) {
        WeakReference<RecyclerView> weakReference = a0Var.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == a0Var.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            a0Var.mNestedRecyclerView = null;
        }
    }

    public String A() {
        StringBuilder sbZ = jo.z(StringUtils.SPACE);
        sbZ.append(super.toString());
        sbZ.append(", adapter:");
        sbZ.append(this.p);
        sbZ.append(", layout:");
        sbZ.append(this.q);
        sbZ.append(", context:");
        sbZ.append(getContext());
        return sbZ.toString();
    }

    public final void B(x xVar) {
        if (getScrollState() != 2) {
            Objects.requireNonNull(xVar);
            return;
        }
        OverScroller overScroller = this.i0.g;
        overScroller.getFinalX();
        overScroller.getCurrX();
        Objects.requireNonNull(xVar);
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public View C(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public final boolean D(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.t.size();
        for (int i2 = 0; i2 < size; i2++) {
            q qVar = this.t.get(i2);
            if (qVar.b(this, motionEvent) && action != 3) {
                this.u = qVar;
                return true;
            }
        }
        return false;
    }

    public final void E(int[] iArr) {
        int iE = this.i.e();
        if (iE == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < iE; i4++) {
            a0 a0VarK = K(this.i.d(i4));
            if (!a0VarK.shouldIgnore()) {
                int layoutPosition = a0VarK.getLayoutPosition();
                if (layoutPosition < i2) {
                    i2 = layoutPosition;
                }
                if (layoutPosition > i3) {
                    i3 = layoutPosition;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    public a0 G(int i2) {
        a0 a0Var = null;
        if (this.H) {
            return null;
        }
        int iH = this.i.h();
        for (int i3 = 0; i3 < iH; i3++) {
            a0 a0VarK = K(this.i.g(i3));
            if (a0VarK != null && !a0VarK.isRemoved() && H(a0VarK) == i2) {
                if (!this.i.k(a0VarK.itemView)) {
                    return a0VarK;
                }
                a0Var = a0VarK;
            }
        }
        return a0Var;
    }

    public int H(a0 a0Var) {
        if (!a0Var.hasAnyOfTheFlags(524) && a0Var.isBound()) {
            ef efVar = this.h;
            int i2 = a0Var.mPosition;
            int size = efVar.b.size();
            for (int i3 = 0; i3 < size; i3++) {
                ef.b bVar = efVar.b.get(i3);
                int i4 = bVar.a;
                if (i4 != 1) {
                    if (i4 == 2) {
                        int i5 = bVar.b;
                        if (i5 <= i2) {
                            int i6 = bVar.d;
                            if (i5 + i6 <= i2) {
                                i2 -= i6;
                            }
                        } else {
                            continue;
                        }
                    } else if (i4 == 8) {
                        int i7 = bVar.b;
                        if (i7 == i2) {
                            i2 = bVar.d;
                        } else {
                            if (i7 < i2) {
                                i2--;
                            }
                            if (bVar.d <= i2) {
                                i2++;
                            }
                        }
                    }
                } else if (bVar.b <= i2) {
                    i2 += bVar.d;
                }
            }
            return i2;
        }
        return -1;
    }

    public long I(a0 a0Var) {
        return this.p.hasStableIds() ? a0Var.getItemId() : a0Var.mPosition;
    }

    public a0 J(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return K(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public Rect L(View view) {
        n nVar = (n) view.getLayoutParams();
        if (!nVar.c) {
            return nVar.b;
        }
        if (this.l0.g && (nVar.b() || nVar.a.isInvalid())) {
            return nVar.b;
        }
        Rect rect = nVar.b;
        rect.set(0, 0, 0, 0);
        int size = this.s.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.m.set(0, 0, 0, 0);
            l lVar = this.s.get(i2);
            Rect rect2 = this.m;
            Objects.requireNonNull(lVar);
            ((n) view.getLayoutParams()).a();
            rect2.set(0, 0, 0, 0);
            int i3 = rect.left;
            Rect rect3 = this.m;
            rect.left = i3 + rect3.left;
            rect.top += rect3.top;
            rect.right += rect3.right;
            rect.bottom += rect3.bottom;
        }
        nVar.c = false;
        return rect;
    }

    public boolean M() {
        return !this.y || this.H || this.h.g();
    }

    public void N() {
        this.P = null;
        this.N = null;
        this.O = null;
        this.M = null;
    }

    public boolean O() {
        return this.J > 0;
    }

    public void P(int i2) {
        if (this.q == null) {
            return;
        }
        setScrollState(2);
        this.q.N0(i2);
        awakenScrollBars();
    }

    public void Q() {
        int iH = this.i.h();
        for (int i2 = 0; i2 < iH; i2++) {
            ((n) this.i.g(i2).getLayoutParams()).c = true;
        }
        t tVar = this.f;
        int size = tVar.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            n nVar = (n) tVar.c.get(i3).itemView.getLayoutParams();
            if (nVar != null) {
                nVar.c = true;
            }
        }
    }

    public void R(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int iH = this.i.h();
        for (int i5 = 0; i5 < iH; i5++) {
            a0 a0VarK = K(this.i.g(i5));
            if (a0VarK != null && !a0VarK.shouldIgnore()) {
                int i6 = a0VarK.mPosition;
                if (i6 >= i4) {
                    a0VarK.offsetPosition(-i3, z2);
                    this.l0.f = true;
                } else if (i6 >= i2) {
                    a0VarK.flagRemovedAndOffsetPosition(i2 - 1, -i3, z2);
                    this.l0.f = true;
                }
            }
        }
        t tVar = this.f;
        int size = tVar.c.size();
        while (true) {
            size--;
            if (size < 0) {
                requestLayout();
                return;
            }
            a0 a0Var = tVar.c.get(size);
            if (a0Var != null) {
                int i7 = a0Var.mPosition;
                if (i7 >= i4) {
                    a0Var.offsetPosition(-i3, z2);
                } else if (i7 >= i2) {
                    a0Var.addFlags(8);
                    tVar.f(size);
                }
            }
        }
    }

    public void S() {
    }

    public void T() {
    }

    public void U() {
        this.J++;
    }

    public void V(boolean z2) {
        int i2;
        int i3 = this.J - 1;
        this.J = i3;
        if (i3 < 1) {
            this.J = 0;
            if (z2) {
                int i4 = this.D;
                this.D = 0;
                if (i4 != 0) {
                    AccessibilityManager accessibilityManager = this.F;
                    if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                        accessibilityEventObtain.setEventType(a0.FLAG_MOVED);
                        accessibilityEventObtain.setContentChangeTypes(i4);
                        sendAccessibilityEventUnchecked(accessibilityEventObtain);
                    }
                }
                for (int size = this.z0.size() - 1; size >= 0; size--) {
                    a0 a0Var = this.z0.get(size);
                    if (a0Var.itemView.getParent() == this && !a0Var.shouldIgnore() && (i2 = a0Var.mPendingAccessibilityState) != -1) {
                        View view = a0Var.itemView;
                        AtomicInteger atomicInteger = ha.a;
                        view.setImportantForAccessibility(i2);
                        a0Var.mPendingAccessibilityState = -1;
                    }
                }
                this.z0.clear();
            }
        }
    }

    public final void W(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.S) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.S = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.W = x2;
            this.U = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.a0 = y2;
            this.V = y2;
        }
    }

    public void X() {
    }

    public void Y() {
    }

    public void Z() {
        if (this.r0 || !this.v) {
            return;
        }
        Runnable runnable = this.A0;
        AtomicInteger atomicInteger = ha.a;
        postOnAnimation(runnable);
        this.r0 = true;
    }

    public final void a0() {
        boolean z2;
        boolean z3 = false;
        if (this.H) {
            ef efVar = this.h;
            efVar.l(efVar.b);
            efVar.l(efVar.c);
            efVar.f = 0;
            if (this.I) {
                this.q.q0(this);
            }
        }
        if (this.Q != null && this.q.Z0()) {
            this.h.j();
        } else {
            this.h.c();
        }
        boolean z4 = this.o0 || this.p0;
        this.l0.j = this.y && this.Q != null && ((z2 = this.H) || z4 || this.q.h) && (!z2 || this.p.hasStableIds());
        x xVar = this.l0;
        if (xVar.j && z4 && !this.H) {
            if (this.Q != null && this.q.Z0()) {
                z3 = true;
            }
        }
        xVar.k = z3;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        m mVar = this.q;
        if (mVar == null || !mVar.e0()) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    public void b0(boolean z2) {
        this.I = z2 | this.I;
        this.H = true;
        int iH = this.i.h();
        for (int i2 = 0; i2 < iH; i2++) {
            a0 a0VarK = K(this.i.g(i2));
            if (a0VarK != null && !a0VarK.shouldIgnore()) {
                a0VarK.addFlags(6);
            }
        }
        Q();
        t tVar = this.f;
        int size = tVar.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            a0 a0Var = tVar.c.get(i3);
            if (a0Var != null) {
                a0Var.addFlags(6);
                a0Var.addChangePayload(null);
            }
        }
        e eVar = RecyclerView.this.p;
        if (eVar == null || !eVar.hasStableIds()) {
            tVar.e();
        }
    }

    public void c0(a0 a0Var, j.c cVar) {
        a0Var.setFlags(0, a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
        if (this.l0.h && a0Var.isUpdated() && !a0Var.isRemoved() && !a0Var.shouldIgnore()) {
            this.j.b.i(I(a0Var), a0Var);
        }
        this.j.c(a0Var, cVar);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof n) && this.q.g((n) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        m mVar = this.q;
        if (mVar != null && mVar.e()) {
            return this.q.k(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        m mVar = this.q;
        if (mVar != null && mVar.e()) {
            return this.q.l(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        m mVar = this.q;
        if (mVar != null && mVar.e()) {
            return this.q.m(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        m mVar = this.q;
        if (mVar != null && mVar.f()) {
            return this.q.n(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        m mVar = this.q;
        if (mVar != null && mVar.f()) {
            return this.q.o(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        m mVar = this.q;
        if (mVar != null && mVar.f()) {
            return this.q.p(this.l0);
        }
        return 0;
    }

    public void d0() {
        j jVar = this.Q;
        if (jVar != null) {
            jVar.f();
        }
        m mVar = this.q;
        if (mVar != null) {
            mVar.F0(this.f);
            this.q.G0(this.f);
        }
        this.f.b();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().b(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().e(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z2;
        super.draw(canvas);
        int size = this.s.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.s.get(i2).e(canvas, this, this.l0);
        }
        EdgeEffect edgeEffect = this.M;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.k ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.M;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.N;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.k) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.N;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.O;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.k ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.O;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.P;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.k) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.P;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z3 = true;
            }
            z2 |= z3;
            canvas.restoreToCount(iSave4);
        }
        if ((z2 || this.Q == null || this.s.size() <= 0 || !this.Q.g()) ? z2 : true) {
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public final void e0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.m.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof n) {
            n nVar = (n) layoutParams;
            if (!nVar.c) {
                Rect rect = nVar.b;
                Rect rect2 = this.m;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.m);
            offsetRectIntoDescendantCoords(view, this.m);
        }
        this.q.K0(this, view, this.m, !this.y, view2 == null);
    }

    public final void f(a0 a0Var) {
        View view = a0Var.itemView;
        boolean z2 = view.getParent() == this;
        this.f.k(J(view));
        if (a0Var.isTmpDetached()) {
            this.i.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z2) {
            this.i.a(view, -1, true);
            return;
        }
        ff ffVar = this.i;
        int iIndexOfChild = ((zf) ffVar.a).a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            ffVar.b.h(iIndexOfChild);
            ffVar.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public final void f0() {
        VelocityTracker velocityTracker = this.T;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        q0(0);
        EdgeEffect edgeEffect = this.M;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.M.isFinished();
        }
        EdgeEffect edgeEffect2 = this.N;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.N.isFinished();
        }
        EdgeEffect edgeEffect3 = this.O;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.O.isFinished();
        }
        EdgeEffect edgeEffect4 = this.P;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.P.isFinished();
        }
        if (zIsFinished) {
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0075  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r14, int r15) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    public void g(l lVar) {
        m mVar = this.q;
        if (mVar != null) {
            mVar.d("Cannot add item decoration during a scroll  or layout");
        }
        if (this.s.isEmpty()) {
            setWillNotDraw(false);
        }
        this.s.add(lVar);
        Q();
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean g0(int r18, int r19, android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.g0(int, int, android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        m mVar = this.q;
        if (mVar != null) {
            return mVar.u();
        }
        throw new IllegalStateException(jo.e(this, jo.z("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        m mVar = this.q;
        if (mVar != null) {
            return mVar.v(getContext(), attributeSet);
        }
        throw new IllegalStateException(jo.e(this, jo.z("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public e getAdapter() {
        return this.p;
    }

    @Override // android.view.View
    public int getBaseline() {
        m mVar = this.q;
        if (mVar == null) {
            return super.getBaseline();
        }
        Objects.requireNonNull(mVar);
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        h hVar = this.t0;
        return hVar == null ? super.getChildDrawingOrder(i2, i3) : hVar.a(i2, i3);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.k;
    }

    public bg getCompatAccessibilityDelegate() {
        return this.s0;
    }

    public i getEdgeEffectFactory() {
        return this.L;
    }

    public j getItemAnimator() {
        return this.Q;
    }

    public int getItemDecorationCount() {
        return this.s.size();
    }

    public m getLayoutManager() {
        return this.q;
    }

    public int getMaxFlingVelocity() {
        return this.e0;
    }

    public int getMinFlingVelocity() {
        return this.d0;
    }

    public long getNanoTime() {
        if (F0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public p getOnFlingListener() {
        return this.c0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.h0;
    }

    public s getRecycledViewPool() {
        return this.f.d();
    }

    public int getScrollState() {
        return this.R;
    }

    public void h(r rVar) {
        if (this.n0 == null) {
            this.n0 = new ArrayList();
        }
        this.n0.add(rVar);
    }

    public void h0(int i2, int i3, int[] iArr) {
        a0 a0Var;
        n0();
        U();
        int i4 = e9.a;
        Trace.beginSection("RV Scroll");
        B(this.l0);
        int iM0 = i2 != 0 ? this.q.M0(i2, this.f, this.l0) : 0;
        int iO0 = i3 != 0 ? this.q.O0(i3, this.f, this.l0) : 0;
        Trace.endSection();
        int iE = this.i.e();
        for (int i5 = 0; i5 < iE; i5++) {
            View viewD = this.i.d(i5);
            a0 a0VarJ = J(viewD);
            if (a0VarJ != null && (a0Var = a0VarJ.mShadowingHolder) != null) {
                View view = a0Var.itemView;
                int left = viewD.getLeft();
                int top = viewD.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        V(true);
        p0(false);
        if (iArr != null) {
            iArr[0] = iM0;
            iArr[1] = iO0;
        }
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().h(0);
    }

    public void i(String str) {
        if (O()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(jo.e(this, jo.z("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.K > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(jo.e(this, jo.z(""))));
        }
    }

    public void i0(int i2) {
        if (this.B) {
            return;
        }
        r0();
        m mVar = this.q;
        if (mVar == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            mVar.N0(i2);
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.v;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.B;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public final void j() {
        f0();
        setScrollState(0);
    }

    public boolean j0(a0 a0Var, int i2) {
        if (O()) {
            a0Var.mPendingAccessibilityState = i2;
            this.z0.add(a0Var);
            return false;
        }
        View view = a0Var.itemView;
        AtomicInteger atomicInteger = ha.a;
        view.setImportantForAccessibility(i2);
        return true;
    }

    public void k0(int i2, int i3) {
        l0(i2, i3, null, Integer.MIN_VALUE, false);
    }

    public void l() {
        int iH = this.i.h();
        for (int i2 = 0; i2 < iH; i2++) {
            a0 a0VarK = K(this.i.g(i2));
            if (!a0VarK.shouldIgnore()) {
                a0VarK.clearOldPosition();
            }
        }
        t tVar = this.f;
        int size = tVar.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            tVar.c.get(i3).clearOldPosition();
        }
        int size2 = tVar.a.size();
        for (int i4 = 0; i4 < size2; i4++) {
            tVar.a.get(i4).clearOldPosition();
        }
        ArrayList<a0> arrayList = tVar.b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i5 = 0; i5 < size3; i5++) {
                tVar.b.get(i5).clearOldPosition();
            }
        }
    }

    public void l0(int i2, int i3, Interpolator interpolator, int i4, boolean z2) {
        m mVar = this.q;
        if (mVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.B) {
            return;
        }
        if (!mVar.e()) {
            i2 = 0;
        }
        if (!this.q.f()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        if (!(i4 == Integer.MIN_VALUE || i4 > 0)) {
            scrollBy(i2, i3);
            return;
        }
        if (z2) {
            int i5 = i2 != 0 ? 1 : 0;
            if (i3 != 0) {
                i5 |= 2;
            }
            o0(i5, 1);
        }
        this.i0.b(i2, i3, i4, interpolator);
    }

    public void m(int i2, int i3) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.M;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.M.onRelease();
            zIsFinished = this.M.isFinished();
        }
        EdgeEffect edgeEffect2 = this.O;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.O.onRelease();
            zIsFinished |= this.O.isFinished();
        }
        EdgeEffect edgeEffect3 = this.N;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.N.onRelease();
            zIsFinished |= this.N.isFinished();
        }
        EdgeEffect edgeEffect4 = this.P;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.P.onRelease();
            zIsFinished |= this.P.isFinished();
        }
        if (zIsFinished) {
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
    }

    public void m0(int i2) {
        if (this.B) {
            return;
        }
        m mVar = this.q;
        if (mVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            mVar.X0(this, this.l0, i2);
        }
    }

    public void n() {
        if (!this.y || this.H) {
            int i2 = e9.a;
            Trace.beginSection("RV FullInvalidate");
            q();
            Trace.endSection();
            return;
        }
        if (this.h.g()) {
            ef efVar = this.h;
            int i3 = efVar.f;
            boolean z2 = false;
            if ((i3 & 4) != 0) {
                if (!((i3 & 11) != 0)) {
                    int i4 = e9.a;
                    Trace.beginSection("RV PartialInvalidate");
                    n0();
                    U();
                    this.h.j();
                    if (!this.A) {
                        int iE = this.i.e();
                        int i5 = 0;
                        while (true) {
                            if (i5 < iE) {
                                a0 a0VarK = K(this.i.d(i5));
                                if (a0VarK != null && !a0VarK.shouldIgnore() && a0VarK.isUpdated()) {
                                    z2 = true;
                                    break;
                                }
                                i5++;
                            } else {
                                break;
                            }
                        }
                        if (z2) {
                            q();
                        } else {
                            this.h.b();
                        }
                    }
                    p0(true);
                    V(true);
                    Trace.endSection();
                    return;
                }
            }
            if (efVar.g()) {
                int i6 = e9.a;
                Trace.beginSection("RV FullInvalidate");
                q();
                Trace.endSection();
            }
        }
    }

    public void n0() {
        int i2 = this.z + 1;
        this.z = i2;
        if (i2 != 1 || this.B) {
            return;
        }
        this.A = false;
    }

    public void o(int i2, int i3) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        AtomicInteger atomicInteger = ha.a;
        setMeasuredDimension(m.h(i2, paddingRight, getMinimumWidth()), m.h(i3, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public boolean o0(int i2, int i3) {
        return getScrollingChildHelper().i(i2, i3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.J = 0;
        this.v = true;
        this.y = this.y && !isLayoutRequested();
        m mVar = this.q;
        if (mVar != null) {
            mVar.i = true;
            mVar.f0();
        }
        this.r0 = false;
        if (F0) {
            ThreadLocal<qf> threadLocal = qf.i;
            qf qfVar = threadLocal.get();
            this.j0 = qfVar;
            if (qfVar == null) {
                this.j0 = new qf();
                AtomicInteger atomicInteger = ha.a;
                Display display = getDisplay();
                float f2 = 60.0f;
                if (!isInEditMode() && display != null) {
                    float refreshRate = display.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f2 = refreshRate;
                    }
                }
                qf qfVar2 = this.j0;
                qfVar2.g = (long) (1.0E9f / f2);
                threadLocal.set(qfVar2);
            }
            this.j0.e.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        qf qfVar;
        super.onDetachedFromWindow();
        j jVar = this.Q;
        if (jVar != null) {
            jVar.f();
        }
        r0();
        this.v = false;
        m mVar = this.q;
        if (mVar != null) {
            t tVar = this.f;
            mVar.i = false;
            mVar.h0(this, tVar);
        }
        this.z0.clear();
        removeCallbacks(this.A0);
        Objects.requireNonNull(this.j);
        while (fg.a.d.a() != null) {
        }
        if (!F0 || (qfVar = this.j0) == null) {
            return;
        }
        qfVar.e.remove(this);
        this.j0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.s.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.s.get(i2).d(canvas, this, this.l0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$m r0 = r5.q
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.B
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L77
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3c
            androidx.recyclerview.widget.RecyclerView$m r0 = r5.q
            boolean r0 = r0.f()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = 0
        L2d:
            androidx.recyclerview.widget.RecyclerView$m r3 = r5.q
            boolean r3 = r3.e()
            if (r3 == 0) goto L61
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L62
        L3c:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L60
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$m r3 = r5.q
            boolean r3 = r3.f()
            if (r3 == 0) goto L55
            float r0 = -r0
            goto L61
        L55:
            androidx.recyclerview.widget.RecyclerView$m r3 = r5.q
            boolean r3 = r3.e()
            if (r3 == 0) goto L60
            r3 = r0
            r0 = 0
            goto L62
        L60:
            r0 = 0
        L61:
            r3 = 0
        L62:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6a
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L77
        L6a:
            float r2 = r5.f0
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.g0
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.g0(r2, r0, r6)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.B) {
            return false;
        }
        this.u = null;
        if (D(motionEvent)) {
            j();
            return true;
        }
        m mVar = this.q;
        if (mVar == null) {
            return false;
        }
        boolean zE = mVar.e();
        boolean zF = this.q.f();
        if (this.T == null) {
            this.T = VelocityTracker.obtain();
        }
        this.T.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.C) {
                this.C = false;
            }
            this.S = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.W = x2;
            this.U = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.a0 = y2;
            this.V = y2;
            if (this.R == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                q0(1);
            }
            int[] iArr = this.x0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = zE;
            if (zF) {
                i2 = (zE ? 1 : 0) | 2;
            }
            o0(i2, 0);
        } else if (actionMasked == 1) {
            this.T.clear();
            q0(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.S);
            if (iFindPointerIndex < 0) {
                StringBuilder sbZ = jo.z("Error processing scroll; pointer index for id ");
                sbZ.append(this.S);
                sbZ.append(" not found. Did any MotionEvents get skipped?");
                Log.e("RecyclerView", sbZ.toString());
                return false;
            }
            int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.R != 1) {
                int i3 = x3 - this.U;
                int i4 = y3 - this.V;
                if (zE == 0 || Math.abs(i3) <= this.b0) {
                    z2 = false;
                } else {
                    this.W = x3;
                    z2 = true;
                }
                if (zF && Math.abs(i4) > this.b0) {
                    this.a0 = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            j();
        } else if (actionMasked == 5) {
            this.S = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.W = x4;
            this.U = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.a0 = y4;
            this.V = y4;
        } else if (actionMasked == 6) {
            W(motionEvent);
        }
        return this.R == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6 = e9.a;
        Trace.beginSection("RV OnLayout");
        q();
        Trace.endSection();
        this.y = true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        m mVar = this.q;
        if (mVar == null) {
            o(i2, i3);
            return;
        }
        boolean z2 = false;
        if (mVar.W()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.q.x0(i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            if (z2 || this.p == null) {
                return;
            }
            if (this.l0.d == 1) {
                r();
            }
            this.q.Q0(i2, i3);
            this.l0.i = true;
            s();
            this.q.S0(i2, i3);
            if (this.q.V0()) {
                this.q.Q0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.l0.i = true;
                s();
                this.q.S0(i2, i3);
                return;
            }
            return;
        }
        if (this.w) {
            this.q.x0(i2, i3);
            return;
        }
        if (this.E) {
            n0();
            U();
            a0();
            V(true);
            x xVar = this.l0;
            if (xVar.k) {
                xVar.g = true;
            } else {
                this.h.c();
                this.l0.g = false;
            }
            this.E = false;
            p0(false);
        } else if (this.l0.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        e eVar = this.p;
        if (eVar != null) {
            this.l0.e = eVar.getItemCount();
        } else {
            this.l0.e = 0;
        }
        n0();
        this.q.x0(i2, i3);
        p0(false);
        this.l0.g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (O()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.g = savedState;
        super.onRestoreInstanceState(savedState.e);
        m mVar = this.q;
        if (mVar == null || (parcelable2 = this.g.g) == null) {
            return;
        }
        mVar.A0(parcelable2);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.g;
        if (savedState2 != null) {
            savedState.g = savedState2.g;
        } else {
            m mVar = this.q;
            if (mVar != null) {
                savedState.g = mVar.B0();
            } else {
                savedState.g = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        N();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:153:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f7 A[PHI: r8
      0x00f7: PHI (r8v13 int) = (r8v9 int), (r8v17 int) binds: [B:50:0x00e0, B:54:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0110  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r21) {
        /*
            Method dump skipped, instructions count: 1000
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void p(View view) {
        a0 a0VarK = K(view);
        T();
        e eVar = this.p;
        if (eVar != null && a0VarK != null) {
            eVar.onViewDetachedFromWindow(a0VarK);
        }
        List<o> list = this.G;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.G.get(size).a(view);
            }
        }
    }

    public void p0(boolean z2) {
        if (this.z < 1) {
            this.z = 1;
        }
        if (!z2 && !this.B) {
            this.A = false;
        }
        if (this.z == 1) {
            if (z2 && this.A && !this.B && this.q != null && this.p != null) {
                q();
            }
            if (!this.B) {
                this.A = false;
            }
        }
        this.z--;
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x0335  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void q() {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.q():void");
    }

    public void q0(int i2) {
        getScrollingChildHelper().j(i2);
    }

    public final void r() {
        View viewC;
        this.l0.a(1);
        B(this.l0);
        this.l0.i = false;
        n0();
        fg fgVar = this.j;
        fgVar.a.clear();
        fgVar.b.c();
        U();
        a0();
        View focusedChild = (this.h0 && hasFocus() && this.p != null) ? getFocusedChild() : null;
        a0 a0VarJ = (focusedChild == null || (viewC = C(focusedChild)) == null) ? null : J(viewC);
        if (a0VarJ == null) {
            x xVar = this.l0;
            xVar.m = -1L;
            xVar.l = -1;
            xVar.n = -1;
        } else {
            this.l0.m = this.p.hasStableIds() ? a0VarJ.getItemId() : -1L;
            this.l0.l = this.H ? -1 : a0VarJ.isRemoved() ? a0VarJ.mOldPosition : a0VarJ.getAdapterPosition();
            x xVar2 = this.l0;
            View focusedChild2 = a0VarJ.itemView;
            int id = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id = focusedChild2.getId();
                }
            }
            xVar2.n = id;
        }
        x xVar3 = this.l0;
        xVar3.h = xVar3.j && this.p0;
        this.p0 = false;
        this.o0 = false;
        xVar3.g = xVar3.k;
        xVar3.e = this.p.getItemCount();
        E(this.u0);
        if (this.l0.j) {
            int iE = this.i.e();
            for (int i2 = 0; i2 < iE; i2++) {
                a0 a0VarK = K(this.i.d(i2));
                if (!a0VarK.shouldIgnore() && (!a0VarK.isInvalid() || this.p.hasStableIds())) {
                    j jVar = this.Q;
                    j.b(a0VarK);
                    a0VarK.getUnmodifiedPayloads();
                    this.j.c(a0VarK, jVar.h(a0VarK));
                    if (this.l0.h && a0VarK.isUpdated() && !a0VarK.isRemoved() && !a0VarK.shouldIgnore() && !a0VarK.isInvalid()) {
                        this.j.b.i(I(a0VarK), a0VarK);
                    }
                }
            }
        }
        if (this.l0.k) {
            int iH = this.i.h();
            for (int i3 = 0; i3 < iH; i3++) {
                a0 a0VarK2 = K(this.i.g(i3));
                if (!a0VarK2.shouldIgnore()) {
                    a0VarK2.saveOldPosition();
                }
            }
            x xVar4 = this.l0;
            boolean z2 = xVar4.f;
            xVar4.f = false;
            this.q.v0(this.f, xVar4);
            this.l0.f = z2;
            for (int i4 = 0; i4 < this.i.e(); i4++) {
                a0 a0VarK3 = K(this.i.d(i4));
                if (!a0VarK3.shouldIgnore()) {
                    fg.a orDefault = this.j.a.getOrDefault(a0VarK3, null);
                    if (!((orDefault == null || (orDefault.a & 4) == 0) ? false : true)) {
                        j.b(a0VarK3);
                        boolean zHasAnyOfTheFlags = a0VarK3.hasAnyOfTheFlags(a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                        j jVar2 = this.Q;
                        a0VarK3.getUnmodifiedPayloads();
                        j.c cVarH = jVar2.h(a0VarK3);
                        if (zHasAnyOfTheFlags) {
                            c0(a0VarK3, cVarH);
                        } else {
                            fg fgVar2 = this.j;
                            fg.a orDefault2 = fgVar2.a.getOrDefault(a0VarK3, null);
                            if (orDefault2 == null) {
                                orDefault2 = fg.a.a();
                                fgVar2.a.put(a0VarK3, orDefault2);
                            }
                            orDefault2.a |= 2;
                            orDefault2.b = cVarH;
                        }
                    }
                }
            }
            l();
        } else {
            l();
        }
        V(true);
        p0(false);
        this.l0.d = 2;
    }

    public void r0() {
        w wVar;
        setScrollState(0);
        this.i0.c();
        m mVar = this.q;
        if (mVar == null || (wVar = mVar.g) == null) {
            return;
        }
        wVar.d();
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z2) {
        a0 a0VarK = K(view);
        if (a0VarK != null) {
            if (a0VarK.isTmpDetached()) {
                a0VarK.clearTmpDetachFlag();
            } else if (!a0VarK.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(a0VarK);
                throw new IllegalArgumentException(jo.e(this, sb));
            }
        }
        view.clearAnimation();
        p(view);
        super.removeDetachedView(view, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.q.z0(this, view, view2) && view2 != null) {
            e0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.q.K0(this, view, rect, z2, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.t.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.t.get(i2).c(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.z != 0 || this.B) {
            this.A = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s() {
        n0();
        U();
        this.l0.a(6);
        this.h.c();
        this.l0.e = this.p.getItemCount();
        x xVar = this.l0;
        xVar.c = 0;
        xVar.g = false;
        this.q.v0(this.f, xVar);
        x xVar2 = this.l0;
        xVar2.f = false;
        this.g = null;
        xVar2.j = xVar2.j && this.Q != null;
        xVar2.d = 4;
        V(true);
        p0(false);
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        m mVar = this.q;
        if (mVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.B) {
            return;
        }
        boolean zE = mVar.e();
        boolean zF = this.q.f();
        if (zE || zF) {
            if (!zE) {
                i2 = 0;
            }
            if (!zF) {
                i3 = 0;
            }
            g0(i2, i3, null);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (O()) {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.D |= contentChangeTypes != 0 ? contentChangeTypes : 0;
            i = 1;
        }
        if (i != 0) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(bg bgVar) {
        this.s0 = bgVar;
        ha.s(this, bgVar);
    }

    public void setAdapter(e eVar) {
        setLayoutFrozen(false);
        e eVar2 = this.p;
        if (eVar2 != null) {
            eVar2.unregisterAdapterDataObserver(this.e);
            this.p.onDetachedFromRecyclerView(this);
        }
        d0();
        ef efVar = this.h;
        efVar.l(efVar.b);
        efVar.l(efVar.c);
        efVar.f = 0;
        e eVar3 = this.p;
        this.p = eVar;
        if (eVar != null) {
            eVar.registerAdapterDataObserver(this.e);
            eVar.onAttachedToRecyclerView(this);
        }
        m mVar = this.q;
        if (mVar != null) {
            mVar.d0();
        }
        t tVar = this.f;
        e eVar4 = this.p;
        tVar.b();
        s sVarD = tVar.d();
        Objects.requireNonNull(sVarD);
        if (eVar3 != null) {
            sVarD.b--;
        }
        if (sVarD.b == 0) {
            for (int i2 = 0; i2 < sVarD.a.size(); i2++) {
                sVarD.a.valueAt(i2).a.clear();
            }
        }
        if (eVar4 != null) {
            sVarD.b++;
        }
        this.l0.f = true;
        b0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(h hVar) {
        if (hVar == this.t0) {
            return;
        }
        this.t0 = hVar;
        setChildrenDrawingOrderEnabled(hVar != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.k) {
            N();
        }
        this.k = z2;
        super.setClipToPadding(z2);
        if (this.y) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(i iVar) {
        Objects.requireNonNull(iVar);
        this.L = iVar;
        N();
    }

    public void setHasFixedSize(boolean z2) {
        this.w = z2;
    }

    public void setItemAnimator(j jVar) {
        j jVar2 = this.Q;
        if (jVar2 != null) {
            jVar2.f();
            this.Q.a = null;
        }
        this.Q = jVar;
        if (jVar != null) {
            jVar.a = this.q0;
        }
    }

    public void setItemViewCacheSize(int i2) {
        t tVar = this.f;
        tVar.e = i2;
        tVar.l();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    public void setLayoutManager(m mVar) {
        if (mVar == this.q) {
            return;
        }
        r0();
        if (this.q != null) {
            j jVar = this.Q;
            if (jVar != null) {
                jVar.f();
            }
            this.q.F0(this.f);
            this.q.G0(this.f);
            this.f.b();
            if (this.v) {
                m mVar2 = this.q;
                t tVar = this.f;
                mVar2.i = false;
                mVar2.h0(this, tVar);
            }
            this.q.T0(null);
            this.q = null;
        } else {
            this.f.b();
        }
        ff ffVar = this.i;
        ff.a aVar = ffVar.b;
        aVar.a = 0L;
        ff.a aVar2 = aVar.b;
        if (aVar2 != null) {
            aVar2.g();
        }
        int size = ffVar.c.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            ff.b bVar = ffVar.a;
            View view = ffVar.c.get(size);
            zf zfVar = (zf) bVar;
            Objects.requireNonNull(zfVar);
            a0 a0VarK = K(view);
            if (a0VarK != null) {
                a0VarK.onLeftHiddenState(zfVar.a);
            }
            ffVar.c.remove(size);
        }
        zf zfVar2 = (zf) ffVar.a;
        int iB = zfVar2.b();
        for (int i2 = 0; i2 < iB; i2++) {
            View viewA = zfVar2.a(i2);
            zfVar2.a.p(viewA);
            viewA.clearAnimation();
        }
        zfVar2.a.removeAllViews();
        this.q = mVar;
        if (mVar != null) {
            if (mVar.b != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("LayoutManager ");
                sb.append(mVar);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(jo.e(mVar.b, sb));
            }
            mVar.T0(this);
            if (this.v) {
                m mVar3 = this.q;
                mVar3.i = true;
                mVar3.f0();
            }
        }
        this.f.l();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        aa scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.d) {
            View view = scrollingChildHelper.c;
            AtomicInteger atomicInteger = ha.a;
            view.stopNestedScroll();
        }
        scrollingChildHelper.d = z2;
    }

    public void setOnFlingListener(p pVar) {
        this.c0 = pVar;
    }

    @Deprecated
    public void setOnScrollListener(r rVar) {
        this.m0 = rVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.h0 = z2;
    }

    public void setRecycledViewPool(s sVar) {
        t tVar = this.f;
        if (tVar.g != null) {
            r1.b--;
        }
        tVar.g = sVar;
        if (sVar == null || RecyclerView.this.getAdapter() == null) {
            return;
        }
        tVar.g.b++;
    }

    public void setRecyclerListener(u uVar) {
        this.r = uVar;
    }

    public void setScrollState(int i2) {
        w wVar;
        if (i2 == this.R) {
            return;
        }
        this.R = i2;
        if (i2 != 2) {
            this.i0.c();
            m mVar = this.q;
            if (mVar != null && (wVar = mVar.g) != null) {
                wVar.d();
            }
        }
        m mVar2 = this.q;
        if (mVar2 != null) {
            mVar2.C0(i2);
        }
        X();
        r rVar = this.m0;
        if (rVar != null) {
            rVar.a(this, i2);
        }
        List<r> list = this.n0;
        if (list == null) {
            return;
        }
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                this.n0.get(size).a(this, i2);
            }
        }
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 == 1) {
                this.b0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
        }
        this.b0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(y yVar) {
        Objects.requireNonNull(this.f);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().i(i2, 0);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().j(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z2) {
        if (z2 != this.B) {
            i("Do not suppressLayout in layout or scroll");
            if (z2) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.B = true;
                this.C = true;
                r0();
                return;
            }
            this.B = false;
            if (this.A && this.q != null && this.p != null) {
                requestLayout();
            }
            this.A = false;
        }
    }

    public boolean t(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().c(i2, i3, iArr, null, i4);
    }

    public final void u(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        getScrollingChildHelper().f(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    public void v(int i2, int i3) {
        this.K++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        Y();
        r rVar = this.m0;
        if (rVar != null) {
            rVar.b(this, i2, i3);
        }
        List<r> list = this.n0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.n0.get(size).b(this, i2, i3);
            }
        }
        this.K--;
    }

    public void w() {
        if (this.P != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.L.a(this);
        this.P = edgeEffectA;
        if (this.k) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void x() {
        if (this.M != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.L.a(this);
        this.M = edgeEffectA;
        if (this.k) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void y() {
        if (this.O != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.L.a(this);
        this.O = edgeEffectA;
        if (this.k) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void z() {
        if (this.N != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.L.a(this);
        this.N = edgeEffectA;
        if (this.k) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public static abstract class e<VH extends a0> {
        private final f mObservable = new f();
        private boolean mHasStableIds = false;

        public final void bindViewHolder(VH vh, int i) {
            vh.mPosition = i;
            if (hasStableIds()) {
                vh.mItemId = getItemId(i);
            }
            vh.setFlags(1, 519);
            int i2 = e9.a;
            Trace.beginSection("RV OnBindView");
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            vh.clearPayload();
            ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof n) {
                ((n) layoutParams).c = true;
            }
            Trace.endSection();
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i) {
            try {
                int i2 = e9.a;
                Trace.beginSection("RV CreateView");
                VH vh = (VH) onCreateViewHolder(viewGroup, i);
                if (vh.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                vh.mItemViewType = i;
                Trace.endSection();
                return vh;
            } catch (Throwable th) {
                int i3 = e9.a;
                Trace.endSection();
                throw th;
            }
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1L;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public final boolean hasObservers() {
            return this.mObservable.a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.b();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.d(i, 1, null);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.e(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.c(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.d(i, i2, null);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.e(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.f(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.f(i, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH vh, int i);

        public void onBindViewHolder(VH vh, int i, List<Object> list) {
            onBindViewHolder(vh, i);
        }

        public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(g gVar) {
            this.mObservable.registerObserver(gVar);
        }

        public void setHasStableIds(boolean z) {
            if (hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = z;
        }

        public void unregisterAdapterDataObserver(g gVar) {
            this.mObservable.unregisterObserver(gVar);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.mObservable.d(i, 1, obj);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.mObservable.d(i, i2, obj);
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.recyclerViewStyle);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) throws NoSuchMethodException, SecurityException {
        float fA;
        float fA2;
        TypedArray typedArray;
        char c2;
        ClassLoader classLoader;
        Constructor constructor;
        Object[] objArr;
        super(context, attributeSet, i2);
        this.e = new v();
        this.f = new t();
        this.j = new fg();
        this.l = new a();
        this.m = new Rect();
        this.n = new Rect();
        this.o = new RectF();
        this.s = new ArrayList<>();
        this.t = new ArrayList<>();
        this.z = 0;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.K = 0;
        this.L = new i();
        this.Q = new of();
        this.R = 0;
        this.S = -1;
        this.f0 = Float.MIN_VALUE;
        this.g0 = Float.MIN_VALUE;
        this.h0 = true;
        this.i0 = new z();
        this.k0 = F0 ? new qf.b() : null;
        this.l0 = new x();
        this.o0 = false;
        this.p0 = false;
        this.q0 = new k();
        this.r0 = false;
        this.u0 = new int[2];
        this.w0 = new int[2];
        this.x0 = new int[2];
        this.y0 = new int[2];
        this.z0 = new ArrayList();
        this.A0 = new b();
        this.B0 = new d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.b0 = viewConfiguration.getScaledTouchSlop();
        Method method = la.a;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 26) {
            fA = viewConfiguration.getScaledHorizontalScrollFactor();
        } else {
            fA = la.a(viewConfiguration, context);
        }
        this.f0 = fA;
        if (i3 >= 26) {
            fA2 = viewConfiguration.getScaledVerticalScrollFactor();
        } else {
            fA2 = la.a(viewConfiguration, context);
        }
        this.g0 = fA2;
        this.d0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.e0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.Q.a = this.q0;
        this.h = new ef(new ag(this));
        this.i = new ff(new zf(this));
        AtomicInteger atomicInteger = ha.a;
        if ((i3 >= 26 ? getImportantForAutofill() : 0) == 0 && i3 >= 26) {
            setImportantForAutofill(8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.F = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new bg(this));
        int[] iArr = R$styleable.RecyclerView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        if (i3 >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, i2, 0);
        }
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.RecyclerView_layoutManager);
        if (typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.k = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_android_clipToPadding, true);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_fastScrollEnabled, false);
        this.x = z2;
        if (z2) {
            StateListDrawable stateListDrawable = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollVerticalThumbDrawable);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollVerticalTrackDrawable);
            StateListDrawable stateListDrawable2 = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalThumbDrawable);
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalTrackDrawable);
            if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
                Resources resources = getContext().getResources();
                c2 = 2;
                typedArray = typedArrayObtainStyledAttributes;
                new pf(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R$dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R$dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R$dimen.fastscroll_margin));
            } else {
                throw new IllegalArgumentException(jo.e(this, jo.z("Trying to set fast scroller without both required drawables.")));
            }
        } else {
            typedArray = typedArrayObtainStyledAttributes;
            c2 = 2;
        }
        typedArray.recycle();
        if (string != null) {
            String strTrim = string.trim();
            if (!strTrim.isEmpty()) {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(".")) {
                    strTrim = RecyclerView.class.getPackage().getName() + FilenameUtils.EXTENSION_SEPARATOR + strTrim;
                }
                String str = strTrim;
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class<? extends U> clsAsSubclass = Class.forName(str, false, classLoader).asSubclass(m.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(G0);
                        objArr = new Object[4];
                        objArr[0] = context;
                        objArr[1] = attributeSet;
                        objArr[c2] = Integer.valueOf(i2);
                        objArr[3] = 0;
                    } catch (NoSuchMethodException e2) {
                        try {
                            constructor = clsAsSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        } catch (NoSuchMethodException e3) {
                            e3.initCause(e2);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e3);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((m) constructor.newInstance(objArr));
                } catch (ClassCastException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e4);
                } catch (ClassNotFoundException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e5);
                } catch (IllegalAccessException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e6);
                } catch (InstantiationException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e7);
                } catch (InvocationTargetException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e8);
                }
            }
        }
        int i4 = Build.VERSION.SDK_INT;
        int[] iArr2 = C0;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i2, 0);
        if (i4 >= 29) {
            saveAttributeDataForStyleable(context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i2, 0);
        }
        boolean z3 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z3);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public Parcelable g;

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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = parcel.readParcelable(classLoader == null ? m.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeParcelable(this.g, 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class n extends ViewGroup.MarginLayoutParams {
        public a0 a;
        public final Rect b;
        public boolean c;
        public boolean d;

        public n(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }

        public int a() {
            return this.a.getLayoutPosition();
        }

        public boolean b() {
            return this.a.isUpdated();
        }

        public boolean c() {
            return this.a.isRemoved();
        }

        public n(int i, int i2) {
            super(i, i2);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }

        public n(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }

        public n(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }

        public n(n nVar) {
            super((ViewGroup.LayoutParams) nVar);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        m mVar = this.q;
        if (mVar != null) {
            return mVar.w(layoutParams);
        }
        throw new IllegalStateException(jo.e(this, jo.z("RecyclerView has no LayoutManager")));
    }
}
