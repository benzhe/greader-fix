.class public Leg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg$b;,
        Leg$a;
    }
.end annotation


# instance fields
.field public final a:Leg$b;

.field public b:Leg$a;


# direct methods
.method public constructor <init>(Leg$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leg;->a:Leg$b;

    .line 3
    new-instance p1, Leg$a;

    invoke-direct {p1}, Leg$a;-><init>()V

    iput-object p1, p0, Leg;->b:Leg$a;

    return-void
.end method


# virtual methods
.method public a(IIII)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Leg;->a:Leg$b;

    invoke-interface {v0}, Leg$b;->b()I

    move-result v0

    .line 2
    iget-object v1, p0, Leg;->a:Leg$b;

    invoke-interface {v1}, Leg$b;->c()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    .line 3
    iget-object v4, p0, Leg;->a:Leg$b;

    invoke-interface {v4, p1}, Leg$b;->d(I)Landroid/view/View;

    move-result-object v4

    .line 4
    iget-object v5, p0, Leg;->a:Leg$b;

    invoke-interface {v5, v4}, Leg$b;->a(Landroid/view/View;)I

    move-result v5

    .line 5
    iget-object v6, p0, Leg;->a:Leg$b;

    invoke-interface {v6, v4}, Leg$b;->e(Landroid/view/View;)I

    move-result v6

    .line 6
    iget-object v7, p0, Leg;->b:Leg$a;

    .line 7
    iput v0, v7, Leg$a;->b:I

    .line 8
    iput v1, v7, Leg$a;->c:I

    .line 9
    iput v5, v7, Leg$a;->d:I

    .line 10
    iput v6, v7, Leg$a;->e:I

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    .line 11
    iput v5, v7, Leg$a;->a:I

    or-int/lit8 v6, p3, 0x0

    .line 12
    iput v6, v7, Leg$a;->a:I

    .line 13
    invoke-virtual {v7}, Leg$a;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    .line 14
    iget-object v6, p0, Leg;->b:Leg$a;

    .line 15
    iput v5, v6, Leg$a;->a:I

    or-int/lit8 v5, p4, 0x0

    .line 16
    iput v5, v6, Leg$a;->a:I

    .line 17
    invoke-virtual {v6}, Leg$a;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Leg;->b:Leg$a;

    iget-object v1, p0, Leg;->a:Leg$b;

    invoke-interface {v1}, Leg$b;->b()I

    move-result v1

    iget-object v2, p0, Leg;->a:Leg$b;

    invoke-interface {v2}, Leg$b;->c()I

    move-result v2

    iget-object v3, p0, Leg;->a:Leg$b;

    .line 2
    invoke-interface {v3, p1}, Leg$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Leg;->a:Leg$b;

    invoke-interface {v4, p1}, Leg$b;->e(Landroid/view/View;)I

    move-result p1

    .line 3
    iput v1, v0, Leg$a;->b:I

    .line 4
    iput v2, v0, Leg$a;->c:I

    .line 5
    iput v3, v0, Leg$a;->d:I

    .line 6
    iput p1, v0, Leg$a;->e:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 7
    iget-object v0, p0, Leg;->b:Leg$a;

    .line 8
    iput p1, v0, Leg$a;->a:I

    or-int/2addr p1, p2

    .line 9
    iput p1, v0, Leg$a;->a:I

    .line 10
    invoke-virtual {v0}, Leg$a;->a()Z

    move-result p1

    :cond_0
    return p1
.end method
