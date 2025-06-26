.class public final synthetic Lfx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lex5$b;


# direct methods
.method public constructor <init>(Lex5$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfx5;->e:Lex5$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lfx5;->e:Lex5$b;

    .line 1
    iget-object v1, v0, Lex5$b;->c:Lex5;

    invoke-virtual {v1}, Lex5;->d()V

    .line 2
    iget-object v1, v0, Lex5$b;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lex5$b;->b()V

    .line 4
    iget-object v0, v0, Lex5$b;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
