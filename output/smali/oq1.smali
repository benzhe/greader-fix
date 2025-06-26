.class public final synthetic Loq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lpq1;


# direct methods
.method public constructor <init>(Lpq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loq1;->e:Lpq1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Loq1;->e:Lpq1;

    .line 1
    iget-object v1, v0, Lpq1;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lqq1;

    invoke-direct {v2, v0}, Lqq1;-><init>(Lpq1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
