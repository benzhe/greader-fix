.class public Lqa$e;
.super Lqa$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public d:Le8;


# direct methods
.method public constructor <init>(Lqa;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqa$d;-><init>(Lqa;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lqa$e;->d:Le8;

    return-void
.end method


# virtual methods
.method public b()Lqa;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lqa;->k(Landroid/view/WindowInsets;)Lqa;

    move-result-object v0

    return-object v0
.end method

.method public c()Lqa;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lqa;->k(Landroid/view/WindowInsets;)Lqa;

    move-result-object v0

    return-object v0
.end method

.method public final f()Le8;
    .locals 4

    .line 1
    iget-object v0, p0, Lqa$e;->d:Le8;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Le8;->a(IIII)Le8;

    move-result-object v0

    iput-object v0, p0, Lqa$e;->d:Le8;

    .line 8
    :cond_0
    iget-object v0, p0, Lqa$e;->d:Le8;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method
