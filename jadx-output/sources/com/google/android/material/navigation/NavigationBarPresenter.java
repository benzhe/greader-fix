package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ParcelableSparseArray;
import defpackage.j1;
import defpackage.l1;
import defpackage.p1;
import defpackage.u1;
import defpackage.uh;

/* loaded from: classes.dex */
public class NavigationBarPresenter implements p1 {
    public j1 e;
    public NavigationBarMenuView f;
    public boolean g = false;
    public int h;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int e;
        public ParcelableSparseArray f;

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

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.e);
            parcel.writeParcelable(this.f, 0);
        }

        public SavedState(Parcel parcel) {
            this.e = parcel.readInt();
            this.f = (ParcelableSparseArray) parcel.readParcelable(SavedState.class.getClassLoader());
        }
    }

    @Override // defpackage.p1
    public void b(j1 j1Var, boolean z) {
    }

    @Override // defpackage.p1
    public int n() {
        return this.h;
    }

    @Override // defpackage.p1
    public void o(boolean z) throws Resources.NotFoundException {
        if (this.g) {
            return;
        }
        if (z) {
            this.f.a();
            return;
        }
        NavigationBarMenuView navigationBarMenuView = this.f;
        j1 j1Var = navigationBarMenuView.w;
        if (j1Var == null || navigationBarMenuView.j == null) {
            return;
        }
        int size = j1Var.size();
        if (size != navigationBarMenuView.j.length) {
            navigationBarMenuView.a();
            return;
        }
        int i = navigationBarMenuView.k;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = navigationBarMenuView.w.getItem(i2);
            if (item.isChecked()) {
                navigationBarMenuView.k = item.getItemId();
                navigationBarMenuView.l = i2;
            }
        }
        if (i != navigationBarMenuView.k) {
            uh.a(navigationBarMenuView, navigationBarMenuView.e);
        }
        boolean zE = navigationBarMenuView.e(navigationBarMenuView.i, navigationBarMenuView.w.l().size());
        for (int i3 = 0; i3 < size; i3++) {
            navigationBarMenuView.v.g = true;
            navigationBarMenuView.j[i3].setLabelVisibilityMode(navigationBarMenuView.i);
            navigationBarMenuView.j[i3].setShifting(zE);
            navigationBarMenuView.j[i3].d((l1) navigationBarMenuView.w.getItem(i3), 0);
            navigationBarMenuView.v.g = false;
        }
    }

    @Override // defpackage.p1
    public boolean p() {
        return false;
    }

    @Override // defpackage.p1
    public boolean q(j1 j1Var, l1 l1Var) {
        return false;
    }

    @Override // defpackage.p1
    public boolean r(j1 j1Var, l1 l1Var) {
        return false;
    }

    @Override // defpackage.p1
    public void t(Context context, j1 j1Var) {
        this.e = j1Var;
        this.f.w = j1Var;
    }

    @Override // defpackage.p1
    public void u(Parcelable parcelable) throws Resources.NotFoundException {
        if (parcelable instanceof SavedState) {
            NavigationBarMenuView navigationBarMenuView = this.f;
            SavedState savedState = (SavedState) parcelable;
            int i = savedState.e;
            int size = navigationBarMenuView.w.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                MenuItem item = navigationBarMenuView.w.getItem(i2);
                if (i == item.getItemId()) {
                    navigationBarMenuView.k = i;
                    navigationBarMenuView.l = i2;
                    item.setChecked(true);
                    break;
                }
                i2++;
            }
            Context context = this.f.getContext();
            ParcelableSparseArray parcelableSparseArray = savedState.f;
            SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
            for (int i3 = 0; i3 < parcelableSparseArray.size(); i3++) {
                int iKeyAt = parcelableSparseArray.keyAt(i3);
                BadgeDrawable.SavedState savedState2 = (BadgeDrawable.SavedState) parcelableSparseArray.valueAt(i3);
                if (savedState2 == null) {
                    throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
                }
                BadgeDrawable badgeDrawable = new BadgeDrawable(context);
                badgeDrawable.j(savedState2.i);
                int i4 = savedState2.h;
                if (i4 != -1) {
                    badgeDrawable.k(i4);
                }
                badgeDrawable.g(savedState2.e);
                badgeDrawable.i(savedState2.f);
                badgeDrawable.h(savedState2.m);
                badgeDrawable.l.o = savedState2.o;
                badgeDrawable.m();
                badgeDrawable.l.p = savedState2.p;
                badgeDrawable.m();
                boolean z = savedState2.n;
                badgeDrawable.setVisible(z, false);
                badgeDrawable.l.n = z;
                sparseArray.put(iKeyAt, badgeDrawable);
            }
            this.f.setBadgeDrawables(sparseArray);
        }
    }

    @Override // defpackage.p1
    public boolean v(u1 u1Var) {
        return false;
    }

    @Override // defpackage.p1
    public Parcelable w() {
        SavedState savedState = new SavedState();
        savedState.e = this.f.getSelectedItemId();
        SparseArray<BadgeDrawable> badgeDrawables = this.f.getBadgeDrawables();
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < badgeDrawables.size(); i++) {
            int iKeyAt = badgeDrawables.keyAt(i);
            BadgeDrawable badgeDrawableValueAt = badgeDrawables.valueAt(i);
            if (badgeDrawableValueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            parcelableSparseArray.put(iKeyAt, badgeDrawableValueAt.l);
        }
        savedState.f = parcelableSparseArray;
        return savedState;
    }
}
