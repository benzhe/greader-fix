.class public final Ll95;
.super Lo95;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lg95;",
        ">",
        "Lo95;"
    }
.end annotation


# static fields
.field public static final u:Lmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb<",
            "Ll95;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public p:Lp95;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp95<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final q:Lob;

.field public final r:Lnb;

.field public s:F

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll95$a;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Ll95$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ll95;->u:Lmb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg95;Lp95;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg95;",
            "Lp95<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lo95;-><init>(Landroid/content/Context;Lg95;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ll95;->t:Z

    .line 3
    iput-object p3, p0, Ll95;->p:Lp95;

    .line 4
    iput-object p0, p3, Lp95;->b:Lo95;

    .line 5
    new-instance p2, Lob;

    invoke-direct {p2}, Lob;-><init>()V

    iput-object p2, p0, Ll95;->q:Lob;

    const/high16 p3, 0x3f800000    # 1.0f

    float-to-double v0, p3

    .line 6
    iput-wide v0, p2, Lob;->b:D

    .line 7
    iput-boolean p1, p2, Lob;->c:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 8
    invoke-virtual {p2, p1}, Lob;->a(F)Lob;

    .line 9
    new-instance p1, Lnb;

    sget-object v0, Ll95;->u:Lmb;

    invoke-direct {p1, p0, v0}, Lnb;-><init>(Ljava/lang/Object;Lmb;)V

    iput-object p1, p0, Ll95;->r:Lnb;

    .line 10
    iput-object p2, p1, Lnb;->r:Lob;

    .line 11
    iget p1, p0, Lo95;->l:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_0

    .line 12
    iput p3, p0, Lo95;->l:F

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Ll95;->p:Lp95;

    invoke-virtual {p0}, Lo95;->c()F

    move-result v1

    .line 5
    iget-object v2, v0, Lp95;->a:Lg95;

    invoke-virtual {v2}, Lg95;->a()V

    .line 6
    invoke-virtual {v0, p1, v1}, Lp95;->a(Landroid/graphics/Canvas;F)V

    .line 7
    iget-object v0, p0, Ll95;->p:Lp95;

    iget-object v1, p0, Lo95;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lp95;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 8
    iget-object v0, p0, Lo95;->f:Lg95;

    iget-object v0, v0, Lg95;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 9
    iget v1, p0, Lo95;->n:I

    .line 10
    invoke-static {v0, v1}, Lc50;->H(II)I

    move-result v7

    .line 11
    iget-object v2, p0, Ll95;->p:Lp95;

    iget-object v4, p0, Lo95;->m:Landroid/graphics/Paint;

    const/4 v5, 0x0

    .line 12
    iget v6, p0, Ll95;->s:F

    move-object v3, p1

    .line 13
    invoke-virtual/range {v2 .. v7}, Lp95;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll95;->p:Lp95;

    invoke-virtual {v0}, Lp95;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll95;->p:Lp95;

    invoke-virtual {v0}, Lp95;->e()I

    move-result v0

    return v0
.end method

.method public i(ZZZ)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lo95;->i(ZZZ)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lo95;->g:Lf95;

    iget-object p3, p0, Lo95;->e:Landroid/content/Context;

    .line 3
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2, p3}, Lf95;->a(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Ll95;->t:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Ll95;->t:Z

    .line 6
    iget-object p3, p0, Ll95;->q:Lob;

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Lob;->a(F)Lob;

    :goto_0
    return p1
.end method

.method public jumpToCurrentState()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll95;->r:Lnb;

    invoke-virtual {v0}, Llb;->b()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 3
    iput v0, p0, Ll95;->s:F

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Ll95;->t:Z

    const v1, 0x461c4000    # 10000.0f

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ll95;->r:Lnb;

    invoke-virtual {v0}, Llb;->b()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 3
    iput p1, p0, Ll95;->s:F

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ll95;->r:Lnb;

    .line 6
    iget v3, p0, Ll95;->s:F

    mul-float v3, v3, v1

    .line 7
    iput v3, v0, Llb;->b:F

    .line 8
    iput-boolean v2, v0, Llb;->c:Z

    int-to-float p1, p1

    .line 9
    iget-boolean v1, v0, Llb;->f:Z

    if-eqz v1, :cond_1

    .line 10
    iput p1, v0, Lnb;->s:F

    goto/16 :goto_0

    .line 11
    :cond_1
    iget-object v1, v0, Lnb;->r:Lob;

    if-nez v1, :cond_2

    .line 12
    new-instance v1, Lob;

    invoke-direct {v1, p1}, Lob;-><init>(F)V

    iput-object v1, v0, Lnb;->r:Lob;

    .line 13
    :cond_2
    iget-object v1, v0, Lnb;->r:Lob;

    float-to-double v3, p1

    .line 14
    iput-wide v3, v1, Lob;->i:D

    double-to-float p1, v3

    float-to-double v3, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v5, p1

    cmpl-double v7, v3, v5

    if-gtz v7, :cond_a

    .line 15
    iget v5, v0, Llb;->g:F

    float-to-double v5, v5

    cmpg-double v7, v3, v5

    if-ltz v7, :cond_9

    .line 16
    iget v3, v0, Llb;->i:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v3, v3, v4

    float-to-double v3, v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iput-wide v3, v1, Lob;->d:D

    const-wide v5, 0x404f400000000000L    # 62.5

    mul-double v3, v3, v5

    .line 18
    iput-wide v3, v1, Lob;->e:D

    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_8

    .line 20
    iget-boolean v1, v0, Llb;->f:Z

    if-nez v1, :cond_7

    if-nez v1, :cond_7

    .line 21
    iput-boolean v2, v0, Llb;->f:Z

    .line 22
    iget-boolean v1, v0, Llb;->c:Z

    if-nez v1, :cond_3

    .line 23
    iget-object v1, v0, Llb;->e:Lmb;

    iget-object v3, v0, Llb;->d:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lmb;->a(Ljava/lang/Object;)F

    move-result v1

    .line 24
    iput v1, v0, Llb;->b:F

    .line 25
    :cond_3
    iget v1, v0, Llb;->b:F

    cmpl-float p1, v1, p1

    if-gtz p1, :cond_6

    iget p1, v0, Llb;->g:F

    cmpg-float p1, v1, p1

    if-ltz p1, :cond_6

    .line 26
    invoke-static {}, Lkb;->a()Lkb;

    move-result-object p1

    .line 27
    iget-object v1, p1, Lkb;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 28
    iget-object v1, p1, Lkb;->d:Lkb$c;

    if-nez v1, :cond_4

    .line 29
    new-instance v1, Lkb$d;

    iget-object v3, p1, Lkb;->c:Lkb$a;

    invoke-direct {v1, v3}, Lkb$d;-><init>(Lkb$a;)V

    iput-object v1, p1, Lkb;->d:Lkb$c;

    .line 30
    :cond_4
    iget-object v1, p1, Lkb;->d:Lkb$c;

    .line 31
    check-cast v1, Lkb$d;

    .line 32
    iget-object v3, v1, Lkb$d;->b:Landroid/view/Choreographer;

    iget-object v1, v1, Lkb$d;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v3, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 33
    :cond_5
    iget-object v1, p1, Lkb;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 34
    iget-object p1, p1, Lkb;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return v2

    .line 36
    :cond_8
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
