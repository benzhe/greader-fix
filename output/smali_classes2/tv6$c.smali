.class public Ltv6$c;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Ltv6;


# direct methods
.method public constructor <init>(Ltv6;Landroid/content/Context;Landroid/database/Cursor;Ltv6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv6$c;->e:Ltv6;

    const/4 p1, 0x0

    const p3, 0x7f0c0119

    .line 2
    invoke-direct {p0, p2, p1, p3, p3}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    return-void
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2

    .line 1
    new-instance p2, Lip6;

    invoke-direct {p2, p3}, Lip6;-><init>(Landroid/database/Cursor;)V

    const p3, 0x7f090143

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 3
    iget-object p4, p2, Lip6;->j:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 4
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object p4

    const-string v0, "https://plus.google.com/_/favicon?domain="

    .line 5
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lip6;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p3}, Lhz6;->f(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const p4, 0x7f0800fd

    .line 6
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p3, 0x7f090174

    .line 7
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 8
    iget-object p4, p2, Lip6;->h:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p3, 0x1e

    const/16 p4, 0xa

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p1, p3, v0, p4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    iget-object p3, p2, Lip6;->f:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f09029f

    .line 11
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 p3, 0x8

    .line 12
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p3, p0, Ltv6$c;->e:Ltv6;

    .line 14
    iget-object p3, p3, Ltv6;->i:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 15
    iget-object p2, p2, Lip6;->f:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6

    .line 1
    new-instance v0, Lkp6$a;

    invoke-direct {v0, p3}, Lkp6$a;-><init>(Landroid/database/Cursor;)V

    const v1, 0x7f090143

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 6
    iget v3, v0, Lkp6$a;->c:I

    const v4, 0x7f090174

    const/16 v5, 0x64

    if-ge v3, v5, :cond_2

    .line 7
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p2}, Lkp6$a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget p2, v0, Lkp6$a;->c:I

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p4, :cond_0

    const p2, 0x7f0800d2

    goto :goto_0

    :cond_0
    const p2, 0x7f0800d3

    .line 10
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 12
    new-instance p2, Ltv6$c$a;

    invoke-direct {p2, p0}, Ltv6$c$a;-><init>(Ltv6$c;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_1
    const p2, 0x7f080191

    .line 13
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_2
    const p2, 0x7f080192

    .line 14
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_1
    const p2, 0x7f080193

    .line 15
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object p2, v0, Lkp6$a;->e:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string p2, "https://plus.google.com/_/favicon?domain="

    .line 17
    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lkp6$a;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, v1}, Lhz6;->f(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    const p2, 0x7f0800fd

    .line 18
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 20
    iget-object p3, v0, Lkp6$a;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :goto_2
    iget-object p2, v0, Lkp6$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f09029f

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 p2, 0x8

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p2, p0, Ltv6$c;->e:Ltv6;

    .line 25
    iget-object p2, p2, Ltv6;->i:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 26
    iget-object p3, v0, Lkp6$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4

    .line 1
    iget-object v0, p0, Ltv6$c;->e:Ltv6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Ltv6$c;->e:Ltv6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v2, Lkp6$a;

    invoke-direct {v2, p1}, Lkp6$a;-><init>(Landroid/database/Cursor;)V

    .line 4
    iget p1, v2, Lkp6$a;->c:I

    const/16 v3, 0xb

    if-ne p1, v3, :cond_1

    .line 5
    iget-object p1, v2, Lkp6$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6
    invoke-static {v0, p1, v1, v2}, Lep6;->x(Landroid/content/Context;Ljava/lang/String;ZZ)Lvd;

    move-result-object p1

    invoke-virtual {p1}, Lvd;->k()Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method
