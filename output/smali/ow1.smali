.class public final synthetic Low1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Law2;

.field public final f:Law2;

.field public final g:Law2;


# direct methods
.method public constructor <init>(Law2;Law2;Law2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Low1;->e:Law2;

    iput-object p2, p0, Low1;->f:Law2;

    iput-object p3, p0, Low1;->g:Law2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Low1;->e:Law2;

    iget-object v1, p0, Low1;->f:Law2;

    iget-object v2, p0, Low1;->g:Law2;

    .line 2
    new-instance v3, Lax1;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldx1;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsm0;

    invoke-direct {v3, v0, v1, v2}, Lax1;-><init>(Ldx1;Lorg/json/JSONObject;Lsm0;)V

    return-object v3
.end method
