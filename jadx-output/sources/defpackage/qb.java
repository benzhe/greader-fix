package defpackage;

import android.view.animation.Interpolator;
import androidx.fragment.app.Fragment;
import defpackage.ad;
import defpackage.dc;
import defpackage.xb;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class qb extends dc implements xb.h {
    public final xb r;
    public boolean s;
    public int t = -1;

    public qb(xb xbVar) {
        this.r = xbVar;
    }

    public static boolean p(dc.a aVar) {
        Fragment fragment = aVar.b;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    @Override // xb.h
    public boolean a(ArrayList<qb> arrayList, ArrayList<Boolean> arrayList2) {
        Interpolator interpolator = xb.K;
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.h) {
            return true;
        }
        xb xbVar = this.r;
        if (xbVar.l == null) {
            xbVar.l = new ArrayList<>();
        }
        xbVar.l.add(this);
        return true;
    }

    @Override // defpackage.dc
    public int c() {
        return j(false);
    }

    @Override // defpackage.dc
    public int d() {
        return j(true);
    }

    @Override // defpackage.dc
    public dc e(Fragment fragment) {
        xb xbVar = fragment.mFragmentManager;
        if (xbVar == null || xbVar == this.r) {
            b(new dc.a(6, fragment));
            return this;
        }
        StringBuilder sbZ = jo.z("Cannot detach Fragment attached to a different FragmentManager. Fragment ");
        sbZ.append(fragment.toString());
        sbZ.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(sbZ.toString());
    }

    @Override // defpackage.dc
    public void f(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            StringBuilder sbZ = jo.z("Fragment ");
            sbZ.append(cls.getCanonicalName());
            sbZ.append(" must be a public static class to be  properly recreated from instance state.");
            throw new IllegalStateException(sbZ.toString());
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't change tag of fragment ");
                sb.append(fragment);
                sb.append(": was ");
                throw new IllegalStateException(jo.t(sb, fragment.mTag, " now ", str));
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        b(new dc.a(i2, fragment));
        fragment.mFragmentManager = this.r;
    }

    @Override // defpackage.dc
    public dc h(Fragment fragment, ad.b bVar) {
        if (fragment.mFragmentManager != this.r) {
            StringBuilder sbZ = jo.z("Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            sbZ.append(this.r);
            throw new IllegalArgumentException(sbZ.toString());
        }
        ad.b bVar2 = ad.b.CREATED;
        if (bVar.compareTo(bVar2) >= 0) {
            b(new dc.a(10, fragment, bVar));
            return this;
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + bVar2);
    }

    public void i(int i) {
        if (this.h) {
            Interpolator interpolator = xb.K;
            int size = this.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = this.a.get(i2).b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    Interpolator interpolator2 = xb.K;
                }
            }
        }
    }

    public int j(boolean z) {
        int size;
        if (this.s) {
            throw new IllegalStateException("commit already called");
        }
        Interpolator interpolator = xb.K;
        this.s = true;
        if (this.h) {
            xb xbVar = this.r;
            synchronized (xbVar) {
                ArrayList<Integer> arrayList = xbVar.q;
                if (arrayList == null || arrayList.size() <= 0) {
                    if (xbVar.p == null) {
                        xbVar.p = new ArrayList<>();
                    }
                    size = xbVar.p.size();
                    xbVar.p.add(this);
                } else {
                    size = xbVar.q.remove(r2.size() - 1).intValue();
                    xbVar.p.set(size, this);
                }
            }
            this.t = size;
        } else {
            this.t = -1;
        }
        this.r.S(this, z);
        return this.t;
    }

    public void k(String str, PrintWriter printWriter, boolean z) {
        String string;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.j);
            printWriter.print(" mIndex=");
            printWriter.print(this.t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.s);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.g));
            }
            if (this.b != 0 || this.c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.c));
            }
            if (this.d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.k != 0 || this.l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.k));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.l);
            }
            if (this.m != 0 || this.n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.n);
            }
        }
        if (this.a.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            dc.a aVar = this.a.get(i);
            switch (aVar.a) {
                case 0:
                    string = "NULL";
                    break;
                case 1:
                    string = "ADD";
                    break;
                case 2:
                    string = "REPLACE";
                    break;
                case 3:
                    string = "REMOVE";
                    break;
                case 4:
                    string = "HIDE";
                    break;
                case 5:
                    string = "SHOW";
                    break;
                case 6:
                    string = "DETACH";
                    break;
                case 7:
                    string = "ATTACH";
                    break;
                case 8:
                    string = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    string = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    string = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    StringBuilder sbZ = jo.z("cmd=");
                    sbZ.append(aVar.a);
                    string = sbZ.toString();
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(string);
            printWriter.print(StringUtils.SPACE);
            printWriter.println(aVar.b);
            if (z) {
                if (aVar.c != 0 || aVar.d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.d));
                }
                if (aVar.e != 0 || aVar.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f));
                }
            }
        }
    }

    public void l() {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            dc.a aVar = this.a.get(i);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                fragment.setNextTransition(this.f, this.g);
            }
            switch (aVar.a) {
                case 1:
                    fragment.setNextAnim(aVar.c);
                    this.r.h(fragment, false);
                    break;
                case 2:
                default:
                    StringBuilder sbZ = jo.z("Unknown cmd: ");
                    sbZ.append(aVar.a);
                    throw new IllegalArgumentException(sbZ.toString());
                case 3:
                    fragment.setNextAnim(aVar.d);
                    this.r.m0(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.d);
                    Objects.requireNonNull(this.r);
                    if (!fragment.mHidden) {
                        fragment.mHidden = true;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        break;
                    }
                    break;
                case 5:
                    fragment.setNextAnim(aVar.c);
                    Objects.requireNonNull(this.r);
                    if (fragment.mHidden) {
                        fragment.mHidden = false;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        break;
                    }
                    break;
                case 6:
                    fragment.setNextAnim(aVar.d);
                    this.r.o(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.c);
                    this.r.j(fragment);
                    break;
                case 8:
                    this.r.u0(fragment);
                    break;
                case 9:
                    this.r.u0(null);
                    break;
                case 10:
                    this.r.t0(fragment, aVar.h);
                    break;
            }
            if (!this.q && aVar.a != 1 && fragment != null) {
                this.r.g0(fragment);
            }
        }
        if (this.q) {
            return;
        }
        xb xbVar = this.r;
        xbVar.h0(xbVar.s, true);
    }

    public void m(boolean z) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            dc.a aVar = this.a.get(size);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                int i = this.f;
                Interpolator interpolator = xb.K;
                fragment.setNextTransition(i != 4097 ? i != 4099 ? i != 8194 ? 0 : 4097 : 4099 : 8194, this.g);
            }
            switch (aVar.a) {
                case 1:
                    fragment.setNextAnim(aVar.f);
                    this.r.m0(fragment);
                    break;
                case 2:
                default:
                    StringBuilder sbZ = jo.z("Unknown cmd: ");
                    sbZ.append(aVar.a);
                    throw new IllegalArgumentException(sbZ.toString());
                case 3:
                    fragment.setNextAnim(aVar.e);
                    this.r.h(fragment, false);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.e);
                    Objects.requireNonNull(this.r);
                    if (fragment.mHidden) {
                        fragment.mHidden = false;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        break;
                    }
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f);
                    Objects.requireNonNull(this.r);
                    if (!fragment.mHidden) {
                        fragment.mHidden = true;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        break;
                    }
                    break;
                case 6:
                    fragment.setNextAnim(aVar.e);
                    this.r.j(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f);
                    this.r.o(fragment);
                    break;
                case 8:
                    this.r.u0(null);
                    break;
                case 9:
                    this.r.u0(fragment);
                    break;
                case 10:
                    this.r.t0(fragment, aVar.g);
                    break;
            }
            if (!this.q && aVar.a != 3 && fragment != null) {
                this.r.g0(fragment);
            }
        }
        if (this.q || !z) {
            return;
        }
        xb xbVar = this.r;
        xbVar.h0(xbVar.s, true);
    }

    public boolean n(int i) {
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.a.get(i2).b;
            int i3 = fragment != null ? fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    public boolean o(ArrayList<qb> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = this.a.get(i4).b;
            int i5 = fragment != null ? fragment.mContainerId : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    qb qbVar = arrayList.get(i6);
                    int size2 = qbVar.a.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        Fragment fragment2 = qbVar.a.get(i7).b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    public dc q(Fragment fragment) {
        xb xbVar = fragment.mFragmentManager;
        if (xbVar == null || xbVar == this.r) {
            b(new dc.a(3, fragment));
            return this;
        }
        StringBuilder sbZ = jo.z("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        sbZ.append(fragment.toString());
        sbZ.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(sbZ.toString());
    }

    public String toString() {
        StringBuilder sbW = jo.w(128, "BackStackEntry{");
        sbW.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.t >= 0) {
            sbW.append(" #");
            sbW.append(this.t);
        }
        if (this.j != null) {
            sbW.append(StringUtils.SPACE);
            sbW.append(this.j);
        }
        sbW.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbW.toString();
    }
}
