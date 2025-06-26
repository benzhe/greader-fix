.class public abstract Lkr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:J

.field public f:Llr7;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Ljr7;->e:Ljr7;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lkr7;->e:J

    iput-object v0, p0, Lkr7;->f:Llr7;

    return-void
.end method

.method public constructor <init>(JLlr7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkr7;->e:J

    iput-object p3, p0, Lkr7;->f:Llr7;

    return-void
.end method
