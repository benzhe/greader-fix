.class public Lro$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lko;

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:Z

.field public f:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 1
    sget v0, Lcom/cocosw/bottomsheet/R$style;->BottomSheet_Dialog:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lro$c;->a:Landroid/content/Context;

    .line 4
    iput v0, p0, Lro$c;->c:I

    .line 5
    new-instance v1, Lko;

    invoke-direct {v1, p1}, Lko;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lro$c;->b:Lko;

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/cocosw/bottomsheet/R$attr;->bs_bottomSheetStyle:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lro$c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    throw v0
.end method


# virtual methods
.method public a(I)Lro$c;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lro$c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lro$c;->b:Lko;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-object p0
.end method

.method public b(III)Lro$c;
    .locals 8

    .line 1
    new-instance v7, Llo;

    iget-object v1, p0, Lro$c;->a:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v3, p1

    invoke-direct/range {v0 .. v6}, Llo;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 2
    invoke-virtual {v7, p2}, Llo;->setIcon(I)Landroid/view/MenuItem;

    .line 3
    iget-object p1, p0, Lro$c;->b:Lko;

    .line 4
    iget-object p1, p1, Lko;->c:Ljava/util/ArrayList;

    .line 5
    iget p2, v7, Llo;->c:I

    .line 6
    invoke-static {p2}, Lko;->d(I)I

    move-result p2

    invoke-static {p1, p2}, Lko;->a(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public c(ILjava/lang/CharSequence;)Lro$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lro$c;->b:Lko;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Lko;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public d()Lro;
    .locals 3

    .line 1
    new-instance v0, Lro;

    iget-object v1, p0, Lro$c;->a:Landroid/content/Context;

    iget v2, p0, Lro$c;->c:I

    invoke-direct {v0, v1, v2}, Lro;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p0, v0, Lro;->p:Lro$c;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
