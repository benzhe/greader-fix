package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvx;
import defpackage.is0;
import defpackage.os3;
import defpackage.ru3;
import defpackage.y40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ResponseInfo {
    public final ru3 a;
    public final List<AdapterResponseInfo> b = new ArrayList();

    public ResponseInfo(ru3 ru3Var) {
        this.a = ru3Var;
        if (((Boolean) os3.j.f.a(y40.U4)).booleanValue()) {
            try {
                List<zzvx> listT3 = ru3Var.T3();
                if (listT3 != null) {
                    Iterator<zzvx> it = listT3.iterator();
                    while (it.hasNext()) {
                        this.b.add(AdapterResponseInfo.zza(it.next()));
                    }
                }
            } catch (RemoteException e) {
                is0.zzc("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
    }

    public static ResponseInfo zza(ru3 ru3Var) {
        if (ru3Var != null) {
            return new ResponseInfo(ru3Var);
        }
        return null;
    }

    public final List<AdapterResponseInfo> getAdapterResponses() {
        return this.b;
    }

    public final String getMediationAdapterClassName() {
        try {
            return this.a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            is0.zzc("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    public final String getResponseId() {
        try {
            return this.a.P4();
        } catch (RemoteException e) {
            is0.zzc("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    public final String toString() {
        try {
            return zzds().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    public final JSONObject zzds() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<AdapterResponseInfo> it = this.b.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().zzds());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }
}
