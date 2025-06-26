.class public final Lm54;
.super Lz84;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz84<",
        "Ln54;",
        "Lm54;",
        ">;",
        "Lea4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ln54;->E()Ln54;

    move-result-object v0

    invoke-direct {p0, v0}, Lz84;-><init>(Lc94;)V

    return-void
.end method

.method public synthetic constructor <init>(Lq44;)V
    .locals 0

    invoke-static {}, Ln54;->E()Ln54;

    move-result-object p1

    invoke-direct {p0, p1}, Lz84;-><init>(Lc94;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Iterable;)Lm54;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lm54;"
        }
    .end annotation

    iget-boolean v0, p0, Lz84;->g:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lz84;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz84;->g:Z

    :cond_0
    iget-object v0, p0, Lz84;->f:Lc94;

    .line 2
    check-cast v0, Ln54;

    invoke-static {v0, p1}, Ln54;->F(Ln54;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final o()Lm54;
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
    check-cast v0, Ln54;

    invoke-static {v0}, Ln54;->G(Ln54;)V

    return-object p0
.end method

.method public final p(Ljava/lang/Iterable;)Lm54;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lm54;"
        }
    .end annotation

    iget-boolean v0, p0, Lz84;->g:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lz84;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz84;->g:Z

    :cond_0
    iget-object v0, p0, Lz84;->f:Lc94;

    .line 2
    check-cast v0, Ln54;

    invoke-static {v0, p1}, Ln54;->H(Ln54;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final q()Lm54;
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
    check-cast v0, Ln54;

    invoke-static {v0}, Ln54;->I(Ln54;)V

    return-object p0
.end method

.method public final r(I)Lm54;
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
    check-cast v0, Ln54;

    invoke-static {v0, p1}, Ln54;->K(Ln54;I)V

    return-object p0
.end method

.method public final s(I)Lm54;
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
    check-cast v0, Ln54;

    invoke-static {v0, p1}, Ln54;->M(Ln54;I)V

    return-object p0
.end method
