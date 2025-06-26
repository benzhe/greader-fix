.class public final Lc54;
.super Lz84;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz84<",
        "Ld54;",
        "Lc54;",
        ">;",
        "Lea4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ld54;->F()Ld54;

    move-result-object v0

    invoke-direct {p0, v0}, Lz84;-><init>(Lc94;)V

    return-void
.end method

.method public synthetic constructor <init>(Lq44;)V
    .locals 0

    invoke-static {}, Ld54;->F()Ld54;

    move-result-object p1

    invoke-direct {p0, p1}, Lz84;-><init>(Lc94;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)Lc54;
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
    check-cast v0, Ld54;

    invoke-static {v0, p1}, Ld54;->G(Ld54;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lc54;
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
    check-cast v0, Ld54;

    invoke-static {v0, p1}, Ld54;->H(Ld54;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(J)Lc54;
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
    check-cast v0, Ld54;

    invoke-static {v0, p1, p2}, Ld54;->J(Ld54;J)V

    return-object p0
.end method

.method public final q(D)Lc54;
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
    check-cast v0, Ld54;

    invoke-static {v0, p1, p2}, Ld54;->L(Ld54;D)V

    return-object p0
.end method
