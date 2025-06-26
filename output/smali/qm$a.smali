.class public Lqm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lqm;

.field public final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lqm;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqm$a;->e:Lqm;

    .line 3
    iput-object p2, p0, Lqm$a;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lqm$a;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lqm$a;->e:Lqm;

    invoke-virtual {v0}, Lqm;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lqm$a;->e:Lqm;

    invoke-virtual {v1}, Lqm;->a()V

    .line 3
    throw v0
.end method
