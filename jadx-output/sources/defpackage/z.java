package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;

/* loaded from: classes.dex */
public class z implements AdapterView.OnItemClickListener {
    public final /* synthetic */ AlertController e;
    public final /* synthetic */ AlertController.b f;

    public z(AlertController.b bVar, AlertController alertController) {
        this.f = bVar;
        this.e = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f.r.onClick(this.e.b, i);
        if (this.f.u) {
            return;
        }
        this.e.b.dismiss();
    }
}
