.class public final Lgl1$b;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Lgl1;",
        "Lgl1$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lgl1;->X()Lgl1;

    move-result-object v0

    invoke-direct {p0, v0}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method

.method public constructor <init>(Lmm1;)V
    .locals 0

    .line 2
    invoke-static {}, Lgl1;->X()Lgl1;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method


# virtual methods
.method public final p(Ljava/lang/String;)Lgl1$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, p1}, Lgl1;->b0(Lgl1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lgl1$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, p1}, Lgl1;->s0(Lgl1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(J)Lgl1$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, p1, p2}, Lgl1;->t0(Lgl1;J)V

    return-object p0
.end method

.method public final s(Lkw1;)Lgl1$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, p1}, Lgl1;->E(Lgl1;Lkw1;)V

    return-object p0
.end method
