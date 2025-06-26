package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import defpackage.dc;
import defpackage.jo;
import defpackage.wb;
import java.util.ArrayList;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

@Deprecated
/* loaded from: classes.dex */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {
    public final ArrayList<a> e;
    public FrameLayout f;
    public Context g;
    public wb h;
    public int i;
    public TabHost.OnTabChangeListener j;
    public boolean k;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public String e;

        public static class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("FragmentTabHost.SavedState{");
            sbZ.append(Integer.toHexString(System.identityHashCode(this)));
            sbZ.append(" curTab=");
            return jo.s(sbZ, this.e, StringSubstitutor.DEFAULT_VAR_END);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.e);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.e = parcel.readString();
        }
    }

    public static final class a {
        public Fragment a;
    }

    @Deprecated
    public FragmentTabHost(Context context) {
        super(context, null);
        this.e = new ArrayList<>();
        d(context, null);
    }

    public final dc a(String str, dc dcVar) {
        if (this.e.size() <= 0) {
            return null;
        }
        Objects.requireNonNull(this.e.get(0));
        throw null;
    }

    public final void b() {
        if (this.f == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.i);
            this.f = frameLayout;
            if (frameLayout != null) {
                return;
            }
            StringBuilder sbZ = jo.z("No tab content FrameLayout found for id ");
            sbZ.append(this.i);
            throw new IllegalStateException(sbZ.toString());
        }
    }

    public final void c(Context context) {
        if (findViewById(R.id.tabs) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(R.id.tabs);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f = frameLayout2;
            frameLayout2.setId(this.i);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    public final void d(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.i = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.e.get(i);
            wb wbVar = this.h;
            Objects.requireNonNull(aVar);
            Fragment fragmentC = wbVar.c(null);
            aVar.a = fragmentC;
            if (fragmentC != null && !fragmentC.isDetached()) {
                throw null;
            }
        }
        this.k = true;
        dc dcVarA = a(currentTabTag, null);
        if (dcVarA != null) {
            dcVarA.c();
            this.h.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.k = false;
    }

    @Override // android.view.View
    @Deprecated
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.e);
    }

    @Override // android.view.View
    @Deprecated
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.e = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(String str) {
        dc dcVarA;
        if (this.k && (dcVarA = a(str, null)) != null) {
            dcVarA.c();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.j;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.j = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(Context context, wb wbVar) {
        c(context);
        super.setup();
        this.g = context;
        this.h = wbVar;
        b();
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new ArrayList<>();
        d(context, attributeSet);
    }

    @Deprecated
    public void setup(Context context, wb wbVar, int i) {
        c(context);
        super.setup();
        this.g = context;
        this.h = wbVar;
        this.i = i;
        b();
        this.f.setId(i);
        if (getId() == -1) {
            setId(R.id.tabhost);
        }
    }
}
