package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.is0;
import defpackage.qo3;
import java.util.List;

/* loaded from: classes.dex */
public final class zzti extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzti> CREATOR = new qo3();
    public final String e;
    public final long f;
    public final String g;
    public final String h;
    public final String i;
    public final Bundle j;
    public final boolean k;
    public long l;
    public String m;
    public int n;

    public zzti(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2, String str5, int i) {
        this.e = str;
        this.f = j;
        this.g = str2 == null ? "" : str2;
        this.h = str3 == null ? "" : str3;
        this.i = str4 == null ? "" : str4;
        this.j = bundle == null ? new Bundle() : bundle;
        this.k = z;
        this.l = j2;
        this.m = str5;
        this.n = i;
    }

    public static zzti n(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(62);
                sb.append("Expected 2 path parts for namespace and id, found :");
                sb.append(size);
                is0.zzez(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean zEquals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long j = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzti(queryParameter, j, host, str, str2, bundle, zEquals, 0L, "", 0);
        } catch (NullPointerException | NumberFormatException e) {
            is0.zzd("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, this.e, false);
        long j = this.f;
        bi.r0(parcel, 3, 8);
        parcel.writeLong(j);
        bi.i0(parcel, 4, this.g, false);
        bi.i0(parcel, 5, this.h, false);
        bi.i0(parcel, 6, this.i, false);
        bi.c0(parcel, 7, this.j, false);
        boolean z = this.k;
        bi.r0(parcel, 8, 4);
        parcel.writeInt(z ? 1 : 0);
        long j2 = this.l;
        bi.r0(parcel, 9, 8);
        parcel.writeLong(j2);
        bi.i0(parcel, 10, this.m, false);
        int i2 = this.n;
        bi.r0(parcel, 11, 4);
        parcel.writeInt(i2);
        bi.t0(parcel, iM0);
    }
}
