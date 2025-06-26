package pl.droidsonroids.gif;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import defpackage.r78;

/* loaded from: classes2.dex */
public class GifViewSavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<GifViewSavedState> CREATOR = new a();
    public final long[][] e;

    public static class a implements Parcelable.Creator<GifViewSavedState> {
        @Override // android.os.Parcelable.Creator
        public GifViewSavedState createFromParcel(Parcel parcel) {
            return new GifViewSavedState(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        public GifViewSavedState[] newArray(int i) {
            return new GifViewSavedState[i];
        }
    }

    public GifViewSavedState(Parcelable parcelable, Drawable... drawableArr) {
        long[] savedState;
        super(parcelable);
        this.e = new long[drawableArr.length][];
        for (int i = 0; i < drawableArr.length; i++) {
            Drawable drawable = drawableArr[i];
            if (drawable instanceof r78) {
                long[][] jArr = this.e;
                GifInfoHandle gifInfoHandle = ((r78) drawable).k;
                synchronized (gifInfoHandle) {
                    savedState = GifInfoHandle.getSavedState(gifInfoHandle.a);
                }
                jArr[i] = savedState;
            } else {
                this.e[i] = null;
            }
        }
    }

    public void a(Drawable drawable, int i) {
        int iRestoreSavedState;
        long[][] jArr = this.e;
        if (jArr[i] == null || !(drawable instanceof r78)) {
            return;
        }
        r78 r78Var = (r78) drawable;
        GifInfoHandle gifInfoHandle = r78Var.k;
        long[] jArr2 = jArr[i];
        Bitmap bitmap = r78Var.j;
        synchronized (gifInfoHandle) {
            iRestoreSavedState = GifInfoHandle.restoreSavedState(gifInfoHandle.a, jArr2, bitmap);
        }
        r78Var.b(iRestoreSavedState);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.e.length);
        for (long[] jArr : this.e) {
            parcel.writeLongArray(jArr);
        }
    }

    public GifViewSavedState(Parcel parcel, a aVar) {
        super(parcel);
        this.e = new long[parcel.readInt()][];
        int i = 0;
        while (true) {
            long[][] jArr = this.e;
            if (i >= jArr.length) {
                return;
            }
            jArr[i] = parcel.createLongArray();
            i++;
        }
    }

    public GifViewSavedState(Parcelable parcelable, long[] jArr) {
        super(parcelable);
        this.e = new long[][]{jArr};
    }
}
