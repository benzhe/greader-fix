package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.LiveData;
import defpackage.ad;
import defpackage.bc;
import defpackage.bd;
import defpackage.d0;
import defpackage.dd;
import defpackage.ed;
import defpackage.id;
import defpackage.jo;
import defpackage.oc;
import defpackage.qc;
import defpackage.qd;
import defpackage.rd;
import defpackage.sb;
import defpackage.sd;
import defpackage.sg;
import defpackage.t7;
import defpackage.td;
import defpackage.tg;
import defpackage.ub;
import defpackage.ug;
import defpackage.vb;
import defpackage.wb;
import defpackage.xb;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, dd, rd, ug {
    public static final int ACTIVITY_CREATED = 2;
    public static final int CREATED = 1;
    public static final int INITIALIZING = 0;
    public static final int RESUMED = 4;
    public static final int STARTED = 3;
    public static final Object USE_DEFAULT_TRANSITION = new Object();
    public boolean mAdded;
    public d mAnimationInfo;
    public Bundle mArguments;
    public int mBackStackNesting;
    private boolean mCalled;
    public xb mChildFragmentManager;
    public ViewGroup mContainer;
    public int mContainerId;
    private int mContentLayoutId;
    public boolean mDeferStart;
    public boolean mDetached;
    public int mFragmentId;
    public xb mFragmentManager;
    public boolean mFromLayout;
    public boolean mHasMenu;
    public boolean mHidden;
    public boolean mHiddenChanged;
    public vb mHost;
    public boolean mInLayout;
    public View mInnerView;
    public boolean mIsCreated;
    public boolean mIsNewlyAdded;
    private Boolean mIsPrimaryNavigationFragment;
    public LayoutInflater mLayoutInflater;
    public ed mLifecycleRegistry;
    public ad.b mMaxState;
    public boolean mMenuVisible;
    public Fragment mParentFragment;
    public boolean mPerformedCreateView;
    public float mPostponedAlpha;
    public Runnable mPostponedDurationRunnable;
    public boolean mRemoving;
    public boolean mRestored;
    public boolean mRetainInstance;
    public boolean mRetainInstanceChangedWhileDetached;
    public Bundle mSavedFragmentState;
    public tg mSavedStateRegistryController;
    public Boolean mSavedUserVisibleHint;
    public SparseArray<Parcelable> mSavedViewState;
    public int mState;
    public String mTag;
    public Fragment mTarget;
    public int mTargetRequestCode;
    public String mTargetWho;
    public boolean mUserVisibleHint;
    public View mView;
    public oc mViewLifecycleOwner;
    public id<dd> mViewLifecycleOwnerLiveData;
    public String mWho;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public final Bundle e;

        public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle = parcel.readBundle();
            this.e = bundle;
            if (classLoader == null || bundle == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.e);
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.callStartTransitionListener();
        }
    }

    public class c extends sb {
        public c() {
        }

        @Override // defpackage.sb
        public View a(int i) {
            View view = Fragment.this.mView;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + this + " does not have a view");
        }

        @Override // defpackage.sb
        public boolean c() {
            return Fragment.this.mView != null;
        }
    }

    public static class d {
        public View a;
        public Animator b;
        public int c;
        public int d;
        public int e;
        public int f;
        public Object g = null;
        public Object h;
        public Object i;
        public Object j;
        public Object k;
        public Object l;
        public Boolean m;
        public Boolean n;
        public boolean o;
        public f p;
        public boolean q;

        public d() {
            Object obj = Fragment.USE_DEFAULT_TRANSITION;
            this.h = obj;
            this.i = null;
            this.j = obj;
            this.k = null;
            this.l = obj;
        }
    }

    public static class e extends RuntimeException {
        public e(String str, Exception exc) {
            super(str, exc);
        }
    }

    public interface f {
    }

    public Fragment() {
        this.mState = 0;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new xb();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new a();
        this.mMaxState = ad.b.RESUMED;
        this.mViewLifecycleOwnerLiveData = new id<>();
        initLifecycle();
    }

    private d ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new d();
        }
        return this.mAnimationInfo;
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new ed(this);
        this.mSavedStateRegistryController = new tg(this);
        this.mLifecycleRegistry.a(new bd() { // from class: androidx.fragment.app.Fragment.2
            @Override // defpackage.bd
            public void c(dd ddVar, ad.a aVar) {
                View view;
                if (aVar != ad.a.ON_STOP || (view = Fragment.this.mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    public void callStartTransitionListener() {
        d dVar = this.mAnimationInfo;
        Object obj = null;
        if (dVar != null) {
            dVar.o = false;
            Object obj2 = dVar.p;
            dVar.p = null;
            obj = obj2;
        }
        if (obj != null) {
            xb.j jVar = (xb.j) obj;
            int i = jVar.c - 1;
            jVar.c = i;
            if (i != 0) {
                return;
            }
            jVar.b.r.s0();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (this.mInnerView != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(getStateAfterAnimating());
        }
        if (getContext() != null) {
            sd.b(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.R(jo.n(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.Y(str);
    }

    public final FragmentActivity getActivity() {
        vb vbVar = this.mHost;
        if (vbVar == null) {
            return null;
        }
        return (FragmentActivity) vbVar.e;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        d dVar = this.mAnimationInfo;
        if (dVar == null || (bool = dVar.n) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        d dVar = this.mAnimationInfo;
        if (dVar == null || (bool = dVar.m) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.a;
    }

    public Animator getAnimator() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.b;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final wb getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(jo.k("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        vb vbVar = this.mHost;
        if (vbVar == null) {
            return null;
        }
        return vbVar.f;
    }

    public Object getEnterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.g;
    }

    public t7 getEnterTransitionCallback() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Objects.requireNonNull(dVar);
        return null;
    }

    public Object getExitTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.i;
    }

    public t7 getExitTransitionCallback() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Objects.requireNonNull(dVar);
        return null;
    }

    public final wb getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        vb vbVar = this.mHost;
        if (vbVar == null) {
            return null;
        }
        return vbVar.f();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // defpackage.dd
    public ad getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public sd getLoaderManager() {
        return sd.b(this);
    }

    public int getNextAnim() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.d;
    }

    public int getNextTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.e;
    }

    public int getNextTransitionStyle() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.f;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public Object getReenterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.j;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.h;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // defpackage.ug
    public final sg getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b;
    }

    public Object getSharedElementEnterTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        return dVar.k;
    }

    public Object getSharedElementReturnTransition() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.l;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public int getStateAfterAnimating() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return 0;
        }
        return dVar.c;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getTag() {
        return this.mTag;
    }

    public final Fragment getTargetFragment() {
        String str;
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        xb xbVar = this.mFragmentManager;
        if (xbVar == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return xbVar.k.get(str);
    }

    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public dd getViewLifecycleOwner() {
        oc ocVar = this.mViewLifecycleOwner;
        if (ocVar != null) {
            return ocVar;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<dd> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // defpackage.rd
    public qd getViewModelStore() {
        xb xbVar = this.mFragmentManager;
        if (xbVar == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        bc bcVar = xbVar.I;
        qd qdVar = bcVar.d.get(this.mWho);
        if (qdVar != null) {
            return qdVar;
        }
        qd qdVar2 = new qd();
        bcVar.d.put(this.mWho, qdVar2);
        return qdVar2;
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        initLifecycle();
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new xb();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    public boolean isHideReplaced() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return false;
        }
        return dVar.q;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        return this.mMenuVisible;
    }

    public boolean isPostponed() {
        d dVar = this.mAnimationInfo;
        if (dVar == null) {
            return false;
        }
        return dVar.o;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 4;
    }

    public final boolean isStateSaved() {
        xb xbVar = this.mFragmentManager;
        if (xbVar == null) {
            return false;
        }
        return xbVar.e();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.j0();
    }

    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        vb vbVar = this.mHost;
        Activity activity = vbVar == null ? null : vbVar.e;
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        xb xbVar = this.mChildFragmentManager;
        if (xbVar.s >= 1) {
            return;
        }
        xbVar.r();
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.mContentLayoutId;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        vb vbVar = this.mHost;
        Activity activity = vbVar == null ? null : vbVar.e;
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.j0();
        this.mState = 2;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        xb xbVar = this.mChildFragmentManager;
        xbVar.y = false;
        xbVar.z = false;
        xbVar.P(2);
    }

    public void performAttach() {
        this.mChildFragmentManager.i(this.mHost, new c(), this);
        this.mCalled = false;
        onAttach(this.mHost.f);
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onAttach()"));
        }
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.p(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        return onContextItemSelected(menuItem) || this.mChildFragmentManager.q(menuItem);
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.j0();
        this.mState = 1;
        this.mCalled = false;
        this.mSavedStateRegistryController.a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.d(ad.a.ON_CREATE);
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        return z | this.mChildFragmentManager.s(menu, menuInflater);
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.j0();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new oc();
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        if (viewOnCreateView == null) {
            if (this.mViewLifecycleOwner.e != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
        } else {
            oc ocVar = this.mViewLifecycleOwner;
            if (ocVar.e == null) {
                ocVar.e = new ed(ocVar);
            }
            this.mViewLifecycleOwnerLiveData.h(this.mViewLifecycleOwner);
        }
    }

    public void performDestroy() {
        this.mChildFragmentManager.t();
        this.mLifecycleRegistry.d(ad.a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.P(1);
        if (this.mView != null) {
            oc ocVar = this.mViewLifecycleOwner;
            ocVar.e.d(ad.a.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        td.c cVar = ((td) sd.b(this)).b;
        int iJ = cVar.b.j();
        for (int i = 0; i < iJ; i++) {
            cVar.b.k(i).k();
        }
        this.mPerformedCreateView = false;
    }

    public void performDetach() {
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onDetach()"));
        }
        xb xbVar = this.mChildFragmentManager;
        if (xbVar.A) {
            return;
        }
        xbVar.t();
        this.mChildFragmentManager = new xb();
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.u();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.v(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        return (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) || this.mChildFragmentManager.K(menuItem);
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.L(menu);
    }

    public void performPause() {
        this.mChildFragmentManager.P(3);
        if (this.mView != null) {
            oc ocVar = this.mViewLifecycleOwner;
            ocVar.e.d(ad.a.ON_PAUSE);
        }
        this.mLifecycleRegistry.d(ad.a.ON_PAUSE);
        this.mState = 3;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.N(z);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        return z | this.mChildFragmentManager.O(menu);
    }

    public void performPrimaryNavigationFragmentChanged() {
        boolean zC0 = this.mFragmentManager.c0(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zC0) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(zC0);
            onPrimaryNavigationFragmentChanged(zC0);
            xb xbVar = this.mChildFragmentManager;
            xbVar.x0();
            xbVar.M(xbVar.w);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.j0();
        this.mChildFragmentManager.U();
        this.mState = 4;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onResume()"));
        }
        ed edVar = this.mLifecycleRegistry;
        ad.a aVar = ad.a.ON_RESUME;
        edVar.d(aVar);
        if (this.mView != null) {
            this.mViewLifecycleOwner.e.d(aVar);
        }
        xb xbVar = this.mChildFragmentManager;
        xbVar.y = false;
        xbVar.z = false;
        xbVar.P(4);
        this.mChildFragmentManager.U();
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        Parcelable parcelableQ0 = this.mChildFragmentManager.q0();
        if (parcelableQ0 != null) {
            bundle.putParcelable("android:support:fragments", parcelableQ0);
        }
    }

    public void performStart() {
        this.mChildFragmentManager.j0();
        this.mChildFragmentManager.U();
        this.mState = 3;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onStart()"));
        }
        ed edVar = this.mLifecycleRegistry;
        ad.a aVar = ad.a.ON_START;
        edVar.d(aVar);
        if (this.mView != null) {
            this.mViewLifecycleOwner.e.d(aVar);
        }
        xb xbVar = this.mChildFragmentManager;
        xbVar.y = false;
        xbVar.z = false;
        xbVar.P(3);
    }

    public void performStop() {
        xb xbVar = this.mChildFragmentManager;
        xbVar.z = true;
        xbVar.P(2);
        if (this.mView != null) {
            oc ocVar = this.mViewLifecycleOwner;
            ocVar.e.d(ad.a.ON_STOP);
        }
        this.mLifecycleRegistry.d(ad.a.ON_STOP);
        this.mState = 2;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().o = true;
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final void requestPermissions(String[] strArr, int i) {
        vb vbVar = this.mHost;
        if (vbVar == null) {
            throw new IllegalStateException(jo.k("Fragment ", this, " not attached to Activity"));
        }
        vbVar.j(this, strArr, i);
    }

    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(jo.k("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(jo.k("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(jo.k("Fragment ", this, " not attached to a context."));
    }

    public final wb requireFragmentManager() {
        wb fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException(jo.k("Fragment ", this, " not associated with a fragment manager."));
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(jo.k("Fragment ", this, " not attached to a host."));
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(jo.k("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(jo.k("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.p0(parcelable);
        this.mChildFragmentManager.r();
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mInnerView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new qc(jo.k("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
        if (this.mView != null) {
            oc ocVar = this.mViewLifecycleOwner;
            ocVar.e.d(ad.a.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().n = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().m = Boolean.valueOf(z);
    }

    public void setAnimatingAway(View view) {
        ensureAnimationInfo().a = view;
    }

    public void setAnimator(Animator animator) {
        ensureAnimationInfo().b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(t7 t7Var) {
        Objects.requireNonNull(ensureAnimationInfo());
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().g = obj;
    }

    public void setExitSharedElementCallback(t7 t7Var) {
        Objects.requireNonNull(ensureAnimationInfo());
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().i = obj;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.o();
        }
    }

    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().q = z;
    }

    public void setInitialSavedState(SavedState savedState) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (savedState == null || (bundle = savedState.e) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.o();
            }
        }
    }

    public void setNextAnim(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo().d = i;
    }

    public void setNextTransition(int i, int i2) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0) {
            return;
        }
        ensureAnimationInfo();
        d dVar = this.mAnimationInfo;
        dVar.e = i;
        dVar.f = i2;
    }

    public void setOnStartEnterTransitionListener(f fVar) {
        ensureAnimationInfo();
        d dVar = this.mAnimationInfo;
        f fVar2 = dVar.p;
        if (fVar == fVar2) {
            return;
        }
        if (fVar != null && fVar2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (dVar.o) {
            dVar.p = fVar;
        }
        if (fVar != null) {
            ((xb.j) fVar).c++;
        }
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().j = obj;
    }

    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        xb xbVar = this.mFragmentManager;
        if (xbVar == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (!z) {
            xbVar.o0(this);
        } else {
            if (xbVar.e()) {
                return;
            }
            xbVar.I.b.add(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().h = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().k = obj;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().l = obj;
    }

    public void setStateAfterAnimating(int i) {
        ensureAnimationInfo().c = i;
    }

    public void setTargetFragment(Fragment fragment, int i) {
        wb fragmentManager = getFragmentManager();
        wb fragmentManager2 = fragment != null ? fragment.getFragmentManager() : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException(jo.k("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (Fragment targetFragment = fragment; targetFragment != null; targetFragment = targetFragment.getTargetFragment()) {
            if (targetFragment == this) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = fragment;
        } else {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 3 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            this.mFragmentManager.k0(this);
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 3 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        vb vbVar = this.mHost;
        if (vbVar != null) {
            return vbVar.l(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        vb vbVar = this.mHost;
        if (vbVar == null) {
            throw new IllegalStateException(jo.k("Fragment ", this, " not attached to Activity"));
        }
        vbVar.n(this, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void startPostponedEnterTransition() {
        xb xbVar = this.mFragmentManager;
        if (xbVar == null || xbVar.t == null) {
            ensureAnimationInfo().o = false;
        } else if (Looper.myLooper() != this.mFragmentManager.t.g.getLooper()) {
            this.mFragmentManager.t.g.postAtFrontOfQueue(new b());
        } else {
            callStartTransitionListener();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        d0.h.e(this, sb);
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")");
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(StringUtils.SPACE);
            sb.append(this.mTag);
        }
        sb.append('}');
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        try {
            Fragment fragmentNewInstance = ub.c(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragmentNewInstance.getClass().getClassLoader());
                fragmentNewInstance.setArguments(bundle);
            }
            return fragmentNewInstance;
        } catch (IllegalAccessException e2) {
            throw new e(jo.o("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (InstantiationException e3) {
            throw new e(jo.o("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (NoSuchMethodException e4) {
            throw new e(jo.o("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e4);
        } catch (InvocationTargetException e5) {
            throw new e(jo.o("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e5);
        }
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        ensureAnimationInfo().o = true;
        xb xbVar = this.mFragmentManager;
        Handler handler = xbVar != null ? xbVar.t.g : new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public void startActivity(Intent intent, Bundle bundle) {
        vb vbVar = this.mHost;
        if (vbVar == null) {
            throw new IllegalStateException(jo.k("Fragment ", this, " not attached to Activity"));
        }
        vbVar.m(this, intent, -1, bundle);
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        vb vbVar = this.mHost;
        if (vbVar == null) {
            throw new IllegalStateException(jo.k("Fragment ", this, " not attached to Activity"));
        }
        vbVar.m(this, intent, i, bundle);
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        vb vbVar = this.mHost;
        if (vbVar != null) {
            LayoutInflater layoutInflaterG = vbVar.g();
            xb xbVar = this.mChildFragmentManager;
            Objects.requireNonNull(xbVar);
            layoutInflaterG.setFactory2(xbVar);
            return layoutInflaterG;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public Fragment(int i) {
        this();
        this.mContentLayoutId = i;
    }
}
