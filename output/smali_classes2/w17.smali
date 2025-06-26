.class public Lw17;
.super Ll17;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll17<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public m:Lp17;


# direct methods
.method public constructor <init>(Le27;Landroid/widget/ImageView;Lh27;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lp17;Z)V
    .locals 11

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    .line 1
    invoke-direct/range {v0 .. v10}, Ll17;-><init>(Le27;Ljava/lang/Object;Lh27;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v1, p10

    .line 2
    iput-object v1, v0, Lw17;->m:Lp17;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ll17;->l:Z

    .line 2
    iget-object v0, p0, Lw17;->m:Lp17;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lw17;->m:Lp17;

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Le27$d;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ll17;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ll17;->a:Le27;

    iget-object v2, v0, Le27;->e:Landroid/content/Context;

    .line 3
    iget-boolean v6, v0, Le27;->m:Z

    .line 4
    iget-boolean v5, p0, Ll17;->d:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lf27;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Le27$d;ZZ)V

    .line 5
    iget-object p1, p0, Lw17;->m:Lp17;

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Loz5;

    invoke-virtual {p1}, Loz5;->a()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ll17;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 5
    :cond_1
    iget v0, p0, Ll17;->g:I

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Ll17;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_3
    :goto_0
    iget-object p1, p0, Lw17;->m:Lp17;

    if-eqz p1, :cond_5

    .line 10
    check-cast p1, Loz5;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FIAM.Display"

    const-string v1, "Image download failure "

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p1, Loz5;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p1, Loz5;->a:Lq06;

    .line 15
    invoke-virtual {v0}, Lq06;->e()Landroid/widget/ImageView;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p1, Loz5;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    :cond_4
    iget-object v0, p1, Loz5;->d:Llz5;

    .line 19
    invoke-virtual {v0}, Llz5;->b()V

    .line 20
    iget-object p1, p1, Loz5;->d:Llz5;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p1, Llz5;->n:Lj96;

    .line 22
    iput-object v0, p1, Llz5;->o:Luy5;

    :cond_5
    return-void
.end method
