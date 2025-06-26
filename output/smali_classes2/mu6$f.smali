.class public Lmu6$f;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lkp6$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lmu6;


# direct methods
.method public constructor <init>(Lmu6;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkp6$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmu6$f;->e:Lmu6;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0c0073

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Lmu6$f;->e:Lmu6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lmu6$f;->e:Lmu6;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0073

    .line 3
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkp6$a;

    const p3, 0x7f090143

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v1, 0x7f0900d5

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v2

    .line 8
    invoke-virtual {v2, p3}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 9
    iget v2, p1, Lkp6$a;->c:I

    const/16 v3, 0x64

    const/4 v4, -0x1

    const v5, -0xbbbbbc

    const v6, 0x7f09031c

    const v7, -0x777778

    if-ge v2, v3, :cond_6

    .line 10
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11
    iget-object v3, p0, Lmu6$f;->e:Lmu6;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p1, v3}, Lkp6$a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-static {}, Llw6;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    iget-boolean v3, p1, Lkp6$a;->k:Z

    if-eqz v3, :cond_2

    const v4, -0x777778

    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 14
    :cond_3
    iget-boolean v3, p1, Lkp6$a;->k:Z

    if-eqz v3, :cond_4

    const v5, -0x777778

    :cond_4
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 v2, 0x4

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget v2, p1, Lkp6$a;->c:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v2, 0x7f080190

    .line 17
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    const v2, 0x7f080191

    .line 19
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    const v0, 0x7f080192

    .line 21
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f080193

    .line 22
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    :goto_1
    iget-object p3, p1, Lkp6$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p1, Lkp6$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {p1}, Lkp6$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 27
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v3

    invoke-virtual {v3, v2, p3}, Lhz6;->f(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_7
    const v2, 0x7f0800fd

    .line 28
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    :goto_2
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 30
    iget-object v2, p1, Lkp6$a;->d:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-static {}, Llw6;->k()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 32
    iget-boolean v2, p1, Lkp6$a;->k:Z

    if-eqz v2, :cond_8

    const v4, -0x777778

    :cond_8
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 33
    :cond_9
    iget-boolean v2, p1, Lkp6$a;->k:Z

    if-eqz v2, :cond_a

    const v5, -0x777778

    :cond_a
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-wide v2, p1, Lkp6$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-wide v2, p1, Lkp6$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    :goto_4
    iget-object p1, p0, Lmu6$f;->e:Lmu6;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
