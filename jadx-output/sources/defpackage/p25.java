package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzaq;
import com.google.android.gms.measurement.internal.zzas;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes.dex */
public final class p25 extends my4 {
    public static final String[] g = {"firebase_", "google_", "ga_"};
    public static final String[] h = {"_err"};
    public SecureRandom c;
    public final AtomicLong d;
    public int e;
    public Integer f;

    public p25(rx4 rx4Var) {
        super(rx4Var);
        this.f = null;
        this.d = new AtomicLong(0L);
    }

    public static MessageDigest B() throws NoSuchAlgorithmException {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static long C(byte[] bArr) {
        Objects.requireNonNull(bArr, "null reference");
        int length = bArr.length;
        int i = 0;
        bi.l(length > 0);
        long j = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            j += (bArr[i2] & 255) << i;
            i += 8;
        }
        return j;
    }

    public static boolean D(Context context) {
        Objects.requireNonNull(context, "null reference");
        return Build.VERSION.SDK_INT >= 24 ? a0(context, "com.google.android.gms.measurement.AppMeasurementJobService") : a0(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    public static boolean F(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static boolean G(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static ArrayList<Bundle> W(List<zzaa> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzaa zzaaVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzaaVar.e);
            bundle.putString("origin", zzaaVar.f);
            bundle.putLong("creation_timestamp", zzaaVar.h);
            bundle.putString(InetAddressKeys.KEY_NAME, zzaaVar.g.f);
            c50.Z1(bundle, zzaaVar.g.n());
            bundle.putBoolean("active", zzaaVar.i);
            String str = zzaaVar.j;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzas zzasVar = zzaaVar.k;
            if (zzasVar != null) {
                bundle.putString("timed_out_event_name", zzasVar.e);
                zzaq zzaqVar = zzaaVar.k.f;
                if (zzaqVar != null) {
                    bundle.putBundle("timed_out_event_params", zzaqVar.M0());
                }
            }
            bundle.putLong("trigger_timeout", zzaaVar.l);
            zzas zzasVar2 = zzaaVar.m;
            if (zzasVar2 != null) {
                bundle.putString("triggered_event_name", zzasVar2.e);
                zzaq zzaqVar2 = zzaaVar.m.f;
                if (zzaqVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzaqVar2.M0());
                }
            }
            bundle.putLong("triggered_timestamp", zzaaVar.g.g);
            bundle.putLong("time_to_live", zzaaVar.n);
            zzas zzasVar3 = zzaaVar.o;
            if (zzasVar3 != null) {
                bundle.putString("expired_event_name", zzasVar3.e);
                zzaq zzaqVar3 = zzaaVar.o.f;
                if (zzaqVar3 != null) {
                    bundle.putBundle("expired_event_params", zzaqVar3.M0());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static final boolean X(Bundle bundle, int i) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    public static boolean a0(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean b0(String str, String[] strArr) {
        for (String str2 : strArr) {
            if (G(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean e0(String str) {
        bi.g(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public final void A(o25 o25Var, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        X(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        dc4.f.a().a();
        if (this.a.g.s(null, ew4.L0)) {
            o25Var.d(str, bundle);
            return;
        }
        rx4 rx4Var = this.a;
        c35 c35Var = rx4Var.f;
        rx4Var.s().A("auto", "_err", bundle);
    }

    public final boolean E(String str) {
        d();
        if (i20.a(this.a.a).a.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        this.a.a().m.b("Permission not granted", str);
        return false;
    }

    public final boolean H(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strG = this.a.g.g("debug.firebase.analytics.app", "");
        c35 c35Var = this.a.f;
        return strG.equals(str);
    }

    public final Bundle I(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objS = s(str, bundle.get(str));
                if (objS == null) {
                    this.a.a().k.b("Param value can't be null", this.a.u().q(str));
                } else {
                    z(bundle2, str, objS);
                }
            }
        }
        return bundle2;
    }

    public final zzas J(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2, boolean z3) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (k0(str2, z3) != 0) {
            this.a.a().f.b("Invalid conditional property event name", this.a.u().r(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle bundleT = t(str, str2, bundle2, Collections.singletonList("_o"), false);
        if (z) {
            bundleT = I(bundleT);
        }
        return new zzas(str2, new zzaq(bundleT), str3, j);
    }

    public final boolean K(Context context, String str) throws PackageManager.NameNotFoundException {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = i20.a(context).a.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            this.a.a().f.b("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.a.a().f.b("Error obtaining certificate", e2);
            return true;
        }
    }

    public final byte[] L(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    @EnsuresNonNull({"this.apkVersion"})
    public final int M() {
        if (this.f == null) {
            this.f = Integer.valueOf(gy.b.a(this.a.a) / 1000);
        }
        return this.f.intValue();
    }

    public final long N(long j, long j2) {
        return ((j2 * DateUtils.MILLIS_PER_MINUTE) + j) / DateUtils.MILLIS_PER_DAY;
    }

    public final void O(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.a.a().i.b("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    public final void P(bg4 bg4Var, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            bg4Var.zzb(bundle);
        } catch (RemoteException e) {
            this.a.a().i.b("Error returning string value to wrapper", e);
        }
    }

    public final void Q(bg4 bg4Var, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            bg4Var.zzb(bundle);
        } catch (RemoteException e) {
            this.a.a().i.b("Error returning long value to wrapper", e);
        }
    }

    public final void R(bg4 bg4Var, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            bg4Var.zzb(bundle);
        } catch (RemoteException e) {
            this.a.a().i.b("Error returning int value to wrapper", e);
        }
    }

    public final void S(bg4 bg4Var, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            bg4Var.zzb(bundle);
        } catch (RemoteException e) {
            this.a.a().i.b("Error returning byte array to wrapper", e);
        }
    }

    public final void T(bg4 bg4Var, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            bg4Var.zzb(bundle);
        } catch (RemoteException e) {
            this.a.a().i.b("Error returning boolean value to wrapper", e);
        }
    }

    public final void U(bg4 bg4Var, Bundle bundle) {
        try {
            bg4Var.zzb(bundle);
        } catch (RemoteException e) {
            this.a.a().i.b("Error returning bundle value to wrapper", e);
        }
    }

    public final void V(bg4 bg4Var, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            bg4Var.zzb(bundle);
        } catch (RemoteException e) {
            this.a.a().i.b("Error returning bundle list to wrapper", e);
        }
    }

    public final Object Y(int i, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return q(String.valueOf(obj), i, z);
        }
        if (!z2 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleI = I((Bundle) parcelable);
                if (!bundleI.isEmpty()) {
                    arrayList.add(bundleI);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public final int Z(String str) {
        if ("_ldl".equals(str)) {
            cs4 cs4Var = this.a.g;
            return RecyclerView.a0.FLAG_MOVED;
        }
        if ("_id".equals(str)) {
            cs4 cs4Var2 = this.a.g;
            return RecyclerView.a0.FLAG_TMP_DETACHED;
        }
        if (this.a.g.s(null, ew4.g0) && "_lgclid".equals(str)) {
            cs4 cs4Var3 = this.a.g;
            return 100;
        }
        cs4 cs4Var4 = this.a.g;
        return 36;
    }

    public final long c0() {
        long andIncrement;
        long j;
        if (this.d.get() != 0) {
            synchronized (this.d) {
                this.d.compareAndSet(-1L, 1L);
                andIncrement = this.d.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.d) {
            long jNextLong = new Random(System.nanoTime() ^ this.a.n.a()).nextLong();
            int i = this.e + 1;
            this.e = i;
            j = jNextLong + i;
        }
        return j;
    }

    @EnsuresNonNull({"this.secureRandom"})
    public final SecureRandom d0() {
        d();
        if (this.c == null) {
            this.c = new SecureRandom();
        }
        return this.c;
    }

    @Override // defpackage.my4
    public final boolean f() {
        return true;
    }

    public final Bundle f0(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    queryParameter = uri.getQueryParameter("utm_campaign");
                    queryParameter2 = uri.getQueryParameter("utm_source");
                    queryParameter3 = uri.getQueryParameter("utm_medium");
                    queryParameter4 = uri.getQueryParameter("gclid");
                } else {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                    queryParameter4 = null;
                }
                if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("campaign", queryParameter);
                }
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString("source", queryParameter2);
                }
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("medium", queryParameter3);
                }
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("gclid", queryParameter4);
                }
                String queryParameter5 = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("term", queryParameter5);
                }
                String queryParameter6 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter6)) {
                    bundle.putString(NSContent.NSTAG, queryParameter6);
                }
                String queryParameter7 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter7)) {
                    bundle.putString("aclid", queryParameter7);
                }
                String queryParameter8 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter8)) {
                    bundle.putString("cp1", queryParameter8);
                }
                String queryParameter9 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter9)) {
                    bundle.putString("anid", queryParameter9);
                }
                return bundle;
            } catch (UnsupportedOperationException e) {
                this.a.a().i.b("Install referrer url isn't a hierarchical URI", e);
            }
        }
        return null;
    }

    @Override // defpackage.my4
    public final void g() {
        d();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                this.a.a().i.a("Utils falling back to Random for random id");
            }
        }
        this.d.set(jNextLong);
    }

    public final boolean g0(String str, String str2) {
        if (str2 == null) {
            this.a.a().h.b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.a.a().h.b("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            this.a.a().h.c("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                this.a.a().h.c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean h0(String str, String str2) {
        if (str2 == null) {
            this.a.a().h.b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.a.a().h.b("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            if (iCodePointAt != 95) {
                this.a.a().h.c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                return false;
            }
            iCodePointAt = 95;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                this.a.a().h.c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean i0(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.a.a().h.b("Name is required and can't be null. Type", str);
            return false;
        }
        String[] strArr3 = g;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.a.a().h.c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !b0(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && b0(str2, strArr2)) {
            return true;
        }
        this.a.a().h.c("Name is reserved. Type, name", str, str2);
        return false;
    }

    public final boolean j0(String str, int i, String str2) {
        if (str2 == null) {
            this.a.a().h.b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        }
        this.a.a().h.d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
        return false;
    }

    public final int k0(String str, boolean z) {
        if (!h0("event", str)) {
            return 2;
        }
        if (z) {
            if (!i0("event", oy4.a, oy4.b, str)) {
                return 13;
            }
        } else if (!i0("event", oy4.a, null, str)) {
            return 13;
        }
        cs4 cs4Var = this.a.g;
        return !j0("event", 40, str) ? 2 : 0;
    }

    public final int l0(String str) {
        if (!h0("user property", str)) {
            return 6;
        }
        if (!i0("user property", qy4.a, null, str)) {
            return 15;
        }
        cs4 cs4Var = this.a.g;
        return !j0("user property", 24, str) ? 6 : 0;
    }

    public final int m0(String str) {
        if (!g0("event param", str)) {
            return 3;
        }
        if (!i0("event param", null, null, str)) {
            return 14;
        }
        cs4 cs4Var = this.a.g;
        return !j0("event param", 40, str) ? 3 : 0;
    }

    public final boolean n(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            Objects.requireNonNull(str, "null reference");
            if (str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                return true;
            }
            if (this.a.x()) {
                this.a.a().h.b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", qw4.t(str));
            }
            return false;
        }
        ae4.b();
        if (this.a.g.s(null, ew4.i0) && !TextUtils.isEmpty(str3)) {
            return true;
        }
        if (TextUtils.isEmpty(str2)) {
            if (this.a.x()) {
                this.a.a().h.a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
            return false;
        }
        Objects.requireNonNull(str2, "null reference");
        if (str2.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
            return true;
        }
        this.a.a().h.b("Invalid admob_app_id. Analytics disabled.", qw4.t(str2));
        return false;
    }

    public final int n0(String str) {
        if (!h0("event param", str)) {
            return 3;
        }
        if (!i0("event param", null, null, str)) {
            return 14;
        }
        cs4 cs4Var = this.a.g;
        return !j0("event param", 40, str) ? 3 : 0;
    }

    public final boolean o0(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public final boolean p(String str, String str2, String str3, String str4) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        if (!zIsEmpty && !zIsEmpty2) {
            Objects.requireNonNull(str, "null reference");
            return !str.equals(str2);
        }
        if (zIsEmpty && zIsEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (zIsEmpty) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    public final boolean p0(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String strValueOf = String.valueOf(obj);
            if (strValueOf.codePointCount(0, strValueOf.length()) > i) {
                this.a.a().k.d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(strValueOf.length()));
                return false;
            }
        }
        return true;
    }

    public final String q(String str, int i, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
        }
        return null;
    }

    public final void q0(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int iM0;
        String str4;
        int iR;
        if (bundle == null) {
            return;
        }
        cs4 cs4Var = this.a.g;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i = 0;
        while (it.hasNext()) {
            String str5 = (String) it.next();
            if (list == null || !list.contains(str5)) {
                iM0 = z ? m0(str5) : 0;
                if (iM0 == 0) {
                    iM0 = n0(str5);
                }
            } else {
                iM0 = 0;
            }
            if (iM0 != 0) {
                w(bundle, iM0, str5, iM0 == 3 ? str5 : null);
                bundle.remove(str5);
            } else {
                if (o0(bundle.get(str5))) {
                    this.a.a().k.d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str5);
                    iR = 22;
                    str4 = str5;
                } else {
                    str4 = str5;
                    iR = r(str, str2, str5, bundle.get(str5), bundle, list, z, false);
                }
                if (iR != 0 && !"_ev".equals(str4)) {
                    w(bundle, iR, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (e0(str4) && !b0(str4, py4.d) && (i = i + 1) > 0) {
                    this.a.a().h.c("Item cannot contain custom parameters", this.a.u().p(str2), this.a.u().s(bundle));
                    X(bundle, 23);
                    bundle.remove(str4);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int r(java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.Object r18, android.os.Bundle r19, java.util.List<java.lang.String> r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p25.r(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    public final Object s(String str, Object obj) {
        boolean zEquals = "_ev".equals(str);
        int i = RecyclerView.a0.FLAG_TMP_DETACHED;
        if (zEquals) {
            cs4 cs4Var = this.a.g;
            return Y(RecyclerView.a0.FLAG_TMP_DETACHED, obj, true, true);
        }
        if (F(str)) {
            cs4 cs4Var2 = this.a.g;
        } else {
            cs4 cs4Var3 = this.a.g;
            i = 100;
        }
        return Y(i, obj, false, true);
    }

    public final Bundle t(String str, String str2, Bundle bundle, List<String> list, boolean z) {
        int iM0;
        List<String> list2 = list;
        boolean zB0 = b0(str2, oy4.d);
        Bundle bundle2 = new Bundle(bundle);
        int iH = this.a.g.h();
        int i = 0;
        for (String str3 : this.a.g.s(str, ew4.Y) ? new TreeSet<>(bundle.keySet()) : bundle.keySet()) {
            if (list2 == null || !list2.contains(str3)) {
                iM0 = z ? m0(str3) : 0;
                if (iM0 == 0) {
                    iM0 = n0(str3);
                }
            } else {
                iM0 = 0;
            }
            if (iM0 != 0) {
                w(bundle2, iM0, str3, iM0 == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int iR = r(str, str2, str3, bundle.get(str3), bundle2, list, z, zB0);
                if (iR == 17) {
                    w(bundle2, 17, str3, Boolean.FALSE);
                } else if (iR != 0 && !"_ev".equals(str3)) {
                    w(bundle2, iR, iR == 21 ? str2 : str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (e0(str3)) {
                    int i2 = i + 1;
                    if (i2 > iH) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Event can't contain more than ");
                        sb.append(iH);
                        sb.append(" params");
                        this.a.a().h.c(sb.toString(), this.a.u().p(str2), this.a.u().s(bundle));
                        X(bundle2, 5);
                        bundle2.remove(str3);
                    }
                    list2 = list;
                    i = i2;
                }
            }
            list2 = list;
        }
        return bundle2;
    }

    public final void u(rw4 rw4Var, int i) {
        Iterator it = new TreeSet(rw4Var.d.keySet()).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (e0(str) && (i2 = i2 + 1) > i) {
                StringBuilder sb = new StringBuilder(48);
                sb.append("Event can't contain more than ");
                sb.append(i);
                sb.append(" params");
                this.a.a().h.c(sb.toString(), this.a.u().p(rw4Var.a), this.a.u().s(rw4Var.d));
                X(rw4Var.d, 5);
                rw4Var.d.remove(str);
            }
        }
    }

    public final void v(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.a.t().z(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void w(Bundle bundle, int i, String str, Object obj) {
        if (X(bundle, i)) {
            cs4 cs4Var = this.a.g;
            bundle.putString("_ev", q(str, 40, true));
            if (obj != null) {
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", String.valueOf(obj).length());
                }
            }
        }
    }

    public final int x(String str, Object obj) {
        return "_ldl".equals(str) ? p0("user property referrer", str, Z(str), obj) : p0("user property", str, Z(str), obj) ? 0 : 7;
    }

    public final Object y(String str, Object obj) {
        return "_ldl".equals(str) ? Y(Z(str), obj, true, false) : Y(Z(str), obj, false, false);
    }

    public final void z(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            this.a.a().k.c("Not putting event parameter. Invalid value type. name, type", this.a.u().q(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }
}
