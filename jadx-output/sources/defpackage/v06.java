package defpackage;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.firebase.inappmessaging.display.R$id;
import com.google.firebase.inappmessaging.display.R$layout;
import com.google.firebase.inappmessaging.display.internal.layout.FiamRelativeLayout;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public class v06 extends q06 {
    public FiamRelativeLayout d;
    public ViewGroup e;
    public ScrollView f;
    public Button g;
    public View h;
    public ImageView i;
    public TextView j;
    public TextView k;
    public k96 l;
    public ViewTreeObserver.OnGlobalLayoutListener m;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            v06.this.i.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    public v06(f06 f06Var, LayoutInflater layoutInflater, j96 j96Var) {
        super(f06Var, layoutInflater, j96Var);
        this.m = new a();
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
    public ImageView e() {
        return this.i;
    }

    @Override // defpackage.q06
    public ViewGroup f() {
        return this.d;
    }

    @Override // defpackage.q06
    public ViewTreeObserver.OnGlobalLayoutListener g(Map<b96, View.OnClickListener> map, View.OnClickListener onClickListener) {
        e96 e96Var;
        View viewInflate = this.c.inflate(R$layout.modal, (ViewGroup) null);
        this.f = (ScrollView) viewInflate.findViewById(R$id.body_scroll);
        this.g = (Button) viewInflate.findViewById(R$id.button);
        this.h = viewInflate.findViewById(R$id.collapse_button);
        this.i = (ImageView) viewInflate.findViewById(R$id.image_view);
        this.j = (TextView) viewInflate.findViewById(R$id.message_body);
        this.k = (TextView) viewInflate.findViewById(R$id.message_title);
        this.d = (FiamRelativeLayout) viewInflate.findViewById(R$id.modal_root);
        this.e = (ViewGroup) viewInflate.findViewById(R$id.modal_content_root);
        if (this.a.a.equals(MessageType.MODAL)) {
            k96 k96Var = (k96) this.a;
            this.l = k96Var;
            h96 h96Var = k96Var.e;
            if (h96Var == null || TextUtils.isEmpty(h96Var.a)) {
                this.i.setVisibility(8);
            } else {
                this.i.setVisibility(0);
            }
            p96 p96Var = k96Var.c;
            if (p96Var != null) {
                if (TextUtils.isEmpty(p96Var.a)) {
                    this.k.setVisibility(8);
                } else {
                    this.k.setVisibility(0);
                    this.k.setText(k96Var.c.a);
                }
                if (!TextUtils.isEmpty(k96Var.c.b)) {
                    this.k.setTextColor(Color.parseColor(k96Var.c.b));
                }
            }
            p96 p96Var2 = k96Var.d;
            if (p96Var2 == null || TextUtils.isEmpty(p96Var2.a)) {
                this.f.setVisibility(8);
                this.j.setVisibility(8);
            } else {
                this.f.setVisibility(0);
                this.j.setVisibility(0);
                this.j.setTextColor(Color.parseColor(k96Var.d.b));
                this.j.setText(k96Var.d.a);
            }
            b96 b96Var = this.l.f;
            if (b96Var == null || (e96Var = b96Var.b) == null || TextUtils.isEmpty(e96Var.a.a)) {
                this.g.setVisibility(8);
            } else {
                q06.i(this.g, b96Var.b);
                Button button = this.g;
                View.OnClickListener onClickListener2 = map.get(this.l.f);
                if (button != null) {
                    button.setOnClickListener(onClickListener2);
                }
                this.g.setVisibility(0);
            }
            f06 f06Var = this.b;
            this.i.setMaxHeight(f06Var.a());
            this.i.setMaxWidth(f06Var.b());
            this.h.setOnClickListener(onClickListener);
            this.d.setDismissListener(onClickListener);
            h(this.e, this.l.g);
        }
        return this.m;
    }
}
