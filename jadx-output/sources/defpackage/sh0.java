package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.zza;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajw;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class sh0<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends lg0 {
    public final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> e;
    public final NETWORK_EXTRAS f;

    public sh0(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.e = mediationAdapter;
        this.f = network_extras;
    }

    public static boolean W6(zzvq zzvqVar) {
        if (zzvqVar.j) {
            return true;
        }
        zr0 zr0Var = os3.j.a;
        return zr0.e();
    }

    @Override // defpackage.ig0
    public final q80 C3() {
        return null;
    }

    @Override // defpackage.ig0
    public final og0 F6() {
        return null;
    }

    @Override // defpackage.ig0
    public final bh0 G2() {
        return null;
    }

    @Override // defpackage.ig0
    public final x20 H() throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.e;
        if (mediationAdapter instanceof MediationBannerAdapter) {
            try {
                return new y20(((MediationBannerAdapter) mediationAdapter).getBannerView());
            } catch (Throwable th) {
                throw jo.K("", th);
            }
        }
        String strValueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
        is0.zzez(strValueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(strValueOf) : new String("Not a MediationBannerAdapter: "));
        throw new RemoteException();
    }

    @Override // defpackage.ig0
    public final zzaqr M() {
        return null;
    }

    @Override // defpackage.ig0
    public final zzaqr O() {
        return null;
    }

    @Override // defpackage.ig0
    public final void O6(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ig0
    public final void Q5(x20 x20Var, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.e;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String strValueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            is0.zzez(strValueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(strValueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        is0.zzdz("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.e).requestInterstitialAd(new wh0(ng0Var), (Activity) y20.l0(x20Var), X6(str), c50.o1(zzvqVar, W6(zzvqVar)), this.f);
        } catch (Throwable th) {
            throw jo.K("", th);
        }
    }

    @Override // defpackage.ig0
    public final void R3(x20 x20Var) throws RemoteException {
    }

    @Override // defpackage.ig0
    public final void R6(x20 x20Var, vn0 vn0Var, List<String> list) {
    }

    @Override // defpackage.ig0
    public final void U1(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException {
        Q5(x20Var, zzvqVar, str, null, ng0Var);
    }

    @Override // defpackage.ig0
    public final void V5(zzvq zzvqVar, String str) {
    }

    public final SERVER_PARAMETERS X6(String str) throws RemoteException {
        HashMap map;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                map = new HashMap(jSONObject.length());
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.getString(next));
                }
            } else {
                map = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.e.getServerParametersType();
            if (serverParametersType == null) {
                return null;
            }
            SERVER_PARAMETERS server_parametersNewInstance = serverParametersType.newInstance();
            server_parametersNewInstance.load(map);
            return server_parametersNewInstance;
        } catch (Throwable th) {
            throw jo.K("", th);
        }
    }

    @Override // defpackage.ig0
    public final void a6(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException {
    }

    @Override // defpackage.ig0
    public final void d6(x20 x20Var) throws RemoteException {
    }

    @Override // defpackage.ig0
    public final void destroy() throws RemoteException {
        try {
            this.e.destroy();
        } catch (Throwable th) {
            throw jo.K("", th);
        }
    }

    @Override // defpackage.ig0
    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // defpackage.ig0
    public final su3 getVideoController() {
        return null;
    }

    @Override // defpackage.ig0
    public final vg0 h6() {
        return null;
    }

    @Override // defpackage.ig0
    public final void i5(x20 x20Var, zzvq zzvqVar, String str, vn0 vn0Var, String str2) throws RemoteException {
    }

    @Override // defpackage.ig0
    public final boolean isInitialized() {
        return true;
    }

    @Override // defpackage.ig0
    public final void j1(x20 x20Var, zzvq zzvqVar, String str, String str2, ng0 ng0Var, zzaei zzaeiVar, List<String> list) {
    }

    @Override // defpackage.ig0
    public final Bundle j5() {
        return new Bundle();
    }

    @Override // defpackage.ig0
    public final void m4(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException {
        s3(x20Var, zzvtVar, zzvqVar, str, null, ng0Var);
    }

    @Override // defpackage.ig0
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.ig0
    public final void r1(x20 x20Var, pc0 pc0Var, List<zzajw> list) throws RemoteException {
    }

    @Override // defpackage.ig0
    public final wg0 r5() {
        return null;
    }

    @Override // defpackage.ig0
    public final void resume() throws RemoteException {
        throw new RemoteException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ig0
    public final void s3(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws RemoteException {
        AdSize adSize;
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.e;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String strValueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            is0.zzez(strValueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(strValueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        is0.zzdz("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.e;
            wh0 wh0Var = new wh0(ng0Var);
            Activity activity = (Activity) y20.l0(x20Var);
            MediationServerParameters mediationServerParametersX6 = X6(str);
            int i = 0;
            AdSize[] adSizeArr = {AdSize.SMART_BANNER, AdSize.BANNER, AdSize.IAB_MRECT, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_WIDE_SKYSCRAPER};
            while (true) {
                if (i >= 6) {
                    adSize = new AdSize(zza.zza(zzvtVar.i, zzvtVar.f, zzvtVar.e));
                    break;
                } else {
                    if (adSizeArr[i].getWidth() == zzvtVar.i && adSizeArr[i].getHeight() == zzvtVar.f) {
                        adSize = adSizeArr[i];
                        break;
                    }
                    i++;
                }
            }
            mediationBannerAdapter.requestBannerAd(wh0Var, activity, mediationServerParametersX6, adSize, c50.o1(zzvqVar, W6(zzvqVar)), this.f);
        } catch (Throwable th) {
            throw jo.K("", th);
        }
    }

    @Override // defpackage.ig0
    public final void setImmersiveMode(boolean z) {
    }

    @Override // defpackage.ig0
    public final void showInterstitial() throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.e;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String strValueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            is0.zzez(strValueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(strValueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        is0.zzdz("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.e).showInterstitial();
        } catch (Throwable th) {
            throw jo.K("", th);
        }
    }

    @Override // defpackage.ig0
    public final void showVideo() {
    }

    @Override // defpackage.ig0
    public final void t6(zzvq zzvqVar, String str, String str2) {
    }

    @Override // defpackage.ig0
    public final void u5(x20 x20Var) {
    }

    @Override // defpackage.ig0
    public final boolean v4() {
        return false;
    }

    @Override // defpackage.ig0
    public final void w2(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ng0 ng0Var) {
    }

    @Override // defpackage.ig0
    public final Bundle zzvh() {
        return new Bundle();
    }
}
