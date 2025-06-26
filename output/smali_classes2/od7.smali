.class public abstract Lod7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;
.implements Lid7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lyb7<",
        "TT;>;",
        "Lid7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final e:Lyb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb7<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public f:Lic7;

.field public g:Lid7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Z


# direct methods
.method public constructor <init>(Lyb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lod7;->e:Lyb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lod7;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lod7;->h:Z

    .line 3
    iget-object v0, p0, Lod7;->e:Lyb7;

    invoke-interface {v0}, Lyb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lod7;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lod7;->h:Z

    .line 4
    iget-object v0, p0, Lod7;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lod7;->f:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lod7;->f:Lic7;

    .line 3
    instance-of v0, p1, Lid7;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lid7;

    iput-object p1, p0, Lod7;->g:Lid7;

    .line 5
    :cond_0
    iget-object p1, p0, Lod7;->e:Lyb7;

    invoke-interface {p1, p0}, Lyb7;->c(Lic7;)V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lod7;->g:Lid7;

    invoke-interface {v0}, Lnd7;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lod7;->g:Lid7;

    invoke-interface {v0}, Lnd7;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lod7;->f:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    return-void
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
