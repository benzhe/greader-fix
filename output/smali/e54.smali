.class public final Le54;
.super Lz84;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz84<",
        "Lf54;",
        "Le54;",
        ">;",
        "Lea4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lf54;->v()Lf54;

    move-result-object v0

    invoke-direct {p0, v0}, Lz84;-><init>(Lc94;)V

    return-void
.end method

.method public synthetic constructor <init>(Lq44;)V
    .locals 0

    invoke-static {}, Lf54;->v()Lf54;

    move-result-object p1

    invoke-direct {p0, p1}, Lz84;-><init>(Lc94;)V

    return-void
.end method


# virtual methods
.method public final m()Lh54;
    .locals 1

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Lf54;

    invoke-virtual {v0}, Lf54;->t()Lh54;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lg54;)Le54;
    .locals 1

    iget-boolean v0, p0, Lz84;->g:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lz84;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz84;->g:Z

    :cond_0
    iget-object v0, p0, Lz84;->f:Lc94;

    .line 2
    check-cast v0, Lf54;

    invoke-virtual {p1}, Lz84;->g()Lc94;

    move-result-object p1

    check-cast p1, Lh54;

    invoke-static {v0, p1}, Lf54;->w(Lf54;Lh54;)V

    return-object p0
.end method
