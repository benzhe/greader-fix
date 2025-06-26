.class public final synthetic Luv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La45;


# instance fields
.field public final a:Lw27$a;


# direct methods
.method public constructor <init>(Lw27$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luv5;->a:Lw27$a;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Luv5;->a:Lw27$a;

    .line 1
    sget-object v1, Lvv5;->b:Li47$f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    sget-object v2, Lqx5$a;->f:Lqx5$a;

    const-string v3, "FirestoreCallCredentials"

    const-string v4, "Failed to get token: %s."

    invoke-static {v2, v3, v4, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lx47;->k:Lx47;

    invoke-virtual {v1, p1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw27$a;->b(Lx47;)V

    return-void
.end method
