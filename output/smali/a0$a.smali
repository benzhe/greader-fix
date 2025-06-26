.class public La0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$b;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, La0;->g(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Landroidx/appcompat/app/AlertController$b;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, v0}, La0;->g(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    .line 5
    iput v0, p0, La0$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroidx/appcompat/app/AlertController$b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 8
    invoke-static {p1, p2}, La0;->g(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    .line 9
    iput p2, p0, La0$a;->b:I

    return-void
.end method


# virtual methods
.method public a()La0;
    .locals 12

    .line 1
    new-instance v0, La0;

    iget-object v1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, La0$a;->b:I

    invoke-direct {v0, v1, v2}, La0;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v8, v0, La0;->g:Landroidx/appcompat/app/AlertController;

    .line 3
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->f:Landroid/view/View;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 4
    iput-object v2, v8, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 6
    iput-object v2, v8, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 7
    iget-object v3, v8, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 10
    iput-object v2, v8, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    .line 11
    iput v9, v8, Landroidx/appcompat/app/AlertController;->B:I

    .line 12
    iget-object v3, v8, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v3, v8, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_2
    iget v2, v1, Landroidx/appcompat/app/AlertController$b;->c:I

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AlertController;->f(I)V

    .line 17
    :cond_3
    :goto_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 18
    iput-object v2, v8, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 19
    iget-object v3, v8, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_4
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    .line 22
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->i:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 23
    :goto_1
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->j:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, -0x2

    .line 24
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 25
    :goto_2
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->l:Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, -0x3

    .line 26
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 27
    :goto_3
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->p:[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_8

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->q:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_d

    .line 28
    :cond_8
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    iget v5, v8, Landroidx/appcompat/app/AlertController;->L:I

    .line 29
    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 30
    iget-boolean v5, v1, Landroidx/appcompat/app/AlertController$b;->u:Z

    if-eqz v5, :cond_9

    .line 31
    iget v5, v8, Landroidx/appcompat/app/AlertController;->N:I

    goto :goto_4

    .line 32
    :cond_9
    iget v5, v8, Landroidx/appcompat/app/AlertController;->O:I

    .line 33
    :goto_4
    iget-object v6, v1, Landroidx/appcompat/app/AlertController$b;->q:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_a

    goto :goto_5

    .line 34
    :cond_a
    new-instance v6, Landroidx/appcompat/app/AlertController$d;

    iget-object v7, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    const v10, 0x1020014

    iget-object v11, v1, Landroidx/appcompat/app/AlertController$b;->p:[Ljava/lang/CharSequence;

    invoke-direct {v6, v7, v5, v10, v11}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 35
    :goto_5
    iput-object v6, v8, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    .line 36
    iget v5, v1, Landroidx/appcompat/app/AlertController$b;->v:I

    iput v5, v8, Landroidx/appcompat/app/AlertController;->I:I

    .line 37
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_b

    .line 38
    new-instance v5, Lz;

    invoke-direct {v5, v1, v8}, Lz;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    :cond_b
    iget-boolean v5, v1, Landroidx/appcompat/app/AlertController$b;->u:Z

    if-eqz v5, :cond_c

    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 41
    :cond_c
    iput-object v2, v8, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 42
    :cond_d
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->t:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 43
    iput-object v2, v8, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 44
    iput v9, v8, Landroidx/appcompat/app/AlertController;->i:I

    .line 45
    iput-boolean v9, v8, Landroidx/appcompat/app/AlertController;->n:Z

    goto :goto_6

    .line 46
    :cond_e
    iget v1, v1, Landroidx/appcompat/app/AlertController$b;->s:I

    if-eqz v1, :cond_f

    .line 47
    iput-object v4, v8, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 48
    iput v1, v8, Landroidx/appcompat/app/AlertController;->i:I

    .line 49
    iput-boolean v9, v8, Landroidx/appcompat/app/AlertController;->n:Z

    .line 50
    :cond_f
    :goto_6
    iget-object v1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->n:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    iget-object v1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->n:Z

    if-eqz v1, :cond_10

    .line 52
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    :cond_10
    iget-object v1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 54
    iget-object v1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 55
    iget-object v1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->o:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_11

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_11
    return-object v0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)La0$a;
    .locals 2

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->j:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)La0$a;
    .locals 2

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->l:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;
    .locals 2

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public e()La0;
    .locals 1

    .line 1
    invoke-virtual {p0}, La0$a;->a()La0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
