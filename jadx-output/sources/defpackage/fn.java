package defpackage;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.billingclient.api.ProxyBillingActivity;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import defpackage.fq;
import defpackage.iq;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class fn extends en {
    public int a;
    public final String b;
    public final Handler c;
    public yn d;
    public Context e;
    public sr4 f;
    public tn g;
    public boolean h;
    public boolean i;
    public int j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public ExecutorService r;

    public fn(String str, Context context, jn jnVar) {
        String str2;
        try {
            str2 = (String) Class.forName("io").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            str2 = "3.0.3";
        }
        this.a = 0;
        this.c = new Handler(Looper.getMainLooper());
        this.j = 0;
        this.b = str2;
        Context applicationContext = context.getApplicationContext();
        this.e = applicationContext;
        this.d = new yn(applicationContext, jnVar);
        this.q = true;
    }

    public static void h(fn fnVar, Runnable runnable) {
        Objects.requireNonNull(fnVar);
        if (Thread.interrupted()) {
            return;
        }
        fnVar.c.post(runnable);
    }

    @Override // defpackage.en
    public final void a(cn cnVar, dn dnVar) {
        if (!c()) {
            ((fq.a) dnVar).a(un.l);
            return;
        }
        if (TextUtils.isEmpty(cnVar.a)) {
            pr4.b("BillingClient", "Please provide a valid purchase token.");
            ((fq.a) dnVar).a(un.i);
        } else if (!this.l) {
            ((fq.a) dnVar).a(un.b);
        } else if (i(new co(this, cnVar, dnVar), 30000L, new Cdo(dnVar)) == null) {
            ((fq.a) dnVar).a(g());
        }
    }

    @Override // defpackage.en
    public final void b() {
        try {
            this.d.a();
            tn tnVar = this.g;
            if (tnVar != null) {
                synchronized (tnVar.a) {
                    tnVar.c = null;
                    tnVar.b = true;
                }
            }
            if (this.g != null && this.f != null) {
                pr4.a("BillingClient", "Unbinding from service.");
                this.e.unbindService(this.g);
                this.g = null;
            }
            this.f = null;
            ExecutorService executorService = this.r;
            if (executorService != null) {
                executorService.shutdownNow();
                this.r = null;
            }
        } catch (Exception e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 48);
            sb.append("There was an exception while ending connection: ");
            sb.append(strValueOf);
            pr4.b("BillingClient", sb.toString());
        } finally {
            this.a = 3;
        }
    }

    @Override // defpackage.en
    public final boolean c() {
        return (this.a != 2 || this.f == null || this.g == null) ? false : true;
    }

    @Override // defpackage.en
    public final in d(Activity activity, hn hnVar) {
        String str;
        String str2;
        String str3;
        String str4;
        long j;
        Future futureI;
        String str5;
        String str6;
        String str7;
        Bundle bundle;
        int i;
        String str8;
        boolean z;
        String strOptString;
        String str9 = "BUY_INTENT";
        if (!c()) {
            in inVar = un.l;
            this.d.b.a.a(inVar, null);
            return inVar;
        }
        Objects.requireNonNull(hnVar);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(hnVar.g);
        SkuDetails skuDetails = (SkuDetails) arrayList.get(0);
        String strC = skuDetails.c();
        String str10 = "BillingClient";
        if (strC.equals("subs") && !this.h) {
            pr4.b("BillingClient", "Current client doesn't support subscriptions.");
            in inVar2 = un.n;
            this.d.b.a.a(inVar2, null);
            return inVar2;
        }
        String str11 = hnVar.c;
        if (str11 != null && !this.i) {
            pr4.b("BillingClient", "Current client doesn't support subscriptions update.");
            in inVar3 = un.o;
            this.d.b.a.a(inVar3, null);
            return inVar3;
        }
        if (((!hnVar.h && hnVar.b == null && hnVar.e == null && hnVar.f == 0 && !hnVar.a) ? false : true) && !this.k) {
            pr4.b("BillingClient", "Current client doesn't support extra params for buy intent.");
            in inVar4 = un.g;
            this.d.b.a.a(inVar4, null);
            return inVar4;
        }
        if (arrayList.size() > 1 && !this.p) {
            pr4.b("BillingClient", "Current client doesn't support multi-item purchases.");
            in inVar5 = un.p;
            this.d.b.a.a(inVar5, null);
            return inVar5;
        }
        String str12 = "";
        int i2 = 0;
        String str13 = "";
        while (i2 < arrayList.size()) {
            String strValueOf = String.valueOf(str13);
            String strValueOf2 = String.valueOf(arrayList.get(i2));
            String str14 = str12;
            String strS = jo.s(new StringBuilder(strValueOf.length() + strValueOf2.length()), strValueOf, strValueOf2);
            if (i2 < arrayList.size() - 1) {
                strS = String.valueOf(strS).concat(", ");
            }
            str13 = strS;
            i2++;
            str12 = str14;
        }
        String str15 = str12;
        StringBuilder sb = new StringBuilder(String.valueOf(str13).length() + 41 + strC.length());
        sb.append("Constructing buy intent for ");
        sb.append(str13);
        sb.append(", item type: ");
        sb.append(strC);
        pr4.a("BillingClient", sb.toString());
        if (this.k) {
            boolean z2 = this.l;
            boolean z3 = this.q;
            String str16 = this.b;
            Bundle bundle2 = new Bundle();
            bundle2.putString("playBillingLibraryVersion", str16);
            int i3 = hnVar.f;
            if (i3 != 0) {
                bundle2.putInt("prorationMode", i3);
            }
            if (!TextUtils.isEmpty(hnVar.b)) {
                bundle2.putString("accountId", hnVar.b);
            }
            if (!TextUtils.isEmpty(hnVar.e)) {
                bundle2.putString("obfuscatedProfileId", hnVar.e);
            }
            if (hnVar.h) {
                i = 1;
                bundle2.putBoolean("vr", true);
            } else {
                i = 1;
            }
            if (TextUtils.isEmpty(hnVar.c)) {
                str2 = "; try to reconnect";
            } else {
                String[] strArr = new String[i];
                str2 = "; try to reconnect";
                strArr[0] = hnVar.c;
                bundle2.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(strArr)));
            }
            if (!TextUtils.isEmpty(hnVar.d)) {
                bundle2.putString("oldSkuPurchaseToken", hnVar.d);
            }
            if (!TextUtils.isEmpty(null)) {
                bundle2.putString("oldSkuPurchaseId", null);
            }
            if (!TextUtils.isEmpty(null)) {
                bundle2.putString("paymentsPurchaseParams", null);
            }
            if (z2 && z3) {
                bundle2.putBoolean("enablePendingPurchases", true);
            }
            ArrayList<String> arrayList2 = new ArrayList<>();
            ArrayList<String> arrayList3 = new ArrayList<>();
            ArrayList<String> arrayList4 = new ArrayList<>();
            ArrayList<Integer> arrayList5 = new ArrayList<>();
            int size = arrayList.size();
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            str4 = str13;
            int i4 = 0;
            while (i4 < size) {
                int i5 = size;
                SkuDetails skuDetails2 = (SkuDetails) arrayList.get(i4);
                String str17 = str9;
                if (!skuDetails2.b.optString("skuDetailsToken").isEmpty()) {
                    arrayList2.add(skuDetails2.b.optString("skuDetailsToken"));
                }
                try {
                    strOptString = new JSONObject(skuDetails2.a).optString("offer_id_token");
                } catch (JSONException unused) {
                    strOptString = str15;
                }
                String str18 = str10;
                String strOptString2 = skuDetails2.b.optString("offer_id");
                int iOptInt = skuDetails2.b.optInt("offer_type");
                arrayList3.add(strOptString);
                z4 |= !TextUtils.isEmpty(strOptString);
                arrayList4.add(strOptString2);
                z5 |= !TextUtils.isEmpty(strOptString2);
                arrayList5.add(Integer.valueOf(iOptInt));
                z6 |= iOptInt != 0;
                i4++;
                str9 = str17;
                size = i5;
                str10 = str18;
            }
            str = str9;
            str3 = str10;
            if (!arrayList2.isEmpty()) {
                bundle2.putStringArrayList("skuDetailsTokens", arrayList2);
            }
            if (z4) {
                if (!this.n) {
                    in inVar6 = un.h;
                    this.d.b.a.a(inVar6, null);
                    return inVar6;
                }
                bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList3);
            }
            if (z5) {
                bundle2.putStringArrayList("SKU_OFFER_ID_LIST", arrayList4);
            }
            if (z6) {
                bundle2.putIntegerArrayList("SKU_OFFER_TYPE_LIST", arrayList5);
            }
            if (TextUtils.isEmpty(skuDetails.d())) {
                str8 = null;
                z = false;
            } else {
                bundle2.putString("skuPackageName", skuDetails.d());
                str8 = null;
                z = true;
            }
            if (!TextUtils.isEmpty(str8)) {
                bundle2.putString("accountName", str8);
            }
            if (arrayList.size() > 1) {
                ArrayList<String> arrayList6 = new ArrayList<>(arrayList.size() - 1);
                ArrayList<String> arrayList7 = new ArrayList<>(arrayList.size() - 1);
                for (int i6 = 1; i6 < arrayList.size(); i6++) {
                    arrayList6.add(((SkuDetails) arrayList.get(i6)).b());
                    arrayList7.add(((SkuDetails) arrayList.get(i6)).c());
                }
                bundle2.putStringArrayList("additionalSkus", arrayList6);
                bundle2.putStringArrayList("additionalSkuTypes", arrayList7);
            }
            if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                bundle2.putString("proxyPackage", stringExtra);
                try {
                    bundle2.putString("proxyPackageVersion", this.e.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                } catch (PackageManager.NameNotFoundException unused2) {
                    bundle2.putString("proxyPackageVersion", "package not found");
                }
            }
            j = 5000;
            futureI = i(new go(this, (this.o && z) ? 15 : this.l ? 9 : hnVar.h ? 7 : 6, skuDetails, strC, hnVar, bundle2), 5000L, null);
        } else {
            str = "BUY_INTENT";
            str2 = "; try to reconnect";
            str3 = "BillingClient";
            str4 = str13;
            j = 5000;
            futureI = str11 != null ? i(new ho(this, hnVar, skuDetails), 5000L, null) : i(new mn(this, skuDetails, strC), 5000L, null);
        }
        try {
            try {
                try {
                    bundle = (Bundle) futureI.get(j, TimeUnit.MILLISECONDS);
                    str5 = str3;
                } catch (CancellationException | TimeoutException unused3) {
                    str5 = str3;
                }
            } catch (CancellationException | TimeoutException unused4) {
                str6 = str2;
                str7 = str4;
                str5 = str3;
            }
        } catch (Exception unused5) {
            str5 = str3;
        }
        try {
            int iD = pr4.d(bundle, str5);
            String strE = pr4.e(bundle, str5);
            if (iD == 0) {
                Intent intent = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                String str19 = str;
                intent.putExtra(str19, (PendingIntent) bundle.getParcelable(str19));
                activity.startActivity(intent);
                return un.k;
            }
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Unable to buy item, Error response code: ");
            sb2.append(iD);
            pr4.b(str5, sb2.toString());
            in inVar7 = new in();
            inVar7.a = iD;
            inVar7.b = strE;
            this.d.b.a.a(inVar7, null);
            return inVar7;
        } catch (CancellationException | TimeoutException unused6) {
            str6 = str2;
            str7 = str4;
            StringBuilder sb3 = new StringBuilder(String.valueOf(str7).length() + 68);
            sb3.append("Time out while launching billing flow: ; for sku: ");
            sb3.append(str7);
            sb3.append(str6);
            pr4.b(str5, sb3.toString());
            in inVar8 = un.m;
            this.d.b.a.a(inVar8, null);
            return inVar8;
        } catch (Exception unused7) {
            StringBuilder sb4 = new StringBuilder(String.valueOf(str4).length() + 69);
            sb4.append("Exception while launching billing flow: ; for sku: ");
            sb4.append(str4);
            sb4.append(str2);
            pr4.b(str5, sb4.toString());
            in inVar9 = un.l;
            this.d.b.a.a(inVar9, null);
            return inVar9;
        }
    }

    @Override // defpackage.en
    public final Purchase.a e(String str) {
        if (!c()) {
            return new Purchase.a(un.l, null);
        }
        if (TextUtils.isEmpty(str)) {
            pr4.b("BillingClient", "Please provide a valid SKU type.");
            return new Purchase.a(un.f, null);
        }
        try {
            return (Purchase.a) i(new nn(this, str), 5000L, null).get(5000L, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException unused) {
            return new Purchase.a(un.m, null);
        } catch (Exception unused2) {
            return new Purchase.a(un.j, null);
        }
    }

    @Override // defpackage.en
    public final void f(kn knVar, ln lnVar) {
        if (!c()) {
            ((iq.a) lnVar).a(un.l, null);
            return;
        }
        String str = knVar.a;
        List<String> list = knVar.b;
        if (TextUtils.isEmpty(str)) {
            pr4.b("BillingClient", "Please fix the input params. SKU type can't be empty.");
            ((iq.a) lnVar).a(un.f, null);
            return;
        }
        if (list == null) {
            pr4.b("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            ((iq.a) lnVar).a(un.e, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("SKU must be set.");
            }
            arrayList.add(new wn(str2));
        }
        if (i(new pn(this, str, arrayList, lnVar), 30000L, new zn(lnVar)) == null) {
            ((iq.a) lnVar).a(g(), null);
        }
    }

    public final in g() {
        int i = this.a;
        return (i == 0 || i == 3) ? un.l : un.j;
    }

    public final <T> Future<T> i(Callable<T> callable, long j, Runnable runnable) {
        long j2 = (long) (j * 0.95d);
        if (this.r == null) {
            this.r = Executors.newFixedThreadPool(pr4.a, new eo(this));
        }
        try {
            Future<T> futureSubmit = this.r.submit(callable);
            this.c.postDelayed(new fo(futureSubmit, runnable), j2);
            return futureSubmit;
        } catch (Exception e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 28);
            sb.append("Async task throws exception ");
            sb.append(strValueOf);
            pr4.b("BillingClient", sb.toString());
            return null;
        }
    }
}
