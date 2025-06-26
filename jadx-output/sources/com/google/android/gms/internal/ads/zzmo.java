package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzmh;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class zzmo implements zzmh.zza {
    public final String e;

    public zzmo(String str) {
        Objects.requireNonNull(str);
        this.e = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
