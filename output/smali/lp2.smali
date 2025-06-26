.class public final Llp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp2;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lls0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lls0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llp2;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Llp2;->b:Lls0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llp2;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lop2;

    invoke-direct {v1, p0, p1}, Lop2;-><init>(Llp2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
