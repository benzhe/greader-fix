.class public final synthetic Lcg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lag2;


# direct methods
.method public constructor <init>(Lag2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcg2;->e:Lag2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcg2;->e:Lag2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->a:Lzr0;

    .line 3
    invoke-static {}, Lzr0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lag2;->X6(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lag2;->e:Lsy0;

    invoke-virtual {v1}, Lsy0;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Ldg2;

    invoke-direct {v2, v0}, Ldg2;-><init>(Lag2;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
