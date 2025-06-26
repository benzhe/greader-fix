package defpackage;

import android.content.DialogInterface;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import com.cocosw.bottomsheet.ClosableSlidingLayout;
import com.cocosw.bottomsheet.R$id;
import java.util.Objects;

/* loaded from: classes.dex */
public class po implements AdapterView.OnItemClickListener {
    public final /* synthetic */ ClosableSlidingLayout e;
    public final /* synthetic */ ro f;

    public po(ro roVar, ClosableSlidingLayout closableSlidingLayout) {
        this.f = roVar;
        this.e = closableSlidingLayout;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (((MenuItem) this.f.o.getItem(i)).getItemId() == R$id.bs_more) {
            ro.a(this.f);
            this.e.o = false;
            return;
        }
        if (!((lo) this.f.o.getItem(i)).c()) {
            Objects.requireNonNull(this.f.p);
            ro roVar = this.f;
            DialogInterface.OnClickListener onClickListener = roVar.p.f;
            if (onClickListener != null) {
                onClickListener.onClick(roVar, ((MenuItem) roVar.o.getItem(i)).getItemId());
            }
        }
        this.f.dismiss();
    }
}
