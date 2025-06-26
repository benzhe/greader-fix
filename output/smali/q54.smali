.class public final Lq54;
.super Lz84;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz84<",
        "Lr54;",
        "Lq54;",
        ">;",
        "Lea4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lr54;->C()Lr54;

    move-result-object v0

    invoke-direct {p0, v0}, Lz84;-><init>(Lc94;)V

    return-void
.end method

.method public synthetic constructor <init>(Lq44;)V
    .locals 0

    invoke-static {}, Lr54;->C()Lr54;

    move-result-object p1

    invoke-direct {p0, p1}, Lz84;-><init>(Lc94;)V

    return-void
.end method


# virtual methods
.method public final m(J)Lq54;
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
    check-cast v0, Lr54;

    invoke-static {v0, p1, p2}, Lr54;->D(Lr54;J)V

    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lq54;
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
    check-cast v0, Lr54;

    invoke-static {v0, p1}, Lr54;->E(Lr54;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(J)Lq54;
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
    check-cast v0, Lr54;

    invoke-static {v0, p1, p2}, Lr54;->H(Lr54;J)V

    return-object p0
.end method
