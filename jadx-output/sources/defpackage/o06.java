package defpackage;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.firebase.inappmessaging.display.R$id;
import com.google.firebase.inappmessaging.display.R$layout;
import com.google.firebase.inappmessaging.display.internal.ResizableImageView;
import com.google.firebase.inappmessaging.display.internal.layout.FiamFrameLayout;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public class o06 extends q06 {
    public FiamFrameLayout d;
    public ViewGroup e;
    public TextView f;
    public ResizableImageView g;
    public TextView h;
    public View.OnClickListener i;

    public o06(f06 f06Var, LayoutInflater layoutInflater, j96 j96Var) {
        super(f06Var, layoutInflater, j96Var);
    }

    @Override // defpackage.q06
    public boolean a() {
        return true;
    }

    @Override // defpackage.q06
    public f06 b() {
        return this.b;
    }

    @Override // defpackage.q06
    public View c() {
        return this.e;
    }

    @Override // defpackage.q06
    public View.OnClickListener d() {
        return this.i;
    }

    @Override // defpackage.q06
    public ImageView e() {
        return this.g;
    }

    @Override // defpackage.q06
    public ViewGroup f() {
        return this.d;
    }

    @Override // defpackage.q06
    public ViewTreeObserver.OnGlobalLayoutListener g(Map<b96, View.OnClickListener> map, View.OnClickListener onClickListener) {
        View viewInflate = this.c.inflate(R$layout.banner, (ViewGroup) null);
        this.d = (FiamFrameLayout) viewInflate.findViewById(R$id.banner_root);
        this.e = (ViewGroup) viewInflate.findViewById(R$id.banner_content_root);
        this.f = (TextView) viewInflate.findViewById(R$id.banner_body);
        this.g = (ResizableImageView) viewInflate.findViewById(R$id.banner_image);
        this.h = (TextView) viewInflate.findViewById(R$id.banner_title);
        if (this.a.a.equals(MessageType.BANNER)) {
            d96 d96Var = (d96) this.a;
            if (!TextUtils.isEmpty(d96Var.g)) {
                h(this.e, d96Var.g);
            }
            ResizableImageView resizableImageView = this.g;
            h96 h96Var = d96Var.e;
            resizableImageView.setVisibility((h96Var == null || TextUtils.isEmpty(h96Var.a)) ? 8 : 0);
            p96 p96Var = d96Var.c;
            if (p96Var != null) {
                if (!TextUtils.isEmpty(p96Var.a)) {
                    this.h.setText(d96Var.c.a);
                }
                if (!TextUtils.isEmpty(d96Var.c.b)) {
                    this.h.setTextColor(Color.parseColor(d96Var.c.b));
                }
            }
            p96 p96Var2 = d96Var.d;
            if (p96Var2 != null) {
                if (!TextUtils.isEmpty(p96Var2.a)) {
                    this.f.setText(d96Var.d.a);
                }
                if (!TextUtils.isEmpty(d96Var.d.b)) {
                    this.f.setTextColor(Color.parseColor(d96Var.d.b));
                }
            }
            f06 f06Var = this.b;
            int iMin = Math.min(f06Var.d.intValue(), f06Var.c.intValue());
            ViewGroup.LayoutParams layoutParams = this.d.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -2);
            }
            layoutParams.width = iMin;
            this.d.setLayoutParams(layoutParams);
            this.g.setMaxHeight(f06Var.a());
            this.g.setMaxWidth(f06Var.b());
            this.i = onClickListener;
            this.d.setDismissListener(onClickListener);
            this.e.setOnClickListener(map.get(d96Var.f));
        }
        return null;
    }
}
