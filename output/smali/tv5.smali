.class public final synthetic Ltv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb45;


# instance fields
.field public final a:Lw27$a;


# direct methods
.method public constructor <init>(Lw27$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv5;->a:Lw27$a;

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Ltv5;->a:Lw27$a;

    check-cast p1, Ljava/lang/String;

    .line 1
    sget-object v1, Lvv5;->b:Li47$f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    sget-object v2, Lqx5$a;->e:Lqx5$a;

    const-string v3, "FirestoreCallCredentials"

    const-string v4, "Successfully fetched token."

    invoke-static {v2, v3, v4, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v1, Li47;

    invoke-direct {v1}, Li47;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    sget-object v2, Lvv5;->b:Li47$f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Lw27$a;->a(Li47;)V

    return-void
.end method
