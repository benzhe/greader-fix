.class public final Ly44;
.super Lz84;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz84<",
        "Lz44;",
        "Ly44;",
        ">;",
        "Lea4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lz44;->D()Lz44;

    move-result-object v0

    invoke-direct {p0, v0}, Lz84;-><init>(Lc94;)V

    return-void
.end method

.method public synthetic constructor <init>(Lq44;)V
    .locals 0

    invoke-static {}, Lz44;->D()Lz44;

    move-result-object p1

    invoke-direct {p0, p1}, Lz84;-><init>(Lc94;)V

    return-void
.end method


# virtual methods
.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld54;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Lz44;

    .line 2
    invoke-virtual {v0}, Lz44;->s()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Lz44;

    invoke-virtual {v0}, Lz44;->t()I

    move-result v0

    return v0
.end method

.method public final p(I)Ld54;
    .locals 1

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Lz44;

    invoke-virtual {v0, p1}, Lz44;->u(I)Ld54;

    move-result-object p1

    return-object p1
.end method

.method public final q(ILd54;)Ly44;
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
    check-cast v0, Lz44;

    invoke-static {v0, p1, p2}, Lz44;->E(Lz44;ILd54;)V

    return-object p0
.end method

.method public final r(Lc54;)Ly44;
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
    check-cast v0, Lz44;

    invoke-virtual {p1}, Lz84;->g()Lc94;

    move-result-object p1

    check-cast p1, Ld54;

    invoke-static {v0, p1}, Lz44;->F(Lz44;Ld54;)V

    return-object p0
.end method

.method public final s(I)Ly44;
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
    check-cast v0, Lz44;

    invoke-static {v0, p1}, Lz44;->I(Lz44;I)V

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Lz44;

    invoke-virtual {v0}, Lz44;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/String;)Ly44;
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
    check-cast v0, Lz44;

    invoke-static {v0, p1}, Lz44;->J(Lz44;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()J
    .locals 2

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Lz44;

    invoke-virtual {v0}, Lz44;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()J
    .locals 2

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Lz44;

    invoke-virtual {v0}, Lz44;->z()J

    move-result-wide v0

    return-wide v0
.end method
