.class public final synthetic Lz01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:La11;

.field public final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(La11;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz01;->e:La11;

    iput-object p2, p0, Lz01;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lz01;->e:La11;

    iget-object v1, p0, Lz01;->f:Ljava/lang/Runnable;

    .line 2
    sget-object v2, Lms0;->e:Lzv2;

    new-instance v3, Lc11;

    invoke-direct {v3, v0, v1}, Lc11;-><init>(La11;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
