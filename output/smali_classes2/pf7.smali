.class public final Lpf7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpf7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhe7<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-",
            "Lmb7<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lw38<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Luc7<",
            "-",
            "Lmb7<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lw38<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lpf7;->g:Luc7;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lij7;

    invoke-direct {v0, p1}, Lij7;-><init>(Lx38;)V

    .line 2
    new-instance v1, Laj7;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Laj7;-><init>(I)V

    .line 3
    instance-of v2, v1, Lzi7;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lzi7;

    invoke-direct {v2, v1}, Lzi7;-><init>(Lyi7;)V

    move-object v1, v2

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lpf7;->g:Luc7;

    invoke-interface {v2, v1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handler returned a null Publisher"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    check-cast v2, Lw38;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v3, Lmf7;

    iget-object v4, p0, Lhe7;->f:Lmb7;

    invoke-direct {v3, v4}, Lmf7;-><init>(Lw38;)V

    .line 9
    new-instance v4, Lpf7$a;

    invoke-direct {v4, v0, v1, v3}, Lpf7$a;-><init>(Lx38;Lyi7;Ly38;)V

    .line 10
    iput-object v4, v3, Lmf7;->h:Lnf7;

    .line 11
    invoke-interface {p1, v4}, Lx38;->e(Ly38;)V

    .line 12
    invoke-interface {v2, v3}, Lw38;->i(Lx38;)V

    const/4 p1, 0x0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lmf7;->d(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 15
    sget-object v1, Lmi7;->e:Lmi7;

    invoke-interface {p1, v1}, Lx38;->e(Ly38;)V

    .line 16
    invoke-interface {p1, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method
