.class public final Lxg7$a;
.super Lod7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lod7<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final i:Lvc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc7<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyb7;Lvc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;",
            "Lvc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lod7;-><init>(Lyb7;)V

    .line 2
    iput-object p2, p0, Lxg7$a;->i:Lvc7;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lxg7$a;->i:Lvc7;

    invoke-interface {v0, p1}, Lvc7;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lod7;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->d(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lod7;->f:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    .line 5
    invoke-virtual {p0, p1}, Lod7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lod7;->g:Lid7;

    invoke-interface {v0}, Lnd7;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lxg7$a;->i:Lvc7;

    invoke-interface {v1, v0}, Lvc7;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method
