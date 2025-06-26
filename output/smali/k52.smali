.class public final synthetic Lk52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ll52;


# direct methods
.method public constructor <init>(Ll52;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk52;->e:Ll52;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk52;->e:Ll52;

    .line 1
    iget-object v1, v0, Ll52;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lm52;

    invoke-direct {v2, v0}, Lm52;-><init>(Ll52;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
