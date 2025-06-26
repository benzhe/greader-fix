.class public Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;Landroid/content/Context;Landroid/database/Cursor;Lqr6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    const/4 p1, 0x0

    const p3, 0x7f0c0119

    .line 2
    invoke-direct {p0, p2, p1, p3, p3}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    return-void
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    .line 1
    new-instance p2, Lip6;

    invoke-direct {p2, p3}, Lip6;-><init>(Landroid/database/Cursor;)V

    const p3, 0x7f090143

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 3
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object p4

    .line 4
    invoke-virtual {p4, p3}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 5
    invoke-virtual {p2}, Lip6;->a()Ljava/lang/String;

    move-result-object p4

    .line 6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v0

    invoke-virtual {v0, p4, p3}, Lhz6;->f(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const p4, 0x7f0800fd

    .line 8
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p3, 0x7f090174

    .line 9
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 10
    iget-object p4, p2, Lip6;->h:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p3, 0x1e

    const/16 p4, 0xa

    const/4 v0, 0x5

    .line 11
    invoke-virtual {p1, p3, v0, p4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    iget-object p3, p2, Lip6;->f:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f09029f

    .line 13
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 p3, 0x8

    .line 14
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object p3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    .line 16
    iget-object p3, p3, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 17
    iget-object p2, p2, Lip6;->f:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 5

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
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 6
    iget v2, v0, Lkp6$a;->c:I

    const v3, 0x7f090174

    const/16 v4, 0x64

    if-ge v2, v4, :cond_4

    .line 7
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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

    if-eq p2, v2, :cond_3

    const/16 v2, 0xa

    if-eq p2, v2, :cond_2

    const/16 v2, 0xb

    if-eq p2, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_1

    const p2, 0x7f0800d2

    goto :goto_0

    :cond_1
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
    new-instance p2, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b$a;

    invoke-direct {p2, p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b$a;-><init>(Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const p2, 0x7f080191

    .line 13
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    const p2, 0x7f080193

    .line 14
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v0}, Lkp6$a;->a()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 17
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Lhz6;->f(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_5
    const p2, 0x7f0800fd

    .line 18
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    .line 25
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 26
    iget-object p3, v0, Lkp6$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .line 1
    new-instance v0, Lkp6$a;

    invoke-direct {v0, p1}, Lkp6$a;-><init>(Landroid/database/Cursor;)V

    .line 2
    iget p1, v0, Lkp6$a;->c:I

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, v0, Lkp6$a;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lep6;->x(Landroid/content/Context;Ljava/lang/String;ZZ)Lvd;

    move-result-object p1

    invoke-virtual {p1}, Lvd;->k()Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
