.class public final synthetic Lrt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmt1;

.field public final f:Lxs0;


# direct methods
.method public constructor <init>(Lmt1;Lxs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrt1;->e:Lmt1;

    iput-object p2, p0, Lrt1;->f:Lxs0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lrt1;->e:Lmt1;

    iget-object v1, p0, Lrt1;->f:Lxs0;

    .line 1
    iget-object v2, v0, Lmt1;->i:Ljava/util/concurrent/Executor;

    new-instance v3, Lut1;

    invoke-direct {v3, v0, v1}, Lut1;-><init>(Lmt1;Lxs0;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
