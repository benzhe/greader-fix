.class public Lqa$d;
.super Lqa$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets;

.field public c:Le8;


# direct methods
.method public constructor <init>(Lqa;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqa$h;-><init>(Lqa;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lqa$d;->c:Le8;

    .line 3
    iput-object p2, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final g()Le8;
    .locals 4

    .line 1
    iget-object v0, p0, Lqa$d;->c:Le8;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Le8;->a(IIII)Le8;

    move-result-object v0

    iput-object v0, p0, Lqa$d;->c:Le8;

    .line 8
    :cond_0
    iget-object v0, p0, Lqa$d;->c:Le8;

    return-object v0
.end method

.method public h(IIII)Lqa;
    .locals 3

    .line 1
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, Lqa;->k(Landroid/view/WindowInsets;)Lqa;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 3
    new-instance v1, Lqa$b;

    invoke-direct {v1, v0}, Lqa$b;-><init>(Lqa;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lqa$a;

    invoke-direct {v1, v0}, Lqa$a;-><init>(Lqa;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lqa$d;->g()Le8;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lqa;->g(Le8;IIII)Le8;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Lqa$c;->c(Le8;)V

    .line 7
    invoke-virtual {p0}, Lqa$h;->f()Le8;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lqa;->g(Le8;IIII)Le8;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Lqa$c;->b(Le8;)V

    .line 9
    invoke-virtual {v1}, Lqa$c;->a()Lqa;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
