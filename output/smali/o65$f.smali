.class public Lo65$f;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lqa;


# direct methods
.method public constructor <init>(Landroid/view/View;Lqa;Lo65$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;-><init>()V

    .line 2
    iput-object p2, p0, Lo65$f;->c:Lqa;

    .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    and-int/lit16 p2, p2, 0x2000

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lo65$f;->b:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lla5;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v1, Lla5;->e:Lla5$b;

    iget-object v1, v1, Lla5$b;->d:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 8
    :cond_1
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {p1}, Ld8;->c(I)D

    move-result-wide p1

    cmpl-double v1, p1, v2

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    .line 12
    :goto_2
    iput-boolean p3, p0, Lo65$f;->a:Z

    goto :goto_4

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-static {p1}, Ld8;->c(I)D

    move-result-wide p1

    cmpl-double v1, p1, v2

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    .line 16
    :goto_3
    iput-boolean p3, p0, Lo65$f;->a:Z

    goto :goto_4

    .line 17
    :cond_5
    iput-boolean p2, p0, Lo65$f;->a:Z

    :goto_4
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo65$f;->c(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo65$f;->c(Landroid/view/View;)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lo65$f;->c:Lqa;

    invoke-virtual {v1}, Lqa;->e()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Lo65$f;->a:Z

    invoke-static {p1, v0}, Lo65;->g(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lo65$f;->c:Lqa;

    .line 4
    invoke-virtual {v1}, Lqa;->e()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 7
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-boolean v0, p0, Lo65$f;->b:Z

    invoke-static {p1, v0}, Lo65;->g(Landroid/view/View;Z)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 13
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
