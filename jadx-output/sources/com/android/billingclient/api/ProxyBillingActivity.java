package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import defpackage.pr4;

/* loaded from: classes.dex */
public class ProxyBillingActivity extends Activity {
    public ResultReceiver e;
    public boolean f;

    public final Intent a() {
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            r5 = this;
            super.onActivityResult(r6, r7, r8)
            r0 = 0
            java.lang.String r1 = "ProxyBillingActivity"
            r2 = 100
            if (r6 != r2) goto L47
            in r6 = defpackage.pr4.c(r8, r1)
            int r6 = r6.a
            r2 = -1
            if (r7 != r2) goto L19
            if (r6 == 0) goto L17
            r7 = -1
            goto L19
        L17:
            r6 = 0
            goto L26
        L19:
            r2 = 85
            java.lang.String r3 = "Activity finished with resultCode "
            java.lang.String r4 = " and billing's responseCode: "
            java.lang.String r7 = defpackage.jo.N(r2, r3, r7, r4, r6)
            defpackage.pr4.b(r1, r7)
        L26:
            android.os.ResultReceiver r7 = r5.e
            if (r7 == 0) goto L36
            if (r8 != 0) goto L2e
            r8 = 0
            goto L32
        L2e:
            android.os.Bundle r8 = r8.getExtras()
        L32:
            r7.send(r6, r8)
            goto L62
        L36:
            android.content.Intent r6 = r5.a()
            if (r8 == 0) goto L43
            android.os.Bundle r7 = r8.getExtras()
            r6.putExtras(r7)
        L43:
            r5.sendBroadcast(r6)
            goto L62
        L47:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r8 = 69
            r7.<init>(r8)
            java.lang.String r8 = "Got onActivityResult with wrong requestCode: "
            r7.append(r8)
            r7.append(r6)
            java.lang.String r6 = "; skipping..."
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            defpackage.pr4.b(r1, r6)
        L62:
            r5.f = r0
            r5.finish()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) throws IntentSender.SendIntentException {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            pr4.a("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.f = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("result_receiver")) {
                this.e = (ResultReceiver) bundle.getParcelable("result_receiver");
                return;
            }
            return;
        }
        pr4.a("ProxyBillingActivity", "Launching Play Store billing flow");
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
        } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
            this.e = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
        } else {
            pendingIntent = null;
        }
        try {
            this.f = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), 100, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 53);
            sb.append("Got exception while trying to start a purchase flow: ");
            sb.append(strValueOf);
            pr4.b("ProxyBillingActivity", sb.toString());
            ResultReceiver resultReceiver = this.e;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                Intent intentA = a();
                intentA.putExtra("RESPONSE_CODE", 6);
                intentA.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                sendBroadcast(intentA);
            }
            this.f = false;
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f) {
            Intent intentA = a();
            intentA.putExtra("RESPONSE_CODE", 1);
            intentA.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(intentA);
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.e;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f);
    }
}
