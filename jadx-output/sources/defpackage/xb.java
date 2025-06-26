package defpackage;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcher.LifecycleOnBackPressedCancellable;
import androidx.fragment.app.BackStackState;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerState;
import androidx.fragment.app.FragmentState;
import defpackage.ad;
import defpackage.bc;
import defpackage.d0;
import defpackage.dc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class xb extends wb implements LayoutInflater.Factory2 {
    public static final Interpolator K = new DecelerateInterpolator(2.5f);
    public static final Interpolator L = new DecelerateInterpolator(1.5f);
    public boolean A;
    public boolean B;
    public ArrayList<qb> C;
    public ArrayList<Boolean> D;
    public ArrayList<Fragment> E;
    public ArrayList<j> H;
    public bc I;
    public ArrayList<h> g;
    public boolean h;
    public ArrayList<qb> l;
    public ArrayList<Fragment> m;
    public OnBackPressedDispatcher n;
    public ArrayList<qb> p;
    public ArrayList<Integer> q;
    public vb t;
    public sb u;
    public Fragment v;
    public Fragment w;
    public boolean x;
    public boolean y;
    public boolean z;
    public int i = 0;
    public final ArrayList<Fragment> j = new ArrayList<>();
    public final HashMap<String, Fragment> k = new HashMap<>();
    public final s o = new a(false);
    public final CopyOnWriteArrayList<f> r = new CopyOnWriteArrayList<>();
    public int s = 0;
    public Bundle F = null;
    public SparseArray<Parcelable> G = null;
    public Runnable J = new b();

    public class a extends s {
        public a(boolean z) {
            super(z);
        }

        @Override // defpackage.s
        public void a() {
            xb xbVar = xb.this;
            xbVar.U();
            if (xbVar.o.a) {
                xbVar.f();
            } else {
                xbVar.n.a();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xb.this.U();
        }
    }

    public class c extends ub {
        public c() {
        }

        @Override // defpackage.ub
        public Fragment a(ClassLoader classLoader, String str) {
            vb vbVar = xb.this.t;
            Context context = vbVar.f;
            Objects.requireNonNull(vbVar);
            return Fragment.instantiate(context, str, null);
        }
    }

    public static final class f {
    }

    public static class g {
        public static final int[] a = {R.attr.name, R.attr.id, R.attr.tag};
    }

    public interface h {
        boolean a(ArrayList<qb> arrayList, ArrayList<Boolean> arrayList2);
    }

    public class i implements h {
        public final int a;
        public final int b;

        public i(String str, int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        @Override // xb.h
        public boolean a(ArrayList<qb> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = xb.this.w;
            if (fragment == null || this.a >= 0 || !fragment.getChildFragmentManager().f()) {
                return xb.this.l0(arrayList, arrayList2, null, this.a, this.b);
            }
            return false;
        }
    }

    public static class j implements Fragment.f {
        public final boolean a;
        public final qb b;
        public int c;

        public j(qb qbVar, boolean z) {
            this.a = z;
            this.b = qbVar;
        }

        public void a() {
            boolean z = this.c > 0;
            xb xbVar = this.b.r;
            int size = xbVar.j.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = xbVar.j.get(i);
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            qb qbVar = this.b;
            qbVar.r.n(qbVar, this.a, !z, true);
        }
    }

    public static d f0(float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(K);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(L);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new d(animationSet);
    }

    public void A(Fragment fragment, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).A(fragment, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void B(Fragment fragment, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).B(fragment, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void C(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).C(fragment, context, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void D(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).D(fragment, bundle, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void E(Fragment fragment, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).E(fragment, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void F(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).F(fragment, bundle, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void G(Fragment fragment, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).G(fragment, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void H(Fragment fragment, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).H(fragment, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void I(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).I(fragment, view, bundle, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void J(Fragment fragment, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).J(fragment, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public boolean K(MenuItem menuItem) {
        if (this.s < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            Fragment fragment = this.j.get(i2);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void L(Menu menu) {
        if (this.s < 1) {
            return;
        }
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            Fragment fragment = this.j.get(i2);
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void M(Fragment fragment) {
        if (fragment == null || this.k.get(fragment.mWho) != fragment) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    public void N(boolean z) {
        for (int size = this.j.size() - 1; size >= 0; size--) {
            Fragment fragment = this.j.get(size);
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    public boolean O(Menu menu) {
        if (this.s < 1) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            Fragment fragment = this.j.get(i2);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void P(int i2) {
        try {
            this.h = true;
            h0(i2, false);
            this.h = false;
            U();
        } catch (Throwable th) {
            this.h = false;
            throw th;
        }
    }

    public void Q() {
        if (this.B) {
            this.B = false;
            v0();
        }
    }

    public void R(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String strN = jo.n(str, "    ");
        if (!this.k.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment fragment : this.k.values()) {
                printWriter.print(str);
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(strN, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.j.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size5; i2++) {
                Fragment fragment2 = this.j.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList<Fragment> arrayList = this.m;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size4; i3++) {
                Fragment fragment3 = this.m.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList<qb> arrayList2 = this.l;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                qb qbVar = this.l.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(qbVar.toString());
                qbVar.k(strN, printWriter, true);
            }
        }
        synchronized (this) {
            ArrayList<qb> arrayList3 = this.p;
            if (arrayList3 != null && (size2 = arrayList3.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size2; i5++) {
                    Object obj = (qb) this.p.get(i5);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            ArrayList<Integer> arrayList4 = this.q;
            if (arrayList4 != null && arrayList4.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.q.toArray()));
            }
        }
        ArrayList<h> arrayList5 = this.g;
        if (arrayList5 != null && (size = arrayList5.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i6 = 0; i6 < size; i6++) {
                Object obj2 = (h) this.g.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(obj2);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.u);
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.y);
        printWriter.print(" mStopped=");
        printWriter.print(this.z);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.A);
        if (this.x) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.x);
        }
    }

    public void S(h hVar, boolean z) {
        if (!z) {
            l();
        }
        synchronized (this) {
            if (!this.A && this.t != null) {
                if (this.g == null) {
                    this.g = new ArrayList<>();
                }
                this.g.add(hVar);
                s0();
                return;
            }
            if (!z) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    public final void T(boolean z) {
        if (this.h) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.t == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        }
        if (Looper.myLooper() != this.t.g.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            l();
        }
        if (this.C == null) {
            this.C = new ArrayList<>();
            this.D = new ArrayList<>();
        }
        this.h = true;
        try {
            X(null, null);
        } finally {
            this.h = false;
        }
    }

    public boolean U() {
        boolean zA;
        T(true);
        boolean z = false;
        while (true) {
            ArrayList<qb> arrayList = this.C;
            ArrayList<Boolean> arrayList2 = this.D;
            synchronized (this) {
                ArrayList<h> arrayList3 = this.g;
                if (arrayList3 == null || arrayList3.size() == 0) {
                    zA = false;
                } else {
                    int size = this.g.size();
                    zA = false;
                    for (int i2 = 0; i2 < size; i2++) {
                        zA |= this.g.get(i2).a(arrayList, arrayList2);
                    }
                    this.g.clear();
                    this.t.g.removeCallbacks(this.J);
                }
            }
            if (!zA) {
                x0();
                Q();
                k();
                return z;
            }
            this.h = true;
            try {
                n0(this.C, this.D);
                m();
                z = true;
            } catch (Throwable th) {
                m();
                throw th;
            }
        }
    }

    public void V(h hVar, boolean z) {
        if (z && (this.t == null || this.A)) {
            return;
        }
        T(z);
        ((qb) hVar).a(this.C, this.D);
        this.h = true;
        try {
            n0(this.C, this.D);
            m();
            x0();
            Q();
            k();
        } catch (Throwable th) {
            m();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void W(java.util.ArrayList<defpackage.qb> r20, java.util.ArrayList<java.lang.Boolean> r21, int r22, int r23) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xb.W(java.util.ArrayList, java.util.ArrayList, int, int):void");
    }

    public final void X(ArrayList<qb> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        ArrayList<j> arrayList3 = this.H;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            j jVar = this.H.get(i2);
            if (arrayList == null || jVar.a || (iIndexOf2 = arrayList.indexOf(jVar.b)) == -1 || !arrayList2.get(iIndexOf2).booleanValue()) {
                if ((jVar.c == 0) || (arrayList != null && jVar.b.o(arrayList, 0, arrayList.size()))) {
                    this.H.remove(i2);
                    i2--;
                    size--;
                    if (arrayList == null || jVar.a || (iIndexOf = arrayList.indexOf(jVar.b)) == -1 || !arrayList2.get(iIndexOf).booleanValue()) {
                        jVar.a();
                    } else {
                        qb qbVar = jVar.b;
                        qbVar.r.n(qbVar, jVar.a, false, false);
                    }
                }
            } else {
                this.H.remove(i2);
                i2--;
                size--;
                qb qbVar2 = jVar.b;
                qbVar2.r.n(qbVar2, jVar.a, false, false);
            }
            i2++;
        }
    }

    public Fragment Y(String str) {
        Fragment fragmentFindFragmentByWho;
        for (Fragment fragment : this.k.values()) {
            if (fragment != null && (fragmentFindFragmentByWho = fragment.findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    public final void Z() {
        if (this.H != null) {
            while (!this.H.isEmpty()) {
                this.H.remove(0).a();
            }
        }
    }

    @Override // defpackage.wb
    public boolean a() {
        boolean zU = U();
        Z();
        return zU;
    }

    public ub a0() {
        if (this.e == null) {
            this.e = wb.f;
        }
        ub ubVar = this.e;
        ub ubVar2 = wb.f;
        if (ubVar == ubVar2) {
            Fragment fragment = this.v;
            if (fragment != null) {
                return fragment.mFragmentManager.a0();
            }
            this.e = new c();
        }
        if (this.e == null) {
            this.e = ubVar2;
        }
        return this.e;
    }

    @Override // defpackage.wb
    public Fragment b(int i2) {
        for (int size = this.j.size() - 1; size >= 0; size--) {
            Fragment fragment = this.j.get(size);
            if (fragment != null && fragment.mFragmentId == i2) {
                return fragment;
            }
        }
        for (Fragment fragment2 : this.k.values()) {
            if (fragment2 != null && fragment2.mFragmentId == i2) {
                return fragment2;
            }
        }
        return null;
    }

    public final boolean b0(Fragment fragment) {
        boolean z;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            return true;
        }
        xb xbVar = fragment.mChildFragmentManager;
        Iterator<Fragment> it = xbVar.k.values().iterator();
        boolean zB0 = false;
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Fragment next = it.next();
            if (next != null) {
                zB0 = xbVar.b0(next);
            }
            if (zB0) {
                z = true;
                break;
            }
        }
        return z;
    }

    @Override // defpackage.wb
    public Fragment c(String str) {
        if (str != null) {
            for (int size = this.j.size() - 1; size >= 0; size--) {
                Fragment fragment = this.j.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (Fragment fragment2 : this.k.values()) {
            if (fragment2 != null && str.equals(fragment2.mTag)) {
                return fragment2;
            }
        }
        return null;
    }

    public boolean c0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        xb xbVar = fragment.mFragmentManager;
        return fragment == xbVar.w && c0(xbVar.v);
    }

    @Override // defpackage.wb
    public List<Fragment> d() {
        List<Fragment> list;
        if (this.j.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.j) {
            list = (List) this.j.clone();
        }
        return list;
    }

    public d d0(Fragment fragment, int i2, boolean z, int i3) throws Resources.NotFoundException {
        int nextAnim = fragment.getNextAnim();
        boolean z2 = false;
        fragment.setNextAnim(0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation animationOnCreateAnimation = fragment.onCreateAnimation(i2, z, nextAnim);
        if (animationOnCreateAnimation != null) {
            return new d(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(i2, z, nextAnim);
        if (animatorOnCreateAnimator != null) {
            return new d(animatorOnCreateAnimator);
        }
        char c2 = 1;
        if (nextAnim != 0) {
            boolean zEquals = "anim".equals(this.t.f.getResources().getResourceTypeName(nextAnim));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.t.f, nextAnim);
                    if (animationLoadAnimation != null) {
                        return new d(animationLoadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z2) {
                try {
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(this.t.f, nextAnim);
                    if (animatorLoadAnimator != null) {
                        return new d(animatorLoadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (zEquals) {
                        throw e3;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(this.t.f, nextAnim);
                    if (animationLoadAnimation2 != null) {
                        return new d(animationLoadAnimation2);
                    }
                }
            }
        }
        if (i2 == 0) {
            return null;
        }
        if (i2 != 4097) {
            c2 = i2 != 4099 ? i2 != 8194 ? (char) 65535 : z ? (char) 3 : (char) 4 : z ? (char) 5 : (char) 6;
        } else if (!z) {
            c2 = 2;
        }
        if (c2 < 0) {
            return null;
        }
        switch (c2) {
            case 1:
                return f0(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return f0(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return f0(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return f0(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setInterpolator(L);
                alphaAnimation.setDuration(220L);
                return new d(alphaAnimation);
            case 6:
                AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation2.setInterpolator(L);
                alphaAnimation2.setDuration(220L);
                return new d(alphaAnimation2);
            default:
                if (i3 == 0 && this.t.i()) {
                    this.t.h();
                }
                return null;
        }
    }

    @Override // defpackage.wb
    public boolean e() {
        return this.y || this.z;
    }

    public void e0(Fragment fragment) {
        if (this.k.get(fragment.mWho) != null) {
            return;
        }
        this.k.put(fragment.mWho, fragment);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (!fragment.mRetainInstance) {
                o0(fragment);
            } else if (!e()) {
                this.I.b.add(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
    }

    @Override // defpackage.wb
    public boolean f() {
        l();
        U();
        T(true);
        Fragment fragment = this.w;
        if (fragment != null && fragment.getChildFragmentManager().f()) {
            return true;
        }
        boolean zL0 = l0(this.C, this.D, null, -1, 0);
        if (zL0) {
            this.h = true;
            try {
                n0(this.C, this.D);
            } finally {
                m();
            }
        }
        x0();
        Q();
        k();
        return zL0;
    }

    public final void g(h4<Fragment> h4Var) throws Resources.NotFoundException {
        int i2 = this.s;
        if (i2 < 1) {
            return;
        }
        int iMin = Math.min(i2, 3);
        int size = this.j.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = this.j.get(i3);
            if (fragment.mState < iMin) {
                i0(fragment, iMin, fragment.getNextAnim(), fragment.getNextTransition(), false);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    h4Var.add(fragment);
                }
            }
        }
    }

    public void g0(Fragment fragment) {
        Animator animator;
        if (fragment != null && this.k.containsKey(fragment.mWho)) {
            int iMin = this.s;
            if (fragment.mRemoving) {
                iMin = fragment.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, 0);
            }
            i0(fragment, iMin, fragment.getNextTransition(), fragment.getNextTransitionStyle(), false);
            View view = fragment.mView;
            if (view != null) {
                ViewGroup viewGroup = fragment.mContainer;
                Fragment fragment2 = null;
                if (viewGroup != null && view != null) {
                    int iIndexOf = this.j.indexOf(fragment);
                    while (true) {
                        iIndexOf--;
                        if (iIndexOf < 0) {
                            break;
                        }
                        Fragment fragment3 = this.j.get(iIndexOf);
                        if (fragment3.mContainer == viewGroup && fragment3.mView != null) {
                            fragment2 = fragment3;
                            break;
                        }
                    }
                }
                if (fragment2 != null) {
                    View view2 = fragment2.mView;
                    ViewGroup viewGroup2 = fragment.mContainer;
                    int iIndexOfChild = viewGroup2.indexOfChild(view2);
                    int iIndexOfChild2 = viewGroup2.indexOfChild(fragment.mView);
                    if (iIndexOfChild2 < iIndexOfChild) {
                        viewGroup2.removeViewAt(iIndexOfChild2);
                        viewGroup2.addView(fragment.mView, iIndexOfChild);
                    }
                }
                if (fragment.mIsNewlyAdded && fragment.mContainer != null) {
                    float f2 = fragment.mPostponedAlpha;
                    if (f2 > 0.0f) {
                        fragment.mView.setAlpha(f2);
                    }
                    fragment.mPostponedAlpha = 0.0f;
                    fragment.mIsNewlyAdded = false;
                    d dVarD0 = d0(fragment, fragment.getNextTransition(), true, fragment.getNextTransitionStyle());
                    if (dVarD0 != null) {
                        Animation animation = dVarD0.a;
                        if (animation != null) {
                            fragment.mView.startAnimation(animation);
                        } else {
                            dVarD0.b.setTarget(fragment.mView);
                            dVarD0.b.start();
                        }
                    }
                }
            }
            if (fragment.mHiddenChanged) {
                if (fragment.mView != null) {
                    d dVarD02 = d0(fragment, fragment.getNextTransition(), !fragment.mHidden, fragment.getNextTransitionStyle());
                    if (dVarD02 == null || (animator = dVarD02.b) == null) {
                        if (dVarD02 != null) {
                            fragment.mView.startAnimation(dVarD02.a);
                            dVarD02.a.start();
                        }
                        fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                        if (fragment.isHideReplaced()) {
                            fragment.setHideReplaced(false);
                        }
                    } else {
                        animator.setTarget(fragment.mView);
                        if (!fragment.mHidden) {
                            fragment.mView.setVisibility(0);
                        } else if (fragment.isHideReplaced()) {
                            fragment.setHideReplaced(false);
                        } else {
                            ViewGroup viewGroup3 = fragment.mContainer;
                            View view3 = fragment.mView;
                            viewGroup3.startViewTransition(view3);
                            dVarD02.b.addListener(new ac(this, viewGroup3, view3, fragment));
                        }
                        dVarD02.b.start();
                    }
                }
                if (fragment.mAdded && b0(fragment)) {
                    this.x = true;
                }
                fragment.mHiddenChanged = false;
                fragment.onHiddenChanged(fragment.mHidden);
            }
        }
    }

    public void h(Fragment fragment, boolean z) {
        e0(fragment);
        if (fragment.mDetached) {
            return;
        }
        if (this.j.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.j) {
            this.j.add(fragment);
        }
        fragment.mAdded = true;
        fragment.mRemoving = false;
        if (fragment.mView == null) {
            fragment.mHiddenChanged = false;
        }
        if (b0(fragment)) {
            this.x = true;
        }
        if (z) {
            i0(fragment, this.s, 0, 0, false);
        }
    }

    public void h0(int i2, boolean z) {
        vb vbVar;
        if (this.t == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.s) {
            this.s = i2;
            int size = this.j.size();
            for (int i3 = 0; i3 < size; i3++) {
                g0(this.j.get(i3));
            }
            for (Fragment fragment : this.k.values()) {
                if (fragment != null && (fragment.mRemoving || fragment.mDetached)) {
                    if (!fragment.mIsNewlyAdded) {
                        g0(fragment);
                    }
                }
            }
            v0();
            if (this.x && (vbVar = this.t) != null && this.s == 4) {
                vbVar.o();
                this.x = false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void i(vb vbVar, sb sbVar, Fragment fragment) {
        if (this.t != null) {
            throw new IllegalStateException("Already attached");
        }
        this.t = vbVar;
        this.u = sbVar;
        this.v = fragment;
        if (fragment != null) {
            x0();
        }
        if (vbVar instanceof t) {
            t tVar = (t) vbVar;
            OnBackPressedDispatcher onBackPressedDispatcherB = tVar.b();
            this.n = onBackPressedDispatcherB;
            Fragment fragment2 = tVar;
            if (fragment != null) {
                fragment2 = fragment;
            }
            s sVar = this.o;
            Objects.requireNonNull(onBackPressedDispatcherB);
            ad lifecycle = fragment2.getLifecycle();
            if (((ed) lifecycle).b != ad.b.DESTROYED) {
                sVar.b.add(onBackPressedDispatcherB.new LifecycleOnBackPressedCancellable(lifecycle, sVar));
            }
        }
        if (fragment != null) {
            bc bcVar = fragment.mFragmentManager.I;
            bc bcVar2 = bcVar.c.get(fragment.mWho);
            if (bcVar2 == null) {
                bcVar2 = new bc(bcVar.e);
                bcVar.c.put(fragment.mWho, bcVar2);
            }
            this.I = bcVar2;
            return;
        }
        if (!(vbVar instanceof rd)) {
            this.I = new bc(false);
            return;
        }
        qd viewModelStore = ((rd) vbVar).getViewModelStore();
        od odVar = bc.g;
        String canonicalName = bc.class.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        String strN = jo.n("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
        nd ndVarA = viewModelStore.a.get(strN);
        if (!bc.class.isInstance(ndVarA)) {
            ndVarA = odVar instanceof pd ? ((pd) odVar).a(strN, bc.class) : ((bc.a) odVar).a(bc.class);
            nd ndVarPut = viewModelStore.a.put(strN, ndVarA);
            if (ndVarPut != null) {
                ndVarPut.a();
            }
        }
        this.I = (bc) ndVarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:158:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x04ea  */
    /* JADX WARN: Removed duplicated region for block: B:292:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i0(androidx.fragment.app.Fragment r17, int r18, int r19, int r20, boolean r21) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 1301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xb.i0(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    public void j(Fragment fragment) {
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            if (this.j.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            synchronized (this.j) {
                this.j.add(fragment);
            }
            fragment.mAdded = true;
            if (b0(fragment)) {
                this.x = true;
            }
        }
    }

    public void j0() {
        this.y = false;
        this.z = false;
        int size = this.j.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.j.get(i2);
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public final void k() {
        this.k.values().removeAll(Collections.singleton(null));
    }

    public void k0(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.h) {
                this.B = true;
            } else {
                fragment.mDeferStart = false;
                i0(fragment, this.s, 0, 0, false);
            }
        }
    }

    public final void l() {
        if (e()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    public boolean l0(ArrayList<qb> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        ArrayList<qb> arrayList3 = this.l;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.l.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            int i4 = -1;
            if (str != null || i2 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    qb qbVar = this.l.get(size2);
                    if ((str != null && str.equals(qbVar.j)) || (i2 >= 0 && i2 == qbVar.t)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        qb qbVar2 = this.l.get(size2);
                        if (str == null || !str.equals(qbVar2.j)) {
                            if (i2 < 0 || i2 != qbVar2.t) {
                                break;
                            }
                        }
                    }
                }
                i4 = size2;
            }
            if (i4 == this.l.size() - 1) {
                return false;
            }
            for (int size3 = this.l.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.l.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    public final void m() {
        this.h = false;
        this.D.clear();
        this.C.clear();
    }

    public void m0(Fragment fragment) {
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            synchronized (this.j) {
                this.j.remove(fragment);
            }
            if (b0(fragment)) {
                this.x = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
        }
    }

    public void n(qb qbVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            qbVar.m(z3);
        } else {
            qbVar.l();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(qbVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            ic.p(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z3) {
            h0(this.s, true);
        }
        for (Fragment fragment : this.k.values()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && qbVar.n(fragment.mContainerId)) {
                float f2 = fragment.mPostponedAlpha;
                if (f2 > 0.0f) {
                    fragment.mView.setAlpha(f2);
                }
                if (z3) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    public final void n0(ArrayList<qb> arrayList, ArrayList<Boolean> arrayList2) throws Resources.NotFoundException {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        X(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).q) {
                if (i3 != i2) {
                    W(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).q) {
                        i3++;
                    }
                }
                W(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            W(arrayList, arrayList2, i3, size);
        }
    }

    public void o(Fragment fragment) {
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            synchronized (this.j) {
                this.j.remove(fragment);
            }
            if (b0(fragment)) {
                this.x = true;
            }
            fragment.mAdded = false;
        }
    }

    public void o0(Fragment fragment) {
        if (e()) {
            return;
        }
        this.I.b.remove(fragment);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        String str2 = attributeValue;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (str2 != null) {
            ClassLoader classLoader = context.getClassLoader();
            m4<String, Class<?>> m4Var = ub.a;
            try {
                zIsAssignableFrom = Fragment.class.isAssignableFrom(ub.b(classLoader, str2));
            } catch (ClassNotFoundException unused) {
                zIsAssignableFrom = false;
            }
            if (zIsAssignableFrom) {
                int id = view != null ? view.getId() : 0;
                if (id == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
                }
                Fragment fragmentB = resourceId != -1 ? b(resourceId) : null;
                if (fragmentB == null && string != null) {
                    fragmentB = c(string);
                }
                if (fragmentB == null && id != -1) {
                    fragmentB = b(id);
                }
                if (fragmentB == null) {
                    fragmentB = a0().a(context.getClassLoader(), str2);
                    fragmentB.mFromLayout = true;
                    fragmentB.mFragmentId = resourceId != 0 ? resourceId : id;
                    fragmentB.mContainerId = id;
                    fragmentB.mTag = string;
                    fragmentB.mInLayout = true;
                    fragmentB.mFragmentManager = this;
                    vb vbVar = this.t;
                    fragmentB.mHost = vbVar;
                    fragmentB.onInflate(vbVar.f, attributeSet, fragmentB.mSavedFragmentState);
                    h(fragmentB, true);
                } else {
                    if (fragmentB.mInLayout) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
                    }
                    fragmentB.mInLayout = true;
                    vb vbVar2 = this.t;
                    fragmentB.mHost = vbVar2;
                    fragmentB.onInflate(vbVar2.f, attributeSet, fragmentB.mSavedFragmentState);
                }
                Fragment fragment = fragmentB;
                int i2 = this.s;
                if (i2 >= 1 || !fragment.mFromLayout) {
                    i0(fragment, i2, 0, 0, false);
                } else {
                    i0(fragment, 1, 0, 0, false);
                }
                View view2 = fragment.mView;
                if (view2 == null) {
                    throw new IllegalStateException(jo.o("Fragment ", str2, " did not create a view."));
                }
                if (resourceId != 0) {
                    view2.setId(resourceId);
                }
                if (fragment.mView.getTag() == null) {
                    fragment.mView.setTag(string);
                }
                return fragment.mView;
            }
        }
        return null;
    }

    public void p(Configuration configuration) {
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            Fragment fragment = this.j.get(i2);
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public void p0(Parcelable parcelable) {
        FragmentState next;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.e == null) {
            return;
        }
        for (Fragment fragment : this.I.b) {
            Iterator<FragmentState> it = fragmentManagerState.e.iterator();
            while (true) {
                if (it.hasNext()) {
                    next = it.next();
                    if (next.f.equals(fragment.mWho)) {
                        break;
                    }
                } else {
                    next = null;
                    break;
                }
            }
            if (next == null) {
                i0(fragment, 1, 0, 0, false);
                fragment.mRemoving = true;
                i0(fragment, 0, 0, 0, false);
            } else {
                next.r = fragment;
                fragment.mSavedViewState = null;
                fragment.mBackStackNesting = 0;
                fragment.mInLayout = false;
                fragment.mAdded = false;
                Fragment fragment2 = fragment.mTarget;
                fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
                fragment.mTarget = null;
                Bundle bundle = next.q;
                if (bundle != null) {
                    bundle.setClassLoader(this.t.f.getClassLoader());
                    fragment.mSavedViewState = next.q.getSparseParcelableArray("android:view_state");
                    fragment.mSavedFragmentState = next.q;
                }
            }
        }
        this.k.clear();
        Iterator<FragmentState> it2 = fragmentManagerState.e.iterator();
        while (it2.hasNext()) {
            FragmentState next2 = it2.next();
            if (next2 != null) {
                ClassLoader classLoader = this.t.f.getClassLoader();
                ub ubVarA0 = a0();
                if (next2.r == null) {
                    Bundle bundle2 = next2.n;
                    if (bundle2 != null) {
                        bundle2.setClassLoader(classLoader);
                    }
                    Fragment fragmentA = ubVarA0.a(classLoader, next2.e);
                    next2.r = fragmentA;
                    fragmentA.setArguments(next2.n);
                    Bundle bundle3 = next2.q;
                    if (bundle3 != null) {
                        bundle3.setClassLoader(classLoader);
                        next2.r.mSavedFragmentState = next2.q;
                    } else {
                        next2.r.mSavedFragmentState = new Bundle();
                    }
                    Fragment fragment3 = next2.r;
                    fragment3.mWho = next2.f;
                    fragment3.mFromLayout = next2.g;
                    fragment3.mRestored = true;
                    fragment3.mFragmentId = next2.h;
                    fragment3.mContainerId = next2.i;
                    fragment3.mTag = next2.j;
                    fragment3.mRetainInstance = next2.k;
                    fragment3.mRemoving = next2.l;
                    fragment3.mDetached = next2.m;
                    fragment3.mHidden = next2.o;
                    fragment3.mMaxState = ad.b.values()[next2.p];
                }
                Fragment fragment4 = next2.r;
                fragment4.mFragmentManager = this;
                this.k.put(fragment4.mWho, fragment4);
                next2.r = null;
            }
        }
        this.j.clear();
        ArrayList<String> arrayList = fragmentManagerState.f;
        if (arrayList != null) {
            Iterator<String> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                String next3 = it3.next();
                Fragment fragment5 = this.k.get(next3);
                if (fragment5 == null) {
                    w0(new IllegalStateException(jo.o("No instantiated fragment for (", next3, ")")));
                    throw null;
                }
                fragment5.mAdded = true;
                if (this.j.contains(fragment5)) {
                    throw new IllegalStateException("Already added " + fragment5);
                }
                synchronized (this.j) {
                    this.j.add(fragment5);
                }
            }
        }
        if (fragmentManagerState.g != null) {
            this.l = new ArrayList<>(fragmentManagerState.g.length);
            int i2 = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.g;
                if (i2 >= backStackStateArr.length) {
                    break;
                }
                BackStackState backStackState = backStackStateArr[i2];
                Objects.requireNonNull(backStackState);
                qb qbVar = new qb(this);
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    int[] iArr = backStackState.e;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    dc.a aVar = new dc.a();
                    int i5 = i3 + 1;
                    aVar.a = iArr[i3];
                    String str = backStackState.f.get(i4);
                    if (str != null) {
                        aVar.b = this.k.get(str);
                    } else {
                        aVar.b = null;
                    }
                    aVar.g = ad.b.values()[backStackState.g[i4]];
                    aVar.h = ad.b.values()[backStackState.h[i4]];
                    int[] iArr2 = backStackState.e;
                    int i6 = i5 + 1;
                    int i7 = iArr2[i5];
                    aVar.c = i7;
                    int i8 = i6 + 1;
                    int i9 = iArr2[i6];
                    aVar.d = i9;
                    int i10 = i8 + 1;
                    int i11 = iArr2[i8];
                    aVar.e = i11;
                    int i12 = iArr2[i10];
                    aVar.f = i12;
                    qbVar.b = i7;
                    qbVar.c = i9;
                    qbVar.d = i11;
                    qbVar.e = i12;
                    qbVar.b(aVar);
                    i4++;
                    i3 = i10 + 1;
                }
                qbVar.f = backStackState.i;
                qbVar.g = backStackState.j;
                qbVar.j = backStackState.k;
                qbVar.t = backStackState.l;
                qbVar.h = true;
                qbVar.k = backStackState.m;
                qbVar.l = backStackState.n;
                qbVar.m = backStackState.o;
                qbVar.n = backStackState.p;
                qbVar.o = backStackState.q;
                qbVar.p = backStackState.r;
                qbVar.q = backStackState.s;
                qbVar.i(1);
                this.l.add(qbVar);
                int i13 = qbVar.t;
                if (i13 >= 0) {
                    synchronized (this) {
                        if (this.p == null) {
                            this.p = new ArrayList<>();
                        }
                        int size = this.p.size();
                        if (i13 < size) {
                            this.p.set(i13, qbVar);
                        } else {
                            while (size < i13) {
                                this.p.add(null);
                                if (this.q == null) {
                                    this.q = new ArrayList<>();
                                }
                                this.q.add(Integer.valueOf(size));
                                size++;
                            }
                            this.p.add(qbVar);
                        }
                    }
                }
                i2++;
            }
        } else {
            this.l = null;
        }
        String str2 = fragmentManagerState.h;
        if (str2 != null) {
            Fragment fragment6 = this.k.get(str2);
            this.w = fragment6;
            M(fragment6);
        }
        this.i = fragmentManagerState.i;
    }

    public boolean q(MenuItem menuItem) {
        if (this.s < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            Fragment fragment = this.j.get(i2);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public Parcelable q0() {
        BackStackState[] backStackStateArr;
        ArrayList<String> arrayList;
        int size;
        Bundle bundle;
        Z();
        Iterator<Fragment> it = this.k.values().iterator();
        while (true) {
            backStackStateArr = null;
            if (!it.hasNext()) {
                break;
            }
            Fragment next = it.next();
            if (next != null) {
                if (next.getAnimatingAway() != null) {
                    int stateAfterAnimating = next.getStateAfterAnimating();
                    View animatingAway = next.getAnimatingAway();
                    Animation animation = animatingAway.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        animatingAway.clearAnimation();
                    }
                    next.setAnimatingAway(null);
                    i0(next, stateAfterAnimating, 0, 0, false);
                } else if (next.getAnimator() != null) {
                    next.getAnimator().end();
                }
            }
        }
        U();
        this.y = true;
        if (this.k.isEmpty()) {
            return null;
        }
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(this.k.size());
        boolean z = false;
        for (Fragment fragment : this.k.values()) {
            if (fragment != null) {
                if (fragment.mFragmentManager != this) {
                    w0(new IllegalStateException(jo.k("Failure saving state: active ", fragment, " was removed from the FragmentManager")));
                    throw null;
                }
                FragmentState fragmentState = new FragmentState(fragment);
                arrayList2.add(fragmentState);
                if (fragment.mState <= 0 || fragmentState.q != null) {
                    fragmentState.q = fragment.mSavedFragmentState;
                } else {
                    if (this.F == null) {
                        this.F = new Bundle();
                    }
                    fragment.performSaveInstanceState(this.F);
                    F(fragment, this.F, false);
                    if (this.F.isEmpty()) {
                        bundle = null;
                    } else {
                        bundle = this.F;
                        this.F = null;
                    }
                    if (fragment.mView != null) {
                        r0(fragment);
                    }
                    if (fragment.mSavedViewState != null) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
                    }
                    if (!fragment.mUserVisibleHint) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
                    }
                    fragmentState.q = bundle;
                    String str = fragment.mTargetWho;
                    if (str != null) {
                        Fragment fragment2 = this.k.get(str);
                        if (fragment2 == null) {
                            w0(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTargetWho));
                            throw null;
                        }
                        if (fragmentState.q == null) {
                            fragmentState.q = new Bundle();
                        }
                        Bundle bundle2 = fragmentState.q;
                        if (fragment2.mFragmentManager != this) {
                            w0(new IllegalStateException(jo.k("Fragment ", fragment2, " is not currently in the FragmentManager")));
                            throw null;
                        }
                        bundle2.putString("android:target_state", fragment2.mWho);
                        int i2 = fragment.mTargetRequestCode;
                        if (i2 != 0) {
                            fragmentState.q.putInt("android:target_req_state", i2);
                        }
                    }
                }
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        int size2 = this.j.size();
        if (size2 > 0) {
            arrayList = new ArrayList<>(size2);
            Iterator<Fragment> it2 = this.j.iterator();
            while (it2.hasNext()) {
                Fragment next2 = it2.next();
                arrayList.add(next2.mWho);
                if (next2.mFragmentManager != this) {
                    w0(new IllegalStateException(jo.k("Failure saving state: active ", next2, " was removed from the FragmentManager")));
                    throw null;
                }
            }
        } else {
            arrayList = null;
        }
        ArrayList<qb> arrayList3 = this.l;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i3 = 0; i3 < size; i3++) {
                backStackStateArr[i3] = new BackStackState(this.l.get(i3));
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.e = arrayList2;
        fragmentManagerState.f = arrayList;
        fragmentManagerState.g = backStackStateArr;
        Fragment fragment3 = this.w;
        if (fragment3 != null) {
            fragmentManagerState.h = fragment3.mWho;
        }
        fragmentManagerState.i = this.i;
        return fragmentManagerState;
    }

    public void r() {
        this.y = false;
        this.z = false;
        P(1);
    }

    public void r0(Fragment fragment) {
        if (fragment.mInnerView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = this.G;
        if (sparseArray == null) {
            this.G = new SparseArray<>();
        } else {
            sparseArray.clear();
        }
        fragment.mInnerView.saveHierarchyState(this.G);
        if (this.G.size() > 0) {
            fragment.mSavedViewState = this.G;
            this.G = null;
        }
    }

    public boolean s(Menu menu, MenuInflater menuInflater) {
        if (this.s < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            Fragment fragment = this.j.get(i2);
            if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.m != null) {
            for (int i3 = 0; i3 < this.m.size(); i3++) {
                Fragment fragment2 = this.m.get(i3);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.m = arrayList;
        return z;
    }

    public void s0() {
        synchronized (this) {
            ArrayList<j> arrayList = this.H;
            boolean z = false;
            boolean z2 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            ArrayList<h> arrayList2 = this.g;
            if (arrayList2 != null && arrayList2.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.t.g.removeCallbacks(this.J);
                this.t.g.post(this.J);
                x0();
            }
        }
    }

    public void t() {
        this.A = true;
        U();
        P(0);
        this.t = null;
        this.u = null;
        this.v = null;
        if (this.n != null) {
            Iterator<r> it = this.o.b.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.n = null;
        }
    }

    public void t0(Fragment fragment, ad.b bVar) {
        if (this.k.get(fragment.mWho) == fragment && (fragment.mHost == null || fragment.getFragmentManager() == this)) {
            fragment.mMaxState = bVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public String toString() {
        StringBuilder sbW = jo.w(128, "FragmentManager{");
        sbW.append(Integer.toHexString(System.identityHashCode(this)));
        sbW.append(" in ");
        Fragment fragment = this.v;
        if (fragment != null) {
            d0.h.e(fragment, sbW);
        } else {
            d0.h.e(this.t, sbW);
        }
        sbW.append("}}");
        return sbW.toString();
    }

    public void u() {
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            Fragment fragment = this.j.get(i2);
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    public void u0(Fragment fragment) {
        if (fragment == null || (this.k.get(fragment.mWho) == fragment && (fragment.mHost == null || fragment.getFragmentManager() == this))) {
            Fragment fragment2 = this.w;
            this.w = fragment;
            M(fragment2);
            M(this.w);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public void v(boolean z) {
        for (int size = this.j.size() - 1; size >= 0; size--) {
            Fragment fragment = this.j.get(size);
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    public void v0() {
        for (Fragment fragment : this.k.values()) {
            if (fragment != null) {
                k0(fragment);
            }
        }
    }

    public void w(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).w(fragment, bundle, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public final void w0(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new r9("FragmentManager"));
        vb vbVar = this.t;
        if (vbVar != null) {
            try {
                vbVar.e("  ", null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
                throw runtimeException;
            }
        }
        try {
            R("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e3) {
            Log.e("FragmentManager", "Failed dumping state", e3);
            throw runtimeException;
        }
    }

    public void x(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).x(fragment, context, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public final void x0() {
        ArrayList<h> arrayList = this.g;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.o.a = true;
            return;
        }
        s sVar = this.o;
        ArrayList<qb> arrayList2 = this.l;
        sVar.a = (arrayList2 != null ? arrayList2.size() : 0) > 0 && c0(this.v);
    }

    public void y(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).y(fragment, bundle, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public void z(Fragment fragment, boolean z) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            wb fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof xb) {
                ((xb) fragmentManager).z(fragment, true);
            }
        }
        Iterator<f> it = this.r.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!z) {
                Objects.requireNonNull(next);
                throw null;
            }
            Objects.requireNonNull(next);
        }
    }

    public static class d {
        public final Animation a;
        public final Animator b;

        public d(Animation animation) {
            this.a = animation;
            this.b = null;
        }

        public d(Animator animator) {
            this.a = null;
            this.b = animator;
        }
    }

    public static class e extends AnimationSet implements Runnable {
        public final ViewGroup e;
        public final View f;
        public boolean g;
        public boolean h;
        public boolean i;

        public e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.i = true;
            this.e = viewGroup;
            this.f = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.i = true;
            if (this.g) {
                return !this.h;
            }
            if (!super.getTransformation(j, transformation)) {
                this.g = true;
                fa.a(this.e, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.g || !this.i) {
                this.e.endViewTransition(this.f);
                this.h = true;
            } else {
                this.i = false;
                this.e.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.i = true;
            if (this.g) {
                return !this.h;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.g = true;
                fa.a(this.e, this);
            }
            return true;
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
