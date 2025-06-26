.class public final synthetic Lnw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Law2;

.field public final f:Law2;


# direct methods
.method public constructor <init>(Law2;Law2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnw1;->e:Law2;

    iput-object p2, p0, Lnw1;->f:Law2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lnw1;->e:Law2;

    iget-object v1, p0, Lnw1;->f:Law2;

    .line 2
    new-instance v2, Lax1;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldx1;

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxw1;

    iget-object v3, v3, Lxw1;->b:Lorg/json/JSONObject;

    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw1;

    iget-object v1, v1, Lxw1;->a:Lsm0;

    invoke-direct {v2, v0, v3, v1}, Lax1;-><init>(Ldx1;Lorg/json/JSONObject;Lsm0;)V

    return-object v2
.end method
