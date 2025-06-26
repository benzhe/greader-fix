package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class nn implements Callable<Purchase.a> {
    public final /* synthetic */ String e;
    public final /* synthetic */ fn f;

    public nn(fn fnVar, String str) {
        this.f = fnVar;
        this.e = str;
    }

    @Override // java.util.concurrent.Callable
    public final Purchase.a call() throws Exception {
        fn fnVar = this.f;
        String str = this.e;
        String strValueOf = String.valueOf(str);
        pr4.a("BillingClient", strValueOf.length() != 0 ? "Querying owned items, item type: ".concat(strValueOf) : new String("Querying owned items, item type: "));
        ArrayList arrayList = new ArrayList();
        boolean z = fnVar.l;
        boolean z2 = fnVar.q;
        String str2 = fnVar.b;
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str2);
        int i = 1;
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        String string = null;
        do {
            try {
                Bundle bundleN3 = fnVar.l ? fnVar.f.N3(9, fnVar.e.getPackageName(), str, string, bundle) : fnVar.f.v5(3, fnVar.e.getPackageName(), str, string);
                in inVar = un.j;
                if (bundleN3 == null) {
                    Object[] objArr = new Object[i];
                    objArr[0] = "getPurchase()";
                    pr4.b("BillingClient", String.format("%s got null owned items list", objArr));
                } else {
                    int iD = pr4.d(bundleN3, "BillingClient");
                    String strE = pr4.e(bundleN3, "BillingClient");
                    in inVar2 = new in();
                    inVar2.a = iD;
                    inVar2.b = strE;
                    if (iD != 0) {
                        pr4.b("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(iD)));
                        inVar = inVar2;
                        i = 1;
                    } else if (bundleN3.containsKey("INAPP_PURCHASE_ITEM_LIST") && bundleN3.containsKey("INAPP_PURCHASE_DATA_LIST") && bundleN3.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        ArrayList<String> stringArrayList = bundleN3.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList2 = bundleN3.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList3 = bundleN3.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList == null) {
                            i = 1;
                            pr4.b("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                        } else {
                            i = 1;
                            if (stringArrayList2 == null) {
                                pr4.b("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                            } else if (stringArrayList3 == null) {
                                pr4.b("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                            } else {
                                inVar = un.k;
                            }
                        }
                    } else {
                        i = 1;
                        pr4.b("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                    }
                }
                if (inVar != un.k) {
                    return new Purchase.a(inVar, null);
                }
                ArrayList<String> stringArrayList4 = bundleN3.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList5 = bundleN3.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList6 = bundleN3.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i2 = 0; i2 < stringArrayList5.size(); i2++) {
                    String str3 = stringArrayList5.get(i2);
                    String str4 = stringArrayList6.get(i2);
                    String strValueOf2 = String.valueOf(stringArrayList4.get(i2));
                    pr4.a("BillingClient", strValueOf2.length() != 0 ? "Sku is owned: ".concat(strValueOf2) : new String("Sku is owned: "));
                    try {
                        Purchase purchase = new Purchase(str3, str4);
                        JSONObject jSONObject = purchase.c;
                        if (TextUtils.isEmpty(jSONObject.optString("token", jSONObject.optString("purchaseToken")))) {
                            pr4.b("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e) {
                        String strValueOf3 = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(strValueOf3.length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(strValueOf3);
                        pr4.b("BillingClient", sb.toString());
                        return new Purchase.a(un.j, null);
                    }
                }
                string = bundleN3.getString("INAPP_CONTINUATION_TOKEN");
                String strValueOf4 = String.valueOf(string);
                pr4.a("BillingClient", strValueOf4.length() != 0 ? "Continuation token: ".concat(strValueOf4) : new String("Continuation token: "));
            } catch (Exception e2) {
                String strValueOf5 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(strValueOf5.length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(strValueOf5);
                sb2.append("; try to reconnect");
                pr4.b("BillingClient", sb2.toString());
                return new Purchase.a(un.l, null);
            }
        } while (!TextUtils.isEmpty(string));
        return new Purchase.a(un.k, arrayList);
    }
}
