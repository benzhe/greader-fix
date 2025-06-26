.class public Lc95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz85;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lqa;La95;)Lqa;
    .locals 5

    .line 1
    iget v0, p3, La95;->d:I

    invoke-virtual {p2}, Lqa;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, La95;->d:I

    .line 2
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Lqa;->c()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lqa;->d()I

    move-result v2

    .line 6
    iget v3, p3, La95;->a:I

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    add-int/2addr v3, v4

    iput v3, p3, La95;->a:I

    .line 7
    iget v4, p3, La95;->c:I

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v4, v0

    iput v4, p3, La95;->c:I

    .line 8
    iget v0, p3, La95;->b:I

    iget p3, p3, La95;->d:I

    .line 9
    invoke-virtual {p1, v3, v0, v4, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p2
.end method
