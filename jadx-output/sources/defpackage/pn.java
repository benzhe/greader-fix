package defpackage;

import android.os.Bundle;
import com.android.billingclient.api.SkuDetails;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class pn implements Callable<Void> {
    public final /* synthetic */ String e;
    public final /* synthetic */ List f;
    public final /* synthetic */ ln g;
    public final /* synthetic */ fn h;

    public pn(fn fnVar, String str, List list, ln lnVar) {
        this.h = fnVar;
        this.e = str;
        this.f = list;
        this.g = lnVar;
    }

    @Override // java.util.concurrent.Callable
    public final Void call() throws Exception {
        vn vnVar;
        fn fnVar = this.h;
        String str = this.e;
        List list = this.f;
        Objects.requireNonNull(fnVar);
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                vnVar = new vn(0, "", arrayList);
                break;
            }
            int i2 = i + 20;
            ArrayList arrayList2 = new ArrayList(list.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(((wn) arrayList2.get(i3)).a);
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", fnVar.b);
            try {
                Bundle bundleQ3 = fnVar.m ? fnVar.f.q3(10, fnVar.e.getPackageName(), str, bundle, pr4.f(fnVar.j, fnVar.q, fnVar.b, null, arrayList2)) : fnVar.f.U4(3, fnVar.e.getPackageName(), str, bundle);
                if (bundleQ3 == null) {
                    pr4.b("BillingClient", "querySkuDetailsAsync got null sku details list");
                    vnVar = new vn(4, "Item is unavailable for purchase.", null);
                    break;
                }
                if (bundleQ3.containsKey("DETAILS_LIST")) {
                    ArrayList<String> stringArrayList = bundleQ3.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList == null) {
                        pr4.b("BillingClient", "querySkuDetailsAsync got null response list");
                        vnVar = new vn(4, "Item is unavailable for purchase.", null);
                        break;
                    }
                    for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                        try {
                            SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i4));
                            String strValueOf = String.valueOf(skuDetails);
                            StringBuilder sb = new StringBuilder(strValueOf.length() + 17);
                            sb.append("Got sku details: ");
                            sb.append(strValueOf);
                            pr4.a("BillingClient", sb.toString());
                            arrayList.add(skuDetails);
                        } catch (JSONException unused) {
                            pr4.b("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                            vnVar = new vn(6, "Error trying to decode SkuDetails.", null);
                        }
                    }
                    i = i2;
                } else {
                    int iD = pr4.d(bundleQ3, "BillingClient");
                    String strE = pr4.e(bundleQ3, "BillingClient");
                    if (iD != 0) {
                        StringBuilder sb2 = new StringBuilder(50);
                        sb2.append("getSkuDetails() failed. Response code: ");
                        sb2.append(iD);
                        pr4.b("BillingClient", sb2.toString());
                        vnVar = new vn(iD, strE, arrayList);
                    } else {
                        pr4.b("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                        vnVar = new vn(6, strE, arrayList);
                    }
                }
            } catch (Exception e) {
                String strValueOf2 = String.valueOf(e);
                StringBuilder sb3 = new StringBuilder(strValueOf2.length() + 63);
                sb3.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                sb3.append(strValueOf2);
                pr4.b("BillingClient", sb3.toString());
                vnVar = new vn(-1, "Service connection is disconnected.", null);
            }
        }
        fn.h(this.h, new on(this, vnVar));
        return null;
    }
}
