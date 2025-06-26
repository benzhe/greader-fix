package defpackage;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.zza;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ej0 extends yi0 {
    public final RtbAdapter f;
    public MediationInterstitialAd g;
    public MediationRewardedAd h;
    public String i = "";

    public ej0(RtbAdapter rtbAdapter) {
        this.f = rtbAdapter;
    }

    public static boolean W6(zzvq zzvqVar) {
        if (zzvqVar.j) {
            return true;
        }
        zr0 zr0Var = os3.j.a;
        return zr0.e();
    }

    public static Bundle Y6(String str) throws RemoteException {
        String strValueOf = String.valueOf(str);
        is0.zzez(strValueOf.length() != 0 ? "Server parameters: ".concat(strValueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str == null) {
                return bundle;
            }
            JSONObject jSONObject = new JSONObject(str);
            Bundle bundle2 = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle2.putString(next, jSONObject.getString(next));
            }
            return bundle2;
        } catch (JSONException e) {
            is0.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // defpackage.vi0
    public final void B2(String str, String str2, zzvq zzvqVar, x20 x20Var, ii0 ii0Var, ng0 ng0Var, zzvt zzvtVar) throws RemoteException {
        try {
            dj0 dj0Var = new dj0(ii0Var, ng0Var);
            RtbAdapter rtbAdapter = this.f;
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleY6 = Y6(str2);
            Bundle bundleX6 = X6(zzvqVar);
            boolean zW6 = W6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str2).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            rtbAdapter.loadRtbBannerAd(new MediationBannerAdConfiguration(context, str, bundleY6, bundleX6, zW6, location, i, i2, string, zza.zza(zzvtVar.i, zzvtVar.f, zzvtVar.e), this.i), dj0Var);
        } catch (Throwable th) {
            throw jo.K("Adapter failed to render banner ad.", th);
        }
    }

    @Override // defpackage.vi0
    public final void C6(String str, String str2, zzvq zzvqVar, x20 x20Var, ti0 ti0Var, ng0 ng0Var) throws RemoteException {
        try {
            kj0 kj0Var = new kj0(this, ti0Var, ng0Var);
            RtbAdapter rtbAdapter = this.f;
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleY6 = Y6(str2);
            Bundle bundleX6 = X6(zzvqVar);
            boolean zW6 = W6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str2).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            rtbAdapter.loadRtbRewardedInterstitialAd(new MediationRewardedAdConfiguration(context, str, bundleY6, bundleX6, zW6, location, i, i2, string, this.i), kj0Var);
        } catch (Throwable th) {
            throw jo.K("Adapter failed to render rewarded interstitial ad.", th);
        }
    }

    @Override // defpackage.vi0
    public final void K5(String str, String str2, zzvq zzvqVar, x20 x20Var, ti0 ti0Var, ng0 ng0Var) throws RemoteException {
        try {
            kj0 kj0Var = new kj0(this, ti0Var, ng0Var);
            RtbAdapter rtbAdapter = this.f;
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleY6 = Y6(str2);
            Bundle bundleX6 = X6(zzvqVar);
            boolean zW6 = W6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str2).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            rtbAdapter.loadRtbRewardedAd(new MediationRewardedAdConfiguration(context, str, bundleY6, bundleX6, zW6, location, i, i2, string, this.i), kj0Var);
        } catch (Throwable th) {
            throw jo.K("Adapter failed to render rewarded ad.", th);
        }
    }

    @Override // defpackage.vi0
    public final zzaqr M() throws RemoteException {
        return zzaqr.n(this.f.getSDKVersionInfo());
    }

    @Override // defpackage.vi0
    public final zzaqr O() throws RemoteException {
        return zzaqr.n(this.f.getVersionInfo());
    }

    @Override // defpackage.vi0
    public final boolean Q6(x20 x20Var) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.h;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) y20.l0(x20Var));
            return true;
        } catch (Throwable th) {
            is0.zzc("", th);
            return true;
        }
    }

    @Override // defpackage.vi0
    public final void S3(String str, String str2, zzvq zzvqVar, x20 x20Var, oi0 oi0Var, ng0 ng0Var, zzaei zzaeiVar) throws RemoteException {
        try {
            ij0 ij0Var = new ij0(oi0Var, ng0Var);
            RtbAdapter rtbAdapter = this.f;
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleY6 = Y6(str2);
            Bundle bundleX6 = X6(zzvqVar);
            boolean zW6 = W6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str2).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            rtbAdapter.loadRtbNativeAd(new MediationNativeAdConfiguration(context, str, bundleY6, bundleX6, zW6, location, i, i2, string, this.i, zzaeiVar), ij0Var);
        } catch (Throwable th) {
            throw jo.K("Adapter failed to render native ad.", th);
        }
    }

    public final Bundle X6(zzvq zzvqVar) {
        Bundle bundle;
        Bundle bundle2 = zzvqVar.q;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.f.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.vi0
    public final void a3(x20 x20Var, String str, Bundle bundle, Bundle bundle2, zzvt zzvtVar, aj0 aj0Var) throws RemoteException {
        AdFormat adFormat;
        try {
            hj0 hj0Var = new hj0(aj0Var);
            RtbAdapter rtbAdapter = this.f;
            char c = 65535;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        c = 4;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        c = 2;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1911491517:
                    if (str.equals("rewarded_interstitial")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                adFormat = AdFormat.BANNER;
            } else if (c == 1) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (c == 2) {
                adFormat = AdFormat.REWARDED;
            } else if (c == 3) {
                adFormat = AdFormat.REWARDED_INTERSTITIAL;
            } else {
                if (c != 4) {
                    throw new IllegalArgumentException("Internal Error");
                }
                adFormat = AdFormat.NATIVE;
            }
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediationConfiguration);
            rtbAdapter.collectSignals(new RtbSignalData((Context) y20.l0(x20Var), arrayList, bundle, zza.zza(zzvtVar.i, zzvtVar.f, zzvtVar.e)), hj0Var);
        } catch (Throwable th) {
            throw jo.K("Error generating signals for RTB", th);
        }
    }

    @Override // defpackage.vi0
    public final void e6(String str, String str2, zzvq zzvqVar, x20 x20Var, ni0 ni0Var, ng0 ng0Var) throws RemoteException {
        try {
            fj0 fj0Var = new fj0(this, ni0Var, ng0Var);
            RtbAdapter rtbAdapter = this.f;
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleY6 = Y6(str2);
            Bundle bundleX6 = X6(zzvqVar);
            boolean zW6 = W6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str2).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            rtbAdapter.loadRtbInterstitialAd(new MediationInterstitialAdConfiguration(context, str, bundleY6, bundleX6, zW6, location, i, i2, string, this.i), fj0Var);
        } catch (Throwable th) {
            throw jo.K("Adapter failed to render interstitial ad.", th);
        }
    }

    @Override // defpackage.vi0
    public final su3 getVideoController() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f;
        if (!(mediationExtrasReceiver instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) mediationExtrasReceiver).getVideoController();
        } catch (Throwable th) {
            is0.zzc("", th);
            return null;
        }
    }

    @Override // defpackage.vi0
    public final boolean i6(x20 x20Var) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.g;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) y20.l0(x20Var));
            return true;
        } catch (Throwable th) {
            is0.zzc("", th);
            return true;
        }
    }

    @Override // defpackage.vi0
    public final void t0(String str, String str2, zzvq zzvqVar, x20 x20Var, oi0 oi0Var, ng0 ng0Var) throws RemoteException {
        S3(str, str2, zzvqVar, x20Var, oi0Var, ng0Var, null);
    }

    @Override // defpackage.vi0
    public final void x3(String str, String str2, zzvq zzvqVar, x20 x20Var, ii0 ii0Var, ng0 ng0Var, zzvt zzvtVar) throws RemoteException {
        try {
            gj0 gj0Var = new gj0(ii0Var, ng0Var);
            RtbAdapter rtbAdapter = this.f;
            Context context = (Context) y20.l0(x20Var);
            Bundle bundleY6 = Y6(str2);
            Bundle bundleX6 = X6(zzvqVar);
            boolean zW6 = W6(zzvqVar);
            Location location = zzvqVar.o;
            int i = zzvqVar.k;
            int i2 = zzvqVar.x;
            String string = zzvqVar.y;
            try {
                string = new JSONObject(str2).getString("max_ad_content_rating");
            } catch (JSONException unused) {
            }
            rtbAdapter.loadRtbInterscrollerAd(new MediationBannerAdConfiguration(context, str, bundleY6, bundleX6, zW6, location, i, i2, string, zza.zza(zzvtVar.i, zzvtVar.f, zzvtVar.e), this.i), gj0Var);
        } catch (Throwable th) {
            throw jo.K("Adapter failed to render interscroller ad.", th);
        }
    }

    @Override // defpackage.vi0
    public final void z1(String str) {
        this.i = str;
    }
}
