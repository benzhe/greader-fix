package com.noinnion.android.greader.ui.locale;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.service.SyncService;
import defpackage.iw6;
import defpackage.jo;
import defpackage.n56;
import defpackage.nn6;
import defpackage.u7;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class LocaleFireReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!"com.twofortyfouram.locale.intent.action.FIRE_SETTING".equals(intent.getAction())) {
            StringBuilder sbZ = jo.z("Locale:");
            sbZ.append(String.format("Received unexpected Intent action %s", intent.getAction()));
            Log.e("gReader", sbZ.toString());
            return;
        }
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                extras.containsKey(null);
            }
            Bundle bundleExtra = intent.getBundleExtra("com.twofortyfouram.locale.intent.extra.BUNDLE");
            if (bundleExtra == null) {
                Log.e("gReader", "Locale: Received null BUNDLE");
                return;
            }
            try {
                bundleExtra.containsKey(null);
                if (!bundleExtra.containsKey("com.noinnion.android.greader.reader.extra.TAG")) {
                    Log.e("gReader", "Locale: Missing STATE param in Bundle");
                    return;
                }
                try {
                    String string = bundleExtra.getString("com.noinnion.android.greader.reader.extra.TAG");
                    int i = bundleExtra.getInt("com.noinnion.android.greader.reader.extra.ACTION");
                    if (i != 0 && i != 1) {
                        if (i == 2) {
                            new nn6(context, string, 0L).execute(new Void[0]);
                            return;
                        }
                        if (i == 3) {
                            n56.F1(context, string);
                            return;
                        }
                        if (i != 4 || TextUtils.isEmpty(string)) {
                            return;
                        }
                        for (String str : string.split(";")) {
                            String[] strArrSplit = str.split("=");
                            if (strArrSplit.length == 2) {
                                try {
                                    if (strArrSplit[0].equals("sync") && !strArrSplit[1].equals("-1")) {
                                        int iIntValue = Integer.valueOf(strArrSplit[1]).intValue();
                                        Method method = iw6.a;
                                        iw6.V(context, "sync_auto_update", String.valueOf(iIntValue));
                                    } else if (strArrSplit[0].equals("offline") && !strArrSplit[1].equals("-1")) {
                                        int iIntValue2 = Integer.valueOf(strArrSplit[1]).intValue();
                                        Method method2 = iw6.a;
                                        iw6.V(context, "offline_usage", String.valueOf(iIntValue2));
                                    } else if (strArrSplit[0].equals("notification") && !strArrSplit[1].equals("-1")) {
                                        iw6.S(context, "sync_notifiable", Integer.valueOf(strArrSplit[1]).intValue() == 1);
                                    } else if (strArrSplit[0].equals("theme") && !strArrSplit[1].equals("-1")) {
                                        int iIntValue3 = Integer.valueOf(context.getResources().getStringArray(R.array.application_theme_values)[Integer.valueOf(strArrSplit[1]).intValue()]).intValue();
                                        Method method3 = iw6.a;
                                        iw6.V(context, "application_theme", String.valueOf(iIntValue3));
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                        return;
                    }
                    Intent intent2 = new Intent(context, (Class<?>) SyncService.class);
                    if (string != null && string.startsWith("user/")) {
                        intent2.putExtra("tagUid", string);
                    } else if (string == null || !string.startsWith(RssReaderClient.USER_FEED)) {
                        intent2.putExtra("manual_sync", true);
                    } else {
                        intent2.putExtra("subUid", string);
                    }
                    if (i == 1) {
                        intent2.putExtra("sync_offline", true);
                    }
                    Object obj = u7.a;
                    if (Build.VERSION.SDK_INT >= 26) {
                        context.startForegroundService(intent);
                    } else {
                        context.startService(intent);
                    }
                } catch (Error e2) {
                    StringBuilder sbZ2 = jo.z("Locale:");
                    sbZ2.append(e2.getLocalizedMessage());
                    Log.e("gReader", sbZ2.toString());
                }
            } catch (Exception e3) {
                Log.e("gReader", "Locale: Custom serializable attack detected; do not send custom Serializable subclasses to this receiver", e3);
            }
        } catch (Exception e4) {
            Log.e("gReader", "Locale: Custom serializable attack detected; do not send custom Serializable subclasses to this receiver", e4);
        }
    }
}
