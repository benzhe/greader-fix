.class public final synthetic Lrw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lsw5;


# direct methods
.method public constructor <init>(Lsw5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrw5;->e:Lsw5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lrw5;->e:Lsw5;

    .line 1
    iget-boolean v1, v0, Lsw5;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    sget-object v2, Lqx5$a;->e:Lqx5$a;

    const-string v3, "RemoteStore"

    const-string v4, "Restarting streams for network reachability change."

    invoke-static {v2, v3, v4, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lsw5;->e()V

    :cond_0
    return-void
.end method
