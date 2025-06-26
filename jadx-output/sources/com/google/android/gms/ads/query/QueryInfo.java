package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.internal.ads.zzazi;
import com.google.android.gms.internal.ads.zzvq;
import defpackage.kv3;
import defpackage.nr3;
import defpackage.os3;
import defpackage.pl0;
import defpackage.ql0;
import defpackage.y20;
import defpackage.zq0;
import defpackage.zu3;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class QueryInfo {
    public final kv3 a;

    public QueryInfo(kv3 kv3Var) {
        this.a = kv3Var;
    }

    public static void generate(Context context, AdFormat adFormat, AdRequest adRequest, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zu3 zu3VarZzdt = adRequest == null ? null : adRequest.zzdt();
        zq0 zq0VarA = ql0.a(context);
        if (zq0VarA == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        try {
            zq0VarA.R5(new y20(context), new zzazi(null, adFormat.name(), null, zu3VarZzdt == null ? new zzvq(8, -1L, new Bundle(), -1, new ArrayList(), false, -1, false, null, null, null, null, new Bundle(), new Bundle(), new ArrayList(), null, null, false, null, -1, null, new ArrayList(), 60000) : nr3.a(context, zu3VarZzdt)), new pl0(queryInfoGenerationCallback));
        } catch (RemoteException unused) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }

    public String getQuery() {
        return this.a.a;
    }

    public Bundle getQueryBundle() {
        return this.a.b;
    }

    public String getRequestId() {
        String str = os3.j.i.get(this);
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException unused) {
            return "";
        }
    }
}
