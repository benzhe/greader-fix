package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.SystemAlarmService;

/* loaded from: classes.dex */
public class xk implements ik {
    public static final String f = vj.e("SystemAlarmScheduler");
    public final Context e;

    public xk(Context context) {
        this.e = context.getApplicationContext();
    }

    @Override // defpackage.ik
    public void a(dm... dmVarArr) {
        for (dm dmVar : dmVarArr) {
            vj.c().a(f, String.format("Scheduling work with workSpecId %s", dmVar.a), new Throwable[0]);
            this.e.startService(tk.d(this.e, dmVar.a));
        }
    }

    @Override // defpackage.ik
    public void d(String str) {
        Context context = this.e;
        String str2 = tk.h;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        this.e.startService(intent);
    }
}
