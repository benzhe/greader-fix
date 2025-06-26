.class public Ljz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lnz6;

.field public final synthetic f:Lkz6;


# direct methods
.method public constructor <init>(Lkz6;Lnz6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljz6;->f:Lkz6;

    iput-object p2, p0, Ljz6;->e:Lnz6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljz6;->f:Lkz6;

    iget-object v0, v0, Lkz6;->a:Liz6;

    iget-object v0, v0, Liz6;->j:Lty6;

    iget-object v1, p0, Ljz6;->e:Lnz6;

    .line 2
    iget-object v1, v1, Lnz6;->m:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Ljz6;->f:Lkz6;

    .line 6
    invoke-virtual {v1}, Lkz6;->b()V

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Ljz6;->f:Lkz6;

    .line 8
    iget-object v0, v0, Lkz6;->c:Ljava/util/concurrent/Executor;

    .line 9
    iget-object v1, p0, Ljz6;->e:Lnz6;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Ljz6;->f:Lkz6;

    .line 11
    iget-object v0, v0, Lkz6;->b:Ljava/util/concurrent/Executor;

    .line 12
    iget-object v1, p0, Ljz6;->e:Lnz6;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
