.class public Lqa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqa$b;,
        Lqa$a;,
        Lqa$c;,
        Lqa$g;,
        Lqa$f;,
        Lqa$e;,
        Lqa$d;,
        Lqa$h;
    }
.end annotation


# static fields
.field public static final b:Lqa;


# instance fields
.field public final a:Lqa$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lqa$b;

    invoke-direct {v0}, Lqa$b;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lqa$a;

    invoke-direct {v0}, Lqa$a;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v0}, Lqa$c;->a()Lqa;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lqa;->a:Lqa$h;

    invoke-virtual {v0}, Lqa$h;->a()Lqa;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lqa;->a:Lqa$h;

    invoke-virtual {v0}, Lqa$h;->b()Lqa;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lqa;->a()Lqa;

    move-result-object v0

    sput-object v0, Lqa;->b:Lqa;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lqa$g;

    invoke-direct {v0, p0, p1}, Lqa$g;-><init>(Lqa;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lqa;->a:Lqa$h;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lqa$f;

    invoke-direct {v0, p0, p1}, Lqa$f;-><init>(Lqa;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lqa;->a:Lqa$h;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lqa$e;

    invoke-direct {v0, p0, p1}, Lqa$e;-><init>(Lqa;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lqa;->a:Lqa$h;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lqa;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Lqa$h;

    invoke-direct {p1, p0}, Lqa$h;-><init>(Lqa;)V

    iput-object p1, p0, Lqa;->a:Lqa$h;

    return-void
.end method

.method public static g(Le8;IIII)Le8;
    .locals 5

    .line 1
    iget v0, p0, Le8;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    iget v2, p0, Le8;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    iget v3, p0, Le8;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    iget v4, p0, Le8;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0, v2, v3, v1}, Le8;->a(IIII)Le8;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/view/WindowInsets;)Lqa;
    .locals 1

    .line 1
    new-instance v0, Lqa;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p0}, Lqa;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method


# virtual methods
.method public a()Lqa;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa;->a:Lqa$h;

    invoke-virtual {v0}, Lqa$h;->c()Lqa;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqa;->f()Le8;

    move-result-object v0

    iget v0, v0, Le8;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqa;->f()Le8;

    move-result-object v0

    iget v0, v0, Le8;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqa;->f()Le8;

    move-result-object v0

    iget v0, v0, Le8;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqa;->f()Le8;

    move-result-object v0

    iget v0, v0, Le8;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lqa;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lqa;

    .line 3
    iget-object v0, p0, Lqa;->a:Lqa$h;

    iget-object p1, p1, Lqa;->a:Lqa$h;

    .line 4
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Le8;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa;->a:Lqa$h;

    invoke-virtual {v0}, Lqa$h;->g()Le8;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqa;->a:Lqa$h;

    invoke-virtual {v0}, Lqa$h;->i()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lqa;->a:Lqa$h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lqa$h;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i(IIII)Lqa;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lqa$b;

    invoke-direct {v0, p0}, Lqa$b;-><init>(Lqa;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lqa$a;

    invoke-direct {v0, p0}, Lqa$a;-><init>(Lqa;)V

    .line 4
    :goto_0
    invoke-static {p1, p2, p3, p4}, Le8;->a(IIII)Le8;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lqa$c;->c(Le8;)V

    .line 6
    invoke-virtual {v0}, Lqa$c;->a()Lqa;

    move-result-object p1

    return-object p1
.end method

.method public j()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Lqa;->a:Lqa$h;

    instance-of v1, v0, Lqa$d;

    if-eqz v1, :cond_0

    check-cast v0, Lqa$d;

    iget-object v0, v0, Lqa$d;->b:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
