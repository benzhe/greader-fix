.class public final Lsr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:I

.field public volatile c:J


# direct methods
.method public constructor <init>(Lqr0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr0;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lsr0;->b:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lsr0;->c:J

    return-void
.end method
