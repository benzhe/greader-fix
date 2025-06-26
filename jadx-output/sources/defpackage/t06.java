package defpackage;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import com.google.firebase.inappmessaging.display.R$id;
import com.google.firebase.inappmessaging.display.R$layout;
import com.google.firebase.inappmessaging.display.internal.layout.FiamFrameLayout;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public class t06 extends q06 {
    public FiamFrameLayout d;
    public ViewGroup e;
    public ImageView f;
    public Button g;

    public t06(f06 f06Var, LayoutInflater layoutInflater, j96 j96Var) {
        super(f06Var, layoutInflater, j96Var);
    }

    @Override // defpackage.q06
    public View c() {
        return this.e;
    }

    @Override // defpackage.q06
    public ImageView e() {
        return this.f;
    }

    @Override // defpackage.q06
    public ViewGroup f() {
        return this.d;
    }

    @Override // defpackage.q06
    public ViewTreeObserver.OnGlobalLayoutListener g(Map<b96, View.OnClickListener> map, View.OnClickListener onClickListener) {
        View viewInflate = this.c.inflate(R$layout.image, (ViewGroup) null);
        this.d = (FiamFrameLayout) viewInflate.findViewById(R$id.image_root);
        this.e = (ViewGroup) viewInflate.findViewById(R$id.image_content_root);
        this.f = (ImageView) viewInflate.findViewById(R$id.image_view);
        this.g = (Button) viewInflate.findViewById(R$id.collapse_button);
        this.f.setMaxHeight(this.b.a());
        this.f.setMaxWidth(this.b.b());
        if (this.a.a.equals(MessageType.IMAGE_ONLY)) {
            i96 i96Var = (i96) this.a;
            ImageView imageView = this.f;
            h96 h96Var = i96Var.c;
            imageView.setVisibility((h96Var == null || TextUtils.isEmpty(h96Var.a)) ? 8 : 0);
            this.f.setOnClickListener(map.get(i96Var.d));
        }
        this.d.setDismissListener(onClickListener);
        this.g.setOnClickListener(onClickListener);
        return null;
    }
}
