.class public final synthetic Lgf2;
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

    iput-object p1, p0, Lgf2;->e:Law2;

    iput-object p2, p0, Lgf2;->f:Law2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lgf2;->e:Law2;

    iget-object v1, p0, Lgf2;->f:Law2;

    .line 2
    new-instance v2, Lef2;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lef2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
