package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class xn extends BroadcastReceiver {
    public final jn a;
    public boolean b;
    public final /* synthetic */ yn c;

    public /* synthetic */ xn(yn ynVar, jn jnVar) {
        this.c = ynVar;
        this.a = jnVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        in inVarC = pr4.c(intent, "BillingBroadcastManager");
        Bundle extras = intent.getExtras();
        ArrayList arrayList = null;
        if (extras != null) {
            ArrayList<String> stringArrayList = extras.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList2 = extras.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            ArrayList arrayList2 = new ArrayList();
            if (stringArrayList == null || stringArrayList2 == null) {
                pr4.b("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
                Purchase purchaseG = pr4.g(extras.getString("INAPP_PURCHASE_DATA"), extras.getString("INAPP_DATA_SIGNATURE"));
                if (purchaseG == null) {
                    pr4.b("BillingHelper", "Couldn't find single purchase data as well.");
                } else {
                    arrayList2.add(purchaseG);
                }
            } else {
                for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                    Purchase purchaseG2 = pr4.g(stringArrayList.get(i), stringArrayList2.get(i));
                    if (purchaseG2 != null) {
                        arrayList2.add(purchaseG2);
                    }
                }
            }
            arrayList = arrayList2;
        }
        this.a.a(inVarC, arrayList);
    }
}
