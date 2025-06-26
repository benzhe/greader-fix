package defpackage;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajw;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhf;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class hh0 extends lg0 {
    public final Object e;
    public ph0 f;
    public vn0 g;
    public x20 h;
    public View i;
    public MediationInterstitialAd j;
    public UnifiedNativeAdMapper k;
    public MediationRewardedAd l;
    public MediationInterscrollerAd m;
    public String n = "";

    public hh0(MediationAdapter mediationAdapter) {
        this.e = mediationAdapter;
    }

    public static boolean X6(zzvq zzvqVar) {
        if (zzvqVar.j) {
            return true;
        }
        zr0 zr0Var = os3.j.a;
        return zr0.e();
    }

    @Override // defpackage.ig0
    public final q80 C3() {
        ph0 ph0Var = this.f;
        if (ph0Var == null) {
            return null;
        }
        NativeCustomTemplateAd nativeCustomTemplateAd = ph0Var.d;
        if (nativeCustomTemplateAd instanceof v80) {
            return ((v80) nativeCustomTemplateAd).a;
        }
        return null;
    }

    @Override // defpackage.ig0
    public final og0 F6() {
        MediationInterscrollerAd mediationInterscrollerAd = this.m;
        if (mediationInterscrollerAd != null) {
            return new mh0(mediationInterscrollerAd);
        }
        return null;
    }

    @Override // defpackage.ig0
    public final bh0 G2() {
        UnifiedNativeAdMapper unifiedNativeAdMapper;
        UnifiedNativeAdMapper unifiedNativeAdMapper2;
        Object obj = this.e;
        if (!(obj instanceof MediationNativeAdapter)) {
            if (!(obj instanceof Adapter) || (unifiedNativeAdMapper = this.k) == null) {
                return null;
            }
            return new ji0(unifiedNativeAdMapper);
        }
        ph0 ph0Var = this.f;
        if (ph0Var == null || (unifiedNativeAdMapper2 = ph0Var.c) == null) {
            return null;
        }
        return new ji0(unifiedNativeAdMapper2);
    }

    @Override // defpackage.ig0
    public final x20 H() throws RemoteException {
        Object obj = this.e;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return new y20(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
        if (obj instanceof Adapter) {
            return new y20(this.i);
        }
        String canonicalName = MediationBannerAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.e.getClass().getCanonicalName();
        StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
        sbY.append(canonicalName3);
        is0.zzez(sbY.toString());
        throw new RemoteException();
    }

    @Override // defpackage.ig0
    public final zzaqr M() {
        Object obj = this.e;
        if (obj instanceof Adapter) {
            return zzaqr.n(((Adapter) obj).getSDKVersionInfo());
        }
        return null;
    }

    @Override // defpackage.ig0
    public final zzaqr O() {
        Object obj = this.e;
        if (obj instanceof Adapter) {
            return zzaqr.n(((Adapter) obj).getVersionInfo());
        }
        return null;
    }

    @Override // defpackage.ig0
    public final void O6(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws JSONException, RemoteException {
        if (!(this.e instanceof Adapter)) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.e.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            is0.zzez(sb.toString());
            throw new RemoteException();
        }
        is0.zzdz("Requesting rewarded interstitial ad from adapter.");
        try {
            Adapter adapter = (Adapter) this.e;
            nh0 nh0Var = new nh0(this, ng0Var);
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleW6 = W6(str, zzvqVar, null);
            Bundle bundleY6 = Y6(zzvqVar);
            boolean zX6 = X6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            adapter.loadRewardedInterstitialAd(new MediationRewardedAdConfiguration(context, "", bundleW6, bundleY6, zX6, location, i, i2, string, ""), nh0Var);
        } catch (Exception e) {
            is0.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // defpackage.ig0
    public final void Q5(x20 x20Var, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws JSONException, RemoteException {
        String str3;
        MediationInterstitialAdapter mediationInterstitialAdapter;
        HashSet hashSet;
        Date date;
        int i;
        Location location;
        boolean zX6;
        int i2;
        boolean z;
        String string;
        String string2;
        Object obj = this.e;
        if (!(obj instanceof MediationInterstitialAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.e.getClass().getCanonicalName();
            StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sbY.append(canonicalName3);
            is0.zzez(sbY.toString());
            throw new RemoteException();
        }
        is0.zzdz("Requesting interstitial ad from adapter.");
        Object obj2 = this.e;
        if (!(obj2 instanceof MediationInterstitialAdapter)) {
            if (obj2 instanceof Adapter) {
                try {
                    Adapter adapter = (Adapter) obj2;
                    lh0 lh0Var = new lh0(this, ng0Var);
                    Context context = (Context) y20.l0(x20Var);
                    Bundle bundleW6 = W6(str, zzvqVar, str2);
                    Bundle bundleY6 = Y6(zzvqVar);
                    boolean zX62 = X6(zzvqVar);
                    Location location2 = zzvqVar.o;
                    int i3 = zzvqVar.k;
                    int i4 = zzvqVar.x;
                    try {
                        string2 = new JSONObject(str).getString("max_ad_content_rating");
                    } catch (JSONException unused) {
                        string2 = zzvqVar.y;
                    }
                    adapter.loadInterstitialAd(new MediationInterstitialAdConfiguration(context, "", bundleW6, bundleY6, zX62, location2, i3, i4, string2, this.n), lh0Var);
                    return;
                } catch (Throwable th) {
                    throw jo.K("", th);
                }
            }
            return;
        }
        try {
            mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
            hashSet = zzvqVar.i != null ? new HashSet(zzvqVar.i) : null;
            date = zzvqVar.f == -1 ? null : new Date(zzvqVar.f);
            i = zzvqVar.h;
            location = zzvqVar.o;
            zX6 = X6(zzvqVar);
            i2 = zzvqVar.k;
            z = zzvqVar.v;
        } catch (Throwable th2) {
            th = th2;
            str3 = "";
        }
        try {
            int i5 = zzvqVar.x;
            try {
                string = new JSONObject(str).getString("max_ad_content_rating");
            } catch (JSONException unused2) {
                string = zzvqVar.y;
            }
            eh0 eh0Var = new eh0(date, i, hashSet, location, zX6, i2, z, i5, string);
            Bundle bundle = zzvqVar.q;
            mediationInterstitialAdapter.requestInterstitialAd((Context) y20.l0(x20Var), new ph0(ng0Var), W6(str, zzvqVar, str2), eh0Var, bundle != null ? bundle.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } catch (Throwable th3) {
            th = th3;
            str3 = "";
            throw jo.K(str3, th);
        }
    }

    @Override // defpackage.ig0
    public final void R3(x20 x20Var) throws RemoteException {
        Context context = (Context) y20.l0(x20Var);
        Object obj = this.e;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // defpackage.ig0
    public final void R6(x20 x20Var, vn0 vn0Var, List<String> list) throws RemoteException {
        if (!(this.e instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.e.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            is0.zzez(sb.toString());
            throw new RemoteException();
        }
        is0.zzdz("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.e;
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(W6(it.next(), null, null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) y20.l0(x20Var), new zn0(vn0Var), arrayList);
        } catch (Throwable th) {
            is0.zzd("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // defpackage.ig0
    public final void U1(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws JSONException, RemoteException {
        Q5(x20Var, zzvqVar, str, null, ng0Var);
    }

    @Override // defpackage.ig0
    public final void V5(zzvq zzvqVar, String str) throws JSONException, RemoteException {
        t6(zzvqVar, str, null);
    }

    public final Bundle W6(String str, zzvq zzvqVar, String str2) throws RemoteException {
        String strValueOf = String.valueOf(str);
        is0.zzdz(strValueOf.length() != 0 ? "Server parameters: ".concat(strValueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.e instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzvqVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzvqVar.k);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            throw jo.K("", th);
        }
    }

    public final Bundle Y6(zzvq zzvqVar) {
        Bundle bundle;
        Bundle bundle2 = zzvqVar.q;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.e.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    @Override // defpackage.ig0
    public final void a6(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws JSONException, RemoteException {
        if (!(this.e instanceof Adapter)) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.e.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            is0.zzez(sb.toString());
            throw new RemoteException();
        }
        is0.zzdz("Requesting rewarded ad from adapter.");
        try {
            Adapter adapter = (Adapter) this.e;
            nh0 nh0Var = new nh0(this, ng0Var);
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleW6 = W6(str, zzvqVar, null);
            Bundle bundleY6 = Y6(zzvqVar);
            boolean zX6 = X6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            adapter.loadRewardedAd(new MediationRewardedAdConfiguration(context, "", bundleW6, bundleY6, zX6, location, i, i2, string, ""), nh0Var);
        } catch (Exception e) {
            is0.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // defpackage.ig0
    public final void d6(x20 x20Var) throws RemoteException {
        if (this.e instanceof Adapter) {
            is0.zzdz("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.l;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) y20.l0(x20Var));
                return;
            } else {
                is0.zzex("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        is0.zzez(sb.toString());
        throw new RemoteException();
    }

    @Override // defpackage.ig0
    public final void destroy() throws RemoteException {
        Object obj = this.e;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
    }

    @Override // defpackage.ig0
    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.e;
        if (obj instanceof zzbhf) {
            return ((zzbhf) obj).getInterstitialAdapterInfo();
        }
        String canonicalName = zzbhf.class.getCanonicalName();
        String canonicalName2 = this.e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        is0.zzez(sb.toString());
        return new Bundle();
    }

    @Override // defpackage.ig0
    public final su3 getVideoController() {
        Object obj = this.e;
        if (!(obj instanceof zza)) {
            return null;
        }
        try {
            return ((zza) obj).getVideoController();
        } catch (Throwable th) {
            is0.zzc("", th);
            return null;
        }
    }

    @Override // defpackage.ig0
    public final vg0 h6() {
        ph0 ph0Var = this.f;
        if (ph0Var == null) {
            return null;
        }
        NativeAdMapper nativeAdMapper = ph0Var.b;
        if (nativeAdMapper instanceof NativeAppInstallAdMapper) {
            return new rh0((NativeAppInstallAdMapper) nativeAdMapper);
        }
        return null;
    }

    @Override // defpackage.ig0
    public final void i5(x20 x20Var, zzvq zzvqVar, String str, vn0 vn0Var, String str2) throws JSONException, RemoteException {
        eh0 eh0Var;
        String string;
        Object obj = this.e;
        if (!(obj instanceof MediationRewardedVideoAdAdapter)) {
            if (obj instanceof Adapter) {
                this.h = x20Var;
                this.g = vn0Var;
                vn0Var.J0(new y20(obj));
                return;
            } else {
                String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
                String canonicalName2 = Adapter.class.getCanonicalName();
                String canonicalName3 = this.e.getClass().getCanonicalName();
                StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
                sbY.append(canonicalName3);
                is0.zzez(sbY.toString());
                throw new RemoteException();
            }
        }
        is0.zzdz("Initialize rewarded video adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.e;
            Bundle bundleW6 = W6(str2, zzvqVar, null);
            if (zzvqVar != null) {
                HashSet hashSet = zzvqVar.i != null ? new HashSet(zzvqVar.i) : null;
                Date date = zzvqVar.f != -1 ? new Date(zzvqVar.f) : null;
                int i = zzvqVar.h;
                Location location = zzvqVar.o;
                boolean zX6 = X6(zzvqVar);
                int i2 = zzvqVar.k;
                boolean z = zzvqVar.v;
                int i3 = zzvqVar.x;
                try {
                    string = new JSONObject(str2).getString("max_ad_content_rating");
                } catch (JSONException unused) {
                    string = zzvqVar.y;
                }
                eh0Var = new eh0(date, i, hashSet, location, zX6, i2, z, i3, string);
                Bundle bundle = zzvqVar.q;
                Bundle bundle2 = bundle != null ? bundle.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                mediationRewardedVideoAdAdapter.initialize((Context) y20.l0(x20Var), eh0Var, str, new zn0(vn0Var), bundleW6, bundle2);
            }
            eh0Var = null;
            mediationRewardedVideoAdAdapter.initialize((Context) y20.l0(x20Var), eh0Var, str, new zn0(vn0Var), bundleW6, bundle2);
        } catch (Throwable th) {
            throw jo.K("", th);
        }
    }

    @Override // defpackage.ig0
    public final boolean isInitialized() throws RemoteException {
        Object obj = this.e;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            is0.zzdz("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.e).isInitialized();
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
        if (obj instanceof Adapter) {
            return this.g != null;
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.e.getClass().getCanonicalName();
        StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
        sbY.append(canonicalName3);
        is0.zzez(sbY.toString());
        throw new RemoteException();
    }

    @Override // defpackage.ig0
    public final void j1(x20 x20Var, zzvq zzvqVar, String str, String str2, ng0 ng0Var, zzaei zzaeiVar, List<String> list) throws JSONException, RemoteException {
        String str3;
        MediationNativeAdapter mediationNativeAdapter;
        HashSet hashSet;
        Date date;
        int i;
        Location location;
        boolean zX6;
        int i2;
        boolean z;
        String string;
        String string2;
        Object obj = this.e;
        if (!(obj instanceof MediationNativeAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.e.getClass().getCanonicalName();
            StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sbY.append(canonicalName3);
            is0.zzez(sbY.toString());
            throw new RemoteException();
        }
        is0.zzdz("Requesting native ad from adapter.");
        Object obj2 = this.e;
        if (!(obj2 instanceof MediationNativeAdapter)) {
            if (obj2 instanceof Adapter) {
                try {
                    Adapter adapter = (Adapter) obj2;
                    kh0 kh0Var = new kh0(this, ng0Var);
                    Context context = (Context) y20.l0(x20Var);
                    Bundle bundleW6 = W6(str, zzvqVar, str2);
                    Bundle bundleY6 = Y6(zzvqVar);
                    boolean zX62 = X6(zzvqVar);
                    Location location2 = zzvqVar.o;
                    int i3 = zzvqVar.k;
                    int i4 = zzvqVar.x;
                    try {
                        string2 = new JSONObject(str).getString("max_ad_content_rating");
                    } catch (JSONException unused) {
                        string2 = zzvqVar.y;
                    }
                    adapter.loadNativeAd(new MediationNativeAdConfiguration(context, "", bundleW6, bundleY6, zX62, location2, i3, i4, string2, this.n, zzaeiVar), kh0Var);
                    return;
                } catch (Throwable th) {
                    throw jo.K("", th);
                }
            }
            return;
        }
        try {
            mediationNativeAdapter = (MediationNativeAdapter) obj2;
            hashSet = zzvqVar.i != null ? new HashSet(zzvqVar.i) : null;
            date = zzvqVar.f == -1 ? null : new Date(zzvqVar.f);
            i = zzvqVar.h;
            location = zzvqVar.o;
            zX6 = X6(zzvqVar);
            i2 = zzvqVar.k;
            z = zzvqVar.v;
        } catch (Throwable th2) {
            th = th2;
            str3 = "";
        }
        try {
            int i5 = zzvqVar.x;
            try {
                string = new JSONObject(str).getString("max_ad_content_rating");
            } catch (JSONException unused2) {
                string = zzvqVar.y;
            }
            th0 th0Var = new th0(date, i, hashSet, location, zX6, i2, zzaeiVar, list, z, i5, string);
            Bundle bundle = zzvqVar.q;
            Bundle bundle2 = bundle != null ? bundle.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.f = new ph0(ng0Var);
            mediationNativeAdapter.requestNativeAd((Context) y20.l0(x20Var), this.f, W6(str, zzvqVar, str2), th0Var, bundle2);
        } catch (Throwable th3) {
            th = th3;
            str3 = "";
            throw jo.K(str3, th);
        }
    }

    @Override // defpackage.ig0
    public final Bundle j5() {
        return new Bundle();
    }

    @Override // defpackage.ig0
    public final void m4(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, ng0 ng0Var) throws JSONException, RemoteException {
        s3(x20Var, zzvtVar, zzvqVar, str, null, ng0Var);
    }

    @Override // defpackage.ig0
    public final void pause() throws RemoteException {
        Object obj = this.e;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
    }

    @Override // defpackage.ig0
    public final void r1(x20 x20Var, pc0 pc0Var, List<zzajw> list) throws RemoteException {
        AdFormat adFormat;
        if (!(this.e instanceof Adapter)) {
            throw new RemoteException();
        }
        jh0 jh0Var = new jh0(pc0Var);
        ArrayList arrayList = new ArrayList();
        for (zzajw zzajwVar : list) {
            String str = zzajwVar.e;
            str.hashCode();
            switch (str) {
                case "banner":
                    adFormat = AdFormat.BANNER;
                    break;
                case "native":
                    adFormat = AdFormat.NATIVE;
                    break;
                case "rewarded":
                    adFormat = AdFormat.REWARDED;
                    break;
                case "interstitial":
                    adFormat = AdFormat.INTERSTITIAL;
                    break;
                case "rewarded_interstitial":
                    adFormat = AdFormat.REWARDED_INTERSTITIAL;
                    break;
                default:
                    adFormat = null;
                    break;
            }
            if (adFormat != null) {
                arrayList.add(new MediationConfiguration(adFormat, zzajwVar.f));
            }
        }
        ((Adapter) this.e).initialize((Context) y20.l0(x20Var), jh0Var, arrayList);
    }

    @Override // defpackage.ig0
    public final wg0 r5() {
        ph0 ph0Var = this.f;
        if (ph0Var == null) {
            return null;
        }
        NativeAdMapper nativeAdMapper = ph0Var.b;
        if (nativeAdMapper instanceof NativeContentAdMapper) {
            return new qh0((NativeContentAdMapper) nativeAdMapper);
        }
        return null;
    }

    @Override // defpackage.ig0
    public final void resume() throws RemoteException {
        Object obj = this.e;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
    }

    @Override // defpackage.ig0
    public final void s3(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws JSONException, RemoteException {
        String string;
        String str3;
        Object obj = this.e;
        if (!(obj instanceof MediationBannerAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.e.getClass().getCanonicalName();
            StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sbY.append(canonicalName3);
            is0.zzez(sbY.toString());
            throw new RemoteException();
        }
        is0.zzdz("Requesting banner ad from adapter.");
        AdSize adSizeZzb = zzvtVar.r ? com.google.android.gms.ads.zza.zzb(zzvtVar.i, zzvtVar.f) : com.google.android.gms.ads.zza.zza(zzvtVar.i, zzvtVar.f, zzvtVar.e);
        Object obj2 = this.e;
        if (obj2 instanceof MediationBannerAdapter) {
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
                HashSet hashSet = zzvqVar.i != null ? new HashSet(zzvqVar.i) : null;
                Date date = zzvqVar.f == -1 ? null : new Date(zzvqVar.f);
                int i = zzvqVar.h;
                Location location = zzvqVar.o;
                boolean zX6 = X6(zzvqVar);
                int i2 = zzvqVar.k;
                boolean z = zzvqVar.v;
                int i3 = zzvqVar.x;
                try {
                    string = new JSONObject(str).getString("max_ad_content_rating");
                } catch (JSONException unused) {
                    string = zzvqVar.y;
                }
                eh0 eh0Var = new eh0(date, i, hashSet, location, zX6, i2, z, i3, string);
                Bundle bundle = zzvqVar.q;
                mediationBannerAdapter.requestBannerAd((Context) y20.l0(x20Var), new ph0(ng0Var), W6(str, zzvqVar, str2), adSizeZzb, eh0Var, bundle != null ? bundle.getBundle(mediationBannerAdapter.getClass().getName()) : null);
                return;
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
        if (!(obj2 instanceof Adapter)) {
            return;
        }
        try {
            Adapter adapter = (Adapter) obj2;
            ih0 ih0Var = new ih0(this, ng0Var);
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleW6 = W6(str, zzvqVar, str2);
            Bundle bundleY6 = Y6(zzvqVar);
            boolean zX62 = X6(zzvqVar);
            Location location2 = zzvqVar.o;
            int i4 = zzvqVar.k;
            str3 = "";
            try {
                int i5 = zzvqVar.x;
                String string2 = zzvqVar.y;
                try {
                    string2 = new JSONObject(str).getString("max_ad_content_rating");
                } catch (JSONException unused2) {
                }
                adapter.loadBannerAd(new MediationBannerAdConfiguration(context, "", bundleW6, bundleY6, zX62, location2, i4, i5, string2, adSizeZzb, this.n), ih0Var);
            } catch (Throwable th2) {
                th = th2;
                throw jo.K(str3, th);
            }
        } catch (Throwable th3) {
            th = th3;
            str3 = "";
        }
    }

    @Override // defpackage.ig0
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Object obj = this.e;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                is0.zzc("", th);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = this.e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        is0.zzdz(sb.toString());
    }

    @Override // defpackage.ig0
    public final void showInterstitial() throws RemoteException {
        if (this.e instanceof MediationInterstitialAdapter) {
            is0.zzdz("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.e).showInterstitial();
                return;
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(jo.x(canonicalName2, jo.x(canonicalName, 22)));
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        is0.zzez(sb.toString());
        throw new RemoteException();
    }

    @Override // defpackage.ig0
    public final void showVideo() throws RemoteException {
        Object obj = this.e;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            is0.zzdz("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.e).showVideo();
                return;
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
        if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.l;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) y20.l0(this.h));
                return;
            } else {
                is0.zzex("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.e.getClass().getCanonicalName();
        StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
        sbY.append(canonicalName3);
        is0.zzez(sbY.toString());
        throw new RemoteException();
    }

    @Override // defpackage.ig0
    public final void t6(zzvq zzvqVar, String str, String str2) throws JSONException, RemoteException {
        Object obj = this.e;
        if (!(obj instanceof MediationRewardedVideoAdAdapter)) {
            if (obj instanceof Adapter) {
                a6(this.h, zzvqVar, str, new oh0((Adapter) obj, this.g));
                return;
            }
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.e.getClass().getCanonicalName();
            StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sbY.append(canonicalName3);
            is0.zzez(sbY.toString());
            throw new RemoteException();
        }
        is0.zzdz("Requesting rewarded video ad from adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.e;
            HashSet hashSet = zzvqVar.i != null ? new HashSet(zzvqVar.i) : null;
            Date date = zzvqVar.f == -1 ? null : new Date(zzvqVar.f);
            int i = zzvqVar.h;
            Location location = zzvqVar.o;
            boolean zX6 = X6(zzvqVar);
            int i2 = zzvqVar.k;
            boolean z = zzvqVar.v;
            int i3 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            eh0 eh0Var = new eh0(date, i, hashSet, location, zX6, i2, z, i3, string);
            Bundle bundle = zzvqVar.q;
            mediationRewardedVideoAdAdapter.loadAd(eh0Var, W6(str, zzvqVar, str2), bundle != null ? bundle.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            throw jo.K("", th);
        }
    }

    @Override // defpackage.ig0
    public final void u5(x20 x20Var) throws RemoteException {
        Object obj = this.e;
        if (!(obj instanceof Adapter) && !(obj instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.e.getClass().getCanonicalName();
            StringBuilder sbY = jo.y(jo.x(canonicalName3, jo.x(canonicalName2, jo.x(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sbY.append(canonicalName3);
            is0.zzez(sbY.toString());
            throw new RemoteException();
        }
        if (obj instanceof MediationInterstitialAdapter) {
            showInterstitial();
            return;
        }
        is0.zzdz("Show interstitial ad from adapter.");
        MediationInterstitialAd mediationInterstitialAd = this.j;
        if (mediationInterstitialAd != null) {
            mediationInterstitialAd.showAd((Context) y20.l0(x20Var));
        } else {
            is0.zzex("Can not show null mediation interstitial ad.");
            throw new RemoteException();
        }
    }

    @Override // defpackage.ig0
    public final boolean v4() {
        return this.e instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // defpackage.ig0
    public final void w2(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws JSONException, RemoteException {
        if (!(this.e instanceof Adapter)) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.e.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            is0.zzez(sb.toString());
            throw new RemoteException();
        }
        is0.zzdz("Requesting interscroller ad from adapter.");
        try {
            Adapter adapter = (Adapter) this.e;
            gh0 gh0Var = new gh0(this, ng0Var, adapter);
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleW6 = W6(str, zzvqVar, str2);
            Bundle bundleY6 = Y6(zzvqVar);
            boolean zX6 = X6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            adapter.loadInterscrollerAd(new MediationBannerAdConfiguration(context, "", bundleW6, bundleY6, zX6, location, i, i2, string, com.google.android.gms.ads.zza.zzc(zzvtVar.i, zzvtVar.f), ""), gh0Var);
        } catch (Exception e) {
            is0.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // defpackage.ig0
    public final Bundle zzvh() {
        Object obj = this.e;
        if (obj instanceof zzbhe) {
            return ((zzbhe) obj).zzvh();
        }
        String canonicalName = zzbhe.class.getCanonicalName();
        String canonicalName2 = this.e.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        is0.zzez(sb.toString());
        return new Bundle();
    }

    public hh0(Adapter adapter) {
        this.e = adapter;
    }
}
