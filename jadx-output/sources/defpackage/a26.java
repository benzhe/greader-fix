package defpackage;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class a26 {
    public ViewGroup a;
    public View.OnClickListener b;

    public a26(ViewGroup viewGroup, View.OnClickListener onClickListener) {
        this.a = viewGroup;
        this.b = onClickListener;
    }

    public Boolean a(KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return null;
        }
        View.OnClickListener onClickListener = this.b;
        if (onClickListener == null) {
            return Boolean.FALSE;
        }
        onClickListener.onClick(this.a);
        return Boolean.TRUE;
    }
}
