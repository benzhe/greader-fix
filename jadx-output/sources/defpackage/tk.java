package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import defpackage.wk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class tk implements fk {
    public static final String h = vj.e("CommandHandler");
    public final Context e;
    public final Map<String, fk> f = new HashMap();
    public final Object g = new Object();

    public tk(Context context) {
        this.e = context;
    }

    public static Intent a(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    public static Intent b(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent d(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // defpackage.fk
    public void c(String str, boolean z) {
        synchronized (this.g) {
            fk fkVarRemove = this.f.remove(str);
            if (fkVarRemove != null) {
                fkVarRemove.c(str, z);
            }
        }
    }

    public void e(Intent intent, int i, wk wkVar) {
        boolean z;
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            vj.c().a(h, String.format("Handling constraints changed %s", intent), new Throwable[0]);
            uk ukVar = new uk(this.e, i, wkVar);
            List<dm> listD = ((fm) wkVar.i.c.n()).d();
            Context context = ukVar.a;
            String str = ConstraintProxy.a;
            ArrayList arrayList = (ArrayList) listD;
            Iterator it = arrayList.iterator();
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            while (it.hasNext()) {
                qj qjVar = ((dm) it.next()).j;
                z2 |= qjVar.d;
                z3 |= qjVar.b;
                z4 |= qjVar.e;
                z5 |= qjVar.a != wj.NOT_REQUIRED;
                if (z2 && z3 && z4 && z5) {
                    break;
                }
            }
            String str2 = ConstraintProxyUpdateReceiver.a;
            Intent intent2 = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
            intent2.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
            intent2.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z2).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z3).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z4).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z5);
            context.sendBroadcast(intent2);
            ukVar.d.b(listD);
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            long jCurrentTimeMillis = System.currentTimeMillis();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                dm dmVar = (dm) it2.next();
                String str3 = dmVar.a;
                if (jCurrentTimeMillis >= dmVar.a() && (!dmVar.b() || ukVar.d.a(str3))) {
                    arrayList2.add(dmVar);
                }
            }
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                String str4 = ((dm) it3.next()).a;
                Intent intentB = b(ukVar.a, str4);
                vj.c().a(uk.e, String.format("Creating a delay_met command for workSpec with id (%s)", str4), new Throwable[0]);
                wk wkVar2 = ukVar.c;
                wkVar2.k.post(new wk.b(wkVar2, intentB, ukVar.b));
            }
            ukVar.d.c();
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            vj.c().a(h, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
            wkVar.i.d();
            return;
        }
        Bundle extras = intent.getExtras();
        String[] strArr = {"KEY_WORKSPEC_ID"};
        if (extras == null || extras.isEmpty()) {
            z = false;
            break;
        }
        for (int i2 = 0; i2 < 1; i2++) {
            if (extras.get(strArr[i2]) == null) {
                z = false;
                break;
            }
        }
        z = true;
        if (!z) {
            vj.c().b(h, String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID"), new Throwable[0]);
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
            vj vjVarC = vj.c();
            String str5 = h;
            vjVarC.a(str5, String.format("Handling schedule work for %s", string), new Throwable[0]);
            WorkDatabase workDatabase = wkVar.i.c;
            workDatabase.c();
            try {
                dm dmVarH = ((fm) workDatabase.n()).h(string);
                if (dmVarH == null) {
                    vj.c().f(str5, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
                } else if (dmVarH.b.i()) {
                    vj.c().f(str5, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                } else {
                    long jA = dmVarH.a();
                    if (dmVarH.b()) {
                        vj.c().a(str5, String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(jA)), new Throwable[0]);
                        sk.b(this.e, wkVar.i, string, jA);
                        wkVar.k.post(new wk.b(wkVar, a(this.e), i));
                    } else {
                        vj.c().a(str5, String.format("Setting up Alarms for %s at %s", string, Long.valueOf(jA)), new Throwable[0]);
                        sk.b(this.e, wkVar.i, string, jA);
                    }
                    workDatabase.j();
                }
                return;
            } finally {
                workDatabase.g();
            }
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            Bundle extras2 = intent.getExtras();
            synchronized (this.g) {
                String string2 = extras2.getString("KEY_WORKSPEC_ID");
                vj vjVarC2 = vj.c();
                String str6 = h;
                vjVarC2.a(str6, String.format("Handing delay met for %s", string2), new Throwable[0]);
                if (this.f.containsKey(string2)) {
                    vj.c().a(str6, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string2), new Throwable[0]);
                } else {
                    vk vkVar = new vk(this.e, i, string2, wkVar);
                    this.f.put(string2, vkVar);
                    vkVar.f();
                }
            }
            return;
        }
        if (!"ACTION_STOP_WORK".equals(action)) {
            if (!"ACTION_EXECUTION_COMPLETED".equals(action)) {
                vj.c().f(h, String.format("Ignoring intent %s", intent), new Throwable[0]);
                return;
            }
            Bundle extras3 = intent.getExtras();
            String string3 = extras3.getString("KEY_WORKSPEC_ID");
            boolean z6 = extras3.getBoolean("KEY_NEEDS_RESCHEDULE");
            vj.c().a(h, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
            c(string3, z6);
            return;
        }
        String string4 = intent.getExtras().getString("KEY_WORKSPEC_ID");
        vj.c().a(h, String.format("Handing stopWork work for %s", string4), new Throwable[0]);
        wkVar.i.e(string4);
        Context context2 = this.e;
        nk nkVar = wkVar.i;
        String str7 = sk.a;
        zl zlVar = (zl) nkVar.c.l();
        xl xlVarA = zlVar.a(string4);
        if (xlVarA != null) {
            sk.a(context2, string4, xlVarA.b);
            vj.c().a(sk.a, String.format("Removing SystemIdInfo for workSpecId (%s)", string4), new Throwable[0]);
            zlVar.c(string4);
        }
        wkVar.c(string4, false);
    }
}
