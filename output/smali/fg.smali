.class public Lfg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfg$a;,
        Lfg$b;
    }
.end annotation


# instance fields
.field public final a:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Landroidx/recyclerview/widget/RecyclerView$a0;",
            "Lfg$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lj4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4<",
            "Landroidx/recyclerview/widget/RecyclerView$a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    iput-object v0, p0, Lfg;->a:Lm4;

    .line 3
    new-instance v0, Lj4;

    invoke-direct {v0}, Lj4;-><init>()V

    iput-object v0, p0, Lfg;->b:Lj4;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfg;->a:Lm4;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lfg$a;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lfg$a;->a()Lfg$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lfg;->a:Lm4;

    invoke-virtual {v1, p1, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget p1, v0, Lfg$a;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lfg$a;->a:I

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$j$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfg;->a:Lm4;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lfg$a;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lfg$a;->a()Lfg$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lfg;->a:Lm4;

    invoke-virtual {v1, p1, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iput-object p2, v0, Lfg$a;->c:Landroidx/recyclerview/widget/RecyclerView$j$c;

    .line 7
    iget p1, v0, Lfg$a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lfg$a;->a:I

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$j$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfg;->a:Lm4;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lfg$a;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lfg$a;->a()Lfg$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lfg;->a:Lm4;

    invoke-virtual {v1, p1, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iput-object p2, v0, Lfg$a;->b:Landroidx/recyclerview/widget/RecyclerView$j$c;

    .line 7
    iget p1, v0, Lfg$a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lfg$a;->a:I

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$a0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfg;->a:Lm4;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lfg$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lfg$a;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$a0;I)Landroidx/recyclerview/widget/RecyclerView$j$c;
    .locals 4

    .line 1
    iget-object v0, p0, Lfg;->a:Lm4;

    invoke-virtual {v0, p1}, Lm4;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lfg;->a:Lm4;

    invoke-virtual {v1, p1}, Lm4;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfg$a;

    if-eqz v1, :cond_4

    .line 3
    iget v2, v1, Lfg$a;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v0, p2

    and-int/2addr v0, v2

    .line 4
    iput v0, v1, Lfg$a;->a:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 5
    iget-object p2, v1, Lfg$a;->b:Landroidx/recyclerview/widget/RecyclerView$j$c;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 6
    iget-object p2, v1, Lfg$a;->c:Landroidx/recyclerview/widget/RecyclerView$j$c;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lfg;->a:Lm4;

    invoke-virtual {v0, p1}, Lm4;->i(I)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Lfg$a;->b(Lfg$a;)V

    :cond_2
    return-object p2

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfg;->a:Lm4;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lfg$a;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p1, Lfg$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lfg$a;->a:I

    return-void
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lfg;->b:Lj4;

    invoke-virtual {v0}, Lj4;->k()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lfg;->b:Lj4;

    invoke-virtual {v2, v0}, Lj4;->l(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lfg;->b:Lj4;

    .line 4
    iget-object v3, v2, Lj4;->g:[Ljava/lang/Object;

    aget-object v4, v3, v0

    sget-object v5, Lj4;->i:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    .line 5
    aput-object v5, v3, v0

    .line 6
    iput-boolean v1, v2, Lj4;->e:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lfg;->a:Lm4;

    invoke-virtual {v0, p1}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfg$a;

    if-eqz p1, :cond_2

    .line 8
    invoke-static {p1}, Lfg$a;->b(Lfg$a;)V

    :cond_2
    return-void
.end method
