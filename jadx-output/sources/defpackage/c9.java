package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.noinnion.android.view.viewpager.FixedViewPager;
import java.util.Objects;

/* loaded from: classes.dex */
public class c9<T> implements Parcelable.ClassLoaderCreator<T> {
    public final d9<T> a;

    public c9(d9<T> d9Var) {
        this.a = d9Var;
    }

    @Override // android.os.Parcelable.Creator
    public T createFromParcel(Parcel parcel) {
        Objects.requireNonNull((FixedViewPager.SavedState.a) this.a);
        return (T) new FixedViewPager.SavedState(parcel, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Parcelable.Creator
    public T[] newArray(int i) {
        Objects.requireNonNull((FixedViewPager.SavedState.a) this.a);
        return (T[]) new FixedViewPager.SavedState[i];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
        Objects.requireNonNull((FixedViewPager.SavedState.a) this.a);
        return (T) new FixedViewPager.SavedState(parcel, classLoader);
    }
}
