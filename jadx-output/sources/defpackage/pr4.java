package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class pr4 {
    public static final int a = Runtime.getRuntime().availableProcessors();

    public static void a(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static in c(Intent intent, String str) {
        if (intent == null) {
            b("BillingHelper", "Got null intent!");
            in inVar = new in();
            inVar.a = 6;
            inVar.b = "An internal error occurred.";
            return inVar;
        }
        int iD = d(intent.getExtras(), str);
        String strE = e(intent.getExtras(), str);
        in inVar2 = new in();
        inVar2.a = iD;
        inVar2.b = strE;
        return inVar2;
    }

    public static int d(Bundle bundle, String str) {
        if (bundle == null) {
            b(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            a(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        String name = obj.getClass().getName();
        b(str, name.length() != 0 ? "Unexpected type for bundle response code: ".concat(name) : new String("Unexpected type for bundle response code: "));
        return 6;
    }

    public static String e(Bundle bundle, String str) {
        if (bundle == null) {
            b(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            a(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        String name = obj.getClass().getName();
        b(str, name.length() != 0 ? "Unexpected type for debug message: ".concat(name) : new String("Unexpected type for debug message: "));
        return "";
    }

    public static Bundle f(int i, boolean z, String str, String str2, ArrayList<wn> arrayList) {
        Bundle bundle = new Bundle();
        if (i >= 9) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        if (i >= 9 && z) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (i >= 14) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            boolean z2 = false;
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.get(i2);
                arrayList2.add(null);
                z2 |= !TextUtils.isEmpty(null);
            }
            if (z2) {
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
            }
        }
        return bundle;
    }

    public static Purchase g(String str, String str2) {
        if (str == null || str2 == null) {
            b("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            return new Purchase(str, str2);
        } catch (JSONException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 47);
            sb.append("Got JSONException while parsing purchase data: ");
            sb.append(strValueOf);
            b("BillingHelper", sb.toString());
            return null;
        }
    }
}
