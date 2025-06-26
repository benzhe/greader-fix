package defpackage;

import android.content.DialogInterface;
import android.widget.ListAdapter;
import java.util.Objects;

/* loaded from: classes.dex */
public class no implements DialogInterface.OnShowListener {
    public final /* synthetic */ ro a;

    public no(ro roVar) {
        this.a = roVar;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        DialogInterface.OnShowListener onShowListener = this.a.y;
        if (onShowListener != null) {
            onShowListener.onShow(dialogInterface);
        }
        ro roVar = this.a;
        roVar.n.setAdapter((ListAdapter) roVar.o);
        this.a.n.startLayoutAnimation();
        Objects.requireNonNull(this.a.p);
        this.a.q.setVisibility(8);
    }
}
