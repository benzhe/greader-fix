.class public final synthetic Lox5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lpx5;

.field public final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lpx5;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lox5;->e:Lpx5;

    iput-object p2, p0, Lox5;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lox5;->e:Lpx5;

    iget-object v1, p0, Lox5;->f:Ljava/lang/Runnable;

    .line 1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lpx5;->g:J

    .line 2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
