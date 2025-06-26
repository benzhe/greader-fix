.class public Llu6$f;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lip6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Llu6;


# direct methods
.method public constructor <init>(Llu6;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lip6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Llu6$f;->e:Llu6;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0c0073

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Llu6$f;->e:Llu6;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0073

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lip6;

    const p3, 0x7f090143

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 5
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p3}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 7
    invoke-virtual {p1}, Lip6;->a()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lhz6;->f(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0800fd

    .line 10
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p3, 0x7f09031c

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 12
    iget-object v0, p1, Lip6;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {}, Llw6;->k()Z

    move-result v0

    const v1, -0x777778

    if-eqz v0, :cond_3

    .line 14
    iget-boolean v0, p1, Lip6;->q:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const v1, -0x111112

    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 15
    :cond_3
    iget-boolean v0, p1, Lip6;->q:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const v1, -0xbbbbbc

    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    const p3, 0x7f0900d5

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 17
    iget-wide v0, p1, Lip6;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Llu6$f;->e:Llu6;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-wide v0, p1, Lip6;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
